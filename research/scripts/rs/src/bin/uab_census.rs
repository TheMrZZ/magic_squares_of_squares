// Pattern census for general (a,b): confirm the minimal-layer pattern
// universe saturates. A pattern pair is the (shifted) multiset of
// (k-offset, sign, coeff) in each relation's minimal p-layer.
use std::collections::HashSet;

type Class = (i32, i32, i32); // (j, k, sg)
type Pat = Vec<(i32, i32, i64)>;

fn classes(a: i32, b: i32) -> Vec<Class> {
    let mut out = Vec::new();
    for j in 0..=a {
        for k in 0..=b {
            if j == 0 && k == 0 { continue; }
            if j == 0 || k == 0 { out.push((j, k, 1)); }
            else { out.push((j, k, 1)); out.push((j, k, -1)); }
        }
    }
    out
}

fn ppat(rel: &[(Class, i64)], a: i32) -> Pat {
    let m = rel.iter().map(|&((j, _, _), _)| 2 * (a - j)).min().unwrap();
    let mut lay: Vec<(i32, i32, i64)> = rel.iter()
        .filter(|&&((j, _, _), _)| 2 * (a - j) == m)
        .map(|&((_, k, sg), g)| (k, sg, g)).collect();
    let k0 = lay.iter().map(|&(k, _, _)| k).min().unwrap();
    for t in lay.iter_mut() { t.0 -= k0; }
    lay.sort();
    lay
}

fn run(a: i32, b: i32) -> (u64, u64, HashSet<(Pat, Pat)>) {
    let els = classes(a, b);
    let n = els.len();
    let mut total = 0u64;
    let mut surv = 0u64;
    let mut pats = HashSet::new();
    let lone = |rel: &[(Class, i64)]| {
        for f in [true, false] {
            let vs: Vec<i32> = rel.iter().map(|&((j, k, _), _)|
                if f { 2 * (a - j) } else { 2 * (b - k) }).collect();
            let m = *vs.iter().min().unwrap();
            if vs.iter().filter(|&&v| v == m).count() == 1 { return true; }
        }
        false
    };
    for ia in 0..n { for ib in 0..n { for ic in 0..n { for id in 0..n {
        if ia == ib || ia == ic || ia == id || ib == ic || ib == id || ic == id { continue; }
        let (ea, eb, ec, ed) = (els[ia], els[ib], els[ic], els[id]);
        for e2 in [1i64, -1] { for e3 in [1i64, -1] { for e4 in [1i64, -1] {
            total += 1;
            let r1 = [(ec, e3), (ed, e4), (ea, -2)];
            let r2 = [(ec, e3), (ed, -e4), (eb, -2 * e2)];
            if lone(&r1) || lone(&r2) { continue; }
            surv += 1;
            pats.insert((ppat(&r1, a), ppat(&r2, a)));
        }}}
    }}}}
    (total, surv, pats)
}

fn main() {
    let grids = [(2, 2), (2, 3), (3, 3), (4, 3), (3, 4), (4, 4), (5, 3), (2, 5), (5, 5)];
    let mut base: Option<HashSet<(Pat, Pat)>> = None;
    for (a, b) in grids {
        let (total, surv, pats) = run(a, b);
        let newc = match &base {
            Some(bs) => pats.difference(bs).count(),
            None => 0,
        };
        println!("({a},{b}): {total} leaves, survivors {surv}, patterns {}, new vs (2,3)-base: {newc}",
                 pats.len());
        if (a, b) == (2, 3) { base = Some(pats); }
    }
}
