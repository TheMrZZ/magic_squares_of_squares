// The certifier: the reusable (a,b) kill pipeline in Rust.
//
// Part 1: sparse polynomial engine over (u, v, x, y), class and leaf
// enumeration, grading kill, relation dedup, and the library-division
// factor screen. Validated against the sympy pipeline at (2,3).
//
// Conventions: element value E(j,k,sg) is represented as 2i * value:
//   E = (w - conj w) * (uv)^{a-j} (xy)^{b-k},  w = u^{2j} x^{2k} (or y for sg<0),
// an integer polynomial in u, v, x, y. Relations are integer combinations,
// so every vanishing statement carries an overall factor 2i that we ignore.

use std::collections::{BTreeMap, HashMap, HashSet};
use rayon::prelude::*;
use std::sync::atomic::{AtomicUsize, Ordering};

// ---- heartbeat progress: phase + work counter, printed every 30 s ----
static PHASE: AtomicUsize = AtomicUsize::new(0);
static DONE: AtomicUsize = AtomicUsize::new(0);
static TOTAL: AtomicUsize = AtomicUsize::new(0);
const PHASES: [&str; 6] = ["startup", "leaf enumeration", "relation screen",
                           "condition map", "pair verdicts", "elimination"];
static POOLDUMP: std::sync::LazyLock<std::sync::Mutex<HashSet<String>>> =
    std::sync::LazyLock::new(|| std::sync::Mutex::new(HashSet::new()));
static CHAINDUMP: std::sync::LazyLock<std::sync::Mutex<HashSet<String>>> =
    std::sync::LazyLock::new(|| std::sync::Mutex::new(HashSet::new()));
static CROSSDUMP: std::sync::LazyLock<std::sync::Mutex<HashSet<String>>> =
    std::sync::LazyLock::new(|| std::sync::Mutex::new(HashSet::new()));

fn set_phase(p: usize, total: usize) {
    PHASE.store(p, Ordering::Relaxed);
    DONE.store(0, Ordering::Relaxed);
    TOTAL.store(total, Ordering::Relaxed);
}

fn tick() { DONE.fetch_add(1, Ordering::Relaxed); }

fn start_heartbeat() {
    let t0 = std::time::Instant::now();
    std::thread::spawn(move || loop {
        std::thread::sleep(std::time::Duration::from_secs(30));
        let p = PHASE.load(Ordering::Relaxed);
        let d = DONE.load(Ordering::Relaxed);
        let t = TOTAL.load(Ordering::Relaxed);
        let el = t0.elapsed().as_secs();
        if t > 0 && d > 0 {
            let eta = el as f64 / d as f64 * (t - d.min(t)) as f64;
            eprintln!("[heartbeat {el}s] phase: {} — {d}/{t} ({:.0}%), ETA {eta:.0}s",
                      PHASES[p.min(5)], 100.0 * d as f64 / t as f64);
        } else {
            eprintln!("[heartbeat {el}s] phase: {}", PHASES[p.min(5)]);
        }
    });
}

type Mono = (u16, u16, u16, u16); // exponents of u, v, x, y
type Poly = BTreeMap<Mono, i128>;

fn padd(a: &Poly, b: &Poly) -> Poly {
    let mut r = a.clone();
    for (m, c) in b {
        let e = r.entry(*m).or_insert(0);
        *e += c;
        if *e == 0 { r.remove(m); }
    }
    r
}

fn pneg(a: &Poly) -> Poly {
    a.iter().map(|(m, c)| (*m, -c)).collect()
}

fn pscale(a: &Poly, k: i128) -> Poly {
    if k == 0 { return Poly::new(); }
    a.iter().map(|(m, c)| (*m, c * k)).collect()
}

fn pmul(a: &Poly, b: &Poly) -> Poly {
    let mut r = Poly::new();
    for (m1, c1) in a {
        for (m2, c2) in b {
            let m = (m1.0 + m2.0, m1.1 + m2.1, m1.2 + m2.2, m1.3 + m2.3);
            let e = r.entry(m).or_insert(0);
            *e += c1 * c2;
            if *e == 0 { r.remove(&m); }
        }
    }
    r
}

fn pmono(u: u16, v: u16, x: u16, y: u16, c: i128) -> Poly {
    let mut p = Poly::new();
    p.insert((u, v, x, y), c);
    p
}

/// conj: swap u<->v and x<->y.
fn pconj(a: &Poly) -> Poly {
    a.iter().map(|(m, c)| ((m.1, m.0, m.3, m.2), *c)).collect()
}

/// Exact division a / b if it divides, else None. Sparse long division
/// using lexicographic leading terms.
fn pdiv(a: &Poly, b: &Poly) -> Option<Poly> {
    if b.is_empty() { return None; }
    let (&blm, &blc) = b.iter().next_back().unwrap();
    let mut rem = a.clone();
    let mut quo = Poly::new();
    while !rem.is_empty() {
        let (&rlm, &rlc) = rem.iter().next_back().unwrap();
        if rlm.0 < blm.0 || rlm.1 < blm.1 || rlm.2 < blm.2 || rlm.3 < blm.3 {
            return None;
        }
        if rlc % blc != 0 { return None; }
        let qm = (rlm.0 - blm.0, rlm.1 - blm.1, rlm.2 - blm.2, rlm.3 - blm.3);
        let qc = rlc / blc;
        let t = pmono(qm.0, qm.1, qm.2, qm.3, qc);
        quo = padd(&quo, &t);
        rem = padd(&rem, &pneg(&pmul(&t, b)));
    }
    Some(quo)
}

#[derive(Clone, Copy, PartialEq, Eq, Hash, PartialOrd, Ord, Debug)]
struct Class { j: u16, k: u16, sg: i8 }

fn classes(a: u16, b: u16) -> Vec<Class> {
    let mut out = Vec::new();
    for j in 0..=a {
        for k in 0..=b {
            if j == 0 && k == 0 { continue; }
            if j == 0 || k == 0 { out.push(Class { j, k, sg: 1 }); }
            else { out.push(Class { j, k, sg: 1 }); out.push(Class { j, k, sg: -1 }); }
        }
    }
    out
}

/// 2i * element value as a (u,v,x,y)-polynomial.
fn elem_poly(a: u16, b: u16, e: Class) -> Poly {
    let w = if e.sg >= 0 {
        pmono(2 * e.j, 0, 2 * e.k, 0, 1)
    } else {
        pmono(2 * e.j, 0, 0, 2 * e.k, 1)
    };
    let core = padd(&w, &pneg(&pconj(&w)));
    let scale = pmono(a - e.j, a - e.j, b - e.k, b - e.k, 1);
    pmul(&core, &scale)
}

/// The nonzero-factor library at grid (a, b): monomial variables are
/// handled implicitly; here the binomial/pinch forms.
fn library(maxdeg: u16) -> Vec<Poly> {
    let mut lib = Vec::new();
    for j in 1..=maxdeg {
        for (s1, s2) in [(1i128, 1i128), (1, -1)] {
            // u^j +- v^j and x^j +- y^j
            lib.push(padd(&pmono(j, 0, 0, 0, s1), &pmono(0, j, 0, 0, s2)));
            lib.push(padd(&pmono(0, 0, j, 0, s1), &pmono(0, 0, 0, j, s2)));
        }
        // pinch forms u^{2j} + v^{2j} +- 2 (uv)^j (and c = 1 variants), chi-side too
        for c in [1i128, 2, -1, -2] {
            let mut p = padd(&pmono(2 * j, 0, 0, 0, 1), &pmono(0, 2 * j, 0, 0, 1));
            p = padd(&p, &pmono(j, j, 0, 0, c));
            lib.push(p);
            let mut p2 = padd(&pmono(0, 0, 2 * j, 0, 1), &pmono(0, 0, 0, 2 * j, 1));
            p2 = padd(&p2, &pmono(0, 0, j, j, c));
            lib.push(p2);
        }
    }
    lib
}

