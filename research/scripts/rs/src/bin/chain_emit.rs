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
    let dec = if std::env::var("KERNEL_DECIDE").is_ok() { "decide +kernel" }
              else { "native_decide" };

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
    let mut leaves: Vec<(Vec<usize>, usize)> = Vec::new();

    for line in std::io::BufReader::new(std::fs::File::open(fname).unwrap()).lines() {
        let line = line.unwrap();
        if line.trim().is_empty() { continue; }
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
        leaves.push((sids, eid));
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
    for (li, (sids, eid)) in leaves.iter().enumerate() {
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
}
