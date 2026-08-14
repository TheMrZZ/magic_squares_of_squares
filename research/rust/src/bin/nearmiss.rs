// Segmented exhaustive search for a 3x3 magic square of squares by center root e.
//
// Perfect square exists iff for some e, D(e) = {2xy : x²+y²=e², 0<x<y} contains
// u, v, u+v, u-v. Windows of e are factored by sieving with primes ≤ √hi, so no
// full SPF array is needed and e can exceed the u32 range. Squares use u128.
//
// Also logs near-misses:
//   FULL3  – three of the four required differences fully in D(e)
//   BREMNER – u,v ∈ D(e) and u±v each "half in" (one square cell each):
//             a fully-magic square with 7 of 9 entries square (only 1 known ever)

use rayon::prelude::*;
use std::io::Write;
use std::sync::Mutex;
use std::time::Instant;

const WINDOW: u64 = 1 << 21;

fn pow_mod(b: u64, mut e: u64, m: u64) -> u64 {
    let mut r: u128 = 1;
    let mut bb: u128 = (b % m) as u128;
    let mm = m as u128;
    while e > 0 {
        if e & 1 == 1 {
            r = r * bb % mm;
        }
        bb = bb * bb % mm;
        e >>= 1;
    }
    r as u64
}

/// p ≡ 1 (mod 4) prime → (a,b), a²+b²=p (Cornacchia via Euclid).
fn gaussian_rep(p: u64) -> (u64, u64) {
    let mut g = 2u64;
    let s = loop {
        let t = pow_mod(g, (p - 1) / 4, p);
        if pow_mod(t, 2, p) == p - 1 {
            break t;
        }
        g += 1;
    };
    let lim = (p as f64).sqrt() as u64 + 1;
    let (mut a, mut b) = (p, s);
    while b > lim {
        let r = a % b;
        a = b;
        b = r;
    }
    (b, a % b)
}

fn isqrt_u128(n: u128) -> u128 {
    if n == 0 {
        return 0;
    }
    let mut x = (n as f64).sqrt() as u128;
    while x * x > n {
        x -= 1;
    }
    while (x + 1) * (x + 1) <= n {
        x += 1;
    }
    x
}

fn is_square_u128(n: u128) -> bool {
    // quick residue filter then exact
    if !matches!(n & 15, 0 | 1 | 4 | 9) {
        return false;
    }
    let r = isqrt_u128(n);
    r * r == n
}

fn small_primes(n: u64) -> Vec<u64> {
    let n = n as usize;
    let mut is_c = vec![false; n + 1];
    let mut ps = Vec::new();
    for i in 2..=n {
        if !is_c[i] {
            ps.push(i as u64);
            let mut j = i * i;
            while j <= n {
                is_c[j] = true;
                j += i;
            }
        }
    }
    ps
}

type Gauss = (i128, i128);
fn gmul(z: Gauss, w: Gauss) -> Gauss {
    (z.0 * w.0 - z.1 * w.1, z.0 * w.1 + z.1 * w.0)
}