/// Strip variable monomial content and divide out library factors
/// repeatedly. Returns the remaining core polynomial (possibly 1).
fn ser4(p: &Poly) -> String {
    p.iter().map(|(m, c)| format!("{},{},{},{},{}", c, m.0, m.1, m.2, m.3))
        .collect::<Vec<_>>().join(";")
}

/// Screen with a recorded division chain: each step is
/// (library factor, quotient) with the running polynomial. The final
/// entry of `chain` is not pushed; the return value is the core.
fn screen_rec(mut p: Poly, lib: &[Poly], chain: &mut Vec<(Poly, Poly)>) -> Poly {
    if p.is_empty() { return p; }
    let strip = |p: &Poly| -> Poly {
        let mu = p.keys().map(|m| m.0).min().unwrap();
        let mv = p.keys().map(|m| m.1).min().unwrap();
        let mx = p.keys().map(|m| m.2).min().unwrap();
        let my = p.keys().map(|m| m.3).min().unwrap();
        p.iter().map(|(m, c)| ((m.0 - mu, m.1 - mv, m.2 - mx, m.3 - my), *c)).collect()
    };
    p = strip(&p);
    let mut changed = true;
    while changed {
        changed = false;
        for fpol in lib {
            if let Some(q) = pdiv(&p, fpol) {
                if !q.is_empty() {
                    chain.push((fpol.clone(), q.clone()));
                    p = strip(&q);
                    changed = true;
                }
            }
        }
    }
    p
}

fn screen(mut p: Poly, lib: &[Poly]) -> Poly {
    // strip monomial content in each variable
    if p.is_empty() { return p; }
    let mu = p.keys().map(|m| m.0).min().unwrap();
    let mv = p.keys().map(|m| m.1).min().unwrap();
    let mx = p.keys().map(|m| m.2).min().unwrap();
    let my = p.keys().map(|m| m.3).min().unwrap();
    p = p.iter().map(|(m, c)| ((m.0 - mu, m.1 - mv, m.2 - mx, m.3 - my), *c)).collect();
    let mut changed = true;
    while changed {
        changed = false;
        for f in lib {
            if let Some(q) = pdiv(&p, f) {
                if !q.is_empty() {
                    p = q;
                    changed = true;
                    // re-strip monomials
                    let mu = p.keys().map(|m| m.0).min().unwrap();
                    let mv = p.keys().map(|m| m.1).min().unwrap();
                    let mx = p.keys().map(|m| m.2).min().unwrap();
                    let my = p.keys().map(|m| m.3).min().unwrap();
                    p = p.iter().map(|(m, c)| ((m.0 - mu, m.1 - mv, m.2 - mx, m.3 - my), *c)).collect();
                }
            }
        }
    }
    p
}

