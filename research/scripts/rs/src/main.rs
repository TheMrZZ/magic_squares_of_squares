// Validate: each of the 64 remaining (2,2) core relations is a constant
// multiple of one of the eight master forms
//   x^4*Bq - s*y^4*conj(Bq)   (chi-side),   u^4*Cq - s*v^4*conj(Cq)  (pi-side)
// with Bq = u^4 + v^4 -+ 2u^3 v, Cq the same in x, y; u = pi^2, v = pibar^2,
// x = chi^2, y = chibar^2. Proportionality is checked exactly at several
// random integer points (i128 arithmetic, sizes bounded to stay exact).
mod data;
use data::LEAVES;

#[derive(Copy, Clone, PartialEq, Debug)]
struct G { re: i128, im: i128 }
impl G {
    fn mul(self, o: G) -> G { G { re: self.re*o.re - self.im*o.im, im: self.re*o.im + self.im*o.re } }
    fn conj(self) -> G { G { re: self.re, im: -self.im } }
    fn pow(self, n: u32) -> G { let mut r = G{re:1,im:0}; for _ in 0..n { r = r.mul(self); } r }
    fn scale(self, k: i128) -> G { G { re: self.re*k, im: self.im*k } }
    fn add(self, o: G) -> G { G { re: self.re+o.re, im: self.im+o.im } }
    fn sub(self, o: G) -> G { G { re: self.re-o.re, im: self.im-o.im } }
    fn is_zero(self) -> bool { self.re == 0 && self.im == 0 }
}

fn elem_val(a: i32, b: i32, sg: i32, pi: G, chi: G, p: i128, q: i128) -> i128 {
    let mut z = G { re: 1, im: 0 };
    if a > 0 { z = z.mul(pi.pow(4 * a as u32)); }
    if b > 0 {
        let mut c = chi.pow(4 * b as u32);
        if sg < 0 { c = c.conj(); }
        z = z.mul(c);
    }
    let pp = p.pow((4 - 2*a) as u32);
    let qq = q.pow((4 - 2*b) as u32);
    z.im * pp * qq
}

fn cands(pi: G, chi: G) -> Vec<G> {
    let (u, v) = (pi.pow(2), pi.pow(2).conj());
    let (x, y) = (chi.pow(2), chi.pow(2).conj());
    let mut out = Vec::new();
    for sb in [-1i128, 1] { // Bq = u^4 + v^4 + sb*2u^3 v
        let bq = u.pow(4).add(v.pow(4)).add(u.pow(3).mul(v).scale(2*sb));
        let bqb = u.pow(4).add(v.pow(4)).add(u.mul(v.pow(3)).scale(2*sb));
        for s1 in [-1i128, 1] {
            out.push(x.pow(4).mul(bq).sub(y.pow(4).mul(bqb).scale(s1)));
        }
    }
    for sc in [-1i128, 1] {
        let cq = x.pow(4).add(y.pow(4)).add(x.pow(3).mul(y).scale(2*sc));
        let cqb = x.pow(4).add(y.pow(4)).add(x.mul(y.pow(3)).scale(2*sc));
        for s1 in [-1i128, 1] {
            out.push(u.pow(4).mul(cq).sub(v.pow(4).mul(cqb).scale(s1)));
            out.push(u.pow(4).mul(cqb).sub(v.pow(4).mul(cq).scale(s1)));
        }
    }
    for sb in [-1i128, 1] {
        let bq = u.pow(4).add(v.pow(4)).add(u.pow(3).mul(v).scale(2*sb));
        let bqb = u.pow(4).add(v.pow(4)).add(u.mul(v.pow(3)).scale(2*sb));
        for s1 in [-1i128, 1] {
            out.push(x.pow(4).mul(bqb).sub(y.pow(4).mul(bq).scale(s1)));
        }
    }
    out
}

fn main() {
    // deterministic pseudo-random points, coords in 1..=6
    let pts: Vec<(i128, i128, i128, i128)> = vec![
        (1, 2, 2, 3), (2, 5, 1, 4), (3, 4, 5, 2), (1, 6, 3, 2), (5, 2, 2, 5),
    ];
    let mut all_ok = true;
    for (li, leaf) in LEAVES.iter().enumerate() {
        for (ri, rel) in leaf.iter().enumerate() {
            // for each candidate: check T*cand' == T'*cand across all point pairs
            let mut matched: Option<usize> = None;
            'cand: for ci in 0..cands(G{re:1,im:2}, G{re:2,im:3}).len() {
                let mut ratio: Option<(i128, G)> = None; // (T, cand) at first point with T != 0
                for &(a_, b_, c_, d_) in &pts {
                    let pi = G { re: a_, im: b_ };
                    let chi = G { re: c_, im: d_ };
                    let p = a_*a_ + b_*b_;
                    let q = c_*c_ + d_*d_;
                    let t: i128 = rel.iter().map(|&(a, b, sg, g)| (g as i128) * elem_val(a, b, sg, pi, chi, p, q)).sum();
                    let cv = cands(pi, chi)[ci];
                    match ratio {
                        None => {
                            if t == 0 && cv.is_zero() { continue; }
                            if t == 0 || cv.is_zero() { continue 'cand; }
                            ratio = Some((t, cv));
                        }
                        Some((t0, cv0)) => {
                            // require t * cv0 == t0 * cv (Gaussian equality)
                            if cv.scale(t0) != cv0.scale(t) { continue 'cand; }
                        }
                    }
                }
                if ratio.is_some() { matched = Some(ci); break; }
            }
            match matched {
                Some(ci) => {
                    let side = if ci < 4 || ci >= 12 { "chi" } else { "pi" };
                    let bq = if (ci / 2) % 2 == 0 { "-" } else { "+" };
                    let s1 = if ci % 2 == 0 { "imag" } else { "real" };
                    println!("leaf {li:2} rel {ri}: form {ci:2} ({side}-side, quartic sign {bq}, {s1})");
                }
                None => { println!("leaf {li:2} rel {ri}: NO MATCH"); all_ok = false; }
            }
        }
    }
    println!("\nall matched: {all_ok}");
    // p = 5 base case of the master condition: M = (3r^2-s^2)^2 s^2 + r^2 p^4
    let (r, s): (i128, i128) = (3, 4);
    let m = (3*r*r - s*s).pow(2) * s*s + r*r * (r*r + s*s).pow(2);
    let w = (m as f64).sqrt() as i128;
    let sq = (w-1..=w+1).any(|t| t*t == m);
    println!("p=5 base check: M = {m}, perfect square: {sq}");
}
