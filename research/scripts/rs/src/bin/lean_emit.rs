// Emit Lean certificate lemmas for the certifier's dumped forms.
// Every lemma has the uniform shape
//     PolyRefl.eval <formData> r s 1 1 1 ≠ 0
// proved through one of four gates, tried in this order:
//   1. parity  — the r-leading coefficient is odd            (parity_gate_eval)
//   2. dyadic  — lead = 2^e·odd, all s-terms have s-exp ≥ e+1 (dyadic_gate_eval)
//   3. sieve   — no nonzero root over F_l × F_l for some l    (sieve_gate)
//   4. factor  — split off known factors: the grid's lc pool
//                (PRS leading-coefficient layers, exact division)
//                and linear-in-(r²,s²) factors found by
//                Durand–Kerner roots + continued-fraction
//                rationalization; each piece goes through gates 1–3.
use num_bigint::BigInt;
use num_traits::{Zero, One, ToPrimitive, Signed};
use std::io::{BufRead, Write};

type Term = (BigInt, u32, u32); // coefficient, r-exponent, s-exponent

const SIEVE: [i64; 14] = [3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47];

fn spoly(terms: &[Term]) -> String {
    // ascending mlt order: head insertions are O(1) and mergesort input
    // is presorted
    let mut ts: Vec<&Term> = terms.iter().collect();
    ts.sort_by_key(|t| (t.1, t.2));
    ts.iter().map(|(c, a, b)| format!("PolyRefl.mkT {a} {b} 0 0 0 ({c})"))
        .collect::<Vec<_>>().join(", ")
}

/// Gate 1/2 data.
enum SplitGate { Parity { n: u32, lead: BigInt, rest: Vec<Term> },
                 Dyadic { n: u32, e: u32, c0: BigInt, rest: Vec<Term> } }

fn split_gate(terms: &[Term]) -> Option<SplitGate> {
    let s0: Vec<&Term> = terms.iter().filter(|t| t.2 == 0).collect();
    if s0.len() != 1 { return None; }
    let lead = s0[0].0.clone();
    let n = s0[0].1;
    let mut e = 0u32;
    { let mut c = lead.clone(); while (&c % 2u8).is_zero() { c /= 2; e += 1; } }
    if e == 0 {
        let rest = terms.iter().filter(|t| t.2 > 0)
            .map(|(c, a, b)| (c.clone(), *a, b - 1)).collect();
        return Some(SplitGate::Parity { n, lead, rest });
    }
    if terms.iter().all(|t| t.2 == 0 || t.2 >= e + 1) {
        let rest = terms.iter().filter(|t| t.2 > 0)
            .map(|(c, a, b)| (c.clone(), *a, b - (e + 1))).collect();
        return Some(SplitGate::Dyadic { n, e, c0: &lead >> e, rest });
    }
    None
}

/// Gate 3: smallest sieve prime with no nonzero root over F_l × F_l.
fn sieve_prime(terms: &[Term]) -> Option<i64> {
    'lp: for l in SIEVE {
        let cs: Vec<(i64, u32, u32)> = terms.iter()
            .map(|(c, a, b)| (((c % l + l) % l).to_i64().unwrap(), *a, *b)).collect();
        for a in 0..l {
            for b in 0..l {
                if a == 0 && b == 0 { continue; }
                let mut acc = 0i64;
                for (c, ra, sb) in &cs {
                    let mut t = *c;
                    for _ in 0..*ra { t = t * a % l; }
                    for _ in 0..*sb { t = t * b % l; }
                    acc = (acc + t) % l;
                }
                if acc == 0 { continue 'lp; }
            }
        }
        return Some(l);
    }
    None
}

fn gateable(terms: &[Term]) -> bool {
    split_gate(terms).is_some() || sieve_prime(terms).is_some()
}

/// Emit the gate proof term for a form already defined as `def {name}`.
/// Returns None if no gate applies. May write auxiliary rest defs.
fn gate_proof(out: &mut std::fs::File, name: &str, terms: &[Term]) -> Option<String> {
    if let Some(g) = split_gate(terms) {
        match g {
            SplitGate::Parity { n, lead, rest } => {
                writeln!(out, "def {name}_rest : PolyRefl.SPoly := [{}]", spoly(&rest)).unwrap();
                return Some(format!(
                    "parity_gate_eval {n} ({lead}) {name} {name}_rest (by decide +kernel) (by decide +kernel) hr hs"));
            }
            SplitGate::Dyadic { n, e, c0, rest } => {
                writeln!(out, "def {name}_rest : PolyRefl.SPoly := [{}]", spoly(&rest)).unwrap();
                return Some(format!(
                    "dyadic_gate_eval {n} {e} ({c0}) {name} {name}_rest (by decide +kernel) (by decide +kernel) hr hs"));
            }
        }
    }
    sieve_prime(terms).map(|l| format!("sieve_gate {l} (by norm_num) {name} (by decide +kernel) hco"))
}