/// Lone minimal layer with unit coefficient (in any of the 4 valuations).
fn grade_unit(p: &Poly) -> bool {
    for i in 0..4 {
        let get = |m: &Mono| [m.0, m.1, m.2, m.3][i];
        let mn = p.keys().map(|m| get(m)).min().unwrap();
        let lay: Vec<_> = p.iter().filter(|(m, _)| get(m) == mn).collect();
        if lay.len() == 1 && lay[0].1.abs() == 1 { return true; }
    }
    false
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let a: u16 = args.get(1).and_then(|x| x.parse().ok()).unwrap_or(2);
    let b: u16 = args.get(2).and_then(|x| x.parse().ok()).unwrap_or(3);
    start_heartbeat();
    let els = classes(a, b);
    let n = els.len();
    let ep: Vec<Poly> = els.iter().map(|&e| elem_poly(a, b, e)).collect();
    let pexp: Vec<u16> = els.iter().map(|e| 2 * (a - e.j)).collect();
    let qexp: Vec<u16> = els.iter().map(|e| 2 * (b - e.k)).collect();
    let lone = |rel: &[(usize, i128)]| -> bool {
        for exps in [&pexp, &qexp] {
            let vs: Vec<u16> = rel.iter().map(|&(i, _)| exps[i]).collect();
            let mn = *vs.iter().min().unwrap();
            if vs.iter().filter(|&&v| v == mn).count() == 1 { return true; }
        }
        false
    };
    // leaf enumeration and grading
    set_phase(1, n);
    let chunks: Vec<(u64, u64, HashSet<Vec<(usize, i128)>>, HashSet<(Vec<(usize, i128)>, Vec<(usize, i128)>)>)> =
        (0..n).into_par_iter().map(|ia| {
            tick();
            let mut total = 0u64;
            let mut surv = 0u64;
            let mut relset: HashSet<Vec<(usize, i128)>> = HashSet::new();
            let mut pairset: HashSet<(Vec<(usize, i128)>, Vec<(usize, i128)>)> = HashSet::new();
            for ib in 0..n { for ic in 0..n { for id in 0..n {
                if ia == ib || ia == ic || ia == id || ib == ic || ib == id || ic == id { continue; }
                for e2 in [1i128, -1] { for e3 in [1i128, -1] { for e4 in [1i128, -1] {
                    total += 1;
                    let mut r1 = vec![(ic, e3), (id, e4), (ia, -2)];
                    let mut r2 = vec![(ic, e3), (id, -e4), (ib, -2 * e2)];
                    if lone(&r1) || lone(&r2) { continue; }
                    surv += 1;
                    r1.sort(); r2.sort();
                    let norm = |r: &Vec<(usize, i128)>| -> Vec<(usize, i128)> {
                        let neg: Vec<(usize, i128)> = {
                            let mut t: Vec<_> = r.iter().map(|&(i, c)| (i, -c)).collect();
                            t.sort(); t
                        };
                        if *r <= neg { r.clone() } else { neg }
                    };
                    let k1 = norm(&r1);
                    let k2 = norm(&r2);
                    relset.insert(k1.clone());
                    relset.insert(k2.clone());
                    pairset.insert((k1, k2));
                }}}
            }}}
            (total, surv, relset, pairset)
        }).collect();
    let mut total = 0u64;
    let mut surv = 0u64;
    let mut relset: HashSet<Vec<(usize, i128)>> = HashSet::new();
    let mut pairset: HashSet<(Vec<(usize, i128)>, Vec<(usize, i128)>)> = HashSet::new();
    for (t, sv, rs_, ps_) in chunks {
        total += t; surv += sv;
        relset.extend(rs_); pairset.extend(ps_);
    }
    println!("({a},{b}): {total} leaves, survivors {surv}, distinct relations {}, pairs {}",
             relset.len(), pairset.len());
    // factor screen per relation
    let lib = library((2 * b.max(a) + 2) as u16);
    set_phase(2, relset.len());
    let screen_dump: std::sync::Mutex<Vec<String>> = std::sync::Mutex::new(Vec::new());
    let screened: Vec<Option<Vec<(Mono, i128)>>> = relset.par_iter().map(|rel| {
        tick();
        let mut t = Poly::new();
        for &(i, c) in rel { t = padd(&t, &pscale(&ep[i], c)); }
        let mut chain: Vec<(Poly, Poly)> = Vec::new();
        let core = screen_rec(t.clone(), &lib, &mut chain);
        let verdict = if core.is_empty()
            || (core.len() == 1 && core.keys().next().unwrap() == &(0, 0, 0, 0)) {
            "monomial"
        } else if grade_unit(&core) { "unit" } else { "live" };
        {
            let relser: Vec<String> = rel.iter()
                .map(|(i, c)| format!("{i},{c}")).collect();
            let steps: Vec<String> = chain.iter()
                .map(|(fpol, q)| format!("F {} | {}", ser4(fpol), ser4(q))).collect();
            screen_dump.lock().unwrap().push(format!(
                "REL {} | {} || {} || CORE {} | {verdict}",
                relser.join(" "), ser4(&t), steps.join(" ## "), ser4(&core)));
        }
        if verdict != "live" { return None; }
        Some(core.iter().map(|(m, c)| (*m, *c)).collect())
    }).collect();
    {
        use std::io::Write as _;
        let sname = format!("screen_{a}_{b}.txt");
        let mut sf = std::fs::File::create(&sname).unwrap();
        for l in screen_dump.lock().unwrap().iter() { writeln!(sf, "{l}").unwrap(); }
        println!("screen dump: {} relations -> {sname}", relset.len());
    }
    let mut dead = 0u64;
    let mut cores: HashMap<Vec<(Mono, i128)>, u32> = HashMap::new();
    for sc in &screened {
        match sc {
            None => dead += 1,
            Some(key) => { *cores.entry(key.clone()).or_insert(0) += 1; }
        }
    }
    println!("relations dead by screen/grade: {dead} / {}", relset.len());
    println!("distinct core shapes: {}", cores.len());
    let mut bal = 0;
    let mut nonbal = 0;
    for (key, _) in &cores {
        let p: Poly = key.iter().cloned().collect();
        let pc = pconj(&p);
        if padd(&p, &pneg(&pc)).is_empty() || padd(&p, &pc).is_empty() { bal += 1; } else { nonbal += 1; }
    }
    println!("core shapes: balance {bal}, non-balance {nonbal}");

    // ---------------- Part 3: pair verdicts ----------------
    // per-relation conditions (from the screened core; a relation may carry
    // several library-free factors only if the core splits further — with
    // library division we keep the single residual core per relation)
    set_phase(3, relset.len());
    let relcond: HashMap<Vec<(usize, i128)>, (Cond, Poly)> = relset.par_iter().map(|rel| {
        tick();
        let mut t = Poly::new();
        for &(i, c) in rel { t = padd(&t, &pscale(&ep[i], c)); }
        let core = screen(t, &lib);
        let cond = if core.is_empty() || (core.len() == 1 && core.keys().next().unwrap() == &(0, 0, 0, 0)) {
            Cond::Dead
        } else { condition_of(&core) };
        (rel.clone(), (cond, core))
    }).collect();
    let mut verdict: HashMap<&str, u64> = HashMap::new();
    let mut terminals: HashMap<Vec<((u16, u16, u16), i128)>, u32> = HashMap::new();
    let mut residuals: Vec<(&'static str, Cond, Cond, Poly, Poly)> = Vec::new();
    set_phase(4, pairset.len());
    for (k1, k2) in &pairset {
        tick();
        let (c1, core1) = &relcond[k1];
        let (c2, core2) = &relcond[k2];
        let tag: &str = match (c1, c2) {
            (Cond::Dead, _) | (_, Cond::Dead) => "pair dead (a relation cannot vanish)",
            (Cond::Clean { delta: d1, sig: s1, om: o1 }, Cond::Clean { delta: d2, sig: s2, om: o2 }) => {
                if d1 == d2 {
                    let cross = radd(&rmul(s1, o2), &rneg(&rmul(s2, o1)));
                    if !cross.is_empty() {
                        CROSSDUMP.lock().unwrap().insert(
                            cross.iter().map(|(m, c)| format!("{}*r**{}*s**{}", c, m.0, m.1))
                                .collect::<Vec<_>>().join(" + "));
                    }
                    if cross.is_empty() {
                        // aligned: shared (X, Y) forces the magnitude identity
                        // w2^2 (Sigma1^2 + om1^2) = w1^2 (Sigma2^2 + om2^2)
                        // over the finite smooth w-set (om = 2*Omega scale).
                        let m1 = radd(&rmul(s1, s1), &rmul(o1, o1));
                        let m2 = radd(&rmul(s2, s2), &rmul(o2, o2));
                        let mut allkill = true;
                        'ws: for &a2_ in &[1i128, 2, 4, 8, 16, 32, 64, 3, 9, 27, 5, 25, 7,
                                          6, 12, 18, 24, 36, 48, 10, 20, 15, 45, 14, 21, 35] {
                            for &b2_ in &[1i128, 2, 4, 8, 16, 32, 64, 3, 9, 27, 5, 25, 7,
                                          6, 12, 18, 24, 36, 48, 10, 20, 15, 45, 14, 21, 35] {
                                let cand = radd(&rscale(&m1, b2_ * b2_), &rneg(&rscale(&m2, a2_ * a2_)));
                                if cand.is_empty() || !nonvanishing_form(&cand) { allkill = false; break 'ws; }
                            }
                        }
                        if allkill { "pair dead (aligned magnitude, all w)" }
                        else {
                            eprintln!("[aligned-residual] delta={} Sigma1={:?} om1={:?} | Sigma2={:?} om2={:?}",
                                      d1, s1, o1, s2, o2);
                            "clean aligned (residual)"
                        }
                    }
                    else if nonvanishing_form(&cross) { "pair dead (cross nonvanishing)" }
                    else { "cross unresolved (residual)" }
                } else {
                    let c12 = radd(&rmul(s1, o2), &rneg(&rmul(s2, o1)));
                    if nonvanishing_form(&c12) { "mismatch cross-band (record)" }
                    else { "mismatch unresolved (residual)" }
                }
            }
            (Cond::Affine { j2: j1, alpha: a1, beta: b1, eoff: e1, gam: g1 },
             Cond::Affine { j2: j2_, alpha: a2, beta: b2, eoff: e2, gam: g2 }) => {
                if j1 == j2_ {
                    let det = radd(&rmul(a1, b2), &rneg(&rmul(a2, b1)));
                    if det.is_empty() { "affine parallel (residual)" }
                    else {
                        // terminal: (G1 b2 - G2 b1)^2 + (a1 G2 - a2 G1)^2 - q^{2 j2} det^2
                        // with G_i = -q^{2 e_i} gam_i; represent q-exponent in the key.
                        let qe1 = (2 * e1.max(&0).clone()) as u16;
                        let qe2 = (2 * e2.max(&0).clone()) as u16;
                        let xs_a = rmul(g1, b2);
                        let xs_b = rmul(g2, b1);
                        let ys_a = rmul(a1, g2);
                        let ys_b = rmul(a2, g1);
                        // T = (q^{qe1} A - q^{qe2} B)^2 + (q^{qe2} C - q^{qe1} D)^2 - q^{2j2} det^2
                        let mut t: BTreeMap<(u16, u16, u16), i128> = BTreeMap::new();
                        let addq = |t: &mut BTreeMap<(u16, u16, u16), i128>, p: &RPoly, qe: u16, sc: i128| {
                            for (m, c) in p {
                                let e = t.entry((m.0, m.1, qe)).or_insert(0);
                                *e += c * sc;
                                if *e == 0 { t.remove(&(m.0, m.1, qe)); }
                            }
                        };
                        // (q^{qe1} A)^2 etc: build squares with q-exponents
                        let sq = |p: &RPoly| rmul(p, p);
                        addq(&mut t, &sq(&xs_a), 2 * qe1, 1);
                        addq(&mut t, &rmul(&xs_a, &xs_b), qe1 + qe2, -2);
                        addq(&mut t, &sq(&xs_b), 2 * qe2, 1);
                        addq(&mut t, &sq(&ys_a), 2 * qe2, 1);
                        addq(&mut t, &rmul(&ys_a, &ys_b), qe1 + qe2, -2);
                        addq(&mut t, &sq(&ys_b), 2 * qe1, 1);
                        addq(&mut t, &sq(&det), 2 * *j2_, -1);
                        let key: Vec<((u16, u16, u16), i128)> = t.iter().map(|(m, c)| (*m, *c)).collect();
                        *terminals.entry(key).or_insert(0) += 1;
                        "affine-affine terminal"
                    }
                } else { "affine level mismatch (residual)" }
            }
            (Cond::Multi { .. }, _) | (_, Cond::Multi { .. }) => "multi-level (residual)",
            (Cond::Clean { delta, sig, om }, Cond::Affine { j2, alpha, beta, eoff, gam })
            | (Cond::Affine { j2, alpha, beta, eoff, gam }, Cond::Clean { delta, sig, om }) => {
                if 2 * *delta == 2 * *j2 {
                    // X = Sigma/(2w), Y = om/(2w) with om = 2*Omega convention:
                    // alpha X + beta Y + q^{2 eoff} gam = 0
                    //   -> alpha*Sigma + beta*om = -4 w q^{2 eoff} gam  (w in small support)
                    let d1 = radd(&rmul(alpha, sig), &rmul(beta, om));
                    if d1.is_empty() { "clean-affine aligned (residual)" }
                    else if *eoff > 0 {
                        if nonvanishing_form(&d1) { "pair dead (clean-affine q-grade)" }
                        else { "clean-affine thin (residual)" }
                    } else {
                        // e' = 0: D1 + 4 w gam = 0 for some smooth small w
                        let mut allkill = true;
                        let mut ws: Vec<i128> = Vec::new();
                        for &m2 in &[1i128, 2, 4, 8, 16, 32, 64] {
                            for &m3 in &[1i128, 3, 9, 27] {
                                for &m5 in &[1i128, 5, 25] {
                                    for &m7 in &[1i128, 7] {
                                        let w = m2 * m3 * m5 * m7;
                                        ws.push(w); ws.push(-w);
                                    }
                                }
                            }
                        }
                        for w in ws {
                            let cand = radd(&d1, &rscale(gam, 4 * w));
                            if cand.is_empty() || !nonvanishing_form(&cand) { allkill = false; break; }
                        }
                        if allkill { "pair dead (clean-affine exact, all w)" }
                        else { "clean-affine w-branch (residual)" }
                    }
                } else { "clean-affine level mismatch (residual)" }
            }
        };
        *verdict.entry(tag).or_insert(0) += 1;
        if tag.contains("residual") {
            residuals.push((tag, c1.clone(), c2.clone(), core1.clone(), core2.clone()));
        }
    }
    let mut vs: Vec<_> = verdict.iter().collect();
    vs.sort_by_key(|(_, c)| std::cmp::Reverse(**c));
    for (k, c) in vs { println!("  {c:6}  {k}"); }
    println!("distinct terminal polynomials: {}", terminals.len());
    // terminal classification: q-grade, then nonvanishing of the minimal layer
    let mut tdead = 0u32;
    let mut tthin = 0u32;
    let mut tunres = 0u32;
    for (key, _cnt) in &terminals {
        let qmin = key.iter().map(|(m, _)| m.2).min().unwrap();
        let t0: RPoly = key.iter().filter(|(m, _)| m.2 == qmin)
            .map(|(m, c)| ((m.0, m.1), *c)).collect();
        let single = key.iter().all(|(m, _)| m.2 == qmin);
        if nonvanishing_form(&t0) {
            if single { tdead += 1; } else { tthin += 1; }
        } else { tunres += 1; }
    }
    println!("terminal classes: single-level dead {tdead}, q-grade thin {tthin}, unresolved {tunres}");

    // ---- Part 4 driver: base-coordinate elimination for residuals ----
    let circle: P5 = {
        let mut c = P5::new();
        c.insert((0, 0, 0, 2, 0), BigInt::from(1));
        c.insert((0, 0, 0, 0, 2), BigInt::from(1));
        c.insert((0, 0, 2, 0, 0), BigInt::from(-1));
        c
    };
    let cond_to_p5 = |c: &Cond| -> Option<P5> {
        match c {
            Cond::Clean { delta, sig, om } => {
                let (re, im) = powmap(*delta);
                Some(p5add(&p5mul(&p5from_r(sig), &im), &p5neg(&p5mul(&p5from_r(om), &re))))
            }
            Cond::Affine { j2, alpha, beta, eoff, gam } => {
                let (re, im) = powmap(*j2);
                let mut e = p5add(&p5mul(&p5from_r(alpha), &re), &p5mul(&p5from_r(beta), &im));
                let qe = (2 * (*eoff).max(0)) as u16;
                let mut gq = P5::new();
                for (m, c) in gam { gq.insert((m.0, m.1, qe, 0, 0), BigInt::from(*c)); }
                e = p5add(&e, &gq);
                Some(e)
            }
            Cond::Multi { core } => {
                // E = sum over chi-levels: q^{2 m} [ Re/Im combination ], one
                // real scalar equation (the core is a balance form).
                let corep: Poly = core.iter().cloned().collect();
                let mut acc_re = P5::new();
                let mut acc_im = P5::new();
                let mut groups: BTreeMap<i32, Poly> = BTreeMap::new();
                for (m, c) in &corep {
                    let d = m.2 as i32 - m.3 as i32;
                    groups.entry(d).or_insert_with(Poly::new).insert(*m, *c);
                }
                for (d, g) in &groups {
                    let qm = g.keys().map(|m| m.2.min(m.3)).min().unwrap() as u16;
                    let cuv: Poly = g.iter().map(|(m, c)| ((m.0, m.1, 0, 0), *c)).collect();
                    let gc = uv_to_rs(&cuv);
                    let cre = p5from_r(&gre(&gc));
                    let cim = p5from_r(&gim(&gc));
                    let qshift = |p: &P5, qe: u16| -> P5 {
                        p.iter().map(|(m, c)| ((m.0, m.1, m.2 + 2 * qe, m.3, m.4), c.clone())).collect()
                    };
                    if *d == 0 {
                        acc_re = p5add(&acc_re, &qshift(&cre, qm));
                        acc_im = p5add(&acc_im, &qshift(&cim, qm));
                    } else if *d > 0 {
                        let (rm, im_) = powmap(*d as u16);
                        // (cre + i cim)(Re + i Im) = (cre*Re - cim*Im) + i(cre*Im + cim*Re)
                        let tre = p5add(&p5mul(&cre, &rm), &p5neg(&p5mul(&cim, &im_)));
                        let tim = p5add(&p5mul(&cre, &im_), &p5mul(&cim, &rm));
                        acc_re = p5add(&acc_re, &qshift(&tre, qm));
                        acc_im = p5add(&acc_im, &qshift(&tim, qm));
                    } else {
                        let (rm, im_) = powmap((-d) as u16);
                        // conj power: (X - iY)^l = Re - i Im
                        let tre = p5add(&p5mul(&cre, &rm), &p5mul(&cim, &im_));
                        let tim = p5add(&p5neg(&p5mul(&cre, &im_)), &p5mul(&cim, &rm));
                        acc_re = p5add(&acc_re, &qshift(&tre, qm));
                        acc_im = p5add(&acc_im, &qshift(&tim, qm));
                    }
                }
                // balance: exactly one of the parts is the scalar equation
                if acc_re.is_empty() && !acc_im.is_empty() { Some(acc_im) }
                else if acc_im.is_empty() && !acc_re.is_empty() { Some(acc_re) }
                else if !acc_re.is_empty() { Some(acc_re) } // take Re; Im equation joins via the pair
                else { None }
            }
            _ => None,
        }
    };
    if std::env::var("PRS_PROBE").is_ok() {
        // Validate the PRS-chain core on the first residual leaf: sizes of
        // each recorded step, and agreement of the endpoint's q-minimal
        // layer with the Bareiss route.
        if let Some((tag, c1, c2, _, _)) = residuals.first() {
            if let (Some(e1), Some(e2)) = (cond_to_p5(c1), cond_to_p5(c2)) {
                let mut st = Vec::new();
                let r1 = prs_chain(&e1, &circle, 0, &mut st);
                let r2 = prs_chain(&e2, &circle, 0, &mut st);
                if let (Some(r1), Some(r2)) = (r1, r2) {
                    let rf = prs_chain(&r1, &r2, 1, &mut st);
                    println!("[PRS PROBE] leaf {tag}: steps (k, terms, maxbits) = {st:?}");
                    match rf {
                        Some(rf) => {
                            let qmin = rf.keys().map(|m| m.2).min().unwrap();
                            let t0: Vec<String> = rf.iter().filter(|(m, _)| m.2 == qmin)
                                .map(|(m, c)| format!("{}*r**{}*s**{}", c, m.0, m.1)).collect();
                            println!("[PRS PROBE] endpoint terms={} qmin={} t0-layer: {}",
                                     rf.len(), qmin, t0.join(" + "));
                        }
                        None => println!("[PRS PROBE] endpoint vanished (common factor)"),
                    }
                } else { println!("[PRS PROBE] inner chain vanished"); }
            }
        }
    }
    set_phase(5, residuals.len());
    let raw_elim = !std::env::var("COND_ELIM").is_ok();
    let evs_par: Vec<(String, Option<String>)> = residuals.par_iter().map(|(tag, c1, c2, core1, core2)| {
        tick();
        let pick = |core: &Poly| -> Option<P5> {
            let (re, im) = core_to_reim(core);
            match (re.is_empty(), im.is_empty()) {
                (false, true) => Some(re),
                (true, false) => Some(im),
                (false, false) => Some(re),
                (true, true) => None,
            }
        };
        let (e1, e2) = if raw_elim {
            match (pick(core1), pick(core2)) {
                (Some(a), Some(b)) => (a, b),
                _ => { return (format!("{tag}: raw part empty"), None); }
            }
        } else {
            match (cond_to_p5(c1), cond_to_p5(c2)) {
                (Some(a), Some(b)) => (a, b),
                _ => { return (format!("{tag}: no-p5 (multi)"), None); }
            }
        };
        // PRS elimination with recorded, exactly-verified steps; the chain
        // is the Lean certificate for this leaf.
        let mut steps = Vec::new();
        let r1 = match prs_chain_rec(&e1, &circle, 0, &mut steps) { Some(r) => r, None => return ("prs-vanish-inner1".into(), None) };
        let r2 = match prs_chain_rec(&e2, &circle, 0, &mut steps) { Some(r) => r, None => return ("prs-vanish-inner2".into(), None) };
        let rf = match prs_chain_rec(&r1, &r2, 1, &mut steps) { Some(r) => r, None => {
            if std::env::var("PRS_DIAG").is_ok() {
                let br = resultant(&r1, &r2, 1);
                println!("[PRS DIAG] outer vanish at leaf {tag}: bareiss = {}",
                    match br { None => "div-fail".into(), Some(p) if p.is_empty() => "ZERO".into(),
                               Some(p) => format!("nonzero ({} terms)", p.len()) });
            }
            return ("prs-vanish-outer".into(), None) } };
        {
            let chain: Vec<String> = steps.iter().map(|st| format!(
                "STEP {} {} {} | {} | {} | {} | {}",
                st.axis, st.k, st.ct, p5ser(&st.r0), p5ser(&st.r1),
                p5ser(&st.q), p5ser(&st.r2))).collect();
            let pick_tag = |core: &Poly| -> &'static str {
                let (re, im) = core_to_reim(core);
                match (re.is_empty(), im.is_empty()) {
                    (false, true) => "re",
                    (true, false) => "im",
                    (false, false) => "re",
                    (true, true) => "none",
                }
            };
            CHAINDUMP.lock().unwrap().insert(format!(
                "CORES {} | {} | {} | {} || LEAF {} || {} || END {}",
                ser4(core1), pick_tag(core1), ser4(core2), pick_tag(core2),
                chain.len(), chain.join(" ## "), p5ser(&rf)));
        }
        // dump the q-minimal layer of the final polynomial for the oracle
        let dump = if rf.is_empty() { None } else {
            let qmin = rf.keys().map(|m| m.2).min().unwrap();
            let t0: Vec<String> = rf.iter().filter(|(m, _)| m.2 == qmin)
                .map(|(m, c)| format!("{}*r**{}*s**{}", c, m.0, m.1)).collect();
            Some(t0.join(" + "))
        };
        (format!("{tag} -> {}", classify_rsq(&rf)), dump)
    }).collect();
    let mut everdict: HashMap<String, u64> = HashMap::new();
    let mut oracle: HashSet<String> = HashSet::new();
    for (v, d) in evs_par {
        *everdict.entry(v).or_insert(0) += 1;
        if let Some(t0) = d { oracle.insert(t0); }
    }
    {
        use std::io::Write;
        let fname = format!("oracle_t0_{a}_{b}.txt");
        let mut f = std::fs::File::create(&fname).unwrap();
        for t0 in &oracle { writeln!(f, "{t0}").unwrap(); }
        println!("oracle dump: {} distinct minimal-layer forms -> {fname}", oracle.len());
        let cname = format!("cross_forms_{a}_{b}.txt");
        let mut cf = std::fs::File::create(&cname).unwrap();
        let cd = CROSSDUMP.lock().unwrap();
        for c in cd.iter() { writeln!(cf, "{c}").unwrap(); }
        println!("cross dump: {} distinct cross forms -> {cname}", cd.len());
        let hname = format!("chains_{a}_{b}.txt");
        let mut hf = std::fs::File::create(&hname).unwrap();
        let hd = CHAINDUMP.lock().unwrap();
        for c in hd.iter() { writeln!(hf, "{c}").unwrap(); }
        println!("chain dump: {} distinct PRS chains -> {hname}", hd.len());
        let pname = format!("pool_{a}_{b}.txt");
        let mut pf = std::fs::File::create(&pname).unwrap();
        let pd = POOLDUMP.lock().unwrap();
        for c in pd.iter() { writeln!(pf, "{c}").unwrap(); }
        println!("pool dump: {} distinct lc layers -> {pname}", pd.len());
    }
    let mut evs: Vec<_> = everdict.iter().collect();
    evs.sort_by_key(|(_, c)| std::cmp::Reverse(**c));
    for (k, c) in evs { println!("  ELIM {c:5}  {k}"); }
}

