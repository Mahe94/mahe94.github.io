---
layout: page
title: Lattice Problems and Geometry of Integer Lattices
description: Structural, algorithmic, and complexity-theoretic questions in lattice theory
img: assets/img/lattices.png
importance: 6
category: Past Projects
related_publications: true
bibliography_query: "@*[project_lattice=true]"
---

{% include figure.html path="assets/img/lattices.png" class="img-fluid rounded z-depth-1" %}

## Introduction

Lattice problems arise whenever discrete arithmetic structure meets continuous geometry. That combination shows up in post-quantum cryptography, integer optimization, number-theoretic computation, and high-dimensional algorithm design. In practical terms, lattices matter because many modern cryptographic systems rely on the assumption that certain geometric problems on integer point sets remain hard even for very powerful attackers.

An integer lattice can be viewed as the set of all integer combinations of a chosen basis of vectors. But the same lattice can have many very different bases, and that flexibility is exactly where the interesting mathematics begins. Some bases are short and well balanced, others are long and skewed, and the geometry of those choices strongly affects what algorithms can or cannot do. Even basic-looking questions about extending a vector to a basis or comparing related sublattices can lead to rich structural problems.

This project studies the geometry and algorithmics of integer lattices, especially the structure of bases, primitive vectors, sublattices, and reductions to classical problems such as the Closest Vector Problem. A major theme is that the internal geometry of a lattice is not just background information; it is a source of computational power and computational difficulty. Understanding that geometry can reveal both new algorithmic opportunities and new hardness phenomena.

The motivation is therefore twofold. On the one hand, lattice theory provides a clean mathematical language for studying high-dimensional discrete structure. On the other hand, it has direct consequences for cryptography, where subtle geometric properties can influence security assumptions and algorithmic attacks. This project aims to connect those viewpoints by studying how local structural constraints on bases and sublattices interact with the global complexity of lattice problems.

## Motivation

Lattices are central to post-quantum cryptography because many lattice problems are believed to resist both classical and quantum attacks. At the same time, lattice algorithms depend strongly on the choice of basis, and small structural changes can make a problem much easier or much harder.

Studying bases of $\mathbb{Z}^n$, primitive vectors, and sublattice constructions helps connect abstract geometry to the concrete algorithmic questions that arise in cryptography and complexity theory.

## Core Questions

- When can a given integer vector be extended to a basis of $\mathbb{Z}^n$?
- How much control can we maintain over the lengths and geometry of the remaining basis vectors?
- How should sublattice optimization problems be formalized and analyzed?
- What is the relationship between new sublattice problems and classical problems such as CVP?
- Which lattice-theoretic structures are most relevant to algorithm design and cryptographic hardness?

## Main Results

- **On the Maximum Distance Sublattice Problem and Closest Vector Problem (2024):** Connects a new sublattice optimization problem to the classical Closest Vector Problem and clarifies their algorithmic relationship.
- **On the bases of Zn lattice (2022):** Studies how integer vectors extend to bases of $\mathbb{Z}^n$ and what structural constraints these bases satisfy.
