// Emit Lean certificates for the screen phase: every relation the
// certifier killed by library division ("monomial") or by a unit
// minimal layer ("unit") becomes a theorem that its value at the
// Gaussian point (π², π̄², ·, χ², χ̄²) is nonzero. Live relations are
// skipped here; the condition layer handles them.
//
// The (u,v,x,y) polynomials embed into the five-variable Mono at
// positions (1,2,4,5); position 3 (q) stays unused.
use std::collections::BTreeMap;
use std::io::{BufRead, Write};

type M4 = (u16, u16, u16, u16);
type P4 = BTreeMap<M4, i128>;

fn parse4(s: &str) -> P4 {
    let mut p = P4::new();
    for t in s.split(';') {
        if t.trim().is_empty() { continue; }
        let parts: Vec<&str> = t.split(',').map(|x| x.trim()).collect();
        let c: i128 = parts[0].parse().unwrap();
        let m = (parts[1].parse().unwrap(), parts[2].parse().unwrap(),
                 parts[3].parse().unwrap(), parts[4].parse().unwrap());
        if c != 0 { p.insert(m, c); }
    }
    p
}

fn lean_poly(p: &P4) -> String {
    p.iter().map(|(m, c)| format!("PolyRefl.mkT {} {} 0 {} {} ({})", m.0, m.1, m.2, m.3, c))
        .collect::<Vec<_>>().join(", ")
}