// ===================== Part 2: the (r, s)-engine =====================

type RMono = (u16, u16); // exponents of r, s
type GPoly = BTreeMap<RMono, (i128, i128)>; // Gaussian coefficients (re, im)
type RPoly = BTreeMap<RMono, i128>;

fn gadd(a: &GPoly, b: &GPoly) -> GPoly {
    let mut r = a.clone();
    for (m, c) in b {
        let e = r.entry(*m).or_insert((0, 0));
        e.0 += c.0; e.1 += c.1;
        if e.0 == 0 && e.1 == 0 { r.remove(m); }
    }
    r
}

fn gmul(a: &GPoly, b: &GPoly) -> GPoly {
    let mut r = GPoly::new();
    for (m1, c1) in a {
        for (m2, c2) in b {
            let m = (m1.0 + m2.0, m1.1 + m2.1);
            let c = (c1.0 * c2.0 - c1.1 * c2.1, c1.0 * c2.1 + c1.1 * c2.0);
            let e = r.entry(m).or_insert((0, 0));
            e.0 += c.0; e.1 += c.1;
            if e.0 == 0 && e.1 == 0 { r.remove(&m); }
        }
    }
    r
}

fn gpow(a: &GPoly, n: u16) -> GPoly {
    let mut r = GPoly::new();
    r.insert((0, 0), (1, 0));
    for _ in 0..n { r = gmul(&r, a); }
    r
}

