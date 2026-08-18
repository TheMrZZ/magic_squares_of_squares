// The three-prime certifier (Milestone 3): center roots s·p^a·q^b·r^c.
//
// Symbol space: six variables (u, v, x, y, z, w) standing for
// (π², π̄², χ², χ̄², ρ², ρ̄²) over the split primes p, q, r.
// Classes are the nonzero index triples (j, k, l) ≤ (a, b, c) with
// orientation flags on the non-anchor primes; the element value is
// 2i·Im(monomial)·p^(2(a−j))·q^(2(b−k))·r^(2(c−l)).
//
// Phase 1 (this file): leaf enumeration with the triple lone screen,
// relation dedup, and the library screen on all three sides.
use rayon::prelude::*;
use std::collections::{BTreeMap, HashMap, HashSet};
use std::sync::atomic::{AtomicUsize, Ordering};

type M6 = (u16, u16, u16, u16, u16, u16);
type Poly = BTreeMap<M6, i128>;

static PHASE: AtomicUsize = AtomicUsize::new(0);
static DONE: AtomicUsize = AtomicUsize::new(0);
static TOTAL: AtomicUsize = AtomicUsize::new(1);
const PHASES: [&str; 4] = ["startup", "leaf enumeration", "relation screen", "pair verdicts"];

fn set_phase(p: usize, total: usize) {
    PHASE.store(p, Ordering::Relaxed);
    DONE.store(0, Ordering::Relaxed);
    TOTAL.store(total.max(1), Ordering::Relaxed);
}
fn tick() { DONE.fetch_add(1, Ordering::Relaxed); }

fn start_heartbeat() {
    std::thread::spawn(|| {
        let t0 = std::time::Instant::now();
        loop {
            std::thread::sleep(std::time::Duration::from_secs(20));
            let el = t0.elapsed().as_secs();
            let p = PHASE.load(Ordering::Relaxed);
            let d = DONE.load(Ordering::Relaxed);
            let t = TOTAL.load(Ordering::Relaxed);
            eprintln!("[heartbeat {el}s] phase {}: {:.1}% ({d}/{t})",
                PHASES[p.min(3)], 100.0 * d as f64 / t as f64);
        }
    });
}

