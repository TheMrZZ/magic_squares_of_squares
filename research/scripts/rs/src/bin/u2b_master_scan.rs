// Do the master conditions 4 w^2 q^{2D} = f(S, p) ever fire on real data?
// For each family form f, each prime p < 500 (S = Im of pi^2 and pi^4 —
// the two levels that occur), each q != p < 500, and D in 1..=5: check
// whether f(S,p) equals 4 * w^2 * q^{2D} for some integer w.
#[path = "../forms58.rs"] mod forms58;
use forms58::FORMS;

fn gauss_rep(n: i128) -> (i128, i128) {
    let mut a = 1i128;
    loop {
        let b2 = n - a*a;
        let b = (b2 as f64).sqrt() as i128;
        for bb in [b-1, b, b+1] { if bb > 0 && bb*bb == b2 { return (a, bb); } }
        a += 1;
    }
}
fn isqrt(n: i128) -> i128 { if n < 0 { return -1; } let mut x = (n as f64).sqrt() as i128; while x*x > n { x -= 1; } while (x+1)*(x+1) <= n { x += 1; } x }

fn main() {
    let primes: Vec<i128> = (5..500).filter(|&n| (2..n).take_while(|k| k*k <= n).all(|k| n % k != 0) && n % 4 == 1).collect();
    let mut hits = 0u64;
    for &p in &primes {
        let (a, b) = gauss_rep(p);
        // S at level pi^2 (s = 2ab or a^2-b^2 sign-free: use both |2ab| and |a^2-b^2|
        // as candidate S values with matching "p-level": level pi^2 has R^2+S^2=p^2;
        // level pi^4: R4 = a4, S4 with R4^2+S4^2 = p^4.
        let s2 = 2*a*b;
        let s2b = (a*a - b*b).abs();
        let s4 = (2*a*b*(a*a - b*b)).abs() * 2; // im(pi^4) = 2*r2*s2? im((r+is)^2)=2rs
        // level pi^4 from (r2, s2): im = 2*r2*s2 where (r2, s2) = (a^2-b^2, 2ab)
        let s4v = 2*(a*a - b*b)*(2*a*b);
        let cand_s: Vec<(i128, u32)> = vec![(s2, 1), (s2b, 1), (s4v.abs(), 2)]; // (S, level) level: p^2 or p^4 norm
        for &(sv, lvl) in &cand_s {
            for (fi, form) in FORMS.iter().enumerate() {
                // p in the form means the norm-root of the level: substitute p -> p^lvl
                let mut val: i128 = 0;
                let mut overflow = false;
                for &(se, pe, co) in form.iter() {
                    let mut t = co as i128;
                    for _ in 0..se { t = t.saturating_mul(sv); }
                    for _ in 0..pe { let mut pl = 1i128; for _ in 0..lvl { pl = pl.saturating_mul(p); } t = t.saturating_mul(pl); }
                    if t == i128::MAX || t == i128::MIN { overflow = true; break; }
                    val += t;
                }
                if overflow || val <= 0 { continue; }
                if val % 4 != 0 { continue; }
                let v4 = val / 4;
                for &q in &primes {
                    if q == p { continue; }
                    let mut qq = q*q;
                    for _d in 1..=5 {
                        if v4 % qq == 0 {
                            let w2 = v4 / qq;
                            let w = isqrt(w2);
                            if w >= 0 && w*w == w2 {
                                hits += 1;
                                if hits <= 12 { println!("HIT: family {fi} p={p} S={sv} lvl={lvl} q={q} D={_d} w={w}"); }
                            }
                        }
                        if qq > v4 / (q*q) { break; }
                        qq *= q*q;
                    }
                }
            }
        }
    }
    println!("total master-condition hits: {hits}");
}