/// Evaluate a (u, v)-polynomial (x=y=0 slots ignored) at u = r + i s, v = r - i s.
fn uv_to_rs(p: &Poly) -> GPoly {
    let mut upoly = GPoly::new(); // r + i s
    upoly.insert((1, 0), (1, 0));
    upoly.insert((0, 1), (0, 1));
    let mut vpoly = GPoly::new(); // r - i s
    vpoly.insert((1, 0), (1, 0));
    vpoly.insert((0, 1), (0, -1));
    let mut out = GPoly::new();
    for (m, c) in p {
        let t = gmul(&gpow(&upoly, m.0), &gpow(&vpoly, m.1));
        out = gadd(&out, &t.iter().map(|(mm, cc)| (*mm, (cc.0 * c, cc.1 * c))).collect());
    }
    out
}

fn gre(a: &GPoly) -> RPoly {
    a.iter().filter(|(_, c)| c.0 != 0).map(|(m, c)| (*m, c.0)).collect()
}

fn gim(a: &GPoly) -> RPoly {
    a.iter().filter(|(_, c)| c.1 != 0).map(|(m, c)| (*m, c.1)).collect()
}

fn radd(a: &RPoly, b: &RPoly) -> RPoly {
    let mut r = a.clone();
    for (m, c) in b {
        let e = r.entry(*m).or_insert(0);
        *e += c;
        if *e == 0 { r.remove(m); }
    }
    r
}