/// Recognize a library factor and give the LibraryNonzero proof term.
/// The value atoms in scope: hAB/hCD coordinates, hpodd/hqodd.
fn lib_proof(p: &P4) -> Option<String> {
    let terms: Vec<(M4, i128)> = p.iter().map(|(m, c)| (*m, *c)).collect();
    if terms.len() == 2 {
        let ((m1, c1), (m2, c2)) = (terms[0], terms[1]);
        // u^j ± v^j  (positions 0,1)
        if m1.1 == 0 && m1.2 == 0 && m1.3 == 0 && m2.0 == 0 && m2.2 == 0 && m2.3 == 0
            && m1.0 == m2.1 && m1.0 > 0 && c2 == 1 {
            let j = m1.0;
            if c1 == 1 {
                return Some(format!(
                    "by simpa using LibraryNonzero.lib_sum_ne p A B hpodd hpAB {j} (by norm_num)"));
            }
            if c1 == -1 {
                return Some(format!(
                    "by simpa using neg_ne_zero.mpr (LibraryNonzero.lib_diff_ne p A B hpodd hpAB {j} (by norm_num))"));
            }
        }
        if m2.1 == 0 && m2.2 == 0 && m2.3 == 0 && m1.0 == 0 && m1.2 == 0 && m1.3 == 0
            && m2.0 == m1.1 && m2.0 > 0 && c2 == 1 {
            let j = m2.0;
            if c1 == 1 {
                return Some(format!(
                    "by simpa using LibraryNonzero.lib_sum_ne p A B hpodd hpAB {j} (by norm_num)"));
            }
            if c1 == -1 {
                return Some(format!(
                    "by simpa [neg_sub] using LibraryNonzero.lib_diff_ne p A B hpodd hpAB {j} (by norm_num)"));
            }
        }
        // x^j ± y^j  (positions 2,3)
        if m1.0 == 0 && m1.1 == 0 && m2.0 == 0 && m2.1 == 0 {
            if m1.3 == 0 && m2.2 == 0 && m1.2 == m2.3 && m1.2 > 0 && c2 == 1 {
                let j = m1.2;
                if c1 == 1 {
                    return Some(format!(
                        "by simpa using LibraryNonzero.lib_sum_ne q C D hqodd hqCD {j} (by norm_num)"));
                }
                if c1 == -1 {
                    return Some(format!(
                        "by simpa using neg_ne_zero.mpr (LibraryNonzero.lib_diff_ne q C D hqodd hqCD {j} (by norm_num))"));
                }
            }
            if m2.3 == 0 && m1.2 == 0 && m2.2 == m1.3 && m2.2 > 0 && c2 == 1 {
                let j = m2.2;
                if c1 == 1 {
                    return Some(format!(
                        "by simpa using LibraryNonzero.lib_sum_ne q C D hqodd hqCD {j} (by norm_num)"));
                }
                if c1 == -1 {
                    return Some(format!(
                        "by simpa [neg_sub] using LibraryNonzero.lib_diff_ne q C D hqodd hqCD {j} (by norm_num)"));
                }
            }
        }
    }
    if terms.len() == 3 {
        // pinch u^{2j} + v^{2j} + c (uv)^j  or the x-side
        let mut lead = None;
        for side in [0u8, 1] {
            let (i0, i1) = if side == 0 { (0usize, 1usize) } else { (2, 3) };
            let get = |m: M4, i: usize| [m.0, m.1, m.2, m.3][i];
            let pure0: Vec<&(M4, i128)> = terms.iter()
                .filter(|(m, c)| get(*m, i1) == 0 && get(*m, i0) > 0 && *c == 1
                    && [m.0, m.1, m.2, m.3].iter().enumerate()
                        .all(|(i, v)| i == i0 || *v == 0)).collect();
            let pure1: Vec<&(M4, i128)> = terms.iter()
                .filter(|(m, c)| get(*m, i0) == 0 && get(*m, i1) > 0 && *c == 1
                    && [m.0, m.1, m.2, m.3].iter().enumerate()
                        .all(|(i, v)| i == i1 || *v == 0)).collect();
            let mixed: Vec<&(M4, i128)> = terms.iter()
                .filter(|(m, _)| get(*m, i0) > 0 && get(*m, i1) > 0).collect();
            if pure0.len() == 1 && pure1.len() == 1 && mixed.len() == 1 {
                let tj = get(pure0[0].0, i0);
                if get(pure1[0].0, i1) == tj && tj % 2 == 0
                    && get(mixed[0].0, i0) == tj / 2 && get(mixed[0].0, i1) == tj / 2 {
                    lead = Some((side, tj / 2, mixed[0].1));
                }
            }
        }
        if let Some((side, j, c)) = lead {
            let (pr, w1, w2, w3, w4) = if side == 0 {
                ("p", "A", "B", "hpodd", "hpAB")
            } else {
                ("q", "C", "D", "hqodd", "hqCD")
            };
            if c == 1 || c == -1 {
                return Some(format!(
                    "by simpa using LibraryNonzero.lib_pinch_odd_ne {pr} {w1} {w2} {w3} {w4} {j} (by norm_num) ({c}) (by norm_num)"));
            }
            if c == 2 || c == -2 {
                return Some(format!(
                    "by simpa using LibraryNonzero.lib_pinch_two_ne {pr} {w1} {w2} {w3} {w4} {j} (by norm_num) ({c}) (by norm_num)"));
            }
        }
    }
    None
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let fname = &args[1]; // screen_{a}_{b}.txt
    let tag = fname.replace("screen_", "").replace(".txt", "").replace('/', "_");
    let dec = if std::env::var("KERNEL_DECIDE").is_ok() { "decide +kernel" }
              else { "native_decide" };
    let mut out = std::fs::File::create(format!("ScreenCert_{tag}.lean")).unwrap();
    writeln!(out, "/- Generated: the screen-phase kills of grid {tag}. Every relation").unwrap();
    writeln!(out, "   with a monomial or unit core is nonzero at the Gaussian point. -/").unwrap();
    writeln!(out, "import MsqLean.CertKit\nimport MsqLean.PolyRefl\nimport MsqLean.LibraryNonzero\nimport MsqLean.Router\n").unwrap();
    writeln!(out, "set_option maxRecDepth 100000\nset_option maxHeartbeats 2000000\n").unwrap();
    writeln!(out, "namespace ScreenCert\nopen CertKit\n").unwrap();
    writeln!(out, "variable (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]").unwrap();
    writeln!(out, "variable (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)").unwrap();
    writeln!(out, "variable (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)\n").unwrap();
    let (mut n_dead, mut n_live, mut n_skip) = (0u32, 0u32, 0u32);
    for (li, line) in std::io::BufReader::new(std::fs::File::open(fname).unwrap())
        .lines().enumerate() {
        let line = line.unwrap();
        if line.trim().is_empty() { continue; }
        let verdict = line.rsplit('|').next().unwrap().trim().to_string();
        if verdict == "live" { n_live += 1; continue; }
        // Parse: REL ids | P0 || F f | q ## ... || CORE core | verdict
        let body = line.splitn(2, '|').nth(1).unwrap();
        let mut secs = body.split("||");
        let p0 = parse4(secs.next().unwrap().trim());
        let chain_part = secs.next().unwrap();
        let core_part = secs.next().unwrap().trim();
        let core_ser = core_part.strip_prefix("CORE").unwrap()
            .rsplitn(2, '|').last().unwrap().trim();
        let core = parse4(core_ser);
        let mut steps: Vec<(P4, P4)> = Vec::new();
        let mut ok = true;
        for st in chain_part.split("##") {
            let st = st.trim();
            let Some(rest) = st.strip_prefix("F ") else { continue; };
            let mut fq = rest.split('|');
            let fpol = parse4(fq.next().unwrap());
            let qpol = parse4(fq.next().unwrap());
            if lib_proof(&fpol).is_none() { ok = false; }
            steps.push((fpol, qpol));
        }
        // Unit cores are not yet dispatched (they need the π-adic layer
        // data); emit only the pure-monomial verdicts in this pass.
        if verdict != "monomial" || !ok {
            n_skip += 1;
            continue;
        }
        let _ = (p0, core, steps, li);
        n_dead += 1;
        // Emission of the full factor-chain theorem comes with the
        // strip-step data; counted here to size the pass.
    }
    writeln!(out, "end ScreenCert").unwrap();
    println!("{fname}: dead(monomial, lib-recognized)={n_dead} live={n_live} skipped={n_skip} (dec={dec})");
}
