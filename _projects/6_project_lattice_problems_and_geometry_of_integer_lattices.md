---
layout: page
title: Lattice Problems and Geometry of Integer Lattices
description: Structural, algorithmic, and complexity-theoretic questions in lattice theory
img: assets/img/lattices.png
importance: 6
category: Past Projects
permalink: /projects/5_project/
related_publications: true
bibliography_query: "@*[project_lattice=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/lattices.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

A lattice begins with a familiar picture: the regularly spaced points at the corners of square floor tiles or on a sheet of graph paper. The pattern extends without gaps, and every point can be reached by taking whole-number steps in a few fixed directions. Mathematicians generalize this simple grid to three, four, or hundreds of dimensions, where it becomes a powerful way to study discrete structure using geometry.

An integer lattice is the set of all integer combinations of a chosen basis of vectors. The same lattice can have many very different bases: some are short and well balanced, while others are long and highly skewed. This flexibility is where the algorithmic difficulty begins, because the geometry of the available basis can determine whether a computational problem is easy to navigate or conceals the short and nearby vectors one wants to find.

This project studies the geometry and algorithmics of integer lattices, especially the structure of bases, primitive vectors, sublattices, and reductions to classical problems such as the Closest Vector Problem. A major theme is that the internal geometry of a lattice is not just background information; it is a source of computational power and computational difficulty. Understanding that geometry can reveal both new algorithmic opportunities and new hardness phenomena.

The motivation is therefore twofold. Lattice theory provides a clean mathematical language for high-dimensional discrete structure, while lattice problems also underpin prominent post-quantum security assumptions. At the technical level, the project studies bases of $\mathbb{Z}^n$, primitive vectors, controlled basis extensions, sublattice optimization, and reductions to classical problems such as the Closest Vector Problem (CVP). The objective is to understand how local geometric constraints on bases and sublattices affect global algorithmic complexity and cryptographic hardness.

## Core Questions

- Under which arithmetic conditions can a primitive vector be extended to a basis of $\mathbb{Z}^n$ with controlled norm or orthogonality defect?
- What upper and lower bounds govern the geometry of the remaining basis vectors in constrained basis-extension problems?
- How should maximum-distance sublattice problems be parameterized and related to standard lattice optimization problems?
- Which approximation-preserving reductions connect sublattice optimization to CVP or related closest-point problems?
- Which structural properties of primitive sublattices are algorithmically exploitable, and which encode worst-case hardness?

## Main Results

- **On the Maximum Distance Sublattice Problem and Closest Vector Problem (2024):** Formalizes the Maximum Distance Sublattice Problem and establishes its algorithmic relationship with the Closest Vector Problem.
- **On the bases of Zn lattice (2022):** Studies extensions of integer vectors to bases of $\mathbb{Z}^n$ and derives structural constraints on the resulting basis vectors.