fn rmul(a: &RPoly, b: &RPoly) -> RPoly {
    let mut r = RPoly::new();
    for (m1, c1) in a {
        for (m2, c2) in b {
            let m = (m1.0 + m2.0, m1.1 + m2.1);
            let e = r.entry(m).or_insert(0);
            *e += c1 * c2;
            if *e == 0 { r.remove(&m); }
        }
    }
    r
}

fn rneg(a: &RPoly) -> RPoly { a.iter().map(|(m, c)| (*m, -c)).collect() }
fn rscale(a: &RPoly, k: i128) -> RPoly {
    if k == 0 { return RPoly::new(); }
    a.iter().map(|(m, c)| (*m, c * k)).collect()
}

/// Homogeneous-form root classification: does the form have a realizable
/// rational root ratio r/s = n/d with n odd, d even? Returns true if the
/// form is NONVANISHING on admissible integers (no realizable root).
fn nonvanishing_form(p: &RPoly) -> bool {
    if p.is_empty() { return false; }
    if p.len() == 1 { return true; } // monomial: r, s nonzero
    // dehomogenize: t = r/s -> coefficients of t^k
    let deg = p.keys().map(|m| m.0 + m.1).max().unwrap();
    if p.keys().any(|m| m.0 + m.1 != deg) {
        // inhomogeneous in (r, s): fall back conservative
        return false;
    }
    let dmax = p.keys().map(|m| m.0).max().unwrap();
    let mut coeffs = vec![0i128; dmax as usize + 1];
    for (m, c) in p { coeffs[m.0 as usize] += c; }
    while coeffs.len() > 1 && *coeffs.last().unwrap() == 0 { coeffs.pop(); }
    let lead = *coeffs.last().unwrap();
    let mut trail_i = 0;
    while coeffs[trail_i] == 0 { trail_i += 1; }
    let trail = coeffs[trail_i];
    let divs = |n: i128| -> Vec<i128> {
        let n = n.abs();
        let mut d = Vec::new();
        let mut i = 1;
        while i * i <= n {
            if n % i == 0 { d.push(i); d.push(n / i); }
            i += 1;
        }
        d
    };
    for num in divs(trail) {
        for den in divs(lead) {
            if num % 2 == 1 && den % 2 == 0 {
                // realizable parity: test the root exactly
                for sign in [1i128, -1] {
                    let mut acc = 0i128;
                    let mut pw_n = 1i128;
                    // evaluate sum c_k (num*sign)^{k - trail_i} den^{deg-k...}: use exact eval of
                    // f(n/d) * d^deg = sum c_k n^k d^{dmax-k}
                    let mut val = 0i128;
                    for (k, &c) in coeffs.iter().enumerate() {
                        let mut t = c;
                        for _ in 0..k { t = t.saturating_mul(num * sign); }
                        for _ in 0..(coeffs.len() - 1 - k) { t = t.saturating_mul(den); }
                        val = val.saturating_add(t);
                    }
                    let _ = (&mut acc, &mut pw_n);
                    if val == 0 { return false; }
                }
            }
        }
    }
    true
}

// ===================== Part 3: sector verdicts =====================

#[derive(Clone)]
enum Cond {
    Dead,
    Clean { delta: u16, sig: RPoly, om: RPoly },
    Affine { j2: u16, alpha: RPoly, beta: RPoly, eoff: i32, gam: RPoly },
    Multi { core: Vec<(Mono, i128)> },
}

/// The raw Re/Im parts of a core value as (r,s,q,X,Y)-polynomials:
/// u^a v^b evaluates through the (r,s)-Gaussian engine; x^e y^f is
/// (X+iY)^e (X-iY)^f expanded over (X,Y).
fn core_to_reim(core: &Poly) -> (P5, P5) {
    let mut re_acc = P5::new();
    let mut im_acc = P5::new();
    for (m, c) in core {
        // (r,s)-side complex parts of u^a v^b
        let mut single = Poly::new();
        single.insert((m.0, m.1, 0, 0), *c);
        let g = uv_to_rs(&single);
        let pre = p5from_r(&gre(&g));
        let pim = p5from_r(&gim(&g));
        // (X,Y)-side: (X+iY)^e (X-iY)^f
        let (xe_re, xe_im) = powmap(m.2);
        let (xf_re, xf_im_pos) = powmap(m.3);
        let xf_im = p5neg(&xf_im_pos);
        let xre = p5add(&p5mul(&xe_re, &xf_re), &p5neg(&p5mul(&xe_im, &xf_im)));
        let xim = p5add(&p5mul(&xe_re, &xf_im), &p5mul(&xe_im, &xf_re));
        // total = (pre + i pim)(xre + i xim)
        re_acc = p5add(&re_acc, &p5add(&p5mul(&pre, &xre), &p5neg(&p5mul(&pim, &xim))));
        im_acc = p5add(&im_acc, &p5add(&p5mul(&pre, &xim), &p5mul(&pim, &xre)));
    }
    (re_acc, im_acc)
}

fn condition_of(core: &Poly) -> Cond {
    if core.is_empty() { return Cond::Dead; }
    if grade_unit(core) { return Cond::Dead; }
    let gt: Vec<_> = core.iter().filter(|(m, _)| m.2 > m.3).collect();
    let dg: Vec<_> = core.iter().filter(|(m, _)| m.2 == m.3).collect();
    if gt.is_empty() { return Cond::Dead; }
    let e0 = gt.iter().map(|(m, _)| m.2).min().unwrap();
    let layered = !dg.is_empty() && dg.iter().map(|(m, _)| m.2).min().unwrap() < e0;
    if !layered {
        let lay: Vec<_> = gt.iter().filter(|(m, _)| m.2 == e0).collect();
        let f0 = lay.iter().map(|(m, _)| m.3).min().unwrap();
        let lay: Vec<_> = lay.iter().filter(|(m, _)| m.3 == f0).collect();
        let pl: Poly = lay.iter().map(|(m, c)| ((m.0, m.1, 0, 0), **c)).collect();
        if pl.len() == 1 { return Cond::Dead; } // monomial-P valuation
        let plc = pconj(&pl);
        let sig_uv = padd(&pl, &plc);
        let om_uv = padd(&pl, &pneg(&plc));
        let g_sig = uv_to_rs(&sig_uv);
        let g_om = uv_to_rs(&om_uv);
        let sig = gre(&g_sig);          // Sigma = P + conj(P): real
        let om = gim(&g_om);            // (P - conj P) = 2i Omega -> Omega = im/2... keep 2*Omega
        let fmin = gt.iter().map(|(m, _)| m.3).min().unwrap();
        let delta = if e0 > fmin { e0 - fmin } else { fmin - e0 };
        if sig.is_empty() != om.is_empty() { return Cond::Dead; }
        return Cond::Clean { delta, sig, om };
    }
    // layered: single positive level?
    let mut levels: BTreeMap<i32, Poly> = BTreeMap::new();
    for (m, c) in core {
        let d = m.2 as i32 - m.3 as i32;
        levels.entry(d).or_insert_with(Poly::new).insert((m.0, m.1, m.2, m.3), *c);
    }
    let pos: Vec<i32> = levels.keys().cloned().filter(|&d| d > 0).collect();
    if pos.len() != 1 {
        return Cond::Multi { core: core.iter().map(|(m, c)| (*m, *c)).collect() };
    }
    let j2 = pos[0] as u16;
    let cpos: Poly = levels[&(j2 as i32)].iter().map(|(m, c)| ((m.0, m.1, 0, 0), *c)).collect();
    let cneg: Poly = levels[&(-(j2 as i32))].iter().map(|(m, c)| ((m.0, m.1, 0, 0), *c)).collect();
    let cposc = pconj(&cpos);
    let sigma: i128 = if padd(&cneg, &pneg(&cposc)).is_empty() { 1 }
        else if padd(&cneg, &cposc).is_empty() { -1 }
        else { return Cond::Multi { core: core.iter().map(|(m, c)| (*m, *c)).collect() } };
    let dpoly: Poly = levels.get(&0).map(|l| l.iter().map(|(m, c)| ((m.0, m.1, 0, 0), *c)).collect()).unwrap_or_default();
    let qpos = levels[&(j2 as i32)].keys().map(|m| m.2.min(m.3)).min().unwrap() as i32;
    let qdia = levels.get(&0).map(|l| l.keys().map(|m| m.2.min(m.3)).min().unwrap() as i32).unwrap_or(0);
    let eoff = qdia - qpos;
    let g_c = uv_to_rs(&cpos);
    let cre = gre(&g_c);
    let cim = gim(&g_c);
    let g_d = uv_to_rs(&dpoly);
    let (alpha, beta, gam) = if sigma == 1 {
        (rscale(&cre, 2), rscale(&cim, -2), gre(&g_d))
    } else {
        (rscale(&cim, 2), rscale(&cre, 2), gim(&g_d))
    };
    Cond::Affine { j2, alpha, beta, eoff, gam }
}