// ---------- gate 4: factor extraction ----------

#[derive(Clone, Copy)]
struct Cpx { re: f64, im: f64 }
impl Cpx {
    fn mul(self, o: Cpx) -> Cpx {
        Cpx { re: self.re * o.re - self.im * o.im, im: self.re * o.im + self.im * o.re }
    }
    fn sub(self, o: Cpx) -> Cpx { Cpx { re: self.re - o.re, im: self.im - o.im } }
    fn div(self, o: Cpx) -> Cpx {
        let d = o.re * o.re + o.im * o.im;
        Cpx { re: (self.re * o.re + self.im * o.im) / d,
              im: (self.im * o.re - self.re * o.im) / d }
    }
    fn norm(self) -> f64 { (self.re * self.re + self.im * self.im).sqrt() }
}

/// Durand–Kerner roots of sum coeffs[i]·t^i (f64 approximation).
fn dk_roots(coeffs: &[f64]) -> Vec<Cpx> {
    let d = coeffs.len() - 1;
    if d == 0 || d > 100 || coeffs.iter().any(|c| !c.is_finite()) { return vec![]; }
    let scale: Vec<f64> = coeffs.iter().map(|c| c / coeffs[d]).collect();
    let horner = |z: Cpx| -> Cpx {
        let mut acc = Cpx { re: 0.0, im: 0.0 };
        for i in (0..=d).rev() {
            acc = acc.mul(z);
            acc.re += scale[i];
        }
        acc
    };
    let mut xs: Vec<Cpx> = (0..d).map(|k| {
        let ang = 0.7 + 2.0 * std::f64::consts::PI * (k as f64) / (d as f64);
        Cpx { re: 1.3 * ang.cos(), im: 1.3 * ang.sin() }
    }).collect();
    for _ in 0..500 {
        let mut delta = 0.0f64;
        for i in 0..d {
            let mut den = Cpx { re: 1.0, im: 0.0 };
            for j in 0..d {
                if j != i { den = den.mul(xs[i].sub(xs[j])); }
            }
            let step = horner(xs[i]).div(den);
            xs[i] = xs[i].sub(step);
            delta = delta.max(step.norm());
        }
        if delta < 1e-14 { break; }
    }
    xs
}

/// Continued-fraction convergents of x with denominators ≤ 10^12.
fn convergents(x: f64) -> Vec<(BigInt, BigInt)> {
    if !x.is_finite() { return vec![]; }
    let mut out = Vec::new();
    let (mut p0, mut q0) = (BigInt::one(), BigInt::zero());
    let (mut p1, mut q1) = (BigInt::from(x.floor() as i64), BigInt::one());
    out.push((p1.clone(), q1.clone()));
    let mut frac = x - x.floor();
    for _ in 0..40 {
        if frac.abs() < 1e-13 { break; }
        let inv = 1.0 / frac;
        let a = inv.floor();
        if a > 1e14 { break; }
        let ab = BigInt::from(a as i64);
        let p2 = &ab * &p1 + &p0;
        let q2 = &ab * &q1 + &q0;
        if q2 > BigInt::from(1_000_000_000_000u64) { break; }
        out.push((p2.clone(), q2.clone()));
        p0 = p1; q0 = q1; p1 = p2; q1 = q2;
        frac = inv - a;
    }
    out
}

/// Dense (R,S)-vector of a homogeneous even-exponent form:
/// entry i multiplies R^i·S^(d−i) where (R,S) = (r², s²).
fn dense(terms: &[Term]) -> Option<Vec<BigInt>> {
    if terms.iter().any(|t| t.1 % 2 != 0 || t.2 % 2 != 0) { return None; }
    let n2 = terms.iter().map(|t| t.1 + t.2).max().unwrap();
    if terms.iter().any(|t| t.1 + t.2 != n2) { return None; }
    let d = (n2 / 2) as usize;
    let mut cv = vec![BigInt::zero(); d + 1];
    for (c, a, _b) in terms { cv[(*a / 2) as usize] += c; }
    Some(cv)
}

