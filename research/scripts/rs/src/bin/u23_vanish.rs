// Do any of the 448 unresolved (2,3) factor shapes vanish on real Gaussian
// data? Evaluate each shape at u = pi^2, v = pibar^2, x = chi^2,
// y = chibar^2 for all primes p != q < 300 (both reps), exactly (i128).
#[path = "../shapes23.rs"] mod shapes23;
use shapes23::SHAPES;

#[derive(Copy, Clone)]
struct G { re: i128, im: i128 }
impl G {
    fn mul(self, o: G) -> G { G { re: self.re*o.re - self.im*o.im, im: self.re*o.im + self.im*o.re } }
    fn pow(self, n: u32) -> G { let mut r = G{re:1,im:0}; for _ in 0..n { r = r.mul(self); } r }
    fn scale(self, k: i128) -> G { G { re: self.re*k, im: self.im*k } }
    fn add(self, o: G) -> G { G { re: self.re+o.re, im: self.im+o.im } }
    fn is_zero(self) -> bool { self.re == 0 && self.im == 0 }
}

fn gauss_rep(n: i128) -> (i128, i128) {
    let mut a = 1i128;
    loop {
        let b2 = n - a*a;
        let b = (b2 as f64).sqrt() as i128;
        for bb in [b-1, b, b+1] {
            if bb > 0 && bb*bb == b2 { return (a, bb); }
        }
        a += 1;
    }
}

fn main() {
    let primes: Vec<i128> = (5..300).filter(|&n| (2..n).take_while(|k| k*k <= n).all(|k| n % k != 0) && n % 4 == 1).collect();
    let mut zeros = 0u64;
    let mut checked = 0u64;
    for &p in &primes {
        let (pa, pb) = gauss_rep(p);
        for (ra, rb) in [(pa, pb), (pb, pa)] {
            let uu = G{re: ra, im: rb}.pow(2);
            let vv = G{re: ra, im: -rb}.pow(2);
            for &q in &primes {
                if q == p { continue; }
                let (qa, qb) = gauss_rep(q);
                for (sc, sd) in [(qa, qb), (qb, qa)] {
                    let xx = G{re: sc, im: sd}.pow(2);
                    let yy = G{re: sc, im: -sd}.pow(2);
                    for (si, sh) in SHAPES.iter().enumerate() {
                        let mut acc = G{re:0, im:0};
                        for &(a, b, c, d, co) in sh.iter() {
                            let t = uu.pow(a).mul(vv.pow(b)).mul(xx.pow(c)).mul(yy.pow(d)).scale(co as i128);
                            acc = acc.add(t);
                        }
                        checked += 1;
                        if acc.is_zero() {
                            zeros += 1;
                            if zeros < 10 { println!("ZERO: shape {si} at p={p} ({ra},{rb}) q={q} ({sc},{sd})"); }
                        }
                    }
                }
            }
        }
    }
    println!("checked {checked} evaluations, zeros: {zeros}");
}
