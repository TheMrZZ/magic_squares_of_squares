// Emit Lean certificates for the recorded PRS elimination chains.
// Each distinct step becomes one lemma via CertKit.prs_step (the data
// identity L·r0 = q·r1 + ct·r2 checked on normal forms); each leaf
// becomes a lemma folding its steps: the three input relations vanish
// ⟹ the eliminated endpoint vanishes.
use num_bigint::BigInt;
use num_traits::{Zero, One};
use std::collections::{BTreeMap, HashMap};
use std::io::{BufRead, Write};

type M5 = (u16, u16, u16, u16, u16);
type P5 = BTreeMap<M5, BigInt>;

fn parse_p5(s: &str) -> P5 {
    let mut p = P5::new();
    for t in s.split(';') {
        if t.trim().is_empty() { continue; }
        let parts: Vec<&str> = t.split(',').collect();
        let c: BigInt = parts[0].trim().parse().unwrap_or_else(|_| panic!("bad token {t:?} in {s:?}", t=parts[0], s=&s[..s.len().min(80)]));
        let m = (parts[1].trim().parse().unwrap(), parts[2].trim().parse().unwrap(),
                 parts[3].trim().parse().unwrap(), parts[4].trim().parse().unwrap(),
                 parts[5].trim().parse().unwrap());
        if !c.is_zero() { p.insert(m, c); }
    }
    p
}

fn ser(p: &P5) -> String {
    p.iter().map(|(m, c)| format!("{},{},{},{},{},{}", c, m.0, m.1, m.2, m.3, m.4))
        .collect::<Vec<_>>().join(";")
}

fn p5mul(a: &P5, b: &P5) -> P5 {
    let mut r = P5::new();
    for (ma, ca) in a {
        for (mb, cb) in b {
            let m = (ma.0 + mb.0, ma.1 + mb.1, ma.2 + mb.2, ma.3 + mb.3, ma.4 + mb.4);
            let e = r.entry(m).or_insert_with(BigInt::zero);
            *e += ca * cb;
            if e.is_zero() { r.remove(&m); }
        }
    }
    r
}

fn lc_axis(p: &P5, axis: u8) -> P5 {
    let deg = p.keys().map(|m| if axis == 0 { m.4 } else { m.3 }).max().unwrap_or(0);
    p.iter().filter(|(m, _)| (if axis == 0 { m.4 } else { m.3 }) == deg)
        .map(|(m, c)| (if axis == 0 { (m.0, m.1, m.2, m.3, 0) }
                       else { (m.0, m.1, m.2, 0, m.4) }, c.clone()))
        .collect()
}