fn undense(cv: &[BigInt]) -> Vec<Term> {
    let d = cv.len() - 1;
    cv.iter().enumerate().filter(|(_, c)| !c.is_zero())
        .map(|(i, c)| (c.clone(), 2 * i as u32, 2 * (d - i) as u32)).collect()
}

/// Dense homogeneous product (convolution).
fn poly_mul(a: &[BigInt], b: &[BigInt]) -> Vec<BigInt> {
    let mut out = vec![BigInt::zero(); a.len() + b.len() - 1];
    for (i, x) in a.iter().enumerate() {
        if x.is_zero() { continue; }
        for (j, y) in b.iter().enumerate() {
            if y.is_zero() { continue; }
            out[i + j] += x * y;
        }
    }
    out
}

/// Exact division of dense homogeneous vectors over ℤ.
fn poly_div(rem: &[BigInt], dv: &[BigInt]) -> Option<Vec<BigInt>> {
    let (m, k) = (rem.len() - 1, dv.len() - 1);
    if k == 0 || m < k || dv[k].is_zero() { return None; }
    let mut r = rem.to_vec();
    let mut q = vec![BigInt::zero(); m - k + 1];
    for j in (0..=m - k).rev() {
        let num = r[j + k].clone();
        if (&num % &dv[k]) != BigInt::zero() { return None; }
        let qc = &num / &dv[k];
        for i in 0..=k {
            let delta = &qc * &dv[i];
            r[j + i] -= delta;
        }
        q[j] = qc;
    }
    if r.iter().all(|c| c.is_zero()) { Some(q) } else { None }
}

/// Strip integer content and normalize the sign of the top coefficient.
fn prim(cv: &[BigInt]) -> Vec<BigInt> {
    let mut g = BigInt::zero();
    for c in cv {
        let mut a = g.clone();
        let mut b = c.abs();
        while !b.is_zero() { let t = &a % &b; a = b; b = t; }
        g = a;
    }
    if g.is_zero() || g.is_one() { return cv.to_vec(); }
    cv.iter().map(|c| c / &g).collect()
}

/// Derivative of the dense univariate representative.
fn deriv(cv: &[BigInt]) -> Vec<BigInt> {
    (1..cv.len()).map(|i| &cv[i] * BigInt::from(i)).collect()
}

/// Primitive gcd via pseudo-remainder Euclid.
fn pgcd(a: &[BigInt], b: &[BigInt]) -> Vec<BigInt> {
    let trim = |v: &[BigInt]| -> Vec<BigInt> {
        let mut n = v.len();
        while n > 0 && v[n - 1].is_zero() { n -= 1; }
        v[..n].to_vec()
    };
    let (mut r0, mut r1) = (prim(&trim(a)), prim(&trim(b)));
    if r0.len() < r1.len() { std::mem::swap(&mut r0, &mut r1); }
    loop {
        if r1.is_empty() { return r0; }
        if r1.len() == 1 { return vec![BigInt::one()]; }
        let (m, k) = (r0.len() - 1, r1.len() - 1);
        // pseudo-remainder: lc(r1)^(m-k+1) * r0 mod r1
        let mut rem = r0.clone();
        let lc = r1[k].clone();
        for _ in 0..(m - k + 1) { for c in rem.iter_mut() { *c *= &lc; } }
        for j in (0..=m - k).rev() {
            let qc = &rem[j + k] / &r1[k];
            for i in 0..=k {
                let d = &qc * &r1[i];
                rem[j + i] -= d;
            }
        }
        let rem = trim(&rem);
        r0 = r1;
        r1 = if rem.is_empty() { Vec::new() } else { prim(&rem) };
    }
}