/// D(e) from the factorization (list of (p, a)); returns sorted distinct 2xy.
fn diffs(factors: &[(u64, u32)]) -> Vec<u128> {
    let mut scale: i128 = 1;
    let mut prims: Vec<(Gauss, u32)> = Vec::new();
    for &(p, a) in factors {
        if p % 4 == 1 {
            let (x, y) = gaussian_rep(p);
            prims.push(((x as i128, y as i128), 2 * a));
        } else {
            scale *= (p as i128).pow(a);
        }
    }
    if prims.is_empty() {
        return Vec::new();
    }
    let mut reps: Vec<u128> = Vec::new();
    let mut stack: Vec<(usize, Gauss)> = vec![(0, (scale, 0))];
    while let Some((i, cur)) = stack.pop() {
        if i == prims.len() {
            let (x, y) = (cur.0.unsigned_abs(), cur.1.unsigned_abs());
            if x != 0 && y != 0 {
                reps.push(2 * x * y);
            }
            continue;
        }
        let (gp, exp) = prims[i];
        let gpc = (gp.0, -gp.1);
        let mut z = cur;
        for k in 0..=exp {
            let mut w = z;
            for _ in 0..(exp - k) {
                w = gmul(w, gpc);
            }
            stack.push((i + 1, w));
            z = gmul(z, gp);
        }
    }
    reps.sort_unstable();
    reps.dedup();
    reps
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let lo: u64 = args
        .get(1)
        .map(|s| s.replace('_', "").parse().unwrap())
        .unwrap_or(65);
    let hi: u64 = args
        .get(2)
        .map(|s| s.replace('_', "").parse().unwrap())
        .unwrap_or(10_000_000_000);
    let t0 = Instant::now();

    let sieve_ps = small_primes(isqrt_u128(hi as u128) as u64 + 1);
    eprintln!(
        "{} sieve primes ≤ √{hi}; searching e ∈ [{lo}, {hi}) in {}-windows...",
        sieve_ps.len(),
        WINDOW
    );

    let log = Mutex::new(
        std::fs::File::options()
            .create(true)
            .append(true)
            .open("nearmiss2.log")
            .unwrap(),
    );

    let n_windows = (hi - lo + WINDOW - 1) / WINDOW;
    let progress = std::sync::atomic::AtomicU64::new(0);

    (0..n_windows).into_par_iter().for_each(|wi| {
        let start = lo + wi * WINDOW;
        let end = (start + WINDOW).min(hi);
        let len = (end - start) as usize;
        // factor the window by sieving
        let mut rem: Vec<u64> = (start..end).collect();
        let mut facs: Vec<Vec<(u64, u32)>> = vec![Vec::new(); len];
        for &p in &sieve_ps {
            if p * p >= end {
                break;
            }
            let mut m = start.next_multiple_of(p);
            while m < end {
                let i = (m - start) as usize;
                let mut a = 0u32;
                while rem[i] % p == 0 {
                    rem[i] /= p;
                    a += 1;
                }
                facs[i].push((p, a));
                m += p;
            }
        }
        for (i, &r) in rem.iter().enumerate() {
            if r > 1 {
                facs[i].push((r, 1));
            }
        }
        for i in 0..len {
            let e = start + i as u64;
            let w: u32 = facs[i]
                .iter()
                .filter(|(p, _)| p % 4 == 1)
                .map(|(_, a)| a)
                .sum();
            if w < 2 {
                continue;
            }
            let d = diffs(&facs[i]);
            if d.len() < 2 {
                continue;
            }
                        let c = (e as u128) * (e as u128);
            // classify a difference: 2=both cells square (in D), 1=one, 0=none
            let class = |x: u128| -> u8 {
                if x == 0 || x >= c { return 0; }
                if d.binary_search(&x).is_ok() { return 2; }
                (is_square_u128(c + x) as u8) + (is_square_u128(c - x) as u8)
            };
            let mut cands: Vec<(u128, u128)> = Vec::new();
            for (j, &al) in d.iter().enumerate() {
                for &be in &d[..j] {
                    // all identifications of two full diffs among {u,v,u+v,u-v}
                    cands.push((al, be));                       // u,v
                    cands.push((al + be, al));                  // u+v=al+be? no: u=al? keep raw cases below
                }
            }
            cands.clear();
            for (j, &al) in d.iter().enumerate() {
                for &be in &d[..j] {
                    // (u,v) candidates so that {al,be} ⊂ {u,v,u+v,u-v}
                    cands.push((al, be));                             // u=al, v=be
                    cands.push((be, al - be));                        // u=be?? u+v=al,u=be -> v=al-be
                    cands.push((al, al - be));                        // u=al, u-v=be -> v=al-be
                    cands.push((al - be, be));                        // v=be, u+v=al -> u=al-be
                    cands.push((al + be, be));                        // v=be, u-v=al -> u=al+be
                    cands.push((al + be, al));                        // v=al, u-v=be -> u=al+be
                    if (al + be) % 2 == 0 {
                        cands.push(((al + be) / 2, (al - be) / 2));   // u+v=al, u-v=be
                    }
                }
            }
            cands.retain(|&(u, v)| u > v && v > 0 && u != 2 * v && u + v < c);
            cands.sort_unstable();
            cands.dedup();
            for &(u, v) in &cands {
                let cl = [class(u), class(v), class(u + v), class(u - v)];
                let full = cl.iter().filter(|&&x| x == 2).count();
                let half = cl.iter().filter(|&&x| x == 1).count();
                if full == 4 {
                    let msg = format!("PERFECT e={e} u={u} v={v}");
                    println!("{msg}");
                    writeln!(log.lock().unwrap(), "{msg}").unwrap();
                    std::process::exit(0);
                }
                if full == 3 && half == 1 {
                    writeln!(log.lock().unwrap(), "FULL3 e={e} u={u} v={v} cl={cl:?}").unwrap();
                }
                if full == 2 && half == 2 {
                    writeln!(log.lock().unwrap(), "BREMNER e={e} u={u} v={v} cl={cl:?}").unwrap();
                }
            }
        }
        let done = progress.fetch_add(1, std::sync::atomic::Ordering::Relaxed) + 1;
        if done % 64 == 0 {
            eprintln!(
                "[{:.0?}] {done}/{n_windows} windows (e ≈ {})",
                t0.elapsed(),
                end
            );
        }
    });

    println!(
        "NO perfect magic square of squares with center root e in [{lo}, {hi})  ({:.0?})",
        t0.elapsed()
    );
}
