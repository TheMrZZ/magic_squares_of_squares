// Emit Lean certificate lemmas for the oracle forms of a grid.
// Parity-gate route: after monomial-content stripping and 2-content
// stripping, if the r-leading (s-exponent 0) coefficient is odd, emit
//   lemma ... : <poly> != 0 := parity_gate N hr hs (by decide) (by ring)
// Forms failing the gate are listed for the sieve route.
use num_bigint::BigInt;
use num_traits::{Zero, ToPrimitive};
use std::io::{BufRead, Write};

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let fname = &args[1];
    let tag = fname.replace("oracle_t0_", "").replace(".txt", "").replace('/', "_");
    let file = std::fs::File::open(fname).unwrap();
    let mut out = std::fs::File::create(format!("CertForms_{tag}.lean")).unwrap();
    writeln!(out, "/- Generated: nonvanishing of the certifier's minimal-layer forms").unwrap();
    writeln!(out, "   at grid {tag}, via the parity gate. -/").unwrap();
    writeln!(out, "import MsqLean.CertKit\nimport MsqLean.PolyRefl\n\nset_option maxRecDepth 100000\n\nnamespace CertForms\nopen CertKit\n").unwrap();
    let mut n_ok = 0;
    let mut fallback: Vec<(usize, Vec<(BigInt, u32, u32)>)> = Vec::new();
    for (li, line) in std::io::BufReader::new(file).lines().enumerate() {
        let line = line.unwrap();
        if line.trim().is_empty() { continue; }
        let mut terms: Vec<(BigInt, u32, u32)> = Vec::new();
        for t in line.split(" + ") {
            let parts: Vec<&str> = t.split('*').filter(|x| !x.is_empty()).collect();
            let c: BigInt = parts[0].parse().unwrap();
            let mut ra = 0u32; let mut sb = 0u32;
            let mut i = 1;
            while i + 1 < parts.len() + 1 {
                if i < parts.len() && parts[i] == "r" { ra = parts[i+1].parse().unwrap(); i += 2; }
                else if i < parts.len() && parts[i] == "s" { sb = parts[i+1].parse().unwrap(); i += 2; }
                else { i += 1; }
            }
            terms.push((c, ra, sb));
        }
        let ra0 = terms.iter().map(|t| t.1).min().unwrap();
        let sb0 = terms.iter().map(|t| t.2).min().unwrap();
        for t in terms.iter_mut() { t.1 -= ra0; t.2 -= sb0; }
        let mut two = u32::MAX;
        for (c, _, _) in &terms {
            let mut c2 = c.clone(); let mut k = 0;
            while (&c2 % 2u8).is_zero() && k < two { c2 /= 2; k += 1; }
            two = two.min(k);
        }
        let terms: Vec<(BigInt, u32, u32)> = terms.into_iter().map(|(c, a, b)| (c >> two, a, b)).collect();
        if terms.len() == 1 { n_ok += 1; continue; } // monomial: kit-free (r,s nonzero)
        // the s^0 term
        let s0: Vec<&(BigInt, u32, u32)> = terms.iter().filter(|t| t.2 == 0).collect();
        if s0.len() != 1 { fallback.push((li, terms.clone())); continue; }
        let lead = &s0[0].0;
        let nn = s0[0].1;
        let mut e = 0u32;
        { let mut c = lead.clone(); while (&c % 2u8).is_zero() { c /= 2; e += 1; } }
        if e > 0 {
            // dyadic route: every s-carrying term needs s-exponent >= e+1
            if terms.iter().all(|t| t.2 == 0 || t.2 >= e + 1) {
                let c0 = lead >> e;
                let rest: Vec<String> = terms.iter().filter(|t| t.2 > 0).map(|(c, a, b)|
                    format!("(({a}, {}, 0, 0), {c})", b - (e + 1))).collect();
                writeln!(out, "def rest_{tag}_{li} : PolyRefl.SPoly := [{}]", rest.join(", ")).unwrap();
                writeln!(out, "lemma form_{tag}_{li} (r s : ℤ) (hr : Odd r) (hs : Even s) :").unwrap();
                writeln!(out, "    2 ^ {e} * ({c0}) * r ^ {nn} + s ^ {} * PolyRefl.eval rest_{tag}_{li} r s 1 1 ≠ 0 :=", e + 1).unwrap();
                writeln!(out, "  dyadic_gate {nn} {e} hr hs (by decide) rfl\n").unwrap();
                n_ok += 1;
                continue;
            }
            fallback.push((li, terms.clone()));
            continue;
        }
        // rest as PolyRefl data (s-exponent already reduced by one);
        // the lemma states the split shape directly, so hv is rfl and the
        // only computation is decide (Odd lead).
        let rest: Vec<String> = terms.iter().filter(|t| t.2 > 0).map(|(c, a, b)|
            format!("(({a}, {}, 0, 0), {c})", b - 1)).collect();
        writeln!(out, "def rest_{tag}_{li} : PolyRefl.SPoly := [{}]", rest.join(", ")).unwrap();
        writeln!(out, "lemma form_{tag}_{li} (r s : ℤ) (hr : Odd r) (hs : Even s) :").unwrap();
        writeln!(out, "    ({lead}) * r ^ {nn} + s * PolyRefl.eval rest_{tag}_{li} r s 1 1 ≠ 0 :=").unwrap();
        writeln!(out, "  parity_gate {nn} hr hs (by decide) rfl\n").unwrap();
        n_ok += 1;
    }
    // Sieve route for the fallback forms: find the smallest l in [3,47]
    // such that the form has no nonzero root over F_l x F_l, and emit a
    // sieve_gate lemma (hypothesis: IsCoprime r s).
    let mut unresolved = Vec::new();
    let mut n_sieve = 0;
    for (li, terms) in &fallback {
        let mut found = None;
        'lp: for l in [3i64, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47] {
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
            found = Some(l);
            break;
        }
        match found {
            None => {
                match factor_route(&mut out, &tag, *li, terms) {
                    true => { n_sieve += 1; }
                    false => unresolved.push(*li),
                }
            }
            Some(l) => {
                let data: Vec<String> = terms.iter().map(|(c, a, b)|
                    format!("(({a}, {b}, 0, 0), {c})")).collect();
                writeln!(out, "def sform_{tag}_{li} : PolyRefl.SPoly := [{}]", data.join(", ")).unwrap();
                writeln!(out, "lemma form_{tag}_{li} (r s : ℤ) (hco : IsCoprime r s) :").unwrap();
                writeln!(out, "    PolyRefl.eval sform_{tag}_{li} r s 1 1 ≠ 0 :=").unwrap();
                writeln!(out, "  sieve_gate {l} (by norm_num) sform_{tag}_{li} (by decide) hco\n").unwrap();
                n_sieve += 1;
            }
        }
    }
    writeln!(out, "end CertForms").unwrap();
    println!("{fname}: {n_ok} parity-gate + {n_sieve} sieve-gate lemmas; unresolved: {:?}",
             unresolved);
}