// ============ Part 4: base-coordinate elimination ============
// Polynomials in (r, s, q, X, Y) with X + iY = chi^2-coordinates.
use num_bigint::BigInt;
use num_traits::{Zero, One, Signed};

type M5 = (u16, u16, u16, u16, u16); // r, s, q, X, Y
type P5 = BTreeMap<M5, BigInt>;

fn p5add(a: &P5, b: &P5) -> P5 {
    let mut r = a.clone();
    for (m, c) in b {
        let e = r.entry(*m).or_insert_with(BigInt::zero);
        *e += c;
        if e.is_zero() { r.remove(m); }
    }
    r
}
fn p5neg(a: &P5) -> P5 { a.iter().map(|(m, c)| (*m, -c.clone())).collect() }
fn p5mul(a: &P5, b: &P5) -> P5 {
    let mut r = P5::new();
    for (m1, c1) in a {
        for (m2, c2) in b {
            let m = (m1.0 + m2.0, m1.1 + m2.1, m1.2 + m2.2, m1.3 + m2.3, m1.4 + m2.4);
            let e = r.entry(m).or_insert_with(BigInt::zero);
            *e += c1 * c2;
            if e.is_zero() { r.remove(&m); }
        }
    }
    r
}
fn p5from_r(p: &RPoly) -> P5 {
    p.iter().map(|(m, c)| ((m.0, m.1, 0, 0, 0), BigInt::from(*c))).collect()
}
fn p5mono(q: u16, x: u16, y: u16, c: i128) -> P5 {
    let mut p = P5::new();
    p.insert((0, 0, q, x, y), BigInt::from(c));
    p
}

/// (Re, Im) of (X + iY)^l as P5 polynomials.
fn powmap(l: u16) -> (P5, P5) {
    let mut re = p5mono(0, 0, 0, 1);
    // re starts as the constant 1
    let mut im = P5::new();
    for _ in 0..l {
        // (re + i im)(X + iY) = re*X - im*Y + i(re*Y + im*X)
        let x = p5mono(0, 1, 0, 1);
        let y = p5mono(0, 0, 1, 1);
        let nre = p5add(&p5mul(&re, &x), &p5neg(&p5mul(&im, &y)));
        let nim = p5add(&p5mul(&re, &y), &p5mul(&im, &x));
        re = nre; im = nim;
    }
    (re, im)
}

/// Degree in Y and coefficient extraction (as P5 with Y-exp zeroed).
fn ydeg(p: &P5) -> u16 { p.keys().map(|m| m.4).max().unwrap_or(0) }
fn ycoef(p: &P5, k: u16) -> P5 {
    p.iter().filter(|(m, _)| m.4 == k)
        .map(|(m, c)| ((m.0, m.1, m.2, m.3, 0), c.clone())).collect()
}
fn xdeg(p: &P5) -> u16 { p.keys().map(|m| m.3).max().unwrap_or(0) }
fn xcoef(p: &P5, k: u16) -> P5 {
    p.iter().filter(|(m, _)| m.3 == k)
        .map(|(m, c)| ((m.0, m.1, m.2, 0, m.4), c.clone())).collect()
}

/// Exact division for P5 (needed by Bareiss).
fn p5div(a: &P5, b: &P5) -> Option<P5> {
    if b.is_empty() { return None; }
    let (blm, blc) = { let (m, c) = b.iter().next_back().unwrap(); (*m, c.clone()) };
    let mut rem = a.clone();
    let mut quo = P5::new();
    while !rem.is_empty() {
        let (rlm, rlc) = { let (m, c) = rem.iter().next_back().unwrap(); (*m, c.clone()) };
        if rlm.0 < blm.0 || rlm.1 < blm.1 || rlm.2 < blm.2 || rlm.3 < blm.3 || rlm.4 < blm.4 {
            return None;
        }
        if (&rlc % &blc) != BigInt::zero() { return None; }
        let qm = (rlm.0 - blm.0, rlm.1 - blm.1, rlm.2 - blm.2, rlm.3 - blm.3, rlm.4 - blm.4);
        let mut t = P5::new();
        t.insert(qm, &rlc / &blc);
        quo = p5add(&quo, &t);
        rem = p5add(&rem, &p5neg(&p5mul(&t, b)));
    }
    Some(quo)
}

/// Resultant of two P5 polynomials w.r.t. Y (or X when axis = 1),
/// via fraction-free Bareiss on the Sylvester matrix.
fn resultant(a: &P5, b: &P5, axis: u8) -> Option<P5> {
    let (da, db) = if axis == 0 { (ydeg(a), ydeg(b)) } else { (xdeg(a), xdeg(b)) };
    if da == 0 && db == 0 { return Some(P5::new()); }
    let n = (da + db) as usize;
    let coef = |p: &P5, k: u16| if axis == 0 { ycoef(p, k) } else { xcoef(p, k) };
    let mut mat: Vec<Vec<P5>> = vec![vec![P5::new(); n]; n];
    for i in 0..db as usize {
        for k in 0..=da {
            mat[i][i + (da - k) as usize] = coef(a, k);
        }
    }
    for i in 0..da as usize {
        for k in 0..=db {
            mat[db as usize + i][i + (db - k) as usize] = coef(b, k);
        }
    }
    // Bareiss
    let mut prev: P5 = { let mut o = P5::new(); o.insert((0,0,0,0,0), BigInt::one()); o };
    for k in 0..n - 1 {
        if mat[k][k].is_empty() {
            // pivot: swap with a nonzero row below (sign change irrelevant for
            // vanishing analysis)
            let mut found = false;
            for i in k + 1..n {
                if !mat[i][k].is_empty() { mat.swap(k, i); found = true; break; }
            }
            if !found { return Some(P5::new()); } // resultant is zero
        }
        for i in k + 1..n {
            for j in k + 1..n {
                let t1 = p5mul(&mat[i][j], &mat[k][k]);
                let t2 = p5mul(&mat[i][k], &mat[k][j]);
                let num = p5add(&t1, &p5neg(&t2));
                match p5div(&num, &prev) {
                    Some(d) => mat[i][j] = d,
                    None => return None, // exact division failed (shouldn't)
                }
            }
        }
        for i in k + 1..n { mat[i][k] = P5::new(); }
        prev = mat[k][k].clone();
    }
    Some(mat[n - 1][n - 1].clone())
}

