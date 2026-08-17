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
    let (a, b) = (2u16, 3u16);
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
    let mut total = 0u64;
    let mut surv = 0u64;
    let mut relset: HashSet<Vec<(usize, i128)>> = HashSet::new();
    let mut pairset: HashSet<(Vec<(usize, i128)>, Vec<(usize, i128)>)> = HashSet::new();
    for ia in 0..n { for ib in 0..n { for ic in 0..n { for id in 0..n {
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
    }}}}
    println!("({a},{b}): {total} leaves, survivors {surv}, distinct relations {}, pairs {}",
             relset.len(), pairset.len());
    // factor screen per relation
    let lib = library((2 * b.max(a) + 2) as u16);
    let mut dead = 0u64;
    let mut cores: HashMap<Vec<(Mono, i128)>, u32> = HashMap::new();
    for rel in &relset {
        let mut t = Poly::new();
        for &(i, c) in rel {
            t = padd(&t, &pscale(&ep[i], c));
        }
        let core = screen(t, &lib);
        if core.is_empty() || (core.len() == 1 && core.keys().next().unwrap() == &(0, 0, 0, 0)) {
            dead += 1;
            continue;
        }
        if grade_unit(&core) { dead += 1; continue; }
        let key: Vec<(Mono, i128)> = core.iter().map(|(m, c)| (*m, *c)).collect();
        *cores.entry(key).or_insert(0) += 1;
    }
    println!("relations dead by screen/grade: {dead} / {}", relset.len());
    println!("distinct core shapes: {}", cores.len());
    // balance classification of cores
    let mut bal = 0;
    let mut nonbal = 0;
    for (key, _) in &cores {
        let p: Poly = key.iter().cloned().collect();
        let pc = pconj(&p);
        let diff = padd(&p, &pneg(&pc));
        let sum = padd(&p, &pc);
        if diff.is_empty() || sum.is_empty() { bal += 1; } else { nonbal += 1; }
    }
    println!("core shapes: balance {bal}, non-balance {nonbal}");
}
