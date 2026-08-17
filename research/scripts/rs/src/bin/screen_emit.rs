// Emit Lean certificates for the screen phase: every relation the
// certifier killed by library division ("monomial") or by a unit
// minimal layer ("unit") becomes a theorem that its value at the
// Gaussian point (π², π̄², ·, χ², χ̄²) is nonzero.
//
// The (u,v,x,y) polynomials embed into the five-variable Mono at
// positions (1,2,4,5); position 3 (q) stays unused (evaluated at 1).
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
    if p.is_empty() { return String::new(); }
    p.iter().map(|(m, c)| format!("PolyRefl.mkT {} {} 0 {} {} ({})", m.0, m.1, m.2, m.3, c))
        .collect::<Vec<_>>().join(", ")
}

fn strip4(p: &P4) -> (M4, P4) {
    let mu = p.keys().map(|m| m.0).min().unwrap();
    let mv = p.keys().map(|m| m.1).min().unwrap();
    let mx = p.keys().map(|m| m.2).min().unwrap();
    let my = p.keys().map(|m| m.3).min().unwrap();
    ((mu, mv, mx, my),
     p.iter().map(|(m, c)| ((m.0 - mu, m.1 - mv, m.2 - mx, m.3 - my), *c)).collect())
}

const ATOMS: [&str; 4] = [
    "((⟨A, B⟩ : GaussianInt) ^ 2)",
    "((star (⟨A, B⟩ : GaussianInt)) ^ 2)",
    "((⟨C, D⟩ : GaussianInt) ^ 2)",
    "((star (⟨C, D⟩ : GaussianInt)) ^ 2)",
];

fn monoval(m: M4) -> String {
    format!("{} ^ {} * {} ^ {} * {} ^ {} * {} ^ {}",
        ATOMS[0], m.0, ATOMS[1], m.1, ATOMS[2], m.2, ATOMS[3], m.3)
}

const PT: &str = "((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2)";

/// Recognize a library factor and give the nonzero proof term.
fn lib_proof(p: &P4) -> Option<String> {
    let terms: Vec<(M4, i128)> = p.iter().map(|(m, c)| (*m, *c)).collect();
    let shape2 = |i0: usize, i1: usize, pr: &str, w: &str, ho: &str, hab: &str| -> Option<String> {
        if terms.len() != 2 { return None; }
        let get = |m: M4, i: usize| [m.0, m.1, m.2, m.3][i];
        let solo = |m: M4, i: usize| (0..4).all(|k| k == i || get(m, k) == 0);
        let (a0, b0) = (terms[0], terms[1]);
        for ((mA, cA), (mB, cB)) in [(a0, b0), (b0, a0)] {
            if solo(mA, i0) && solo(mB, i1) && get(mA, i0) == get(mB, i1)
                && get(mA, i0) > 0 && cA == 1 {
                let j = get(mA, i0);
                if cB == 1 {
                    return Some(format!(
                        "LibraryNonzero.lib_sum_ne {pr} {w} {ho} {hab} {j} (by norm_num)"));
                }
                if cB == -1 {
                    return Some(format!(
                        "sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne {pr} {w} {ho} {hab} {j} (by norm_num)))"));
                }
            }
        }
        None
    };
    if let Some(t) = shape2(0, 1, "p", "A B", "hpodd", "hpAB") { return Some(t); }
    if let Some(t) = shape2(2, 3, "q", "C D", "hqodd", "hqCD") { return Some(t); }
    if terms.len() == 3 {
        for side in [0u8, 1] {
            let (i0, i1) = if side == 0 { (0usize, 1usize) } else { (2, 3) };
            let get = |m: M4, i: usize| [m.0, m.1, m.2, m.3][i];
            let solo = |m: M4, i: usize| (0..4).all(|k| k == i || get(m, k) == 0);
            let p0: Vec<&(M4, i128)> = terms.iter()
                .filter(|(m, c)| solo(*m, i0) && get(*m, i0) > 0 && *c == 1).collect();
            let p1: Vec<&(M4, i128)> = terms.iter()
                .filter(|(m, c)| solo(*m, i1) && get(*m, i1) > 0 && *c == 1).collect();
            let mx: Vec<&(M4, i128)> = terms.iter()
                .filter(|(m, _)| get(*m, i0) > 0 && get(*m, i1) > 0).collect();
            if p0.len() == 1 && p1.len() == 1 && mx.len() == 1 {
                let tj = get(p0[0].0, i0);
                if get(p1[0].0, i1) == tj && tj % 2 == 0
                    && get(mx[0].0, i0) == tj / 2 && get(mx[0].0, i1) == tj / 2 {
                    let j = tj / 2;
                    let c = mx[0].1;
                    let (pr, w, ho, hab) = if side == 0 {
                        ("p", "A B", "hpodd", "hpAB")
                    } else { ("q", "C D", "hqodd", "hqCD") };
                    if c == 1 || c == -1 {
                        return Some(format!(
                            "LibraryNonzero.lib_pinch_odd_ne {pr} {w} {ho} {hab} {j} (by norm_num) ({c}) (by norm_num)"));
                    }
                    if c == 2 || c == -2 {
                        return Some(format!(
                            "LibraryNonzero.lib_pinch_two_ne {pr} {w} {ho} {hab} {j} (by norm_num) ({c}) (by norm_num)"));
                    }
                }
            }
        }
    }
    None
}