fn padd(a: &Poly, b: &Poly) -> Poly {
    let mut r = a.clone();
    for (m, c) in b {
        let e = r.entry(*m).or_insert(0);
        *e += c;
        if *e == 0 { r.remove(m); }
    }
    r
}
fn pneg(a: &Poly) -> Poly { a.iter().map(|(m, c)| (*m, -c)).collect() }
fn pscale(a: &Poly, s: i128) -> Poly {
    if s == 0 { return Poly::new(); }
    a.iter().map(|(m, c)| (*m, c * s)).collect()
}
fn pmul(a: &Poly, b: &Poly) -> Poly {
    let mut r = Poly::new();
    for (m1, c1) in a {
        for (m2, c2) in b {
            let m = (m1.0 + m2.0, m1.1 + m2.1, m1.2 + m2.2,
                     m1.3 + m2.3, m1.4 + m2.4, m1.5 + m2.5);
            let e = r.entry(m).or_insert(0);
            *e += c1 * c2;
            if *e == 0 { r.remove(&m); }
        }
    }
    r
}
fn pmono(m: M6, c: i128) -> Poly {
    let mut p = Poly::new();
    p.insert(m, c);
    p
}
/// Conjugation: swap (u,v), (x,y), (z,w).
fn pconj(p: &Poly) -> Poly {
    p.iter().map(|(m, c)| ((m.1, m.0, m.3, m.2, m.5, m.4), *c)).collect()
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
struct Class { j: u16, k: u16, l: u16, sx: i8, sz: i8 }

/// The class list: nonzero (j,k,l) with orientation flags on the
/// non-anchor nonzero positions (the anchor is the first nonzero
/// prime; its orientation is the global-conjugation normal form).
fn classes(a: u16, b: u16, c: u16) -> Vec<Class> {
    let mut out = Vec::new();
    for j in 0..=a {
        for k in 0..=b {
            for l in 0..=c {
                if j == 0 && k == 0 && l == 0 { continue; }
                let sxs: Vec<i8> = if k == 0 { vec![1] }
                    else if j == 0 { vec![1] } // chi is the anchor
                    else { vec![1, -1] };
                for &sx in &sxs {
                    let szs: Vec<i8> = if l == 0 { vec![1] }
                        else if j == 0 && k == 0 { vec![1] } // rho is the anchor
                        else { vec![1, -1] };
                    for &sz in &szs {
                        out.push(Class { j, k, l, sx, sz });
                    }
                }
            }
        }
    }
    out
}

/// 2i times the element value, as a symbol-space polynomial.
fn elem_poly(a: u16, b: u16, c: u16, e: Class) -> Poly {
    let mx = if e.sx >= 0 { (0, 0, 2 * e.k, 0, 0, 0) } else { (0, 0, 0, 2 * e.k, 0, 0) };
    let mz = if e.sz >= 0 { (0, 0, 0, 0, 2 * e.l, 0) } else { (0, 0, 0, 0, 0, 2 * e.l) };
    let w = pmul(&pmono((2 * e.j, 0, 0, 0, 0, 0), 1),
                 &pmul(&pmono(mx, 1), &pmono(mz, 1)));
    let core = padd(&w, &pneg(&pconj(&w)));
    let scale = pmono((a - e.j, a - e.j, b - e.k, b - e.k, c - e.l, c - e.l), 1);
    pmul(&core, &scale)
}

/// The nonzero-factor library: conjugate-pair binomials and pinch
/// forms on each of the three sides.
fn library(maxdeg: u16) -> Vec<Poly> {
    let mut lib = Vec::new();
    let sides: [(usize, usize); 3] = [(0, 1), (2, 3), (4, 5)];
    let mono = |i: usize, e: u16| -> M6 {
        let mut m = [0u16; 6];
        m[i] = e;
        (m[0], m[1], m[2], m[3], m[4], m[5])
    };
    for j in 1..=maxdeg {
        for (i0, i1) in sides {
            for s2 in [1i128, -1] {
                lib.push(padd(&pmono(mono(i0, j), 1), &pmono(mono(i1, j), s2)));
            }
            for cc in [1i128, 2, -1, -2] {
                let mut m01 = [0u16; 6];
                m01[i0] = j;
                m01[i1] = j;
                let p = padd(&padd(&pmono(mono(i0, 2 * j), 1), &pmono(mono(i1, 2 * j), 1)),
                             &pmono((m01[0], m01[1], m01[2], m01[3], m01[4], m01[5]), cc));
                lib.push(p);
            }
        }
    }
    lib
}

/// Exact division in the symbol space.
fn pdiv(a: &Poly, b: &Poly) -> Option<Poly> {
    if b.is_empty() { return None; }
    let (blm, blc) = { let (m, c) = b.iter().next_back().unwrap(); (*m, *c) };
    let mut rem = a.clone();
    let mut quo = Poly::new();
    while !rem.is_empty() {
        let (rlm, rlc) = { let (m, c) = rem.iter().next_back().unwrap(); (*m, *c) };
        if rlm.0 < blm.0 || rlm.1 < blm.1 || rlm.2 < blm.2
            || rlm.3 < blm.3 || rlm.4 < blm.4 || rlm.5 < blm.5 { return None; }
        if rlc % blc != 0 { return None; }
        let qm = (rlm.0 - blm.0, rlm.1 - blm.1, rlm.2 - blm.2,
                  rlm.3 - blm.3, rlm.4 - blm.4, rlm.5 - blm.5);
        let t = pmono(qm, rlc / blc);
        quo = padd(&quo, &t);
        rem = padd(&rem, &pneg(&pmul(&t, b)));
    }
    Some(quo)
}

/// Strip the monomial content in every variable.
fn strip(p: &Poly) -> Poly {
    if p.is_empty() { return p.clone(); }
    let mins = [
        p.keys().map(|m| m.0).min().unwrap(),
        p.keys().map(|m| m.1).min().unwrap(),
        p.keys().map(|m| m.2).min().unwrap(),
        p.keys().map(|m| m.3).min().unwrap(),
        p.keys().map(|m| m.4).min().unwrap(),
        p.keys().map(|m| m.5).min().unwrap(),
    ];
    p.iter().map(|(m, c)| ((m.0 - mins[0], m.1 - mins[1], m.2 - mins[2],
                            m.3 - mins[3], m.4 - mins[4], m.5 - mins[5]), *c)).collect()
}

fn screen(mut p: Poly, lib: &[Poly]) -> Poly {
    if p.is_empty() { return p; }
    p = strip(&p);
    let mut changed = true;
    while changed {
        changed = false;
        for f in lib {
            if let Some(q) = pdiv(&p, f) {
                if !q.is_empty() {
                    p = strip(&q);
                    changed = true;
                }
            }
        }
    }
    p
}

/// Lone minimal layer with unit coefficient in any of the 6 valuations.
fn grade_unit(p: &Poly) -> bool {
    for i in 0..6 {
        let get = |m: &M6| [m.0, m.1, m.2, m.3, m.4, m.5][i];
        let mn = p.keys().map(&get).min().unwrap();
        let lay: Vec<_> = p.iter().filter(|(m, _)| get(m) == mn).collect();
        if lay.len() == 1 && lay[0].1.abs() == 1 { return true; }
    }
    false
}

// ---------------- phase 2: the (r,s,q,X,Y,w,U,V) engine ----------------
use num_bigint::BigInt;
use num_traits::{Zero as _, One as _, Signed as _};

type M8 = [u16; 8];
type P8 = BTreeMap<M8, BigInt>;

fn p8add(a: &P8, b: &P8) -> P8 {
    let mut r = a.clone();
    for (m, c) in b {
        let e = r.entry(*m).or_insert_with(BigInt::zero);
        *e += c;
        if e.is_zero() { r.remove(m); }
    }
    r
}
fn p8neg(a: &P8) -> P8 { a.iter().map(|(m, c)| (*m, -c.clone())).collect() }
fn p8mul(a: &P8, b: &P8) -> P8 {
    let mut r = P8::new();
    for (m1, c1) in a {
        for (m2, c2) in b {
            let mut m = [0u16; 8];
            for i in 0..8 { m[i] = m1[i] + m2[i]; }
            let e = r.entry(m).or_insert_with(BigInt::zero);
            *e += c1 * c2;
            if e.is_zero() { r.remove(&m); }
        }
    }
    r
}
fn p8mono(m: M8, c: i128) -> P8 {
    let mut p = P8::new();
    p.insert(m, BigInt::from(c));
    p
}

/// (re, im) of (base_re + i*base_im)^e * (base_re - i*base_im)^f where
/// the base pair sits at variable positions (ir, ii).
fn conj_pow_pair(ir: usize, ii: usize, e: u16, f: u16) -> (P8, P8) {
    let mut mre = [0u16; 8]; mre[ir] = 1;
    let mut mim = [0u16; 8]; mim[ii] = 1;
    let xr = p8mono(mre, 1);
    let xi = p8mono(mim, 1);
    let pow = |n: u16, conj: bool| -> (P8, P8) {
        let mut re = p8mono([0; 8], 1);
        let mut im = P8::new();
        let xi_s = if conj { p8neg(&xi) } else { xi.clone() };
        for _ in 0..n {
            let nre = p8add(&p8mul(&re, &xr), &p8neg(&p8mul(&im, &xi_s)));
            let nim = p8add(&p8mul(&re, &xi_s), &p8mul(&im, &xr));
            re = nre; im = nim;
        }
        (re, im)
    };
    let (ar, ai) = pow(e, false);
    let (br, bi) = pow(f, true);
    (p8add(&p8mul(&ar, &br), &p8neg(&p8mul(&ai, &bi))),
     p8add(&p8mul(&ar, &bi), &p8mul(&ai, &br)))
}

/// The raw (re, im) parts of a symbol-space core at the value point.
fn core_to_reim3(core: &Poly) -> (P8, P8) {
    let mut re_acc = P8::new();
    let mut im_acc = P8::new();
    for (m, c) in core {
        let (pr, pi) = conj_pow_pair(0, 1, m.0, m.1); // pi-side at (r,s)
        let (xr, xi) = conj_pow_pair(3, 4, m.2, m.3); // chi-side at (X,Y)
        let (zr, zi) = conj_pow_pair(6, 7, m.4, m.5); // rho-side at (U,V)
        // triple complex product
        let t1r = p8add(&p8mul(&pr, &xr), &p8neg(&p8mul(&pi, &xi)));
        let t1i = p8add(&p8mul(&pr, &xi), &p8mul(&pi, &xr));
        let tr = p8add(&p8mul(&t1r, &zr), &p8neg(&p8mul(&t1i, &zi)));
        let ti = p8add(&p8mul(&t1r, &zi), &p8mul(&t1i, &zr));
        let cc = p8mono([0; 8], *c);
        re_acc = p8add(&re_acc, &p8mul(&cc, &tr));
        im_acc = p8add(&im_acc, &p8mul(&cc, &ti));
    }
    (re_acc, im_acc)
}

/// Degree and coefficient extraction along one variable.
fn vdeg(p: &P8, i: usize) -> u16 { p.keys().map(|m| m[i]).max().unwrap_or(0) }
fn vcoef(p: &P8, i: usize, k: u16) -> P8 {
    p.iter().filter(|(m, _)| m[i] == k)
        .map(|(m, c)| { let mut mm = *m; mm[i] = 0; (mm, c.clone()) }).collect()
}

fn p8primitive(p: &P8) -> P8 {
    let mut g = BigInt::zero();
    for c in p.values() {
        let mut x = g.clone();
        let mut y = c.abs();
        while !y.is_zero() { let t = &x % &y; x = y; y = t; }
        g = x;
    }
    if g.is_zero() || g == BigInt::one() { return p.clone(); }
    p.iter().map(|(m, c)| (*m, c / &g)).collect()
}

/// Fueled pseudo-division along variable i.
fn p8pdiv(a: &P8, b: &P8, i: usize) -> (P8, P8) {
    let db = vdeg(b, i);
    let c = vcoef(b, i, db);
    let mut rem = a.clone();
    let mut quo = P8::new();
    let mut guard = 0;
    while !rem.is_empty() && vdeg(&rem, i) >= db && db > 0 {
        let dr = vdeg(&rem, i);
        let lr = vcoef(&rem, i, dr);
        let mut sh = [0u16; 8]; sh[i] = dr - db;
        let shift = p8mul(&lr, &p8mono(sh, 1));
        quo = p8add(&p8mul(&c, &quo), &shift);
        rem = p8add(&p8mul(&c, &rem), &p8neg(&p8mul(&shift, b)));
        guard += 1;
        if guard > 400 { break; }
    }
    (quo, rem)
}

/// PRS elimination of variable i from (f, g): the primitive endpoint.
fn prs3(f: &P8, g: &P8, i: usize) -> Option<P8> {
    let (mut r0, mut r1) = if vdeg(f, i) >= vdeg(g, i) { (f.clone(), g.clone()) }
                           else { (g.clone(), f.clone()) };
    loop {
        if r1.is_empty() { return None; }
        if vdeg(&r1, i) == 0 { return Some(r1); }
        let (_, rem) = p8pdiv(&r0, &r1, i);
        let pp = p8primitive(&rem);
        r0 = r1; r1 = pp;
    }
}

fn split_primes3(bound: i64) -> Vec<(i64, i64, i64)> {
    let mut out = Vec::new();
    for t in (5..=bound).step_by(4) {
        let is_prime = (2..t).take_while(|d| d * d <= t).all(|d| t % d != 0);
        if !is_prime { continue; }
        for bb in (2..t).step_by(2) {
            let aa2 = t - bb * bb;
            if aa2 <= 0 { break; }
            let aa = (aa2 as f64).sqrt().round() as i64;
            if aa * aa == aa2 && aa % 2 == 1 {
                out.push((t, aa * aa - bb * bb, 2 * aa * bb));
                break;
            }
        }
    }
    out
}

/// Specialize a P8 polynomial at data (all vars except position `keep`)
/// into a univariate coefficient vector mod md.
fn specialize_mod(p: &P8, vals: &[i128; 8], keep: usize, md: i128) -> Vec<i128> {
    let d = p.keys().map(|m| m[keep]).max().unwrap_or(0) as usize;
    let mut cv = vec![0i128; d + 1];
    for (m, c) in p {
        let mut t = {
            let r = c % md;
            let mut v: i128 = r.to_string().parse().unwrap();
            if v < 0 { v += md; }
            v
        };
        for i in 0..8 {
            if i != keep && m[i] > 0 {
                t = t * modpow3(vals[i], m[i] as u32, md) % md;
            }
        }
        cv[m[keep] as usize] = (cv[m[keep] as usize] + t) % md;
    }
    while cv.len() > 1 && *cv.last().unwrap() == 0 { cv.pop(); }
    cv
}

/// Common-root test mod md: true when the two univariate polynomials
/// can share a root modulo md (gcd degree >= 1, or a zero reduction —
/// the inconclusive case counts as "maybe" and the caller rechecks).
fn share_root_mod(f0: &[i128], g0: &[i128], md: i128) -> bool {
    let trim = |v: &mut Vec<i128>| { while v.len() > 1 && *v.last().unwrap() == 0 { v.pop(); } };
    let mut f = f0.to_vec();
    let mut g = g0.to_vec();
    trim(&mut f);
    trim(&mut g);
    let iszero = |v: &Vec<i128>| v.len() == 1 && v[0] == 0;
    if iszero(&f) || iszero(&g) { return true; }
    let mut guard = 0usize;
    let cap = 4 * (f.len() + g.len()) + 64;
    loop {
        guard += 1;
        if guard > cap { return true; } // bail as suspicious
        if f.len() < g.len() { std::mem::swap(&mut f, &mut g); }
        if g.len() == 1 { return false; } // nonzero constant gcd: coprime
        let gl = modpow3(*g.last().unwrap(), (md - 2) as u32, md);
        while f.len() >= g.len() {
            let k = f.len() - g.len();
            let c = *f.last().unwrap() % md * gl % md;
            for i in 0..g.len() {
                f[k + i] = ((f[k + i] - c * g[i]) % md + md) % md;
            }
            trim(&mut f);
            if iszero(&f) { return true; } // g divides f: gcd = g, deg >= 1
        }
        std::mem::swap(&mut f, &mut g);
    }
}

fn modpow64(mut b: i64, mut e: u64, m: i64) -> i64 {
    let mut r = 1i64;
    b %= m;
    if b < 0 { b += m; }
    while e > 0 {
        if e & 1 == 1 { r = r * b % m; }
        b = b * b % m;
        e >>= 1;
    }
    r
}

fn share_root_mod64(f0: &[i64], g0: &[i64], md: i64) -> bool {
    let trim = |v: &mut Vec<i64>| { while v.len() > 1 && *v.last().unwrap() == 0 { v.pop(); } };
    let mut f = f0.to_vec();
    let mut g = g0.to_vec();
    trim(&mut f);
    trim(&mut g);
    let iszero = |v: &Vec<i64>| v.len() == 1 && v[0] == 0;
    if iszero(&f) || iszero(&g) { return true; }
    let mut guard = 0usize;
    let cap = 4 * (f.len() + g.len()) + 64;
    loop {
        guard += 1;
        if guard > cap { return true; } // bail as suspicious
        if f.len() < g.len() { std::mem::swap(&mut f, &mut g); }
        if g.len() == 1 { return false; } // nonzero constant gcd: coprime
        let gl = modpow64(*g.last().unwrap(), (md - 2) as u64, md);
        while f.len() >= g.len() {
            let k = f.len() - g.len();
            let c = *f.last().unwrap() % md * gl % md;
            for i in 0..g.len() {
                f[k + i] = ((f[k + i] - c * g[i]) % md + md) % md;
            }
            trim(&mut f);
            if iszero(&f) { return true; } // g divides f: gcd = g, deg >= 1
        }
        std::mem::swap(&mut f, &mut g);
    }
}

fn modpow3(mut b: i128, mut e: u32, m: i128) -> i128 {
    let mut r = 1i128;
    b %= m;
    if b < 0 { b += m; }
    while e > 0 {
        if e & 1 == 1 { r = r * b % m; }
        b = b * b % m;
        e >>= 1;
    }
    r
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let a: u16 = args.get(1).and_then(|x| x.parse().ok()).unwrap_or(1);
    let b: u16 = args.get(2).and_then(|x| x.parse().ok()).unwrap_or(1);
    let c: u16 = args.get(3).and_then(|x| x.parse().ok()).unwrap_or(1);
    start_heartbeat();
    let els = classes(a, b, c);
    let n = els.len();
    println!("({a},{b},{c}): {n} classes");
    let ep: Vec<Poly> = els.iter().map(|&e| elem_poly(a, b, c, e)).collect();
    let pexp: Vec<u16> = els.iter().map(|e| 2 * (a - e.j)).collect();
    let qexp: Vec<u16> = els.iter().map(|e| 2 * (b - e.k)).collect();
    let rexp: Vec<u16> = els.iter().map(|e| 2 * (c - e.l)).collect();
    let lone = |rel: &[(usize, i128)]| -> bool {
        for exps in [&pexp, &qexp, &rexp] {
            let vs: Vec<u16> = rel.iter().map(|&(i, _)| exps[i]).collect();
            let mn = *vs.iter().min().unwrap();
            if vs.iter().filter(|&&v| v == mn).count() == 1 { return true; }
        }
        false
    };
    // phase 1: leaves
    set_phase(1, n);
    let (total, surv, relset, pairset): (u64, u64, HashSet<Vec<(usize, i128)>>,
                     HashSet<(Vec<(usize, i128)>, Vec<(usize, i128)>)>) =
        (0..n).into_par_iter().map(|ia| {
            tick();
            let mut total = 0u64;
            let mut surv = 0u64;
            let mut relset: HashSet<Vec<(usize, i128)>> = HashSet::new();
            let mut pairset: HashSet<(Vec<(usize, i128)>, Vec<(usize, i128)>)> = HashSet::new();
            for ib in 0..n { for ic in 0..n { for id in 0..n {
                if ia == ib || ia == ic || ia == id
                    || ib == ic || ib == id || ic == id { continue; }
                for e2 in [1i128, -1] { for e3 in [1i128, -1] { for e4 in [1i128, -1] {
                    total += 1;
                    let mut r1 = vec![(ic, e3), (id, e4), (ia, -2)];
                    let mut r2 = vec![(ic, e3), (id, -e4), (ib, -2 * e2)];
                    if lone(&r1) || lone(&r2) { continue; }
                    surv += 1;
                    r1.sort(); r2.sort();
                    let norm = |r: &Vec<(usize, i128)>| -> Vec<(usize, i128)> {
                        let neg: Vec<(usize, i128)> = {
                            let mut t: Vec<_> = r.iter().map(|&(i, cc)| (i, -cc)).collect();
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
        }).reduce(|| (0u64, 0u64, HashSet::new(), HashSet::new()), |mut acc, x| {
            acc.0 += x.0; acc.1 += x.1;
            // extend the larger set with the smaller one
            if acc.2.len() < x.2.len() { let t = acc.2; acc.2 = x.2; acc.2.extend(t); }
            else { acc.2.extend(x.2); }
            if acc.3.len() < x.3.len() { let t = acc.3; acc.3 = x.3; acc.3.extend(t); }
            else { acc.3.extend(x.3); }
            acc
        });
    println!("({a},{b},{c}): {total} leaves, lone-survivors {surv} ({:.1}% killed), \
              distinct relations {}, pairs {}",
        100.0 * (total - surv) as f64 / total as f64, relset.len(), pairset.len());
    // phase 2: library screen per relation
    let lib = library(2 * a.max(b).max(c) + 2);
    set_phase(2, relset.len());
    let relvec: Vec<Vec<(usize, i128)>> = relset.iter().cloned().collect();
    let screened: Vec<(Vec<(usize, i128)>, Poly, &'static str)> =
        relvec.par_iter().map(|rel| {
            tick();
            let mut t = Poly::new();
            for &(i, cc) in rel { t = padd(&t, &pscale(&ep[i], cc)); }
            let core = screen(t, &lib);
            let verdict: &'static str = if core.is_empty()
                || (core.len() == 1 && *core.keys().next().unwrap() == (0, 0, 0, 0, 0, 0)) {
                "monomial"
            } else if grade_unit(&core) { "unit" } else { "live" };
            (rel.clone(), core, verdict)
        }).collect();
    let mut vcount: HashMap<&str, u32> = HashMap::new();
    for (_, _, v) in &screened { *vcount.entry(v).or_insert(0) += 1; }
    println!("relation screen: {:?}", vcount);
    // phase 3: pair verdicts (screen-level only in phase 1)
    set_phase(3, pairset.len());
    let relmap: HashMap<&Vec<(usize, i128)>, &&'static str> =
        screened.iter().map(|(r, _, v)| (r, v)).collect();
    let mut dead_pairs = 0u64;
    let mut live_pairs = 0u64;
    for (k1, k2) in &pairset {
        tick();
        let v1 = **relmap.get(k1).unwrap();
        let v2 = **relmap.get(k2).unwrap();
        if v1 != "live" || v2 != "live" { dead_pairs += 1; } else { live_pairs += 1; }
    }
    println!("pairs: {dead_pairs} dead by screen, {live_pairs} live (need elimination)");
    // phase 4: eliminate to the univariate eliminant per distinct core pair
    let coremap: HashMap<&Vec<(usize, i128)>, &Poly> =
        screened.iter().map(|(r, cpoly, _)| (r, cpoly)).collect();
    let mut corepairs: HashSet<(String, String)> = HashSet::new();
    let pser = |p: &Poly| -> String {
        p.iter().map(|(m, c)| format!("{c},{},{},{},{},{},{}",
            m.0, m.1, m.2, m.3, m.4, m.5)).collect::<Vec<_>>().join(";")
    };
    let mut pairlist: Vec<(Poly, Poly)> = Vec::new();
    for (k1, k2) in &pairset {
        let v1 = **relmap.get(k1).unwrap();
        let v2 = **relmap.get(k2).unwrap();
        if v1 != "live" || v2 != "live" { continue; }
        let c1 = (*coremap.get(k1).unwrap()).clone();
        let c2 = (*coremap.get(k2).unwrap()).clone();
        let key = (pser(&c1), pser(&c2));
        let keyr = (key.1.clone(), key.0.clone());
        if corepairs.contains(&key) || corepairs.contains(&keyr) { continue; }
        corepairs.insert(key);
        pairlist.push((c1, c2));
    }
    drop(relmap); drop(coremap); drop(corepairs);
    drop(pairset); drop(relset); drop(screened); drop(relvec);
    println!("distinct live core pairs: {}", pairlist.len());
    set_phase(3, pairlist.len());
    // circles: Q at (X,Y,q) = positions (3,4,2); W at (U,V,w) = (6,7,5)
    let mut mq2 = [0u16; 8]; mq2[2] = 2;
    let mut mx2 = [0u16; 8]; mx2[3] = 2;
    let mut my2 = [0u16; 8]; my2[4] = 2;
    let circle_q = p8add(&p8add(&p8mono(mx2, 1), &p8mono(my2, 1)), &p8mono(mq2, -1));
    let mut mw2 = [0u16; 8]; mw2[5] = 2;
    let mut mu2 = [0u16; 8]; mu2[6] = 2;
    let mut mv2 = [0u16; 8]; mv2[7] = 2;
    let circle_w = p8add(&p8add(&p8mono(mu2, 1), &p8mono(mv2, 1)), &p8mono(mw2, -1));
    // per-core memo of the shared early elimination stages
    let mut coreset: Vec<Poly> = Vec::new();
    let mut coreidx: HashMap<String, usize> = HashMap::new();
    for (c1, c2) in &pairlist {
        for cc in [c1, c2] {
            let k = pser(cc);
            if !coreidx.contains_key(&k) {
                coreidx.insert(k, coreset.len());
                coreset.push((*cc).clone());
            }
        }
    }
    println!("distinct live cores: {}", coreset.len());
    let pick = |core: &Poly| -> Option<P8> {
        let (re, im) = core_to_reim3(core);
        match (re.is_empty(), im.is_empty()) {
            (false, true) => Some(re),
            (true, false) => Some(im),
            (false, false) => Some(re),
            (true, true) => None,
        }
    };
    // verdict cache: "corepair-key<TAB>verdict" per line; a hit skips
    // the whole elimination + data check for that pair
    let cache_path = format!("elim_cache_{a}_{b}_{c}.txt");
    let cache: HashMap<String, String> = match std::fs::read_to_string(&cache_path) {
        Ok(txt) => txt.lines().filter_map(|l| {
            l.split_once('\t').map(|(k, v)| (k.to_string(), v.to_string()))
        }).collect(),
        Err(_) => HashMap::new(),
    };
    let cache_new: std::sync::Mutex<Vec<String>> = std::sync::Mutex::new(Vec::new());
    let flush = |buf: &std::sync::Mutex<Vec<String>>, path: &str| {
        use std::io::Write as _;
        let mut g = buf.lock().unwrap();
        if g.is_empty() { return; }
        let mut cf = std::fs::OpenOptions::new().create(true).append(true)
            .open(path).unwrap();
        for l in g.iter() { writeln!(cf, "{l}").unwrap(); }
        g.clear();
    };
    let p8ser = |p: &P8| -> String {
        p.iter().map(|(m, c)| format!("{c},{},{},{},{},{},{},{},{}",
            m[0], m[1], m[2], m[3], m[4], m[5], m[6], m[7]))
            .collect::<Vec<_>>().join(";")
    };
    let dump: std::sync::Mutex<Vec<String>> = std::sync::Mutex::new(Vec::new());
    let vdump: std::sync::Mutex<Vec<String>> = std::sync::Mutex::new(Vec::new());
    set_phase(2, coreset.len());
    let gtable: Vec<Option<P8>> = coreset.par_iter().map(|core| {
        tick();
        let e = pick(core)?;
        let ff = prs3(&e, &circle_w, 7)?;
        prs3(&ff, &circle_q, 4)
    }).collect();
    // the fast route, point-outer: per data point, substitute
    // (r, ±s, q, w) into every core's g once (X, U stay symbolic),
    // then test each pair's univariate polynomials for a common root.
    // A pair with no suspicious point at all is dead.
    let fmods: [i64; 2] = [2147483647, 2147483629];
    let fdata = split_primes3(40);
    let mut fpoints: Vec<[i64; 4]> = Vec::new();
    for &(pp, rr, ss) in &fdata {
        for &(qq, _, _) in &fdata {
            if qq == pp { continue; }
            for &(ww, _, _) in &fdata {
                if ww == pp || ww == qq { continue; }
                for sg in [1i64, -1] {
                    fpoints.push([rr as i64, sg * ss as i64, qq as i64, ww as i64]);
                }
            }
        }
    }
    let xof: HashMap<i64, i64> = fdata.iter()
        .map(|&(t, x, _)| (t as i64, x as i64)).collect();
    let paircores: Vec<(usize, usize)> = pairlist.iter()
        .map(|(c1, c2)| (coreidx[&pser(c1)], coreidx[&pser(c2)])).collect();
    // pairs with a cache verdict skip the fast route entirely
    let cached_pair: Vec<bool> = pairlist.iter().map(|(c1, c2)| {
        cache.contains_key(&format!("{}||{}", pser(c1), pser(c2)))
    }).collect();
    let mut pair_susp: Vec<bool> = cached_pair.clone();
    let gviews: Vec<Option<(Vec<[u16; 8]>, Vec<[i64; 2]>)>> = gtable.iter().map(|go| {
        go.as_ref().map(|g| {
            let terms: Vec<[u16; 8]> = g.keys().cloned().collect();
            let cm: Vec<[i64; 2]> = g.values().map(|cc| {
                let mut out = [0i64; 2];
                for (mi, &md) in fmods.iter().enumerate() {
                    let r = cc % md;
                    let mut v: i64 = r.to_string().parse().unwrap();
                    if v < 0 { v += md; }
                    out[mi] = v;
                }
                out
            }).collect();
            (terms, cm)
        })
    }).collect();
    // the fat BigInt table is only needed for the few suspicious
    // cores later; recompute those on demand and free the table now
    let gof = |i: usize| -> Option<P8> {
        let e = pick(&coreset[i])?;
        let ff = prs3(&e, &circle_w, 7)?;
        prs3(&ff, &circle_q, 4)
    };
    let gnone: Vec<bool> = gtable.iter().map(|g| g.is_none()).collect();
    drop(gtable);
    println!("fast route: {} cores x {} points", coreset.len(), fpoints.len());
    set_phase(2, fpoints.len());
    for pt in &fpoints {
        tick();
        type Biv = [Vec<((u16, u16), i64)>; 2];
        type BivM = [HashMap<(u16, u16), i64>; 2];
        let bv: Vec<Option<Biv>> = gviews.par_iter().map(|gv| {
            let (terms, cm) = gv.as_ref()?;
            let mut out: BivM = [HashMap::new(), HashMap::new()];
            for (mi, &md) in fmods.iter().enumerate() {
                // power tables for the four data values, up to the max
                // exponent in this g
                let emax = terms.iter().map(|m| *m.iter().max().unwrap())
                    .max().unwrap_or(0) as usize;
                let mut powt = [vec![1i64; emax + 1], vec![1i64; emax + 1],
                    vec![1i64; emax + 1], vec![1i64; emax + 1]];
                for vi in 0..4 {
                    let mut base = pt[vi] % md;
                    if base < 0 { base += md; }
                    for e in 1..=emax { powt[vi][e] = powt[vi][e - 1] * base % md; }
                }
                for (m, c2) in terms.iter().zip(cm) {
                    let mut t = c2[mi];
                    if m[0] > 0 { t = t * powt[0][m[0] as usize] % md; }
                    if m[1] > 0 { t = t * powt[1][m[1] as usize] % md; }
                    if m[2] > 0 { t = t * powt[2][m[2] as usize] % md; }
                    if m[5] > 0 { t = t * powt[3][m[5] as usize] % md; }
                    let e = out[mi].entry((m[3], m[6])).or_insert(0);
                    *e = (*e + t) % md;
                }
            }
            Some([out[0].drain().collect(), out[1].drain().collect()])
        }).collect();
        let xq = xof[&pt[2]];
        let updates: Vec<bool> = paircores.par_iter().enumerate().map(|(pi, (i1c, i2c))| {
            if pair_susp[pi] { return true; }
            let (Some(b1), Some(b2)) = (&bv[*i1c], &bv[*i2c]) else { return true; };
            for sx in [1i64, -1] {
                let xv = sx * xq;
                let mut share_all = true;
                for (mi, &md) in fmods.iter().enumerate() {
                    let touni = |bmap: &Vec<((u16, u16), i64)>| -> Vec<i64> {
                        let du = bmap.iter().map(|k| k.0.1).max().unwrap_or(0) as usize;
                        let mut cv = vec![0i64; du + 1];
                        for &((xe, ue), cc) in bmap {
                            let t = cc * modpow64(xv, xe as u64, md) % md;
                            cv[ue as usize] = (cv[ue as usize] + t) % md;
                        }
                        while cv.len() > 1 && *cv.last().unwrap() == 0 { cv.pop(); }
                        cv
                    };
                    let fv = touni(&b1[mi]);
                    let gvv = touni(&b2[mi]);
                    if !share_root_mod64(&fv, &gvv, md) { share_all = false; break; }
                }
                if share_all { return true; }
            }
            false
        }).collect();
        pair_susp = updates;
    }
    let n_fast_dead = pair_susp.iter().zip(&cached_pair)
        .filter(|(&sp, &ca)| !sp && !ca).count();
    println!("fast route: {n_fast_dead} uncached pairs dead by specialized resultants");
    // pass 2 — direct data evaluation. X and U are both data-determined
    // (by q and w, up to sign), so a pair is dead when at every data
    // point and every sign combination at least one of g1, g2 is
    // nonzero. Nonzero mod one prime is a proof; a double mod-zero
    // gets an exact BigInt recheck.
    let susp_idx: Vec<usize> = (0..pairlist.len())
        .filter(|&pi| pair_susp[pi] && !cached_pair[pi]).collect();
    let mut fast2_dead: Vec<bool> = vec![false; pairlist.len()];
    if !susp_idx.is_empty() {
        println!("pass 2 (direct evaluation): {} suspicious pairs", susp_idx.len());
        set_phase(2, susp_idx.len());
        let exact_zero = |g: &P8, vals: &[i64; 8]| -> bool {
            let mut ex = BigInt::zero();
            for (mm, cc) in g.iter() {
                let mut t = cc.clone();
                for i in 0..8 {
                    for _ in 0..mm[i] { t *= vals[i]; }
                }
                ex += t;
            }
            ex.is_zero()
        };
        let dead2: Vec<(usize, bool)> = susp_idx.par_iter().map(|&pi| {
            tick();
            let (i1c, i2c) = paircores[pi];
            let (Some(gv1), Some(gv2)) = (&gviews[i1c], &gviews[i2c]) else {
                return (pi, false);
            };
            let evalg = |gv: &(Vec<[u16; 8]>, Vec<[i64; 2]>), vals: &[i64; 8],
                         mi: usize, md: i64| -> i64 {
                let (terms, cm) = gv;
                let mut acc = 0i64;
                for (m, c2) in terms.iter().zip(cm) {
                    let mut t = c2[mi];
                    for i in [0usize, 1, 2, 3, 5, 6] {
                        if m[i] > 0 { t = t * modpow64(vals[i], m[i] as u64, md) % md; }
                    }
                    acc = (acc + t) % md;
                }
                acc
            };
            for pt in &fpoints {
                let xq = xof[&pt[2]];
                let uw = xof[&pt[3]];
                for sx in [1i64, -1] {
                    for su in [1i64, -1] {
                        let vals: [i64; 8] = [pt[0], pt[1], pt[2], sx * xq, 0,
                            pt[3], su * uw, 0];
                        // soluble here only if both g's vanish exactly
                        let z1 = (0..2).all(|mi| evalg(gv1, &vals, mi, fmods[mi]) == 0)
                            && exact_zero(&gof(i1c).unwrap(), &vals);
                        if !z1 { continue; }
                        let z2 = (0..2).all(|mi| evalg(gv2, &vals, mi, fmods[mi]) == 0)
                            && exact_zero(&gof(i2c).unwrap(), &vals);
                        if z2 { return (pi, false); } // genuinely soluble point
                    }
                }
            }
            (pi, true)
        }).collect();
        for (pi, d) in dead2 { if d { fast2_dead[pi] = true; } }
        let n2 = fast2_dead.iter().filter(|&&x| x).count();
        println!("pass 2: {n2} of {} suspicious pairs dead by direct evaluation",
            susp_idx.len());
    }
    set_phase(3, pairlist.len());
    let stats: Vec<String> = pairlist.par_iter().enumerate().map(|(pi, (c1, c2))| {
        tick();
        let ckey = format!("{}||{}", pser(c1), pser(c2));
        if let Some(v) = cache.get(&ckey) {
            return v.clone();
        }
        let record = |st: String| -> String {
            {
                let mut g = cache_new.lock().unwrap();
                g.push(format!("{ckey}\t{st}"));
                if g.len() >= 500 { drop(g); flush(&cache_new, &cache_path); }
            }
            st
        };
        let _ = &record;
        let i1c = coreidx[&pser(c1)];
        let i2c = coreidx[&pser(c2)];
        if gnone[i1c] { return record("vanish-early-1".into()) }
        if gnone[i2c] { return record("vanish-early-2".into()) }
        let Some(g1) = gof(i1c) else { return record("vanish-early-1".into()) };
        let Some(g2) = gof(i2c) else { return record("vanish-early-2".into()) };
        // the point-outer fast route already tested this pair
        if !pair_susp[pi] {
            return record("dead (specialized resultant)".into());
        }
        if fast2_dead[pi] {
            return record("dead (direct data evaluation)".into());
        }
        // the alternate order still needs the raw parts
        let (Some(e1), Some(e2)) = (pick(c1), pick(c2)) else {
            return "empty-part".to_string();
        };
        let h = match prs3(&g1, &g2, 6) {
            Some(x) => x,
            None => {
                // alternate order: Y first, then V, then X across
                let a1 = match prs3(&e1, &circle_q, 4) { Some(x) => x, None => return "vanish2-Y1".into() };
                let a2 = match prs3(&e2, &circle_q, 4) { Some(x) => x, None => return "vanish2-Y2".into() };
                let b1 = match prs3(&a1, &circle_w, 7) { Some(x) => x, None => return "vanish2-V1".into() };
                let b2 = match prs3(&a2, &circle_w, 7) { Some(x) => x, None => return "vanish2-V2".into() };
                match prs3(&b1, &b2, 3) {
                    Some(h2) if !h2.is_empty() => {
                        // data check on the U-eliminant (X eliminated):
                        // live positions (0,1,2,5,6)
                        let md: i128 = (1 << 61) - 1;
                        let cmods: Vec<i128> = h2.values().map(|cc| {
                            let r = cc % md;
                            let mut v: i128 = r.to_string().parse().unwrap();
                            if v < 0 { v += md; }
                            v
                        }).collect();
                        let hterms: Vec<[u16; 8]> = h2.keys().cloned().collect();
                        let ddata = split_primes3(40);
                        let mut nzero = 0u32;
                        for &(pp, rr, ss) in &ddata {
                            for &(qq, _, _) in &ddata {
                                if qq == pp { continue; }
                                for &(ww, uu, _) in &ddata {
                                    if ww == pp || ww == qq { continue; }
                                    for su in [1i128, -1] {
                                        for sg in [1i128, -1] {
                                            let vals: [i128; 8] = [rr as i128,
                                                sg * ss as i128, qq as i128, 0, 0,
                                                ww as i128, su * uu as i128, 0];
                                            let mut acc = 0i128;
                                            for (mm, cm) in hterms.iter().zip(&cmods) {
                                                let mut t = *cm;
                                                for i in [0usize, 1, 2, 5, 6] {
                                                    if mm[i] > 0 {
                                                        t = t * modpow3(vals[i], mm[i] as u32, md) % md;
                                                    }
                                                }
                                                acc = (acc + t) % md;
                                            }
                                            if acc == 0 {
                                                let mut ex = BigInt::zero();
                                                for (mm, cc) in h2.iter() {
                                                    let mut t = cc.clone();
                                                    for i in 0..8 {
                                                        for _ in 0..mm[i] { t *= vals[i]; }
                                                    }
                                                    ex += t;
                                                }
                                                if ex.is_zero() { nzero += 1; }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if nzero > 0 {
                            return record(format!("alt-order DATA-ZERO x{nzero}"));
                        }
                        return record("dead (alt order, data-nonzero)".into());
                    }
                    _ => {
                        // the aligned special cells: every variable of the
                        // shared constraint g1 is data-determined (X by q,
                        // U by w, up to signs) — check g1 directly
                        let md: i128 = (1 << 61) - 1;
                        let cmods: Vec<i128> = g1.values().map(|cc| {
                            let rr = cc % md;
                            let mut v: i128 = rr.to_string().parse().unwrap();
                            if v < 0 { v += md; }
                            v
                        }).collect();
                        let hterms: Vec<[u16; 8]> = g1.keys().cloned().collect();
                        let ddata = split_primes3(40);
                        let mut nzero = 0u32;
                        for &(pp, rr, ss) in &ddata {
                            for &(qq, xx, _) in &ddata {
                                if qq == pp { continue; }
                                for &(ww, uu, _) in &ddata {
                                    if ww == pp || ww == qq { continue; }
                                    for sx in [1i128, -1] {
                                        for su in [1i128, -1] {
                                            for sg in [1i128, -1] {
                                                let vals: [i128; 8] = [rr as i128,
                                                    sg * ss as i128, qq as i128,
                                                    sx * xx as i128, 0, ww as i128,
                                                    su * uu as i128, 0];
                                                let mut acc = 0i128;
                                                for (mm, cm) in hterms.iter().zip(&cmods) {
                                                    let mut t = *cm;
                                                    for i in [0usize, 1, 2, 3, 5, 6] {
                                                        if mm[i] > 0 {
                                                            t = t * modpow3(vals[i], mm[i] as u32, md) % md;
                                                        }
                                                    }
                                                    acc = (acc + t) % md;
                                                }
                                                if acc == 0 {
                                                    let mut ex = BigInt::zero();
                                                    for (mm, cc) in g1.iter() {
                                                        let mut t = cc.clone();
                                                        for i in 0..8 {
                                                            for _ in 0..mm[i] { t *= vals[i]; }
                                                        }
                                                        ex += t;
                                                    }
                                                    if ex.is_zero() { nzero += 1; }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if nzero > 0 {
                            vdump.lock().unwrap().push(format!(
                                "VPAIR {pi} | {} | {} | G1 {} | G2 {}",
                                pser(c1), pser(c2), p8ser(&g1), p8ser(&g2)));
                            return format!("aligned G-DATA-ZERO x{nzero}");
                        }
                        return record("dead (aligned, g-data-nonzero)".into());
                    }
                }
            }
        };
        if h.is_empty() { return "empty-eliminant".into() }
        // the inline data check: h must be nonzero at all admissible
        // prime data (single-modulus screen + exact recheck)
        let md: i128 = (1 << 61) - 1;
        let cmods: Vec<i128> = h.values().map(|c| {
            let r = c % md;
            let mut v: i128 = r.to_string().parse().unwrap();
            if v < 0 { v += md; }
            v
        }).collect();
        let hterms: Vec<[u16; 8]> = h.keys().cloned().collect();
        let ddata = split_primes3(40);
        let mut nzero = 0u32;
        for &(pp, rr, ss) in &ddata {
            for &(qq, xx, _) in &ddata {
                if qq == pp { continue; }
                for &(ww, _, _) in &ddata {
                    if ww == pp || ww == qq { continue; }
                    for sx in [1i128, -1] {
                        for sg in [1i128, -1] {
                            let vals: [i128; 8] = [rr as i128, sg * ss as i128,
                                qq as i128, sx * xx as i128, 0, ww as i128, 0, 0];
                            let mut acc = 0i128;
                            for (mm, cm) in hterms.iter().zip(&cmods) {
                                let mut t = *cm;
                                for i in [0usize, 1, 2, 3, 5] {
                                    if mm[i] > 0 {
                                        t = t * modpow3(vals[i], mm[i] as u32, md) % md;
                                    }
                                }
                                acc = (acc + t) % md;
                            }
                            if acc == 0 {
                                // exact recheck
                                let mut ex = BigInt::zero();
                                for (mm, c) in h.iter() {
                                    let mut t = c.clone();
                                    for i in 0..8 {
                                        for _ in 0..mm[i] { t *= vals[i]; }
                                    }
                                    ex += t;
                                }
                                if ex.is_zero() { nzero += 1; }
                            }
                        }
                    }
                }
            }
        }
        let dx = vdeg(&h, 3);
        let terms = h.len();
        let maxbits = h.values().map(|c| c.bits()).max().unwrap_or(0);
        if nzero > 0 {
            return record(format!("DATA-ZERO x{nzero} Xdeg={dx} terms={terms}"));
        }
        if terms <= 1200 {
            dump.lock().unwrap().push(format!(
                "PAIR {pi} | {} | {} | ELIM {}", pser(c1), pser(c2), p8ser(&h)));
        }
        record(format!("Xdeg={dx} terms={terms} bits={maxbits}"))
    }).collect();
    {
        use std::io::Write as _;
        let mut df = std::fs::File::create(format!("elim3_{a}_{b}_{c}.txt")).unwrap();
        for l in dump.lock().unwrap().iter() { writeln!(df, "{l}").unwrap(); }
        let mut vf = std::fs::File::create(format!("elim3v_{a}_{b}_{c}.txt")).unwrap();
        for l in vdump.lock().unwrap().iter() { writeln!(vf, "{l}").unwrap(); }
        println!("dumped {} small eliminants, {} vanish-U pairs",
            dump.lock().unwrap().len(), vdump.lock().unwrap().len());
    }
    flush(&cache_new, &cache_path);
    println!("verdict cache flushed -> {cache_path}");
    let mut scount: HashMap<String, u32> = HashMap::new();
    for st in &stats { *scount.entry(st.clone()).or_insert(0) += 1; }
    let mut sc: Vec<_> = scount.iter().collect();
    sc.sort_by_key(|(_, c)| std::cmp::Reverse(**c));
    println!("eliminant shapes:");
    for (k, c) in sc.iter().take(20) { println!("  {c:5}  {k}"); }
}