/// Recursive factorization into gate-passable pieces, with bounded
/// backtracking over divisor choices. Returns gateable dense factors;
/// the product times a constant equals the input.
fn factorize_bt(cur: &[BigInt], pool: &[(Vec<Term>, Vec<BigInt>)], budget: &mut i64)
                -> Option<Vec<Vec<BigInt>>> {
    if *budget <= 0 { return None; }
    *budget -= 1;
    if cur.len() <= 1 { return Some(vec![]); }
    if gateable(&undense(cur)) { return Some(vec![cur.to_vec()]); }
    // candidate divisors: pool entries, DK linear and quadratic factors,
    // and the gcd with the derivative
    let mut cands: Vec<Vec<BigInt>> = Vec::new();
    let mut seen: std::collections::HashSet<String> = std::collections::HashSet::new();
    let mut push = |cands: &mut Vec<Vec<BigInt>>, dv: Vec<BigInt>| {
        let key = dv.iter().map(|c| c.to_string()).collect::<Vec<_>>().join(",");
        if seen.insert(key) { cands.push(dv); }
    };
    for (_, dv) in pool {
        if dv.len() > 1 && dv.len() < cur.len() && gateable(&undense(dv))
            && poly_div(cur, dv).is_some() {
            push(&mut cands, dv.clone());
        }
    }
    let fs: Vec<f64> = cur.iter().map(|c| c.to_f64().unwrap_or(f64::NAN)).collect();
    let roots = dk_roots(&fs);
    for root in &roots {
        if root.im.abs() > 0.5 * (1.0 + root.re.abs()) { continue; }
        for (beta, alpha) in convergents(root.re) {
            if alpha.is_zero() { continue; }
            let dv = prim(&[-&beta, alpha.clone()]);
            if dv.len() == 2 && gateable(&undense(&dv)) && poly_div(cur, &dv).is_some() {
                push(&mut cands, dv);
            }
        }
    }
    for i in 0..roots.len() {
        for j in i + 1..roots.len() {
            let sum = Cpx { re: roots[i].re + roots[j].re, im: roots[i].im + roots[j].im };
            let prod = roots[i].mul(roots[j]);
            if sum.im.abs() > 0.5 * (1.0 + sum.re.abs()) { continue; }
            if prod.im.abs() > 0.5 * (1.0 + prod.re.abs()) { continue; }
            for (sn, sd) in convergents(sum.re) {
                if sd.is_zero() || sd > BigInt::from(1_000_000u32) { continue; }
                for (pn, pd) in convergents(prod.re) {
                    if pd.is_zero() || pd > BigInt::from(1_000_000u32) { continue; }
                    let g = { let (mut x, mut y) = (sd.clone(), pd.clone());
                              while !y.is_zero() { let t = &x % &y; x = y; y = t; } x };
                    let d0 = &sd * (&pd / &g);
                    let c2 = d0.clone();
                    let c1 = -(&sn * (&d0 / &sd));
                    let c0 = &pn * (&d0 / &pd);
                    let dv = prim(&[c0, c1, c2]);
                    if dv.len() == 3 && gateable(&undense(&dv))
                        && poly_div(cur, &dv).is_some() {
                        push(&mut cands, dv);
                    }
                }
            }
        }
    }
    {
        let g = pgcd(cur, &deriv(cur));
        if g.len() > 1 && g.len() < cur.len() && poly_div(cur, &g).is_some() {
            push(&mut cands, g);
        }
    }
    // smallest degree first: multiple small true factors beat large
    // composite pool entries; backtracking recovers the other order
    cands.sort_by_key(|dv| dv.len());
    for dv in cands {
        let q = poly_div(cur, &dv).unwrap();
        if let Some(mut rest) = factorize_bt(&q, pool, budget) {
            let mut out = vec![dv];
            out.append(&mut rest);
            return Some(out);
        }
        if *budget <= 0 { return None; }
    }
    None
}

fn factorize(cur: &[BigInt], pool: &[(Vec<Term>, Vec<BigInt>)], _depth: u32)
             -> Option<Vec<Vec<BigInt>>> {
    let mut budget = 4000i64;
    factorize_bt(cur, pool, &mut budget)
}

/// Factor cache: line format "li: c,c,c | c,c | ...". Entries are
/// re-verified by exact division on load, so stale caches are safe.
fn cache_load(path: &str) -> std::collections::HashMap<usize, Vec<Vec<BigInt>>> {
    let mut m = std::collections::HashMap::new();
    if let Ok(f) = std::fs::File::open(path) {
        for line in std::io::BufReader::new(f).lines().map_while(|l| l.ok()) {
            let Some((k, rest)) = line.split_once(':') else { continue; };
            let Ok(li) = k.trim().parse::<usize>() else { continue; };
            let fs: Vec<Vec<BigInt>> = rest.split('|').map(|p| {
                p.trim().split(',').filter(|x| !x.is_empty())
                    .map(|x| x.trim().parse().unwrap()).collect()
            }).collect();
            m.insert(li, fs);
        }
    }
    m
}

fn cache_verify(cur: &[BigInt], flist: &[Vec<BigInt>]) -> bool {
    let mut rem = cur.to_vec();
    for dv in flist {
        if !gateable(&undense(dv)) { return false; }
        match poly_div(&rem, dv) { Some(q) => rem = q, None => return false }
    }
    rem.len() == 1 || gateable(&undense(&rem))
}

