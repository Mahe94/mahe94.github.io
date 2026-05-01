---
layout: page
title: Lattice Problems and Geometry of Integer Lattices
description: Structural, algorithmic, and complexity-theoretic questions in lattice theory
img: assets/img/lattices.png
importance: 6
category: Work
related_publications: true
bibliography_query: "@*[project_lattice=true]"
---

{% include figure.html path="assets/img/lattices.png" class="img-fluid rounded z-depth-1" %}

Lattices are fundamental mathematical objects with deep connections to geometry, number theory, algorithms, complexity theory, and cryptography.

A lattice is a discrete additive subgroup of Euclidean space. Equivalently, it can be viewed as the set of all integer linear combinations of a collection of basis vectors. Despite this simple definition, lattices exhibit rich geometric structure and give rise to many difficult algorithmic problems.

This project studies structural and algorithmic questions about lattices, especially integer lattices such as $\Z^n$, lattice bases, sublattices, and computational problems such as the Closest Vector Problem. The broader aim is to understand how geometric properties of lattices influence algorithmic hardness, reductions between lattice problems, and the structure of lattice bases.

## Motivation

Lattices play a central role in modern theoretical computer science.

They are used in the design of post-quantum cryptographic schemes, in algorithms for integer programming and number theory, and in the study of computational hardness. Many important lattice problems are believed to be difficult even for quantum computers, which is one of the reasons lattices form a major foundation of post-quantum cryptography.

At the same time, lattices are also beautiful geometric objects. A lattice basis may look very different from another basis of the same lattice, and the geometry of these bases can strongly affect the complexity of algorithmic tasks. Understanding which bases exist, how short or long they can be, and how they relate to each other is a fundamental question in lattice theory.

This project investigates such questions from both structural and computational viewpoints. The goal is to understand not only how hard lattice problems are, but also what the internal geometry of lattices reveals about these problems.

## Core Questions

This project focuses on questions such as:

- What structural properties do bases of $\Z^n$ satisfy?
- When can a given integer vector be extended to a basis of $\Z^n$?
- How short can the remaining basis vectors be made after fixing one vector?
- How are sublattices related to classical lattice problems such as the Closest Vector Problem?
- Can new lattice problems be reduced to well-studied problems such as CVP?
- What is the computational complexity of finding sublattices satisfying geometric constraints?
- How do lattice-theoretic properties interact with subset-sum-type and integer-combination problems?

## Research Direction

The project studies several themes in lattice theory and lattice algorithms, including:

- Bases of the integer lattice $\Z^n$
- Primitive integer vectors and unimodular matrices
- Structural properties of lattice bases
- Sublattice problems
- The Maximum Distance Sublattice Problem
- Connections between sublattice problems and the Closest Vector Problem
- Geometric and algebraic methods in lattice theory
- Algorithmic questions related to integer combinations and subset-sum-type problems

The broader aim is to develop a clearer understanding of the relationship between the geometry of lattice bases and the complexity of computational lattice problems.
