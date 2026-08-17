// The fast exact oracle: prove nonvanishing of the certifier's minimal-layer
// forms on admissible points (r odd, s even, coprime) by integer arguments.
//
// Cascade per form (homogeneous in r, s after content stripping):
//  0. monomial content: r^a s^b factors never vanish (r, s nonzero).
//  1. PARITY GATE: an admissible rational root ratio r/s = n/d has n odd,
//     d even; clearing denominators, every term with a d-power vanishes
//     mod 2 and what remains is (r-leading coeff)*odd. If the r-leading
//     coefficient of the primitive part is ODD, no admissible root exists.
//  2. MOD-L SIEVE: a rational root reduces mod any prime l (not dividing
//     the denominator, i.e. any odd l) to a root of f mod l. If f mod l
//     has no root in F_l for some odd prime l with l not dividing the
//     leading coefficient, there is no rational root at all.
//  3. fallback: report for the heavy route.
use num_bigint::BigInt;
use num_traits::{Zero, Signed};
use std::io::BufRead;

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let sieve: Vec<i64> = vec![3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47];
    for fname in &args[1..] {
        let file = std::fs::File::open(fname).unwrap();
        let mut ok = 0u32;
        let mut fallback = Vec::new();
        let mut total = 0u32;
        for line in std::io::BufReader::new(file).lines() {
            let line = line.unwrap();
            if line.trim().is_empty() { continue; }
            total += 1;
            // parse "c*r**a*s**b + ..." terms
            let mut terms: Vec<(BigInt, u32, u32)> = Vec::new();
            for t in line.split(" + ") {
                let parts: Vec<&str> = t.split('*').filter(|x| !x.is_empty()).collect();
                // format: c, r**a written as "r**{a}", s**{b}
                let c: BigInt = parts[0].parse().unwrap();
                let mut ra = 0u32; let mut sb = 0u32;
                let mut i = 1;
                while i < parts.len() {
                    if parts[i] == "r" {
                        ra = parts[i + 1].parse().unwrap(); i += 2;
                    } else if parts[i] == "s" {
                        sb = parts[i + 1].parse().unwrap(); i += 2;
                    } else if parts[i].is_empty() { i += 1; } else { i += 1; }
                }
                terms.push((c, ra, sb));
            }
            // strip monomial content
            let ra0 = terms.iter().map(|t| t.1).min().unwrap();
            let sb0 = terms.iter().map(|t| t.2).min().unwrap();
            for t in terms.iter_mut() { t.1 -= ra0; t.2 -= sb0; }
            if terms.len() == 1 { ok += 1; continue; } // pure monomial
            // homogeneity check
            let deg = terms[0].1 + terms[0].2;
            if terms.iter().any(|t| t.1 + t.2 != deg) {
                fallback.push((total, "inhomogeneous"));
                continue;
            }
            // strip 2-content
            let mut two = u32::MAX;
            for (c, _, _) in &terms {
                let mut c2 = c.clone();
                let mut k = 0;
                while (&c2 % 2u8).is_zero() && k < two { c2 /= 2; k += 1; }
                two = two.min(k);
            }
            let terms: Vec<(BigInt, u32, u32)> = terms.into_iter()
                .map(|(c, a, b)| (c >> two, a, b)).collect();
            // 1. parity gate: r-leading coefficient
            let rlead = terms.iter().max_by_key(|t| t.1).unwrap();
            if !(&rlead.0 % 2u8).is_zero() {
                ok += 1; continue;
            }
            // 2. mod-l sieve
            let mut proved = false;
            'lp: for &l in &sieve {
                let lc = terms.iter().max_by_key(|t| t.1).unwrap();
                if (&lc.0 % l).is_zero() { continue; }
                // coefficients of t^a: c mod l
                let mut cf = vec![0i64; deg as usize + 1];
                for (c, a, _) in &terms {
                    let m = ((c % l) + l) % l;
                    cf[*a as usize] = (cf[*a as usize] + m.to_string().parse::<i64>().unwrap()) % l;
                }
                let mut has_root = false;
                for t in 0..l {
                    let mut acc = 0i64;
                    for k in (0..cf.len()).rev() {
                        acc = (acc * t + cf[k]) % l;
                    }
                    if acc == 0 { has_root = true; break; }
                }
                if !has_root { proved = true; break 'lp; }
            }
            if proved { ok += 1; } else { fallback.push((total, "sieve inconclusive")); }
        }
        println!("{fname}: {ok}/{total} proved nonvanishing; fallback {}", fallback.len());
        for (i, why) in fallback.iter().take(5) { println!("   form {i}: {why}"); }
    }
}