fn cache_line(li: usize, flist: &[Vec<BigInt>]) -> String {
    let parts: Vec<String> = flist.iter()
        .map(|dv| dv.iter().map(|c| c.to_string()).collect::<Vec<_>>().join(","))
        .collect();
    format!("{li}: {}", parts.join(" | "))
}

/// Gate 4: repeatedly divide out gate-passable factors — pool entries
/// first, then DK-found linear-in-(R,S) factors. Returns the factor
/// list and the final cofactor (both as term vectors).
fn factor_form(terms: &[Term], pool: &[Vec<Term>]) -> Option<(Vec<Vec<Term>>, Vec<Term>)> {
    let mut cur = dense(terms)?;
    let pool_dense: Vec<(Vec<Term>, Vec<BigInt>)> = pool.iter()
        .filter_map(|p| dense(p).map(|dv| (p.clone(), prim(&dv))))
        .filter(|(p, dv)| dv.len() > 1 && gateable(p) && !dv[0].is_zero())
        .collect();
    let mut factors: Vec<Vec<Term>> = Vec::new();
    loop {
        if cur.len() == 1 { break; }
        if cur[0].is_zero() || cur[cur.len() - 1].is_zero() { break; }
        if gateable(&undense(&cur)) { break; }
        let mut advanced = false;
        for (p, dv) in &pool_dense {
            if let Some(q) = poly_div(&cur, dv) {
                factors.push(undense(dv).clone());
                let _ = p;
                cur = q;
                advanced = true;
                break;
            }
        }
        if !advanced {
            let fs: Vec<f64> = cur.iter().map(|c| c.to_f64().unwrap_or(f64::NAN)).collect();
            'dk: for root in dk_roots(&fs) {
                if root.im.abs() > 0.5 * (1.0 + root.re.abs()) { continue; }
                for (beta, alpha) in convergents(root.re) {
                    if alpha.is_zero() { continue; }
                    let lf = vec![(alpha.clone(), 2u32, 0u32), (-&beta, 0u32, 2u32)];
                    if !gateable(&lf) { continue; }
                    let dv = prim(&[-&beta, alpha.clone()]);
                    if let Some(q) = poly_div(&cur, &dv) {
                        factors.push(undense(&dv));
                        cur = q;
                        advanced = true;
                        break 'dk;
                    }
                }
            }
        }
        if !advanced { break; }
    }
    if factors.is_empty() { return None; }
    let cof = undense(&cur);
    if cof.len() > 1 && !gateable(&cof) { return None; }
    Some((factors, cof))
}

