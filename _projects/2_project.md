---
layout: page
title: Incompressible Cryptography
description: Cryptographic systems where ciphertexts cannot be meaningfully compressed
img: assets/img/IC.jpg
importance: 2
category: Work
---

Modern cryptography typically focuses on hiding *information*. Incompressible cryptography takes a different perspective: it asks whether we can design systems where ciphertexts are not only secure, but also inherently **non-compressible**.

Intuitively, a ciphertext is *incompressible* if it cannot be represented using significantly fewer bits without losing essential information. This notion captures a strong form of pseudorandomness and structural complexity: even if an adversary does not learn the plaintext, they also cannot “summarize” or “shrink” the ciphertext in any meaningful way.

This project develops the theory of incompressible cryptographic primitives, their constructions, and their limitations.

## Motivation

Why should ciphertexts be incompressible?

In many modern settings—such as cloud storage, secure outsourcing, and large-scale data systems—compression plays a central role. If encrypted data could be significantly compressed, this may reveal hidden structure or redundancy, potentially weakening security guarantees.

More fundamentally, incompressibility captures a deeper question:

> Can we design encryption schemes whose outputs behave like *truly random objects* not only statistically, but also structurally?

This connects cryptography with ideas from information theory, complexity theory, and coding theory.

## Core Ideas

The project explores the following themes.

- **Incompressibility as a security notion**: Formalizing what it means for a ciphertext to resist compression.
- **Connections to pseudorandomness**: Understanding how incompressibility relates to pseudorandom generators and pseudorandom codes.
- **Leakage resilience**: Studying whether incompressibility provides protection against partial information leakage.
- **Key-dependent message (KDM) security**: Investigating how incompressibility interacts with advanced security notions.
- **Efficiency vs. structure trade-offs**: Understanding the limits of achieving incompressibility while maintaining efficient encryption.

## Research Direction

Incompressible cryptography lies at the intersection of several areas:

- Cryptographic constructions (encryption, commitments, pseudorandom objects)
- Coding theory (structure vs. randomness)
- Computational complexity (lower bounds and barriers)

A key goal is to understand both **what can be built** and **what cannot be built** under standard assumptions.

## Results

This project has led to several results, including:

### Constructions

We construct encryption schemes that achieve incompressibility under appropriate assumptions, showing that strong forms of structural randomness are achievable in cryptography.

### Barriers

We also identify fundamental limitations, demonstrating that certain natural approaches to incompressibility cannot work.  
These barriers help clarify the exact power required to achieve incompressible ciphertexts.

### Advanced security guarantees

We study incompressibility in combination with stronger notions such as:

- Leakage resilience  
- Key-dependent message (KDM) security  

These results show that incompressibility can coexist with rich and demanding cryptographic guarantees.
