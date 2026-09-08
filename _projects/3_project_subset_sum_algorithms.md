---
layout: page
title: Subset Sum Algorithms
description: Faster algorithms and structural insights for subset-sum-type problems
img: assets/img/SSUM.png
importance: 3
category: Ongoing Projects
permalink: /projects/3_project/
related_publications: true
bibliography_query: "@*[project_subsetsum=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/SSUM.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

Many everyday planning problems hide a subset-sum structure. A shipping system may need to pack items so that the total weight hits a narrow limit. A financial tool may search for a set of transactions that balances an account discrepancy. A scheduler may try to combine available resources to match a fixed target. In each case, the hard part is not understanding the goal but searching through an enormous number of possible combinations quickly enough to be useful.

The classical subset sum problem captures this tension in one of its cleanest forms: given numbers $a_1,\ldots,a_n$ and a target $t$, decide whether some subset adds up exactly to $t$. The statement fits in a single line, but the problem sits at the center of algorithms, complexity theory, lattice methods, and cryptography. Over time, it has become a testing ground for some of the most important ideas in exact algorithms and fine-grained complexity.

This project studies faster algorithms and structural variants of subset-sum-type problems. A recurring theme is that small changes in the model can have large algorithmic consequences. The difficulty of the problem shifts when we move from ordinary sums to modular sums, from exact target matching to equal-sum phenomena, or from bounded choices to unbounded and projected variants. Those changes are mathematically natural, and they also line up with questions that arise in cryptography and related optimization tasks.

The broader objective is to understand which forms of structure can be exploited algorithmically and which ones reflect genuine hardness. Subset sum is a benchmark for exact exponential algorithms, fine-grained complexity, and cryptographic assumptions, and its variants expose the limits of algebraic, combinatorial, and lattice-based techniques. The project develops reductions, upper bounds, lower bounds, and average-case analyses for regimes such as dense instances, projected or unbounded choices, subset product, and pigeonhole equal-sum problems.

## Core Questions

- Which density and redundancy regimes permit subexponential or pseudopolynomial algorithms beyond meet-in-the-middle bounds?
- How do projected, unbounded, multiplicative, and pigeonhole equal-sum variants reduce to or separate from classical Subset Sum?
- Can algebraic sieving, representation techniques, or lattice methods improve worst-case and average-case running times?
- Which fine-grained or parameterized lower bounds match the achievable algorithms in the relevant regimes?
- When do average-case distributions exhibit a provable gap from worst-case complexity, and can that gap support cryptographic applications?

## Main Results

- **Pigeonhole Equal Subset Sum: Subexponential Algorithm, Tight Lower Bounds and Average-Case Analysis (2026):** Gives a subexponential algorithm, matching lower-bound evidence in the studied model, and an average-case analysis of Pigeonhole Equal Subset Sum.
- **Weak Pigeonhole Equal-Sums made Simpler and Faster (2026):** Simplifies the algorithmic treatment of Weak Pigeonhole Equal-Sums and improves its running time.
- **On the Variants of Subset Sum: Projected and Unbounded (2023):** Develops algorithms and reductions for projected and unbounded variants, clarifying their relationship with classical Subset Sum.
- **Efficient Reductions and Algorithms for Subset Product (2023):** Establishes reductions and algorithms for the multiplicative analogue of Subset Sum.
- **Algebraic Algorithms for Variants of Subset Sum (2022):** Applies algebraic techniques to structured Subset Sum variants and derives improved algorithms in the corresponding regimes.
- **Efficient Reductions and Algorithms for Variants of Subset Sum (2021):** Systematizes reductions among several variants and develops a shared algorithmic framework for them.