/// The four axis atoms with their "other three" nondivisibility packs.
/// Returns (atom expr, prime proof, list of not-dvd proofs for the
/// other three atoms' bases).
fn axis_pack(axis: usize) -> (String, String, [String; 3]) {
    let pi = "(⟨A, B⟩ : GaussianInt)";
    let pis = "(star (⟨A, B⟩ : GaussianInt))";
    let chi = "(⟨C, D⟩ : GaussianInt)";
    let chis = "(star (⟨C, D⟩ : GaussianInt))";
    let prime = |w: &str| match w {
        _ if w == pi => "hπpr".to_string(),
        _ if w == pis => "hπspr".to_string(),
        _ if w == chi => "hχpr".to_string(),
        _ => "hχspr".to_string(),
    };
    let nd = |a: &str, b: &str| -> String {
        // ¬ a ∣ b for base atoms (squares handled by dvd_of_dvd_pow at use)
        match (a, b) {
            _ if a == pi && b == pis => "hnd_pi_pis".into(),
            _ if a == pi && b == chi => "hnd_pi_chi".into(),
            _ if a == pi && b == chis => "hnd_pi_chis".into(),
            _ if a == pis && b == pi => "hnd_pis_pi".into(),
            _ if a == pis && b == chi => "hnd_pis_chi".into(),
            _ if a == pis && b == chis => "hnd_pis_chis".into(),
            _ if a == chi && b == pi => "hnd_chi_pi".into(),
            _ if a == chi && b == pis => "hnd_chi_pis".into(),
            _ if a == chi && b == chis => "hnd_chi_chis".into(),
            _ if a == chis && b == pi => "hnd_chis_pi".into(),
            _ if a == chis && b == pis => "hnd_chis_pis".into(),
            _ => "hnd_chis_chi".into(),
        }
    };
    let bases = [pi, pis, chi, chis];
    let me = bases[axis];
    let others: Vec<&str> = bases.iter().filter(|b| **b != me).cloned().collect();
    (me.to_string(), prime(me),
     [nd(me, others[0]), nd(me, others[1]), nd(me, others[2])])
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let fname = &args[1];
    let tag = fname.replace("screen_", "").replace(".txt", "").replace('/', "_");
    let dec = if std::env::var("KERNEL_DECIDE").is_ok() { "decide +kernel" }
              else { "native_decide" };
    let mut out = std::fs::File::create(format!("ScreenCert_{tag}.lean")).unwrap();
    writeln!(out, "/- Generated: the screen-phase kills of grid {tag}. Every relation").unwrap();
    writeln!(out, "   with a monomial or unit core is nonzero at the Gaussian point. -/").unwrap();
    writeln!(out, "import MsqLean.CertKit\nimport MsqLean.PolyRefl\nimport MsqLean.LibraryNonzero\nimport MsqLean.Router\nimport MsqLean.SimplestRelation\n").unwrap();
    writeln!(out, "set_option maxRecDepth 100000\nset_option maxHeartbeats 2000000\n").unwrap();
    writeln!(out, "open Zsqrtd\n\nnamespace ScreenCert\n").unwrap();
    writeln!(out, "variable (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]").unwrap();
    writeln!(out, "variable (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)").unwrap();
    writeln!(out, "variable (A B C D : ℤ)\n").unwrap();
    let (mut n_emit, mut n_live, mut n_skip) = (0u32, 0u32, 0u32);
    for (li, line) in std::io::BufReader::new(std::fs::File::open(fname).unwrap())
        .lines().enumerate() {
        let line = line.unwrap();
        if line.trim().is_empty() { continue; }
        let verdict = line.rsplit('|').next().unwrap().trim().to_string();
        if verdict == "live" { n_live += 1; continue; }
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
        // unit-core dispatch data (next pass)
        let mut unit_data: Option<(usize, u16, (M4, i128), P4)> = None;
        if false && verdict == "unit" && !core.is_empty() {
            'ax: for axis in 0..4 {
                let get = |m: &M4| [m.0, m.1, m.2, m.3][axis];
                let mn = core.keys().map(&get).min().unwrap();
                let lay: Vec<(M4, i128)> = core.iter()
                    .filter(|(m, _)| get(m) == mn).map(|(m, c)| (*m, *c)).collect();
                if lay.len() == 1 && lay[0].1.abs() == 1 {
                    let rest: P4 = core.iter().filter(|(m, _)| get(m) > mn)
                        .map(|(m, c)| {
                            let mut mm = [m.0, m.1, m.2, m.3];
                            mm[axis] -= mn + 1;
                            (((mm[0], mm[1], mm[2], mm[3])), *c)
                        }).collect();
                    unit_data = Some((axis, mn, lay[0], rest));
                    break 'ax;
                }
            }
            if unit_data.is_none() { ok = false; }
        }
        if !ok || verdict != "monomial" {
            n_skip += 1;
            continue;
        }
        // ---- emission ----
        // stage sequence: P_i --strip--> S_i --divide f_i--> P_{i+1}
        let mut stage_defs: Vec<String> = Vec::new();
        let mut proof: Vec<String> = Vec::new();
        let mut cur = p0.clone();
        let mut idx = 0;
        let name = |i: usize, kind: &str| format!("s{li}_{i}{kind}_{tag}");
        loop {
            let (mono, stripped) = strip4(&cur);
            let pn = name(idx, "p");
            let sn = name(idx, "s");
            stage_defs.push(format!("def {pn} : PolyRefl.SPoly := [{}]", lean_poly(&cur)));
            stage_defs.push(format!("def {sn} : PolyRefl.SPoly := [{}]", lean_poly(&stripped)));
            proof.push(format!(
                "  have e{idx}s : PolyRefl.eval ({pn}) {PT} = ({}) * PolyRefl.eval ({sn}) {PT} := by\n    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := {pn})\n      (Q := PolyRefl.mulTerm (({}, {}, 0, {}, {}), 1) ({sn})) (by {dec})]\n    rw [PolyRefl.eval_mulTerm]\n    push_cast\n    ring",
                monoval(mono), mono.0, mono.1, mono.2, mono.3));
            if idx >= steps.len() {
                // stripped should equal the core (or a constant)
                break;
            }
            let (fpol, qpol) = steps[idx].clone();
            let fnm = name(idx, "f");
            let qn = name(idx + 1, "p");
            let _ = &qn;
            stage_defs.push(format!("def {fnm} : PolyRefl.SPoly := [{}]", lean_poly(&fpol)));
            proof.push(format!(
                "  have e{idx}f : PolyRefl.eval ({sn}) {PT} = PolyRefl.eval ({fnm}) {PT} * PolyRefl.eval (s{li}_{}p_{tag}) {PT} :=\n    PolyRefl.eval_factor _ _ _ (by {dec}) _ _ _ _ _",
                idx + 1));
            proof.push(format!(
                "  have h{idx}f : PolyRefl.eval ({fnm}) {PT} ≠ 0 := by\n    intro h0\n    apply {}\n    linear_combination (norm := (simp only [{fnm}, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0",
                lib_proof(&fpol).unwrap()));
            cur = qpol;
            idx += 1;
        }
        let last_s = name(idx, "s");
        // core nonzero
        match &unit_data {
            None => {
                // constant core: eval = c, and the cast of a nonzero
                // integer into a CharZero domain is nonzero
                let c = core.get(&(0, 0, 0, 0)).cloned().unwrap_or(0);
                proof.push(format!(
                    "  have hcore : PolyRefl.eval ({last_s}) {PT} ≠ 0 := by\n    have hval : PolyRefl.eval ({last_s}) {PT} = (({c} : ℤ) : GaussianInt) := by\n      simp [{last_s}, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]\n    rw [hval]\n    exact_mod_cast (by norm_num : ({c} : ℤ) ≠ 0)"));
            }
            Some((axis, mn, (lm, lc), rest)) => {
                let (atom, hpr, nds) = axis_pack(*axis);
                let lone_res: P4 = {
                    let mut mm = [lm.0, lm.1, lm.2, lm.3];
                    mm[*axis] = 0;
                    [((mm[0], mm[1], mm[2], mm[3]), *lc)].into_iter().collect()
                };
                let ln = name(idx, "l");
                let rn = name(idx, "r");
                stage_defs.push(format!("def {ln} : PolyRefl.SPoly := [{}]", lean_poly(&lone_res)));
                stage_defs.push(format!("def {rn} : PolyRefl.SPoly := [{}]",
                    if rest.is_empty() { String::new() } else { lean_poly(rest) }));
                // core = mulTerm(axis^mn) (lone ++ mulTerm(axis^1) rest)
                let mut axm = [0u16; 4];
                axm[*axis] = *mn;
                let mut ax1 = [0u16; 4];
                ax1[*axis] = 1;
                proof.push(format!(
                    "  have ecore : PolyRefl.eval ({last_s}) {PT}\n      = ({atom}) ^ ({mn} : ℕ) * (PolyRefl.eval ({ln}) {PT} + ({atom}) * PolyRefl.eval ({rn}) {PT}) := by\n    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := {last_s})\n      (Q := PolyRefl.mulTerm (({}, {}, 0, {}, {}), 1) (({ln}) ++ PolyRefl.mulTerm (({}, {}, 0, {}, {}), 1) ({rn}))) (by {dec})]\n    rw [PolyRefl.eval_mulTerm, PolyRefl.eval_append, PolyRefl.eval_mulTerm]\n    push_cast\n    ring",
                    axm[0], axm[1], axm[2], axm[3], ax1[0], ax1[1], ax1[2], ax1[3]));
                // lone value: unit * product of other atoms' powers
                let mut om = [lm.0, lm.1, lm.2, lm.3];
                om[*axis] = 0;
                let others: Vec<usize> = (0..4).filter(|i| i != axis).collect();
                proof.push(format!(
                    "  have hT : ¬ ({atom} / {atom} * {atom}) ∣ PolyRefl.eval ({ln}) {PT} := by\n    sorry"));
                let _ = (om, others, nds, hpr);
                proof.push(format!(
                    "  have hcore : PolyRefl.eval ({last_s}) {PT} ≠ 0 := by\n    sorry"));
            }
        }
        for d in &stage_defs { writeln!(out, "{d}").unwrap(); }
        writeln!(out).unwrap();
        writeln!(out, "theorem screen_dead_{li}_{tag}").unwrap();
        writeln!(out, "    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)").unwrap();
        writeln!(out, "    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :").unwrap();
        writeln!(out, "    PolyRefl.eval (s{li}_0p_{tag}) {PT} ≠ 0 := by").unwrap();
        writeln!(out, "  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero").unwrap();
        writeln!(out, "  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero").unwrap();
        writeln!(out, "  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)").unwrap();
        writeln!(out, "  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)").unwrap();
        for pl in &proof { writeln!(out, "{pl}").unwrap(); }
        // combine: eval P0 = mono0 * eval S0; eval S_i = f_i * eval P_{i+1}; ...
        let mut expr = String::from("  -- assemble the nonzero product bottom-up");
        writeln!(out, "{expr}").unwrap();
        expr.clear();
        // bottom-up: core nonzero is hcore for the last stage
        writeln!(out, "  have hb{n} : PolyRefl.eval (s{li}_{n}s_{tag}) {PT} ≠ 0 := hcore",
            n = steps.len()).unwrap();
        for i in (0..=steps.len()).rev() {
            if i < steps.len() {
                writeln!(out, "  have hb{i}s : PolyRefl.eval (s{li}_{i}s_{tag}) {PT} ≠ 0 := by").unwrap();
                writeln!(out, "    rw [e{i}f]").unwrap();
                writeln!(out, "    exact mul_ne_zero h{i}f hbp{next}", next = i + 1).unwrap();
            }
            let src = if i < steps.len() { format!("hb{i}s") } else { format!("hb{i}") };
            writeln!(out, "  have hbp{i} : PolyRefl.eval (s{li}_{i}p_{tag}) {PT} ≠ 0 := by").unwrap();
            writeln!(out, "    rw [e{i}s]").unwrap();
            writeln!(out, "    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) ({src})").unwrap();
        }
        writeln!(out, "  exact hbp0\n").unwrap();
        n_emit += 1;
    }
    writeln!(out, "end ScreenCert").unwrap();
    println!("{fname}: emit-ready={n_emit} live={n_live} skipped={n_skip} (dec={dec})");
}