/// Divisors of |n| up to trial bound; gives rational-root candidates.
fn small_divisors(n: &BigInt) -> Vec<BigInt> {
    let mut n = n.clone();
    if n.sign() == num_bigint::Sign::Minus { n = -n; }
    let mut ds = vec![BigInt::from(1u8)];
    let mut p = BigInt::from(2u8);
    let lim = BigInt::from(1_000_000u32);
    while &p * &p <= n && p <= lim {
        while (&n % &p).is_zero() {
            n /= &p;
            let mut more: Vec<BigInt> = ds.iter().map(|d| d * &p).collect();
            ds.append(&mut more);
            ds.sort(); ds.dedup();
        }
        p += 1u8;
    }
    if n > BigInt::from(1u8) && n <= lim {
        let mut more: Vec<BigInt> = ds.iter().map(|d| d * &n).collect();
        ds.append(&mut more);
        ds.sort(); ds.dedup();
    }
    ds
}

/// Try to split a homogeneous (r, s)-form as (alpha*r - beta*s) * G with
/// alpha odd (the linear factor dies by parity), G sieve-killable.
/// Emits the certificate lemmas and returns true on success.
fn factor_route(out: &mut std::fs::File, tag: &str, li: usize,
                terms: &Vec<(BigInt, u32, u32)>) -> bool {
    let n = terms.iter().map(|t| t.1 + t.2).max().unwrap();
    if terms.iter().any(|t| t.1 + t.2 != n) { return false; } // not homogeneous
    // dense coefficient vector: coeffs[i] multiplies r^i s^(n-i)
    let mut coeffs = vec![BigInt::zero(); (n + 1) as usize];
    for (c, a, _b) in terms { coeffs[*a as usize] += c; }
    let lead = coeffs[n as usize].clone();
    let tail = coeffs.iter().find(|c| !c.is_zero()).unwrap().clone();
    if lead.is_zero() { return false; }
    for alpha in small_divisors(&lead) {
        if (&alpha % 2u8).is_zero() { continue; } // need alpha odd
        for beta0 in small_divisors(&tail) {
            for sg in [1i8, -1i8] {
                let beta = if sg == 1 { beta0.clone() } else { -beta0.clone() };
                // synthetic division of sum coeffs[i] r^i s^(n-i) by (alpha r - beta s):
                // quotient q[i] multiplies r^i s^(n-1-i), computed top down.
                let mut q = vec![BigInt::zero(); n as usize];
                let mut carry = BigInt::zero(); // remainder of current degree
                let mut ok = true;
                for i in (0..n as usize).rev() {
                    let num = &coeffs[i + 1] + &carry;
                    if !(&num % &alpha).is_zero() { ok = false; break; }
                    q[i] = &num / &alpha;
                    carry = &q[i] * &beta;
                }
                if !ok || &coeffs[0] + &carry != BigInt::zero() { continue; }
                // found: form = (alpha r - beta s) * G, G = sum q[i] r^i s^(n-1-i).
                // G must pass the projective sieve.
                let gterms: Vec<(BigInt, u32, u32)> = q.iter().enumerate()
                    .filter(|(_, c)| !c.is_zero())
                    .map(|(i, c)| (c.clone(), i as u32, n - 1 - i as u32)).collect();
                let mut gl = None;
                'lp: for l in [3i64, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47] {
                    let cs: Vec<(i64, u32, u32)> = gterms.iter()
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
                    gl = Some(l);
                    break;
                }
                let Some(l) = gl else { continue; };
                let pdata: Vec<String> = terms.iter().map(|(c, a, b)|
                    format!("(({a}, {b}, 0, 0), {c})")).collect();
                let ldata = format!("((1, 0, 0, 0), {alpha}), ((0, 1, 0, 0), {})", -&beta);
                let gdata: Vec<String> = gterms.iter().map(|(c, a, b)|
                    format!("(({a}, {b}, 0, 0), {c})")).collect();
                writeln!(out, "def pform_{tag}_{li} : PolyRefl.SPoly := [{}]", pdata.join(", ")).unwrap();
                writeln!(out, "def lfac_{tag}_{li} : PolyRefl.SPoly := [{ldata}]").unwrap();
                writeln!(out, "def gfac_{tag}_{li} : PolyRefl.SPoly := [{}]", gdata.join(", ")).unwrap();
                writeln!(out, "lemma form_{tag}_{li} (r s : ℤ) (hr : Odd r) (hs : Even s) (hco : IsCoprime r s) :").unwrap();
                writeln!(out, "    PolyRefl.eval pform_{tag}_{li} r s 1 1 ≠ 0 := by").unwrap();
                writeln!(out, "  rw [PolyRefl.eval_factor pform_{tag}_{li} lfac_{tag}_{li} gfac_{tag}_{li} (by decide) r s 1 1]").unwrap();
                writeln!(out, "  refine mul_ne_zero ?_ (sieve_gate {l} (by norm_num) gfac_{tag}_{li} (by decide) hco)").unwrap();
                writeln!(out, "  obtain ⟨k, hk⟩ := hr").unwrap();
                writeln!(out, "  obtain ⟨m, hm⟩ := hs").unwrap();
                writeln!(out, "  simp only [lfac_{tag}_{li}, PolyRefl.eval, List.foldr, Int.cast_id,").unwrap();
                writeln!(out, "    pow_succ, pow_zero, one_mul, mul_one, zero_add]").unwrap();
                writeln!(out, "  subst hk hm").unwrap();
                writeln!(out, "  omega\n").unwrap();
                return true;
            }
        }
    }
    false
}
