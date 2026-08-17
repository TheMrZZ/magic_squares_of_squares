// Emit Lean certificate lemmas for the oracle forms of a grid.
// Parity-gate route: after monomial-content stripping and 2-content
// stripping, if the r-leading (s-exponent 0) coefficient is odd, emit
//   lemma ... : <poly> != 0 := parity_gate N hr hs (by decide) (by ring)
// Forms failing the gate are listed for the sieve route.
use num_bigint::BigInt;
use num_traits::Zero;
use std::io::{BufRead, Write};

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let fname = &args[1];
    let tag = fname.replace("oracle_t0_", "").replace(".txt", "").replace('/', "_");
    let file = std::fs::File::open(fname).unwrap();
    let mut out = std::fs::File::create(format!("CertForms_{tag}.lean")).unwrap();
    writeln!(out, "/- Generated: nonvanishing of the certifier's minimal-layer forms").unwrap();
    writeln!(out, "   at grid {tag}, via the parity gate. -/").unwrap();
    writeln!(out, "import MsqLean.CertKit\nimport MsqLean.PolyRefl\n\nnamespace CertForms\nopen CertKit\n").unwrap();
    let mut n_ok = 0;
    let mut fallback = Vec::new();
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
        if s0.len() != 1 { fallback.push(li); continue; }
        let lead = &s0[0].0;
        if (lead % 2u8).is_zero() { fallback.push(li); continue; }
        let nn = s0[0].1;
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
    writeln!(out, "end CertForms").unwrap();
    println!("{fname}: {n_ok} parity-gate lemmas emitted; {} fallback (sieve route): {:?}",
             fallback.len(), fallback);
}
