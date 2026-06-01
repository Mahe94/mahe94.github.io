---
layout: page
title: Cryptanalysis of Practical Symmetric-Key Cryptosystems
description: Distinguishers and structural analysis of practical symmetric-key designs
img: assets/img/symmetric-key.png
importance: 5
category: Past Projects
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

The work spans both conceptual and practical concerns. On one side, it develops tools for analyzing monomial prediction, zero-sum phenomena, and algebraic structure in modern designs such as Keccak, Ascon, and TinyJAMBU. On the other side, it contributes to the public evaluation process that helps the community trust, tune, or revise practical cryptographic standards. In symmetric-key cryptography, good attacks are not merely negative results; they are one of the main ways we learn what secure design should look like.

## Motivation

Designers often optimize for speed, small state, low area, or hardware efficiency. Those same choices can create algebraic regularities or combinatorial patterns that only appear under careful analysis. Cryptanalysis is how we test whether the claimed security margin is real or just optimistic.

This is especially important for lightweight and standardized primitives, where a careful public analysis can influence confidence, parameter choices, and future designs.

## Core Questions

- Can we find distinguishers for reduced-round symmetric-key primitives?
- Do practical designs contain exploitable nonlinear structures?
- Can weak keys lead to key-recovery attacks?
- How hard is it to predict monomials arising from cryptographic Boolean functions?
- Can zero-sum distinguishers reveal non-random behavior in permutation-based designs?
- What do these attacks say about the security margin of practical cryptographic schemes?

## Main Results

- **Complexity of Monomial Prediction in Cryptography and Machine Learning (2024):** Studies the computational difficulty of monomial prediction and connects it to broader algorithmic questions.
- **Weak-keys and key-recovery attack for TinyJAMBU (2022):** Identifies weak-key behavior and a key-recovery attack for the lightweight authenticated cipher TinyJAMBU.
- **On the hardness of monomial prediction and zero-sum distinguishers for Ascon (2022):** Analyzes monomial prediction and zero-sum techniques in the context of Ascon.
- **Cryptanalysis of round-reduced Keccak using non-linear structures (2019):** Shows how nonlinear structures can be turned into distinguishers for reduced-round Keccak.
- **Cryptanalysis of 1-round KECCAK (2018):** Gives concrete cryptanalytic insight into simplified Keccak and the behavior of its round structure.
