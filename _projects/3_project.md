---
layout: page
title: Subset Sum Algorithms
description: Faster algorithms and structural insights for subset-sum-type problems
img: assets/img/SSUM.png
importance: 2
category: Work
---

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

## Results

This project includes results on faster algorithms for subset-sum-type problems, especially in settings with many collisions or strong pigeonhole structure.

### Faster algorithms for equal sums

We study variants where the goal is to find two different subsets with the same sum. These problems naturally arise when the number of possible subsets exceeds the number of possible sums.

### Algorithms for dense regimes

We give improved algorithms in parameter regimes where many solutions or collisions are guaranteed to exist.

### Modular variants

We also study modular versions of subset-sum-type problems, where sums are considered modulo an integer. These variants are important both algorithmically and cryptographically.