/// Emit the certificate for a factored form. Repeated factors are grouped
/// into powers certified by binary squaring ladders (tiny decides), so the
/// full-size polynomial is divided only once per distinct factor.
fn emit_factored(out: &mut std::fs::File, tag: &str, li: usize,
                 terms: &[Term], flist: &[Vec<BigInt>]) {
    // big product identities: compiled evaluation unless KERNEL_DECIDE=1
    // (each identity is independently verified in Rust either way)
    let dec = if std::env::var("KERNEL_DECIDE").is_ok() { "decide +kernel" } else { "native_decide" };
    // group equal factors
    let mut groups: Vec<(Vec<BigInt>, u32)> = Vec::new();
    for dv in flist {
        if let Some(g) = groups.iter_mut().find(|(v, _)| v == dv) { g.1 += 1; }
        else { groups.push((dv.clone(), 1)); }
    }
    let mut defs: Vec<(String, Vec<Term>)> = Vec::new();
    let mut haves: Vec<String> = Vec::new();
    // per group: ladder of squarings + binary assembly; h_g{k} : eval ≠ 0
    let mut gdatas: Vec<(String, Vec<BigInt>)> = Vec::new();
    for (k, (base, e)) in groups.iter().enumerate() {
        let bname = format!("b{k}_{tag}_{li}");
        defs.push((bname.clone(), undense(base)));
        let gate = gate_proof_str(&undense(base)).expect("factor gate checked");
        haves.push(format!("  have hb{k} : PolyRefl.eval {bname} r s 1 1 1 ≠ 0 := {}",
                           gate.replace("{name}", &bname)));
        // squaring ladder up to the highest needed bit
        let bits = 32 - e.leading_zeros();
        let mut pows: Vec<(String, Vec<BigInt>, String)> =
            vec![(bname.clone(), base.clone(), format!("hb{k}"))];
        for i in 1..bits {
            let prev = &pows[(i - 1) as usize];
            let sq = poly_mul(&prev.1, &prev.1);
            let nm = format!("b{k}p{i}_{tag}_{li}");
            let hn = format!("hb{k}p{i}");
            defs.push((nm.clone(), undense(&sq)));
            haves.push(format!(
                "  have {hn} : PolyRefl.eval {nm} r s 1 1 1 ≠ 0 := by\n    rw [PolyRefl.eval_factor {nm} {p} {p} (by {dec}) r s 1 1 1]\n    exact mul_ne_zero {ph} {ph}",
                p = prev.0, ph = prev.2));
            pows.push((nm, sq, hn));
        }
        // assemble e as a product of the set bits
        let set: Vec<u32> = (0..bits).filter(|i| e & (1 << i) != 0).collect();
        let (mut cname, mut cdata, mut chyp) = pows[set[0] as usize].clone();
        for &i in &set[1..] {
            let (pn, pd, ph) = pows[i as usize].clone();
            let prod = poly_mul(&cdata, &pd);
            let nm = format!("g{k}a{i}_{tag}_{li}");
            let hn = format!("hg{k}a{i}");
            defs.push((nm.clone(), undense(&prod)));
            haves.push(format!(
                "  have {hn} : PolyRefl.eval {nm} r s 1 1 1 ≠ 0 := by\n    rw [PolyRefl.eval_factor {nm} {cname} {pn} (by {dec}) r s 1 1 1]\n    exact mul_ne_zero {chyp} {ph}"));
            cname = nm; cdata = prod; chyp = hn;
        }
        gdatas.push((format!("({cname}, {chyp})"), cdata));
        haves.push(format!("  -- group {k}: exponent {e} -> {cname}"));
        let _ = cname;
    }
    // big chain: divide P once per group
    let mut chain: Vec<(String, Vec<Term>)> = Vec::new();
    let mut rem = dense(terms).unwrap();
    chain.push((format!("f_{tag}_{li}"), terms.to_vec()));
    for (k, (_, gdata)) in gdatas.iter().enumerate() {
        rem = poly_div(&rem, gdata).expect("group divides");
        chain.push((format!("p{}_{tag}_{li}", k + 1), undense(&rem)));
    }
    let cof = undense(&rem);
    for (nm, data) in &chain { defs.push((nm.clone(), data.clone())); }
    for (nm, data) in &defs {
        writeln!(out, "def {nm} : PolyRefl.SPoly := [{}]", spoly(data)).unwrap();
        if let Some(g) = split_gate(data) {
            let rest = match g { SplitGate::Parity { rest, .. } => rest,
                                 SplitGate::Dyadic { rest, .. } => rest };
            writeln!(out, "def {nm}_rest : PolyRefl.SPoly := [{}]", spoly(&rest)).unwrap();
        }
    }
    writeln!(out, "lemma form_{tag}_{li} (r s : ℤ) (hr : Odd r) (hs : Even s)").unwrap();
    writeln!(out, "    (hco : IsCoprime r s) :").unwrap();
    writeln!(out, "    PolyRefl.eval f_{tag}_{li} r s 1 1 1 ≠ 0 := by").unwrap();
    for h in &haves { writeln!(out, "{h}").unwrap(); }
    for (k, (gpair, _)) in gdatas.iter().enumerate() {
        let (gname, ghyp) = gpair.trim_matches(|c| c == '(' || c == ')')
            .split_once(", ").unwrap();
        writeln!(out, "  rw [PolyRefl.eval_factor {} {gname} {} (by {dec}) r s 1 1 1]",
                 chain[k].0, chain[k + 1].0).unwrap();
        writeln!(out, "  refine mul_ne_zero {ghyp} ?_").unwrap();
    }
    let cname = &chain[chain.len() - 1].0;
    if cof.len() == 1 {
        let c0 = &cof[0].0;
        writeln!(out, "  have hc : PolyRefl.eval {cname} r s 1 1 1 = ({c0} : ℤ) := by").unwrap();
        writeln!(out, "    simp [{cname}, PolyRefl.eval, PolyRefl.powF, PolyRefl.mkT]").unwrap();
        writeln!(out, "  rw [hc]; norm_num").unwrap();
    } else {
        let gate = gate_proof_str(&cof).expect("cofactor gate checked");
        writeln!(out, "  exact {}", gate.replace("{name}", cname)).unwrap();
    }
    writeln!(out).unwrap();
}

