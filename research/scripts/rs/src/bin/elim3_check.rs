// The data check for dumped three-prime eliminants: every eliminant
// must be nonzero at all admissible prime data. X is determined by q
// up to sign (the unique two-square representation), so the check runs
// over split-prime triples (p, q, w) with both X signs.
//
// Evaluation is modular (two 61-bit primes) with staged substitution;
// a joint zero is re-checked exactly with BigInt.
use rayon::prelude::*;
use num_bigint::BigInt;
use num_traits::Zero;
use std::io::BufRead;

type M8 = [u16; 8];

const MODS: [i128; 2] = [(1 << 61) - 1, 2305843009213693921];

fn split_primes(bound: i64) -> Vec<(i64, i64, i64, i64)> {
    // (prime, r, s, x) with r = A^2 - B^2, s = 2AB, x = |A^2 - B^2| for
    // the chi-role (the same coordinate set serves every role)
    let mut out = Vec::new();
    for t in (5..=bound).step_by(4) {
        let is_prime = (2..t).take_while(|d| d * d <= t).all(|d| t % d != 0);
        if !is_prime { continue; }
        for bb in (2..t).step_by(2) {
            let aa2 = t - bb * bb;
            if aa2 <= 0 { break; }
            let aa = (aa2 as f64).sqrt().round() as i64;
            if aa * aa == aa2 && aa % 2 == 1 {
                out.push((t, aa * aa - bb * bb, 2 * aa * bb, aa * aa - bb * bb));
                break;
            }
        }
    }
    out
}

fn modpow(mut b: i128, mut e: u32, m: i128) -> i128 {
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
    let fname = args.get(1).cloned().unwrap_or("elim3_1_1_1.txt".into());
    let bound: i64 = args.get(2).and_then(|x| x.parse().ok()).unwrap_or(60);
    let data = split_primes(bound);
    println!("{} split primes up to {bound}", data.len());
    let lines: Vec<String> = std::io::BufReader::new(std::fs::File::open(&fname).unwrap())
        .lines().map_while(|l| l.ok()).collect();
    let results: Vec<(usize, u64, Vec<String>)> = lines.par_iter().enumerate()
        .map(|(li, line)| {
            let elim = line.rsplit("| ELIM").next().unwrap().trim();
            let mut terms: Vec<(i128, M8)> = Vec::new();
            let mut big: Vec<(BigInt, M8)> = Vec::new();
            for t in elim.split(';') {
                if t.trim().is_empty() { continue; }
                let ps: Vec<&str> = t.split(',').map(|x| x.trim()).collect();
                let c: BigInt = ps[0].parse().unwrap();
                let mut m = [0u16; 8];
                for i in 0..8 { m[i] = ps[i + 1].parse().unwrap(); }
                let cs: i128 = c.to_string().parse().unwrap_or(0);
                if format!("{cs}") == c.to_string() {
                    terms.push((cs, m));
                } else {
                    terms.push((0, m)); // placeholder; exact check uses big
                }
                big.push((c, m));
            }
            // hoist per-modulus coefficient reductions
            let cmods: Vec<[i128; 2]> = big.iter().map(|(c, _)| {
                let mut out = [0i128; 2];
                for (i, &md) in MODS.iter().enumerate() {
                    let r = c % md;
                    let mut v: i128 = r.to_string().parse().unwrap();
                    if v < 0 { v += md; }
                    out[i] = v;
                }
                out
            }).collect();
            let mut n = 0u64;
            let mut zeros: Vec<String> = Vec::new();
            for &(pp, rr, ss, _) in &data {
                for &(qq, _, _, xx) in &data {
                    if qq == pp { continue; }
                    for &(ww, _, _, _) in &data {
                        if ww == pp || ww == qq { continue; }
                        for sx in [1i64, -1] {
                        for ssg in [1i64, -1] {
                            n += 1;
                            let vals: [i128; 8] = [rr as i128, (ssg * ss) as i128,
                                qq as i128, (sx * xx) as i128, 0,
                                ww as i128, 0, 0];
                            let mut zero_all = true;
                            for (mi, &md) in MODS.iter().enumerate() {
                                let mut acc = 0i128;
                                for ((_, m), cm) in big.iter().zip(&cmods) {
                                    let mut t = cm[mi];
                                    for i in 0..8 {
                                        if m[i] > 0 {
                                            t = t * modpow(vals[i], m[i] as u32, md) % md;
                                        }
                                    }
                                    acc = (acc + t) % md;
                                }
                                if acc != 0 { zero_all = false; break; }
                            }
                            if zero_all {
                                // exact confirmation
                                let mut acc = BigInt::zero();
                                for (c, m) in &big {
                                    let mut t = c.clone();
                                    for i in 0..8 {
                                        for _ in 0..m[i] { t *= vals[i]; }
                                    }
                                    acc += t;
                                }
                                if acc.is_zero() {
                                    zeros.push(format!(
                                        "line={li} p={pp} q={qq} w={ww} X={}", sx * xx));
                                }
                            }
                        }
                        }
                    }
                }
            }
            let _ = terms;
            (li, n, zeros)
        }).collect();
    let total: u64 = results.iter().map(|(_, n, _)| n).sum();
    let allzeros: Vec<&String> = results.iter().flat_map(|(_, _, z)| z.iter()).collect();
    println!("{} eliminants, {total} evaluations, {} exact zeros",
        lines.len(), allzeros.len());
    for z in allzeros.iter().take(30) { println!("  ZERO {z}"); }
}
