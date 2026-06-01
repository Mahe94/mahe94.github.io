---
layout: page
title: Subset Sum Algorithms
description: Faster algorithms and structural insights for subset-sum-type problems
img: assets/img/SSUM.png
importance: 3
category: Ongoing Projects
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

The broader objective is to understand which forms of structure can be exploited algorithmically and which ones reflect genuine hardness. That means developing better reductions, sharper lower bounds, and more refined algorithms for special regimes such as dense instances or highly redundant inputs. In this area, cleaner theory is not just an aesthetic improvement; it often reveals new algorithmic routes that were hidden by the apparent simplicity of the original formulation.

## Motivation

Subset sum is a benchmark problem for exact exponential algorithms, fine-grained complexity, and cryptographic hardness. It is simple enough to reason about cleanly, but rich enough to expose the limits of algebraic, combinatorial, and lattice-based techniques.

The motivating question is not only whether subset sum is hard in the worst case, but which kinds of structure make real instances easier. Understanding that boundary helps both algorithm designers and cryptographers.

## Core Questions

- When do dense or highly structured instances admit algorithms faster than brute force?
- How do modular, projected, equal-sum, and unbounded variants differ from classical subset sum?
- Can algebraic or lattice-based techniques improve performance on specific regimes?
- What lower bounds explain why certain improvements are impossible?
- How do these variants connect to cryptographic and fine-grained complexity assumptions?

## Main Results

- **Pigeonhole Equal Subset Sum: Subexponential Algorithm, Tight Lower Bounds and Average-Case Analysis (2026):** Gives subexponential algorithms together with tight lower-bound evidence and average-case analysis.
- **Weak Pigeonhole Equal-Sums made Simpler and Faster (2026):** Simplifies and improves algorithms for the weak pigeonhole equal-sums setting.
- **On the Variants of Subset Sum: Projected and Unbounded (2023):** Studies projected and unbounded versions of the problem and clarifies their algorithmic behavior.
- **Efficient Reductions and Algorithms for Subset Product (2023):** Extends subset-sum-style methods to multiplicative analogues through new reductions and algorithms.
- **Algebraic Algorithms for Variants of Subset Sum (2022):** Uses algebraic techniques to speed up structured versions of subset sum.
- **Efficient Reductions and Algorithms for Variants of Subset Sum (2021):** Organizes several subset-sum variants through reductions and gives a cleaner algorithmic toolkit for studying them.