fn lean_poly(p: &P5) -> String {
    // ascending order for cheap normalization
    p.iter().map(|(m, c)| format!("PolyRefl.mkT {} {} {} {} {} ({})",
                                  m.0, m.1, m.2, m.3, m.4, c))
        .collect::<Vec<_>>().join(", ")
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let fname = &args[1]; // chains_{a}_{b}.txt
    let tag = fname.replace("chains_", "").replace(".txt", "").replace('/', "_");
    let dec = if std::env::var("NATIVE_DECIDE").is_ok() { "native_decide" }
              else { "decide +kernel" };

    let mut polys: HashMap<String, usize> = HashMap::new();
    let mut poly_list: Vec<P5> = Vec::new();
    let mut intern = |p: &P5, polys: &mut HashMap<String, usize>,
                      poly_list: &mut Vec<P5>| -> usize {
        let k = ser(p);
        *polys.entry(k).or_insert_with(|| { poly_list.push(p.clone()); poly_list.len() - 1 })
    };

    // step key -> step id; step = (L, r0, r1, q, ct, r2) as poly ids
    let mut steps: HashMap<(usize, usize, usize, usize, String, usize), usize> = HashMap::new();
    let mut step_list: Vec<(usize, usize, usize, usize, BigInt, usize)> = Vec::new();
    // leaves: (ordered step ids, end poly id)
    let mut leaves: Vec<(Vec<usize>, usize, Option<(String, String, String, String)>)> = Vec::new();

    for line in std::io::BufReader::new(std::fs::File::open(fname).unwrap()).lines() {
        let line = line.unwrap();
        if line.trim().is_empty() { continue; }
        // optional pair-provenance prefix: "CORES c1 | pick1 | c2 | pick2 || LEAF ..."
        let mut prov: Option<(String, String, String, String)> = None;
        let line = if let Some(pos) = line.find("|| LEAF") {
            if let Some(rest) = line.strip_prefix("CORES ") {
                let head = &rest[..rest.find("|| LEAF").unwrap()];
                let ps: Vec<&str> = head.split('|').map(|x| x.trim()).collect();
                if ps.len() >= 4 {
                    prov = Some((ps[0].into(), ps[1].into(), ps[2].into(), ps[3].into()));
                }
                line[pos + 3..].to_string()
            } else { line }
        } else { line };
        let body = line.splitn(2, "||").nth(1).unwrap();
        let (chain_part, end_part) = body.rsplit_once("|| END").unwrap();
        let end = parse_p5(end_part.trim());
        let eid = intern(&end, &mut polys, &mut poly_list);
        let mut sids = Vec::new();
        for st in chain_part.split("##") {
            let st = st.trim();
            let Some(rest) = st.strip_prefix("STEP ") else { continue; };
            let mut fields = rest.splitn(2, '|');
            let head: Vec<&str> = fields.next().unwrap().trim()
                .split_whitespace().collect();
            let axis: u8 = head[0].parse().unwrap();
            let k: u32 = head[1].parse().unwrap();
            let ct: BigInt = head[2].parse().unwrap();
            let ps: Vec<&str> = fields.next().unwrap().split('|').collect();
            let r0 = parse_p5(ps[0]);
            let r1 = parse_p5(ps[1]);
            let q = parse_p5(ps[2]);
            let r2 = parse_p5(ps[3]);
            // L = lc(r1, axis)^k
            let lc = lc_axis(&r1, axis);
            let mut l = P5::new();
            l.insert((0, 0, 0, 0, 0), BigInt::one());
            for _ in 0..k { l = p5mul(&l, &lc); }
            let lid = intern(&l, &mut polys, &mut poly_list);
            let i0 = intern(&r0, &mut polys, &mut poly_list);
            let i1 = intern(&r1, &mut polys, &mut poly_list);
            let iq = intern(&q, &mut polys, &mut poly_list);
            let i2 = intern(&r2, &mut polys, &mut poly_list);
            let key = (lid, i0, i1, iq, ct.to_string(), i2);
            let sid = *steps.entry(key).or_insert_with(|| {
                step_list.push((lid, i0, i1, iq, ct.clone(), i2));
                step_list.len() - 1
            });
            sids.push(sid);
        }
        leaves.push((sids, eid, prov));
    }

    let mut out = std::fs::File::create(format!("ChainCert_{tag}.lean")).unwrap();
    writeln!(out, "/- Generated: the PRS elimination chains of grid {tag} as").unwrap();
    writeln!(out, "   vanishing-propagation certificates (CertKit.prs_step). -/").unwrap();
    writeln!(out, "import MsqLean.CertKit\nimport MsqLean.PolyRefl\n").unwrap();
    writeln!(out, "set_option maxRecDepth 100000\nset_option maxHeartbeats 2000000\n").unwrap();
    writeln!(out, "namespace ChainCert\nopen CertKit\n").unwrap();

    for (i, p) in poly_list.iter().enumerate() {
        writeln!(out, "def cp{i}_{tag} : PolyRefl.SPoly := [{}]", lean_poly(p)).unwrap();
    }
    writeln!(out).unwrap();
    for (j, (lid, i0, i1, iq, ct, i2)) in step_list.iter().enumerate() {
        writeln!(out, "lemma st{j}_{tag} {{R : Type*}} [CommRing R] [IsDomain R] [CharZero R]").unwrap();
        writeln!(out, "    (u v x y z : R)").unwrap();
        writeln!(out, "    (h0 : PolyRefl.eval cp{i0}_{tag} u v x y z = 0)").unwrap();
        writeln!(out, "    (h1 : PolyRefl.eval cp{i1}_{tag} u v x y z = 0) :").unwrap();
        writeln!(out, "    PolyRefl.eval cp{i2}_{tag} u v x y z = 0 :=").unwrap();
        writeln!(out, "  prs_step (L := cp{lid}_{tag}) (q := cp{iq}_{tag}) (ct := {ct})").unwrap();
        writeln!(out, "    (by norm_num) (by {dec}) u v x y z h0 h1").unwrap();
        writeln!(out).unwrap();
    }
    // leaf lemmas: thread hypotheses by poly id
    let mut n_leaf = 0;
    for (li, (sids, eid, _)) in leaves.iter().enumerate() {
        let mut have: HashMap<usize, String> = HashMap::new();
        let mut inputs: Vec<usize> = Vec::new();
        let mut body: Vec<String> = Vec::new();
        for (n, sid) in sids.iter().enumerate() {
            let (_, i0, i1, _, _, i2) = step_list[*sid].clone();
            for i in [i0, i1] {
                if !have.contains_key(&i) {
                    let nm = format!("hin{}", inputs.len());
                    inputs.push(i);
                    have.insert(i, nm);
                }
            }
            let nm = format!("h{n}");
            body.push(format!("  have {nm} := st{sid}_{tag} u v x y z {} {}",
                              have[&i0], have[&i1]));
            have.insert(i2, nm);
        }
        let Some(endh) = have.get(eid) else {
            // endpoint equals an input (degenerate); skip
            continue;
        };
        writeln!(out, "lemma leaf{li}_{tag} {{R : Type*}} [CommRing R] [IsDomain R] [CharZero R]").unwrap();
        writeln!(out, "    (u v x y z : R)").unwrap();
        for (n, i) in inputs.iter().enumerate() {
            writeln!(out, "    (hin{n} : PolyRefl.eval cp{i}_{tag} u v x y z = 0)").unwrap();
        }
        writeln!(out, "    : PolyRefl.eval cp{eid}_{tag} u v x y z = 0 := by").unwrap();
        for l in &body { writeln!(out, "{l}").unwrap(); }
        writeln!(out, "  exact {endh}\n").unwrap();
        n_leaf += 1;
    }
    writeln!(out, "end ChainCert").unwrap();
    println!("{fname}: {} polys, {} distinct steps, {n_leaf} leaf lemmas -> ChainCert_{tag}.lean",
             poly_list.len(), step_list.len());

    // ---------------- the pair layer ----------------
    // Needs: the oracle dump (to locate each endpoint's certified form)
    // and provenance on every leaf.
    let oracle_lines: Vec<String> = match std::fs::File::open(format!("oracle_t0_{tag}.txt")) {
        Ok(fh) => std::io::BufRead::lines(std::io::BufReader::new(fh))
            .map_while(|l| l.ok()).collect(),
        Err(_) => Vec::new(),
    };
    // reproduce lean_emit's strip on each oracle line to key the forms
    let strip_form = |terms: &mut Vec<(num_bigint::BigInt, u16, u16)>| -> u32 {
        let a0 = terms.iter().map(|t| t.1).min().unwrap();
        let b0 = terms.iter().map(|t| t.2).min().unwrap();
        for t in terms.iter_mut() { t.1 -= a0; t.2 -= b0; }
        let mut two = u32::MAX;
        for (c, _, _) in terms.iter() {
            let mut c2 = c.clone();
            let mut k = 0;
            while num_traits::Zero::is_zero(&(&c2 % 2u8)) && k < two { c2 /= 2; k += 1; }
            two = two.min(k);
        }
        for t in terms.iter_mut() { t.0 = &t.0 >> two; }
        two
    };
    let mut form_index: HashMap<String, usize> = HashMap::new();
    for (li, line) in oracle_lines.iter().enumerate() {
        if line.trim().is_empty() { continue; }
        let mut terms: Vec<(num_bigint::BigInt, u16, u16)> = Vec::new();
        for t in line.split(" + ") {
            let parts: Vec<&str> = t.split('*').filter(|x| !x.is_empty()).collect();
            let c: num_bigint::BigInt = parts[0].parse().unwrap();
            let mut ra = 0u16;
            let mut sb = 0u16;
            let mut i = 1;
            while i < parts.len() {
                if parts[i] == "r" { ra = parts[i + 1].parse().unwrap(); i += 2; }
                else if parts[i] == "s" { sb = parts[i + 1].parse().unwrap(); i += 2; }
                else { i += 1; }
            }
            terms.push((c, ra, sb));
        }
        if terms.len() == 1 { continue; }
        strip_form(&mut terms);
        let key: String = terms.iter()
            .map(|(c, a, b)| format!("{c},{a},{b}")).collect::<Vec<_>>().join(";");
        form_index.insert(key, li);
    }
    let mut pout = std::fs::File::create(format!("PairCert_{tag}.lean")).unwrap();
    writeln!(pout, "/- Generated: the pair layer of grid {tag}. Two vanishing cores").unwrap();
    writeln!(pout, "   drive the elimination chain into a certified nonzero endpoint. -/").unwrap();
    writeln!(pout, "import MsqLean.ChainCert_{tag}").unwrap();
    writeln!(pout, "import MsqLean.CertForms_{tag}").unwrap();
    writeln!(pout, "import MsqLean.GaussData\nimport MsqLean.CertKit\n").unwrap();
    writeln!(pout, "set_option maxRecDepth 100000\nset_option maxHeartbeats 2000000\n").unwrap();
    writeln!(pout, "namespace PairCert\nopen ChainCert CertKit\n").unwrap();
    let mut core_ids: HashMap<String, usize> = HashMap::new();
    let mut n_pair = 0u32;
    let mut n_pskip = 0u32;
    for (li, (sids, eid, prov)) in leaves.iter().enumerate() {
        let Some((c1ser, pick1, c2ser, pick2)) = prov else { n_pskip += 1; continue; };
        if pick1 == "none" || pick2 == "none" { n_pskip += 1; continue; }
        // the endpoint's certified-form split
        let end = &poly_list[*eid];
        if end.is_empty() { n_pskip += 1; continue; }
        let g = end.keys().map(|m| m.2).min().unwrap();
        if end.keys().any(|m| m.2 != g) { n_pskip += 1; continue; } // not single-level
        let mut terms: Vec<(num_bigint::BigInt, u16, u16)> = end.iter()
            .map(|(m, c)| (c.clone(), m.0, m.1)).collect();
        let mono_end: Option<(num_bigint::BigInt, u16, u16)> =
            if terms.len() == 1 { Some(terms[0].clone()) } else { None };
        let (a0, b0, two, fli) = if mono_end.is_some() {
            (0u16, 0u16, 0u32, usize::MAX)
        } else {
            let a0 = terms.iter().map(|t| t.1).min().unwrap();
            let b0 = terms.iter().map(|t| t.2).min().unwrap();
            let two = strip_form(&mut terms);
            let key: String = terms.iter()
                .map(|(c, a, b)| format!("{c},{a},{b}")).collect::<Vec<_>>().join(";");
            let Some(fli) = form_index.get(&key) else { n_pskip += 1; continue; };
            (a0, b0, two, *fli)
        };
        // core data defs (4-var embedded at (1,2,4,5))
        let mut intern_core = |ser: &str| -> usize {
            let next = core_ids.len();
            *core_ids.entry(ser.to_string()).or_insert(next)
        };
        let ci1 = intern_core(c1ser);
        let ci2 = intern_core(c2ser);
        // the three chain inputs of the leaf, in first-use order
        let mut have: std::collections::HashSet<usize> = std::collections::HashSet::new();
        let mut inputs: Vec<usize> = Vec::new();
        for sid in sids {
            let (_, i0, i1, _, _, i2) = step_list[*sid].clone();
            for i in [i0, i1] {
                if !have.contains(&i) { inputs.push(i); have.insert(i); }
            }
            have.insert(i2);
        }
        // classify each input: reOf/imOf of core1/core2, or the circle
        let mut args: Vec<String> = Vec::new();
        let mut ok = true;
        for i in &inputs {
            let pser = ser(&poly_list[*i]);
            let is_circle = poly_list[*i].len() == 3
                && poly_list[*i].keys().all(|m| m.0 == 0 && m.1 == 0);
            if is_circle {
                args.push("hcirc0".into());
            } else {
                // match against the parts of the two cores by recomputing
                // is deferred to Lean (a decide); pick by order: first
                // non-circle input is core1's part, second is core2's.
                let nth = args.iter().filter(|a| a.starts_with("hin")).count();
                if nth == 0 { args.push("hin1".into()); }
                else if nth == 1 { args.push("hin2".into()); }
                else { ok = false; }
            }
            let _ = pser;
        }
        if !ok || args.len() != inputs.len() { n_pskip += 1; continue; }
        writeln!(pout, "theorem pair_{li}_{tag} (q : ℕ) [Fact (Nat.Prime q)]").unwrap();
        writeln!(pout, "    (r s X Y : ℤ)").unwrap();
        writeln!(pout, "    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)").unwrap();
        writeln!(pout, "    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)").unwrap();
        writeln!(pout, "    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)").unwrap();
        writeln!(pout, "    (h1 : PolyRefl.eval core{ci1}_{tag} (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)").unwrap();
        writeln!(pout, "    (h2 : PolyRefl.eval core{ci2}_{tag} (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by").unwrap();
        let part1 = if pick1 == "re" { "1" } else { "2" };
        let part2 = if pick2 == "re" { "1" } else { "2" };
        let in1 = inputs.iter().find(|i| {
            let p = &poly_list[**i];
            !(p.len() == 3 && p.keys().all(|m| m.0 == 0 && m.1 == 0))
        }).unwrap();
        let in2 = inputs.iter().rev().find(|i| {
            let p = &poly_list[**i];
            !(p.len() == 3 && p.keys().all(|m| m.0 == 0 && m.1 == 0))
        }).unwrap();
        let circ = inputs.iter().find(|i| {
            let p = &poly_list[**i];
            p.len() == 3 && p.keys().all(|m| m.0 == 0 && m.1 == 0)
        });
        writeln!(pout, "  have hin1 : PolyRefl.eval cp{in1}_{tag} r s (q : ℤ) X Y = 0 := by").unwrap();
        writeln!(pout, "    rw [PolyRefl.eval_eq_of_normalizeFast_eq").unwrap();
        writeln!(pout, "      (show PolyRefl.normalizeFast cp{in1}_{tag} = PolyRefl.normalizeFast (GaussData.{}Of core{ci1}_{tag}) from by {dec})]",
            if pick1 == "re" { "re" } else { "im" }).unwrap();
        writeln!(pout, "    rw [← (GaussData.re_im_of_bridge core{ci1}_{tag} r s q X Y).{part1}, h1]").unwrap();
        writeln!(pout, "    rfl").unwrap();
        writeln!(pout, "  have hin2 : PolyRefl.eval cp{in2}_{tag} r s (q : ℤ) X Y = 0 := by").unwrap();
        writeln!(pout, "    rw [PolyRefl.eval_eq_of_normalizeFast_eq").unwrap();
        writeln!(pout, "      (show PolyRefl.normalizeFast cp{in2}_{tag} = PolyRefl.normalizeFast (GaussData.{}Of core{ci2}_{tag}) from by {dec})]",
            if pick2 == "re" { "re" } else { "im" }).unwrap();
        writeln!(pout, "    rw [← (GaussData.re_im_of_bridge core{ci2}_{tag} r s q X Y).{part2}, h2]").unwrap();
        writeln!(pout, "    rfl").unwrap();
        if let Some(c) = circ {
            writeln!(pout, "  have hcirc0 : PolyRefl.eval cp{c}_{tag} r s (q : ℤ) X Y = 0 := by").unwrap();
            writeln!(pout, "    simp only [cp{c}_{tag}, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]").unwrap();
            writeln!(pout, "    push_cast").unwrap();
            writeln!(pout, "    linarith [hcirc]").unwrap();
        }
        let leafargs: Vec<String> = inputs.iter().map(|i| {
            let p = &poly_list[*i];
            if p.len() == 3 && p.keys().all(|m| m.0 == 0 && m.1 == 0) { "hcirc0".into() }
            else if i == in1 { "hin1".to_string() }
            else { "hin2".to_string() }
        }).collect();
        writeln!(pout, "  have hend := leaf{li}_{tag} (R := ℤ) r s ((q : ℤ)) X Y {}",
            leafargs.join(" ")).unwrap();
        if let Some((mc, ma, mb)) = &mono_end {
            writeln!(pout, "  have hval : PolyRefl.eval cp{eid}_{tag} r s (q : ℤ) X Y").unwrap();
            writeln!(pout, "      = ({mc} : ℤ) * r ^ {ma} * s ^ {mb} * (q : ℤ) ^ {g} := by").unwrap();
            writeln!(pout, "    simp only [cp{eid}_{tag}, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]").unwrap();
            writeln!(pout, "    push_cast").unwrap();
            writeln!(pout, "    ring").unwrap();
            writeln!(pout, "  rw [hval] at hend").unwrap();
            writeln!(pout, "  rcases mul_eq_zero.mp hend with h | h").unwrap();
            writeln!(pout, "  · rcases mul_eq_zero.mp h with h | h").unwrap();
            writeln!(pout, "    · rcases mul_eq_zero.mp h with h | h").unwrap();
            writeln!(pout, "      · norm_num at h").unwrap();
            writeln!(pout, "      · exact hr0 (pow_eq_zero_iff'.mp h).1").unwrap();
            writeln!(pout, "    · exact hs0 (pow_eq_zero_iff'.mp h).1").unwrap();
            writeln!(pout, "  · exact hq0 (pow_eq_zero_iff'.mp h).1\n").unwrap();
        } else {
            writeln!(pout, "  exact CertKit.endpoint_split cp{eid}_{tag} CertForms.f_{tag}_{fli}").unwrap();
            writeln!(pout, "    {a0} {b0} {g} (2 ^ {two}) (by {dec}) r s (q : ℤ) X Y hend").unwrap();
            writeln!(pout, "    (by norm_num) hr0 hs0 hq0").unwrap();
            writeln!(pout, "    (by rw [PolyRefl.eval_qxy_free CertForms.f_{tag}_{fli} (by {dec}) r s ((q : ℤ)) X Y 1 1 1]").unwrap();
            writeln!(pout, "        exact CertForms.form_{tag}_{fli} r s hr hs hco)\n").unwrap();
        }
        n_pair += 1;
    }
    // core defs must precede the theorems: write them into a prelude
    // file section instead — simplest: rewrite the file with defs first.
    drop(pout);
    let body = std::fs::read_to_string(format!("PairCert_{tag}.lean")).unwrap();
    let (head, rest) = body.split_at(body.find("namespace PairCert").unwrap());
    let mut defs = String::new();
    let mut ordered: Vec<(usize, String)> = core_ids.iter()
        .map(|(k, v)| (*v, k.clone())).collect();
    ordered.sort();
    for (i, ser4) in ordered {
        let terms: Vec<String> = ser4.split(';').filter(|t| !t.trim().is_empty())
            .map(|t| {
                let p: Vec<&str> = t.split(',').map(|x| x.trim()).collect();
                format!("PolyRefl.mkT {} {} 0 {} {} ({})", p[1], p[2], p[3], p[4], p[0])
            }).collect();
        defs.push_str(&format!("def core{i}_{tag} : PolyRefl.SPoly := [{}]\n", terms.join(", ")));
    }
    let rest2 = rest.replacen("namespace PairCert\nopen ChainCert CertKit\n",
        &format!("namespace PairCert\nopen ChainCert CertKit\n\n{defs}"), 1);
    std::fs::write(format!("PairCert_{tag}.lean"), format!("{head}{rest2}")).unwrap();
    println!("pair layer: {n_pair} pair lemmas, {n_pskip} skipped -> PairCert_{tag}.lean");
}
