---
layout: page
title: Cryptanalysis of Practical Symmetric-Key Cryptosystems
description: Distinguishers and structural analysis of practical symmetric-key designs
img: assets/img/symmetric-key.png
importance: 5
category: Work
related_publications: true
bibliography_query: "@*[project_symmetric=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/symmetric-key.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

Symmetric-key cryptography is the backbone of modern secure communication.It includes block ciphers, stream ciphers, hash functions, authenticated encryption schemes, and permutation-based constructions. These primitives are used everywhere: in secure messaging, internet protocols, embedded devices, lightweight cryptography, and post-quantum secure systems.

This project studies the security of practical symmetric-key cryptosystems through cryptanalysis. The goal is to understand whether proposed designs behave like ideal cryptographic objects, or whether their internal structure can be exploited to obtain attacks, distinguishers, weak keys, or key-recovery methods.

## Motivation

A symmetric-key primitive may have a clean and elegant design, but its security depends on the absence of hidden exploitable structure. Cryptanalysis plays an important role in this process. It tests the security margins of practical designs, identifies weaknesses in reduced-round versions, and develops new techniques that help the community understand why certain constructions are secure or insecure.

This is especially important for lightweight cryptography, where schemes are designed under strict efficiency constraints. Such constraints often lead to compact internal structures, small-state designs, or carefully optimized nonlinear layers. These features make the schemes efficient, but they also make detailed cryptanalytic evaluation essential.

## Core Questions

This project focuses on questions such as:

- Can we find distinguishers for reduced-round symmetric-key primitives?
- Do practical designs contain exploitable nonlinear structures?
- Can weak keys lead to key-recovery attacks?
- How hard is it to predict monomials arising from cryptographic Boolean functions?
- Can zero-sum distinguishers reveal non-random behavior in permutation-based designs?
- What do these attacks say about the security margin of practical cryptographic schemes?

## Research Direction

The project studies several themes in symmetric-key cryptanalysis, including:

- Cryptanalysis of Keccak and round-reduced Keccak
- Cryptanalysis of Ascon
- Weak-key and key-recovery attacks on TinyJAMBU
- Nonlinear structures in cryptographic permutations
- Zero-sum distinguishers
- Monomial prediction problems
- Algebraic and combinatorial methods in symmetric-key cryptanalysis

The broader aim is to develop a clearer understanding of how structural properties of practical symmetric-key primitives can be used in attacks, and how such analysis can guide the design of more secure cryptosystems.
