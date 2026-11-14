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

Imagine the points where the lines of a sheet of square graph paper meet. Starting from one point, you can reach every other point by taking a whole number of horizontal and vertical steps. This is a simple example of a **lattice**. More generally, a lattice consists of points obtained by taking whole-number combinations of a fixed set of independent directions. Those directions form a basis.

The same collection of points can have very different bases. On a square grid, one basis might use a horizontal step and a vertical step; another might use a horizontal step and a diagonal step. Both describe the whole grid, but they present its geometry differently. In many dimensions, the choice of basis can make it much harder to recognize short vectors, nearby points, or other useful structure.

One direction of my work asks when a given integer vector can be made part of a basis for the full integer lattice. A small example shows why there is a restriction: the vector (2, 0), together with any single integer vector, cannot form a basis of the entire two-dimensional integer grid. A vector whose coordinates have no common factor greater than one is called primitive, and primitive vectors play a central role in basis-extension questions. My work studies the structure and constraints involved in extending vectors to complete bases.

Another direction concerns **sublattices**, which are lattice patterns contained within a larger lattice. For example, selecting only grid points with even coordinates gives a more widely spaced pattern inside the original grid. I study a geometric optimization problem called the Maximum Distance Sublattice Problem and its relationship with the **Closest Vector Problem**, which asks for a lattice point nearest to a given target. Connections between problems allow algorithms and complexity results to inform one another.

Lattice problems are also important in cryptography, where certain computational tasks on lattices serve as foundations for security assumptions. This project examines the underlying mathematics of bases, sublattices, and geometric computation. Its aim is to understand how the way a lattice is described affects what can be computed about it and how apparently different geometric questions are related.

## Core Questions

- When can a given integer vector be included in a basis of the full integer lattice?
- What constraints does that vector impose on the geometry of the remaining basis vectors?
- How can we formulate and solve geometric optimization problems over sublattices?
- What can reductions to the Closest Vector Problem tell us about their computational difficulty?

## Main Results

- **On the Maximum Distance Sublattice Problem and Closest Vector Problem (2024):** Formalizes the Maximum Distance Sublattice Problem and establishes its algorithmic relationship with the Closest Vector Problem.
- **On the bases of Zn lattice (2022):** Studies extensions of integer vectors to bases of $\mathbb{Z}^n$ and derives structural constraints on the resulting basis vectors.