/// Gate proof with a {name} placeholder; rest data emitted separately.
fn gate_proof_str(terms: &[Term]) -> Option<String> {
    if let Some(g) = split_gate(terms) {
        return Some(match g {
            SplitGate::Parity { n, lead, .. } => format!(
                "parity_gate_eval {n} ({lead}) {{name}} {{name}}_rest (by decide +kernel) (by decide +kernel) hr hs"),
            SplitGate::Dyadic { n, e, c0, .. } => format!(
                "dyadic_gate_eval {n} {e} ({c0}) {{name}} {{name}}_rest (by decide +kernel) (by decide +kernel) hr hs"),
        });
    }
    sieve_prime(terms).map(|l| format!(
        "sieve_gate {l} (by norm_num) {{name}} (by decide +kernel) hco"))
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let fname = &args[1];
    let tag = fname.replace("oracle_t0_", "").replace(".txt", "").replace('/', "_");
    // the factor pool of the grid: pool_{a}_{b}.txt from the tag's suffix
    let parse_line = |line: &str| -> Vec<Term> {
        let mut terms: Vec<Term> = Vec::new();
        for t in line.split(" + ") {
            let parts: Vec<&str> = t.split('*').filter(|x| !x.is_empty()).collect();
            let c: BigInt = parts[0].parse().unwrap();
            let mut ra = 0u32; let mut sb = 0u32;
            let mut i = 1;
            while i < parts.len() {
                if parts[i] == "r" { ra = parts[i + 1].parse().unwrap(); i += 2; }
                else if parts[i] == "s" { sb = parts[i + 1].parse().unwrap(); i += 2; }
                else { i += 1; }
            }
            terms.push((c, ra, sb));
        }
        terms
    };
    let pool: Vec<Vec<Term>> = {
        let pname = "pool_all.txt".to_string();
        match std::fs::File::open(&pname) {
            Ok(f) => std::io::BufReader::new(f).lines()
                .filter_map(|l| l.ok())
                .filter(|l| !l.trim().is_empty())
                .map(|l| {
                    let mut ts = parse_line(&l);
                    let ra0 = ts.iter().map(|t| t.1).min().unwrap();
                    let sb0 = ts.iter().map(|t| t.2).min().unwrap();
                    for t in ts.iter_mut() { t.1 -= ra0; t.2 -= sb0; }
                    ts
                }).collect(),
            Err(_) => Vec::new(),
        }
    };
    let file = std::fs::File::open(fname).unwrap();
    let mut out = std::fs::File::create(format!("CertForms_{tag}.lean")).unwrap();
    writeln!(out, "/- Generated: nonvanishing of the certifier's minimal-layer forms").unwrap();
    writeln!(out, "   at grid {tag}. Uniform statements: eval formData r s 1 1 1 ≠ 0. -/").unwrap();
    writeln!(out, "import MsqLean.CertKit\nimport MsqLean.PolyRefl\n").unwrap();
    writeln!(out, "set_option maxRecDepth 100000\nset_option maxHeartbeats 2000000\n").unwrap();
    writeln!(out, "namespace CertForms\nopen CertKit\n").unwrap();
    let mut n_ok = 0;
    let mut n_factor = 0;
    let mut unresolved = Vec::new();
    let mut failures: Vec<(usize, Vec<Term>)> = Vec::new();
    let cache_path = format!("factor_cache_{tag}.txt");
    let cache = cache_load(&cache_path);
    let mut cache_new: Vec<String> = Vec::new();
    let pool_dense: Vec<(Vec<Term>, Vec<BigInt>)> = pool.iter()
        .filter_map(|p| dense(p).map(|dv| (p.clone(), prim(&dv))))
        .filter(|(p, dv)| dv.len() > 1 && gateable(p) && !dv[0].is_zero())
        .collect();
    for (li, line) in std::io::BufReader::new(file).lines().enumerate() {
        let line = line.unwrap();
        if line.trim().is_empty() { continue; }
        let mut terms = parse_line(&line);
        // strip monomial content and 2-content (r, s nonzero handles it)
        let ra0 = terms.iter().map(|t| t.1).min().unwrap();
        let sb0 = terms.iter().map(|t| t.2).min().unwrap();
        for t in terms.iter_mut() { t.1 -= ra0; t.2 -= sb0; }
        let mut two = u32::MAX;
        for (c, _, _) in &terms {
            let mut c2 = c.clone(); let mut k = 0;
            while (&c2 % 2u8).is_zero() && k < two { c2 /= 2; k += 1; }
            two = two.min(k);
        }
        let terms: Vec<Term> = terms.into_iter().map(|(c, a, b)| (c >> two, a, b)).collect();
        if terms.len() == 1 { n_ok += 1; continue; } // monomial: kit-free
        let name = format!("f_{tag}_{li}");
        // gates 1–3 on the whole form
        let mut probe = std::fs::File::create("/dev/null").unwrap();
        if gate_proof(&mut probe, &name, &terms).is_some() {
            writeln!(out, "def {name} : PolyRefl.SPoly := [{}]", spoly(&terms)).unwrap();
            let pf = gate_proof(&mut out, &name, &terms).unwrap();
            writeln!(out, "lemma form_{tag}_{li} (r s : ℤ) (hr : Odd r) (hs : Even s)").unwrap();
            writeln!(out, "    (hco : IsCoprime r s) :").unwrap();
            writeln!(out, "    PolyRefl.eval {name} r s 1 1 1 ≠ 0 :=").unwrap();
            writeln!(out, "  {pf}\n").unwrap();
            n_ok += 1;
            continue;
        }
        // gate 4: factor route (cache first)
        let flist = dense(&terms).and_then(|cv| {
            if let Some(fl) = cache.get(&li) {
                if cache_verify(&cv, fl) { return Some(fl.clone()); }
            }
            let r = factorize(&cv, &pool_dense, 0);
            if let Some(ref fl) = r { cache_new.push(cache_line(li, fl)); }
            r
        });
        let Some(flist) = flist else { failures.push((li, terms.clone())); continue; };
        if std::env::var("FACTOR_STATS").is_ok() {
            println!("  form {li}: {} factors, degrees {:?}", flist.len(),
                     flist.iter().map(|f| f.len() - 1).collect::<Vec<_>>());
        }
        let factors: Vec<Vec<Term>> = flist.iter().map(|f| undense(f)).collect();
        let cof: Vec<Term> = {
            let mut rem = dense(&terms).unwrap();
            for fv in &flist { rem = poly_div(&rem, fv).expect("factor divides"); }
            undense(&rem)
        };
        emit_factored(&mut out, &tag, li, &terms, &flist);
        let _ = (&factors, &cof);
        n_ok += 1;
        n_factor += 1;
    }
    let all_cached = failures.iter().all(|(li, t)| {
        cache.get(li).and_then(|fl| dense(t).map(|cv| cache_verify(&cv, fl)))
            .unwrap_or(false)
    });
    if !failures.is_empty() {
        let mut pool2 = pool_dense.clone();
        if all_cached { pool2.clear(); }
        let dsets: Vec<Vec<BigInt>> = failures.iter()
            .filter_map(|(_, t)| dense(t).map(|cv| prim(&cv))).collect();
        for i in 0..(if all_cached { 0 } else { dsets.len() }) {
            for j in i + 1..dsets.len() {
                let g = pgcd(&dsets[i], &dsets[j]);
                eprintln!("[retry] gcd of failures {i},{j}: degree {}", g.len() as i64 - 1);
                if g.len() > 1 && g.len() < dsets[i].len() {
                    let gt = undense(&g);
                    eprintln!("[retry] gcd gateable: {}", gateable(&gt));
                    pool2.push((gt, g));
                }
            }
        }
        for (li, terms) in &failures {
            let li = *li;
            let Some(flist) = dense(terms).and_then(|cv| {
                if let Some(fl) = cache.get(&li) {
                    if cache_verify(&cv, fl) { return Some(fl.clone()); }
                }
                let r = factorize(&cv, &pool2, 0);
                if let Some(ref fl) = r { cache_new.push(cache_line(li, fl)); }
                r
            }) else {
                unresolved.push(li); continue;
            };
            emit_factored(&mut out, &tag, li, terms, &flist);
            n_ok += 1;
            n_factor += 1;
        }
    }
    if !cache_new.is_empty() {
        use std::io::Write as _;
        let mut cf = std::fs::OpenOptions::new().create(true).append(true)
            .open(&cache_path).unwrap();
        for l in &cache_new { writeln!(cf, "{l}").unwrap(); }
    }
    writeln!(out, "end CertForms").unwrap();
    println!("{fname}: {n_ok} lemmas ({n_factor} via factors); unresolved: {unresolved:?}");
}
