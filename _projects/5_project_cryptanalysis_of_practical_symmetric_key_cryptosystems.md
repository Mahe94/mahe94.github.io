---
layout: page
title: Cryptanalysis of Practical Symmetric-Key Cryptosystems
description: Distinguishers and structural analysis of practical symmetric-key designs
img: assets/img/symmetric-key.png
importance: 5
category: Past Projects
permalink: /projects/4_project/
related_publications: true
bibliography_query: "@*[project_symmetric=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/symmetric-key.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

Every time a browser opens an HTTPS connection, a phone verifies an update, a payment device authenticates a transaction, or a lightweight sensor protects a short packet, symmetric-key cryptography is doing the heavy lifting. These primitives sit on the performance-critical path of modern security. They must run quickly on servers, laptops, smart cards, and constrained embedded devices, often under severe latency, power, and memory constraints.

That constant pressure for speed is exactly why cryptanalysis matters. Designers aim for compact rounds, efficient nonlinear layers, and implementation-friendly permutations, but those same choices can accidentally create hidden algebraic patterns or statistical regularities. A design may look elegant and efficient on paper while still admitting distinguishers, weak-key classes, or reduced-round attacks that reveal how narrow its true safety margin is.

This project studies the cryptanalysis of practical symmetric-key designs, with an emphasis on reduced-round analysis, weak-key behavior, nonlinear structures, and structural distinguishers. The central question is whether real constructions behave like ideal random objects for as long as designers claim, or whether deeper analysis uncovers exploitable structure before the advertised security boundary is reached.

The work spans both conceptual and practical concerns. It develops tools for monomial prediction, zero-sum phenomena, nonlinear structures, and weak-key analysis in designs such as Keccak, Ascon, and TinyJAMBU. These techniques are used to construct distinguishers or key-recovery attacks against reduced-round or restricted-key variants and thereby measure the gap between the best known attacks and the full primitive. This public analysis is especially important for lightweight and standardized designs: a precise attack is not merely a negative result, but evidence that informs round counts, parameter choices, and future design principles.

## Core Questions

- Which algebraic or differential structures yield distinguishers for reduced-round permutations and authenticated-encryption schemes?
- How can nonlinear structures in Keccak-type permutations be characterized and converted into practical distinguishers?
- Which weak-key classes in lightweight designs permit key recovery, and what fraction of the key space do they occupy?
- What is the computational complexity of monomial prediction for iterated Boolean transformations?
- How do monomial-prediction bounds translate into zero-sum distinguishers for designs such as Ascon?
- How close do the best structural attacks come to the full-round parameters and claimed security levels?

## Main Results

- **Complexity of Monomial Prediction in Cryptography and Machine Learning (2024):** Studies the computational complexity of monomial prediction and its connections to structured Boolean computation.
- **Weak-keys and key-recovery attack for TinyJAMBU (2022):** Identifies a weak-key class and develops a corresponding key-recovery attack against TinyJAMBU.
- **On the hardness of monomial prediction and zero-sum distinguishers for Ascon (2022):** Relates the hardness of monomial prediction to the construction and limitations of zero-sum distinguishers for Ascon.
- **Cryptanalysis of round-reduced Keccak using non-linear structures (2019):** Constructs nonlinear structures and uses them to distinguish round-reduced Keccak from an ideal permutation.
- **Cryptanalysis of 1-round KECCAK (2018):** Gives a dedicated structural analysis of one-round Keccak and derives concrete cryptanalytic consequences.
