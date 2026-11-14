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

Suppose you have numbers 3, 5, 8, and 12, and want to select some of them that add up to 17. Choosing 5 and 12 solves the problem. This small example captures **subset sum**: given a list of numbers and a target, determine whether some selection adds up exactly to that target. Similar questions arise when matching transactions to a total or choosing items to meet a fixed resource requirement.

The difficulty comes from the number of possible selections. With each additional item, the number of subsets doubles. A short list is easy to inspect, but checking every possibility soon becomes impractical. Algorithms try to exploit mathematical structure so that they can find an answer without exploring the entire search space. Which method works best depends on features such as the number of items and the sizes of their values.

My work studies several variations on this basic question. We might ask for a solution containing as many items as possible, allow an item to be used repeatedly, or replace addition with multiplication. Each change alters what an algorithm can exploit. Studying relationships between the variants helps determine when a technique for one problem can be adapted to another and when genuinely different methods are needed.

Another direction asks for two different selections with the same sum. In some settings, there are more possible selections than possible totals, so a repeated total must exist. This is an example of the pigeonhole principle: if too many objects are placed into too few boxes, some box contains more than one object. Knowing that a solution exists, however, does not tell us how to find it quickly. My work investigates algorithms for these equal-sum problems, the limits on their efficiency, and their behavior on random inputs.

These questions also matter to cryptography, where security often relies on a computational problem being difficult for an attacker. Understanding an algorithm's scope is essential: success on one class of instances need not imply success on all instances. Across the project, I develop algorithms and connections between problems to clarify where efficiency is possible and where evidence of computational difficulty remains.

## Core Questions

- Which features of an instance allow us to avoid searching through all possible subsets?
- How does requiring the largest solution, allowing repetitions, or replacing sums with products change the problem?
- When a counting argument guarantees equal sums, how efficiently can we find them?
- How do the difficulty of random instances and the strongest lower bounds compare with known algorithms?

## Main Results

- **On the Largest Cardinality Subset Sum (2026, submitted):** Studies the optimization variant that asks for a maximum-cardinality subset summing to a specified target.

- **Pigeonhole Equal Subset Sum: Subexponential Algorithm, Tight Lower Bounds and Average-Case Analysis (2026):** Gives a subexponential algorithm, matching lower-bound evidence in the studied model, and an average-case analysis of Pigeonhole Equal Subset Sum.
- **Weak Pigeonhole Equal-Sums made Simpler and Faster (2026):** Simplifies the algorithmic treatment of Weak Pigeonhole Equal-Sums and improves its running time.
- **On the Variants of Subset Sum: Projected and Unbounded (2023):** Develops algorithms and reductions for projected and unbounded variants, clarifying their relationship with classical Subset Sum.
- **Efficient Reductions and Algorithms for Subset Product (2023):** Establishes reductions and algorithms for the multiplicative analogue of Subset Sum.
- **Algebraic Algorithms for Variants of Subset Sum (2022):** Applies algebraic techniques to structured Subset Sum variants and derives improved algorithms in the corresponding regimes.
- **Efficient Reductions and Algorithms for Variants of Subset Sum (2021):** Systematizes reductions among several variants and develops a shared algorithmic framework for them.