fn p5ser(p: &P5) -> String {
    p.iter().map(|(m, c)| format!("{},{},{},{},{},{}", c, m.0, m.1, m.2, m.3, m.4))
        .collect::<Vec<_>>().join(";")
}

fn bgcd(a: &BigInt, b: &BigInt) -> BigInt {
    let (mut a, mut b) = (a.clone(), b.clone());
    if a.sign() == num_bigint::Sign::Minus { a = -a; }
    if b.sign() == num_bigint::Sign::Minus { b = -b; }
    while !b.is_zero() { let t = &a % &b; a = b; b = t; }
    a
}

fn p5primitive(p: &P5) -> (BigInt, P5) {
    let mut g = BigInt::zero();
    for c in p.values() { g = bgcd(&g, c); }
    if g.is_zero() || g == BigInt::one() { return (BigInt::one(), p.clone()); }
    (g.clone(), p.iter().map(|(m, c)| (*m, c / &g)).collect())
}

/// Pseudo-division w.r.t. the axis (0 = Y, 1 = X):
/// lc(b)^k * a = Q * b + R with deg_axis(R) < deg_axis(b).
/// Each application is one Lean-checkable Bezout-type step.
fn p5pdiv(a: &P5, b: &P5, axis: u8) -> (u32, P5, P5) {
    let deg = |p: &P5| if axis == 0 { ydeg(p) } else { xdeg(p) };
    let coef = |p: &P5, k: u16| if axis == 0 { ycoef(p, k) } else { xcoef(p, k) };
    let shift = |p: &P5, j: u16| -> P5 {
        p.iter().map(|(m, c)| (if axis == 0 { (m.0, m.1, m.2, m.3, m.4 + j) }
                               else { (m.0, m.1, m.2, m.3 + j, m.4) }, c.clone())).collect()
    };
    let db = deg(b);
    let c = coef(b, db);
    let mut rem = a.clone();
    let mut quo = P5::new();
    let mut k = 0u32;
    while !rem.is_empty() && deg(&rem) >= db && db > 0 {
        let dr = deg(&rem);
        let lr = coef(&rem, dr);
        quo = p5add(&p5mul(&c, &quo), &shift(&lr, dr - db));
        rem = p5add(&p5mul(&c, &rem), &p5neg(&p5mul(&shift(&lr, dr - db), b)));
        k += 1;
        if k > 300 { break; }
    }
    (k, quo, rem)
}

/// One recorded PRS step: lc^k * r0 = q * r1 + ct * r2 (exact identity).
struct PrsStep { axis: u8, k: u32, r0: P5, r1: P5, q: P5, ct: BigInt, r2: P5 }

fn p5scale(p: &P5, c: &BigInt) -> P5 { p.iter().map(|(m, v)| (*m, v * c)).collect() }

/// PRS elimination recording every step, each verified exactly.
fn prs_chain_rec(f: &P5, g: &P5, axis: u8, steps: &mut Vec<PrsStep>) -> Option<P5> {
    let deg = |p: &P5| if axis == 0 { ydeg(p) } else { xdeg(p) };
    let coef = |p: &P5, k: u16| if axis == 0 { ycoef(p, k) } else { xcoef(p, k) };
    let (mut r0, mut r1) = if deg(f) >= deg(g) { (f.clone(), g.clone()) }
                           else { (g.clone(), f.clone()) };
    loop {
        if r1.is_empty() { return None; }
        if deg(&r1) == 0 { return Some(r1); }
        let (k, q, rem) = p5pdiv(&r0, &r1, axis);
        let (ct, pp) = p5primitive(&rem);
        {
            // the lc's q-minimal layer joins the factor pool: extraneous
            // factors of PRS endpoints are powers of these
            let lc = coef(&r1, deg(&r1));
            if !lc.is_empty() {
                let qmin = lc.keys().map(|m| m.2).min().unwrap();
                let t0: Vec<String> = lc.iter().filter(|(m, _)| m.2 == qmin)
                    .map(|(m, c)| format!("{}*r**{}*s**{}", c, m.0, m.1)).collect();
                POOLDUMP.lock().unwrap().insert(t0.join(" + "));
            }
        }
        // exact self-check: lc^k * r0 == q * r1 + ct * pp
        let lc = coef(&r1, deg(&r1));
        let mut lhs = r0.clone();
        for _ in 0..k { lhs = p5mul(&lhs, &lc); }
        let rhs = p5add(&p5mul(&q, &r1), &p5scale(&pp, &ct));
        assert_eq!(lhs, rhs, "PRS step identity failed");
        steps.push(PrsStep { axis, k, r0: r0.clone(), r1: r1.clone(),
                             q, ct, r2: pp.clone() });
        r0 = r1; r1 = pp;
    }
}

/// PRS elimination with primitive-part reduction each step.
/// Returns the axis-free endpoint; pushes (k, terms, maxbits) per step.
fn prs_chain(f: &P5, g: &P5, axis: u8, stats: &mut Vec<(u32, usize, u64)>) -> Option<P5> {
    let deg = |p: &P5| if axis == 0 { ydeg(p) } else { xdeg(p) };
    let (mut r0, mut r1) = if deg(f) >= deg(g) { (f.clone(), g.clone()) }
                           else { (g.clone(), f.clone()) };
    loop {
        if r1.is_empty() { return None; }
        if deg(&r1) == 0 { return Some(r1); }
        let (k, _q, rem) = p5pdiv(&r0, &r1, axis);
        let (_ct, pp) = p5primitive(&rem);
        let maxbits = pp.values().map(|c| c.bits()).max().unwrap_or(0);
        stats.push((k, pp.len(), maxbits));
        r0 = r1; r1 = pp;
    }
}

/// Classify an (r, s, q)-polynomial: q-grade then nonvanishing of the
/// minimal layer as an (r, s)-form.
fn classify_rsq(p: &P5) -> &'static str {
    if p.is_empty() { return "IDENTICALLY ZERO"; }
    let qmin = p.keys().map(|m| m.2).min().unwrap();
    let t0: Vec<(u16, u16, BigInt)> = p.iter().filter(|(m, _)| m.2 == qmin)
        .map(|(m, c)| (m.0, m.1, c.clone())).collect();
    let single = p.keys().all(|m| m.2 == qmin);
    // empirical nonvanishing on Gaussian pi^2-data (r, s) for p < 500,
    // plus the trivial-root parity screen: forms vanishing at data are flagged.
    let mut vanishes = false;
    'outer: for pp in 5i64..500 {
        if (2..pp).take_while(|k| k * k <= pp).any(|k| pp % k == 0) || pp % 4 != 1 { continue; }
        let (mut aa, mut bb) = (0i64, 0i64);
        'rep: for a_ in 1..pp {
            let b2 = pp - a_ * a_;
            if b2 <= 0 { break; }
            let b_ = (b2 as f64).sqrt() as i64;
            for bc in [b_ - 1, b_, b_ + 1] {
                if bc > 0 && bc * bc == b2 { aa = a_; bb = bc; break 'rep; }
            }
        }
        for (rr, ss) in [(aa * aa - bb * bb, 2 * aa * bb), (bb * bb - aa * aa, -2 * aa * bb)] {
            let mut acc = BigInt::zero();
            for (er, es, c) in &t0 {
                let mut t = c.clone();
                for _ in 0..*er { t *= BigInt::from(rr); }
                for _ in 0..*es { t *= BigInt::from(ss); }
                acc += t;
            }
            if acc.is_zero() { vanishes = true; break 'outer; }
        }
    }
    if !vanishes {
        if single { "DEAD (single level, no vanishing on data; oracle-pending)" }
        else { "THIN (q-grade band, t0 nonzero on data)" }
    } else { "UNRESOLVED (t0 vanishes on data)" }
}
