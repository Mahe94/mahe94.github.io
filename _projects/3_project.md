---
layout: page
title: Subset Sum Algorithms
description: Faster algorithms and structural insights for subset-sum-type problems
img: assets/img/SSUM.png
importance: 3
category: Work
related_publications: true
bibliography_query: "@*[project_subsetsum=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/SSUM.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

Subset sum is one of the most fundamental problems in theoretical computer science.

Given numbers \(a_1,\ldots,a_n\) and a target \(t\), the goal is to decide whether some subset of the numbers adds up exactly to \(t\). Despite its simple statement, subset sum sits at the intersection of algorithms, complexity theory, cryptography, and lattice problems.

This project studies faster algorithms and structural variants of subset-sum-type problems.

## Motivation

Subset sum is a central benchmark for understanding the limits of algorithmic techniques. It is also deeply connected to cryptography, especially to problems used in post-quantum cryptography and lattice-based constructions.

A major goal is to understand when subset sum is genuinely hard and when additional structure can be exploited to design faster algorithms.

## Core Questions

This project focuses on questions such as:

- Can we design faster algorithms for dense subset sum instances?
- What happens when many different subsets have the same sum?
- Can lattice techniques improve subset-sum algorithms?
- How do subset-sum variants behave in modular settings?
- What are the right lower-bound assumptions for these problems?

## Research Direction

The project studies several related problems, including:

- Classical subset sum
- Modular subset sum
- Equal subset sum
- Pigeonhole equal sums
- Projection subset sum
- Lattice-based formulations of subset-sum problems

The broader aim is to develop a clearer algorithmic picture of subset sum and its variants, especially in regimes that are important for cryptography and fine-grained complexity.
