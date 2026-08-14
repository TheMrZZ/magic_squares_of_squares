# 🪄🧊 Magic squares of squares

Authors: [Florian ERNST](https://github.com/Themrzz), [Albin MOREL](https://github.com/Exymat)

## Table of contents
  - [Introduction](#introduction)
  - [🗞️ List of tested values of `N` with no perfect magic square](#️-list-of-tested-values-of-n-with-no-perfect-magic-square)
  - [👶 "Smallest" quasi-magic-square found](#-smallest-quasi-magic-square-found)
  - [🕶️ "Largest" quasi magic square found](#️-largest-quasi-magic-square-found)
  - [💻 How to try](#-how-to-try)
    - [Testing ranges of `N`](#testing-ranges-of-n)
    - [Testing ranges of `k` and `p`](#testing-ranges-of-k-and-p)
    - [Generating a very large quasi magic square](#generating-a-very-large-quasi-magic-square)
  - [🤔 How it works](#-how-it-works)
  - [🚀 Optimizations](#-optimizations)
  - [🕐 Benchmarks](#-benchmarks)
  - [🪦 Disproved conjecture](#-disproved-conjecture)

## Introduction

This repository is focused on 3x3 magic squares of positive squared integers, with 9 distinct values.

We define $N$ as the sum of all row, column, and diagonal sums in the magic square. For example, $N = a²+b²+c²$, and so on for all axes.

We name "quasi-magic-squares" squares where the sum of all but 1 axis are equal.

For example, this is a quasi magic square of squares (all of these integers are perfect squares):
![image](https://github.com/user-attachments/assets/9d040e66-37bc-45d2-ab64-ae9bb029ce73)

<sub><sup>Source: [A Magic Square Breakthrough - Numberphile](https://www.youtube.com/watch?v=stpiBy6gWOA&t=58s) </sup></sub>

We aim to:
1. Find as many "quasi-magic-squares" as possible, and if possible find a real 3x3 magic square of squares ;
2. Generate arbitrarily large "quasi-magic-squares" using the following form, which empirically always yields one:

$$
N = (3 k p^2)^2, \quad \text{where } k \in \mathbb{N}^+ \text{ and } p \text{ is a prime such that } p \equiv 1 \pmod{6}.
$$

*Note: we originally conjectured that **all** quasi magic squares have $N$ of this form. This turned out to be false — see [Disproved conjecture](#-disproved-conjecture) at the bottom.*


## 🗞️ List of tested values of $N$ with no perfect magic square

We tested up to $N = 10000000$ (10 million) and found no perfect magic square. However we found 30 quasi magic squares, with the smallest one at $N=21609$ and the biggest one at $N=9529569$.

[The entire list can be found here](https://github.com/TheMrZZ/magic_squares_of_squares/blob/main/quasi_magic_squares_list_10million.txt).

## 👶 "Smallest" quasi-magic-square found

Here's the smallest quasi-magic-square of squares we found:
|     |      |      |
| --- | ---- | ---- |
| 74² | 127² | 2²   |
| 97² | 58²  | 94²  |
| 82² | 46²  | 113² |

All rows, columns, and diagonal sums are equal to $21609$ except for the bottom-left to top-right diagonal which is equal to $10092$.

## 🕶️ "Largest" quasi magic square found

The $(3kp^2)^2$ form allows us to generate quasi magic squares with arbitrarily large $N$. The biggest we generated was $N = 46 432 503 939 600$ (46 trillion 432 billion) with $k=10$ and $p=199$:
|          |          |          |
| -------- | -------- | -------- |
| 3751060² | 5653160² | 635480²  |
| 4510760² | 2491880² | 4458260² |
| 3466280² | 2874860² | 5113960² |

All rows, columns and diagonal sums are equal to $N$ except for the bottom-left to top-right diagonal which is equal to $18 628 397 803 200$ (18 trillion 628 billion).

## 💻 How to try

To run the code in this repository, you must [install Rust](https://www.rust-lang.org/learn/get-started). You can then run different commands:
```sh
Usage:
    cargo test_n <n_min> <n_max>  # Test all N in the range [n_min, n_max)
    cargo test_kp <max_k> <max_p> # Test all N in the form of (k*3*p²)² with k in [1, max_k] and p prime in [1, max_p]
    cargo generate <k> <p>        # Generate a large quasi magic square in the form of (k*3*p²)²
```

*For all arguments, underscores are supported as separators for large numbers, but they're not required.*

### Testing ranges of $N$

To check ranges of $N$ for the presence of quasi magic squares (or perfect magic squares, who knows!), you can run:

```sh
cargo test_n 1 100_000 # Checks all N from 1 to 100k
```

<details>
  <summary>Example output</summary>

  <div>

  ```
  > cargo test_n 1 100_000

  Checking N = 1..100000 
  ------------------------------------------------------
  Partial magic square for N = 21609, e = 58, incorrect axes = [10092]
  a = 74, b = 127, c = 2, d = 97, e = 58, f = 94, g = 82, h = 46, i = 113
  ✅ N is in the form of (k*3*p²)² with p=7 and k=1
  ------------------------------------------------------
  Partial magic square for N = 86436, e = 116, incorrect axes = [40368]
  a = 148, b = 254, c = 4, d = 194, e = 116, f = 188, g = 164, h = 92, i = 226
  ✅ N is in the form of (k*3*p²)² with p=7 and k=2
  Time: 0.04 seconds
  ```

  </div>
</details>


### Testing ranges of $k$ and $p$

To ensure the $(3kp^2)^2$ form yields a quasi magic square for all $k$ and $p$ in a range, you can run:

```sh
cargo test_kp 5 43 # Checks all k from 1 to 5 and all prime p of form 6n+1 from 7 to 43
```

<details>
  <summary>Example output</summary>

  <div>

  ```
  > cargo test_kp 5 43

  -----------------------
  ✅ [p=7, k=1] N = 21609 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [10092])
  a = 74, b = 127, c = 2, d = 97, e = 58, f = 94, g = 82, h = 46, i = 113
  -----------------------
  ✅ [p=13, k=1] N = 257049 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [142572])
  a = 233, b = 446, c = 62, d = 334, e = 218, f = 313, g = 302, h = 103, i = 394
  -----------------------
  ✅ [p=19, k=1] N = 1172889 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [446988])
  a = 617, b = 878, c = 146, d = 718, e = 386, f = 713, g = 526, h = 503, i = 802
  -----------------------
  ✅ [p=31, k=1] N = 8311689 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [3512172])
  a = 1537, b = 2434, c = 158, d = 1906, e = 1082, f = 1873, g = 1522, h = 1103, i = 2186
  -----------------------
  ✅ [p=37, k=1] N = 16867449 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [6032172])
  a = 2458, b = 3191, c = 802, d = 2729, e = 1418, f = 2722, g = 1838, h = 2162, i = 2969
  -----------------------
  ✅ [p=43, k=1] N = 30769209 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [12216972])
  a = 3074, b = 4583, c = 562, d = 3673, e = 2018, f = 3634, g = 2798, h = 2386, i = 4153
  -----------------------
  ✅ [p=7, k=2] N = 86436 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [40368])
  a = 148, b = 254, c = 4, d = 194, e = 116, f = 188, g = 164, h = 92, i = 226
  -----------------------
  ✅ [p=13, k=2] N = 1028196 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [570288])
  a = 466, b = 892, c = 124, d = 668, e = 436, f = 626, g = 604, h = 206, i = 788
  -----------------------
  ✅ [p=19, k=2] N = 4691556 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [1787952])
  a = 1234, b = 1756, c = 292, d = 1436, e = 772, f = 1426, g = 1052, h = 1006, i = 1604
  -----------------------
  ✅ [p=31, k=2] N = 33246756 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [14048688])
  a = 3074, b = 4868, c = 316, d = 3812, e = 2164, f = 3746, g = 3044, h = 2206, i = 4372
  -----------------------
  ✅ [p=37, k=2] N = 67469796 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [24128688])
  a = 4916, b = 6382, c = 1604, d = 5458, e = 2836, f = 5444, g = 3676, h = 4324, i = 5938
  -----------------------
  ✅ [p=43, k=2] N = 123076836 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [48867888])
  a = 6148, b = 9166, c = 1124, d = 7346, e = 4036, f = 7268, g = 5596, h = 4772, i = 8306
  -----------------------
  ✅ [p=7, k=3] N = 194481 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [90828])
  a = 222, b = 381, c = 6, d = 291, e = 174, f = 282, g = 246, h = 138, i = 339
  -----------------------
  ✅ [p=13, k=3] N = 2313441 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [1283148])
  a = 699, b = 1338, c = 186, d = 1002, e = 654, f = 939, g = 906, h = 309, i = 1182
  -----------------------
  ✅ [p=19, k=3] N = 10556001 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [4022892])
  a = 1851, b = 2634, c = 438, d = 2154, e = 1158, f = 2139, g = 1578, h = 1509, i = 2406
  -----------------------
  ✅ [p=31, k=3] N = 74805201 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [31609548])
  a = 4611, b = 7302, c = 474, d = 5718, e = 3246, f = 5619, g = 4566, h = 3309, i = 6558
  -----------------------
  ✅ [p=37, k=3] N = 151807041 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [54289548])
  a = 7374, b = 9573, c = 2406, d = 8187, e = 4254, f = 8166, g = 5514, h = 6486, i = 8907
  -----------------------
  ✅ [p=43, k=3] N = 276922881 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [109952748])
  a = 9222, b = 13749, c = 1686, d = 11019, e = 6054, f = 10902, g = 8394, h = 7158, i = 12459
  -----------------------
  ✅ [p=7, k=4] N = 345744 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [161472])
  a = 296, b = 508, c = 8, d = 388, e = 232, f = 376, g = 328, h = 184, i = 452
  -----------------------
  ✅ [p=13, k=4] N = 4112784 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [2281152])
  a = 932, b = 1784, c = 248, d = 1336, e = 872, f = 1252, g = 1208, h = 412, i = 1576
  -----------------------
  ✅ [p=19, k=4] N = 18766224 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [7151808])
  a = 2468, b = 3512, c = 584, d = 2872, e = 1544, f = 2852, g = 2104, h = 2012, i = 3208
  -----------------------
  ✅ [p=31, k=4] N = 132987024 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [56194752])
  a = 6148, b = 9736, c = 632, d = 7624, e = 4328, f = 7492, g = 6088, h = 4412, i = 8744
  -----------------------
  ✅ [p=37, k=4] N = 269879184 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [96514752])
  a = 9832, b = 12764, c = 3208, d = 10916, e = 5672, f = 10888, g = 7352, h = 8648, i = 11876
  -----------------------
  ✅ [p=43, k=4] N = 492307344 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [195471552])
  a = 12296, b = 18332, c = 2248, d = 14692, e = 8072, f = 14536, g = 11192, h = 9544, i = 16612
  -----------------------
  ✅ [p=7, k=5] N = 540225 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [252300])
  a = 370, b = 635, c = 10, d = 485, e = 290, f = 470, g = 410, h = 230, i = 565
  -----------------------
  ✅ [p=13, k=5] N = 6426225 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [3564300])
  a = 1165, b = 2230, c = 310, d = 1670, e = 1090, f = 1565, g = 1510, h = 515, i = 1970
  -----------------------
  ✅ [p=19, k=5] N = 29322225 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [11174700])
  a = 3085, b = 4390, c = 730, d = 3590, e = 1930, f = 3565, g = 2630, h = 2515, i = 4010
  -----------------------
  ✅ [p=31, k=5] N = 207792225 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [87804300])
  a = 7685, b = 12170, c = 790, d = 9530, e = 5410, f = 9365, g = 7610, h = 5515, i = 10930
  -----------------------
  ✅ [p=37, k=5] N = 421686225 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [150804300])
  a = 12290, b = 15955, c = 4010, d = 13645, e = 7090, f = 13610, g = 9190, h = 10810, i = 14845
  -----------------------
  ✅ [p=43, k=5] N = 769230225 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [305424300])
  a = 15370, b = 22915, c = 2810, d = 18365, e = 10090, f = 18170, g = 13990, h = 11930, i = 20765
  Time: 0.18 seconds
  ```

  </div>
</details>

### Generating a very large quasi magic square

To generate a large quasi magic square, you can pick 2 values of k and p then run:
```sh
cargo generate 5 73 # Generate the quasi magic square with k=10 and p=169
```

<details>
  <summary>Example output</summary>

  <div>

  ```
  > cargo generate 5 73

  ✅ [p=73, k=5] N = 6389604225 is a quasi magic square in the form of (k*3*p²)² (incorrect axes = [2367144300])
  a = 46490, b = 63755, c = 12790, d = 53045, e = 28090, f = 52790, g = 37610, h = 39190, i = 58645
  Time: 0.30 seconds
  ```

  </div>
</details>

## 🤔 How it works

We'll name our cells like this:
|     |     |     |
| --- | --- | --- |
| a²  | b²  | c²  |
| d²  | e²  | f²  |
| g²  | h²  | i²  |

1. For a given $N$, we generate all possible values of `e` from 1 to $\sqrt{N}$.

2. For each `e`, we compute $X=N-e^2$. We then generate all pairs of integers such as $x^2 + y^2 = X, x != y$. 
These pairs will be the candidates for all axes going through the center, except one which is left free (to allow for quasi-perfect squares). 
Therefore, if we have less than 3 distinct pairs of $(x, y)$, we don't proceed further (as we're looking for magic squares of distinct values).

3. We will now test all permutations of these candidates in the 3 axes $a \longleftrightarrow i$, $d \longleftrightarrow f$, $b \longleftrightarrow h$. We know (by construction) that the sum of their squares is equal to $N$.

4. We already have 3 correct axes out of 8, and 7 cells out of 9. We will now generate `c` and `g` through $c^2 = N - a^2 - b^2$ and $g^2 = N - h^2 - i^2$.
If these equations don't yield integers, we stop there as it means the current permutation is not a solution.

5. At this point, we know the $a \longleftrightarrow c$ and $g \longleftrightarrow i$ axes are correct (sum of their squares is equal to $N$), and we have all our values. We make sure they're all distinct values.

6. Finally, we check the remaining 3 axes $g \longleftrightarrow c$, $c \longleftrightarrow i$ and $a \longleftrightarrow g$.

7. If 7/8 axes are correct, we found a quasi-perfect square. If 8/8 axes are correct, we found a perfect square. Our program is designed to instantly interrupt its operation in that case, panic and send a big message.

## 🚀 Optimizations

Here's a list of some optimizations we made to crunch numbers as fast as possible:
1. Avoid generating symmetrical permutations of the same magic square (ex: symmetry by a diagonal, rotation by 90°... as they give the same square)
2. Use Rust and not Python
3. Pre-compute pairs of $(x, y)$ such as $x^2+y^2=X$ for all $0 <= X <= N$
4. Remove as much overhead as possible in Rust objects (avoid using `Vec`, use `FxHashMap` instead of the native `HashMap`)
5. Use multiprocessing to compute batches of `N` in parallel

## 🕐 Benchmarks

These tests were performed on an AMD 5600X processor with 6x2 cores. They all leverage parallelism. They're probably not very reproductible, but they give a good idea of how the processing time scales based on inputs.

| Test                                        | Time (s) |
| ------------------------------------------- | -------- |
| Check all $N$ from 1 to 100k                | 0.04s    |
| Check all $N$ from 1 to 1 million           | 2.32s    |
| Check all $N$ from 1 to 10 million          | 132s     |
| Check all $(k, p)$ with $k <= 5, p <= 19$   | 0.01s    |
| Check all $(k, p)$ with $k <= 10, p <= 73$  | 9.07s    |
| Check all $(k, p)$ with $k <= 10, p <= 199$ | 649s     |

## 🪦 Disproved conjecture

We originally conjectured that:

1. All quasi magic squares have $N$ such as

$$
N = (3 k p^2)^2, \quad \text{where } k \in \mathbb{N}^+ \text{ and } p \text{ is a prime such that } p \equiv 1 \pmod{6}.
$$

2. Any $N$ of this form is a quasi magic square.

*Note: The list of first 54 primes of form 6n+1 can be found in [OEIS A002476](https://oeis.org/A002476).*

**Conjecture #1 is false.** It held for all 30 quasi magic squares up to $N = 10$ million, but the very first counter-example sits just past that bound, at $N = 10{,}543{,}009$:

|       |       |       |
| ----- | ----- | ----- |
| 843²  | 3134² | 102²  |
| 2914² | 822²  | 1173² |
| 1158² | 213²  | 3026² |

All axes sum to $10{,}543{,}009$ except the bottom-left to top-right diagonal ($2{,}027{,}052$). Here $N = 3247^2 = (17 \times 191)^2$: it is a perfect square, but $3247$ is not divisible by $3$ (so $N$ is not a multiple of $9$), and neither $17$ nor $191$ is $\equiv 1 \pmod 6$.

It turns out this was already known territory: every quasi magic square below 10 million belongs to the [Lucas family](http://www.multimagie.com/English/Lucas.htm), a parametric family whose magic sum is always a perfect square — that's what conjecture #1 was unknowingly describing. Sporadic quasi magic squares outside the family exist; examples with a *non-square* magic sum were published by Michael Schweitzer, and later by Ajai Choudhry ($N = 551{,}144{,}881$) and Jean-Claude Rosa — see [multimagie.com](http://www.multimagie.com/English/SquaresOfSquaresSearch.htm). Notably, the Lucas family is proven unable to produce a perfect 8/8 magic square of squares, so if one exists it must come from outside this family.

**Conjecture #2 still stands empirically**: it has been tested up to $k=10$ for all primes of form 6n+1 from $7$ to $199$ (21 different primes): [see here](https://github.com/TheMrZZ/magic_squares_of_squares/blob/main/quasi_magic_squares_k10_p199.txt). This is the form used by `cargo generate`.
