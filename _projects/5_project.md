---
layout: page
title: Lattice Problems and Geometry of Integer Lattices
description: Structural, algorithmic, and complexity-theoretic questions in lattice theory
img: assets/img/lattices.png
importance: 6
category: Work
---

Lattices are fundamental mathematical objects with deep connections to geometry, number theory, algorithms, complexity theory, and cryptography.

A lattice is a discrete additive subgroup of Euclidean space. Equivalently, it can be viewed as the set of all integer linear combinations of a collection of basis vectors. Despite this simple definition, lattices exhibit rich geometric structure and give rise to many difficult algorithmic problems.

This project studies structural and algorithmic questions about lattices, especially integer lattices such as \(\mathbb{Z}^n\), lattice bases, sublattices, and computational problems such as the Closest Vector Problem. The broader aim is to understand how geometric properties of lattices influence algorithmic hardness, reductions between lattice problems, and the structure of lattice bases.

## Motivation

Lattices play a central role in modern theoretical computer science.

They are used in the design of post-quantum cryptographic schemes, in algorithms for integer programming and number theory, and in the study of computational hardness. Many important lattice problems are believed to be difficult even for quantum computers, which is one of the reasons lattices form a major foundation of post-quantum cryptography.

At the same time, lattices are also beautiful geometric objects. A lattice basis may look very different from another basis of the same lattice, and the geometry of these bases can strongly affect the complexity of algorithmic tasks. Understanding which bases exist, how short or long they can be, and how they relate to each other is a fundamental question in lattice theory.

This project investigates such questions from both structural and computational viewpoints. The goal is to understand not only how hard lattice problems are, but also what the internal geometry of lattices reveals about these problems.

## Core Questions

This project focuses on questions such as:

- What structural properties do bases of \(\mathbb{Z}^n\) satisfy?
- When can a given integer vector be extended to a basis of \(\mathbb{Z}^n\)?
- How short can the remaining basis vectors be made after fixing one vector?
- How are sublattices related to classical lattice problems such as the Closest Vector Problem?
- Can new lattice problems be reduced to well-studied problems such as CVP?
- What is the computational complexity of finding sublattices satisfying geometric constraints?
- How do lattice-theoretic properties interact with subset-sum-type and integer-combination problems?

## Research Direction

The project studies several themes in lattice theory and lattice algorithms, including:

- Bases of the integer lattice \(\mathbb{Z}^n\)
- Primitive integer vectors and unimodular matrices
- Structural properties of lattice bases
- Sublattice problems
- The Maximum Distance Sublattice Problem
- Connections between sublattice problems and the Closest Vector Problem
- Geometric and algebraic methods in lattice theory
- Algorithmic questions related to integer combinations and subset-sum-type problems

The broader aim is to develop a clearer understanding of the relationship between the geometry of lattice bases and the complexity of computational lattice problems.

## Results

This project includes works on both structural lattice theory and computational lattice problems.

### Bases of \(\mathbb{Z}^n\)

The integer lattice \(\mathbb{Z}^n\) is one of the most basic and important lattices. However, even for this lattice, there are interesting structural questions about its possible bases.

One line of work studies bases of \(\mathbb{Z}^n\), with a focus on how integer vectors can appear inside unimodular bases. Such questions are closely related to primitive vectors, unimodular matrices, and the geometry of integer bases.

The motivation is to understand how constrained a lattice basis can be when one or more of its vectors are fixed in advance. This type of question lies at the intersection of elementary lattice theory, integer linear algebra, and the geometry of numbers.

### Maximum Distance Sublattice Problem

Another direction studies the Maximum Distance Sublattice Problem.

Sublattices arise naturally when one restricts a lattice to a smaller-rank or finite-index structure. Understanding the geometry of sublattices is important for both structural lattice theory and computational lattice problems.

This work studies the relationship between the Maximum Distance Sublattice Problem and the Closest Vector Problem. Since CVP is one of the central computational problems in lattice theory, reductions to or from CVP help clarify the algorithmic complexity of new lattice problems.

### Closest Vector Problem

The Closest Vector Problem asks, given a lattice and a target point, to find the lattice point closest to the target.

CVP is one of the most important lattice problems. It is central in lattice algorithms, computational geometry, and post-quantum cryptography. Understanding how other lattice problems relate to CVP helps identify their computational difficulty and places them within the broader landscape of lattice complexity.

This project studies CVP through its relationship with sublattice problems, especially problems involving distance constraints and geometric optimization over lattices.

### Lattice theory and integer-combination problems

Lattice problems are closely connected to integer-combination problems such as subset sum and related variants.

Many subset-sum-type problems can be represented geometrically using lattices, and lattice methods often provide a useful way to understand their structure. Conversely, subset-sum-type questions can lead to interesting lattice instances and geometric problems.

This project therefore also explores the boundary between lattice theory, subset-sum-type problems, and integer linear algebra.

## Related Publications

This project includes the following papers and works.

- **On the Maximum Distance Sublattice Problem and Closest Vector Problem**  
  Rajendra Kumar, Shashank Mehta, and Mahesh Sreekumar Rajasree.  
  In *26th International Symposium on Symbolic and Numeric Algorithms for Scientific Computing - SYNASC 2024*.

- **On the bases of \(\mathbb{Z}^n\) lattice**  
  Shashank Mehta and Mahesh Sreekumar Rajasree.  
  In *24th International Symposium on Symbolic and Numeric Algorithms for Scientific Computing - SYNASC 2022*.

- **New Results and Proofs in Lattice Theory**  
  Mahesh Sreekumar Rajasree.  
  MTech Thesis, IIT Kanpur, India, 2023.
