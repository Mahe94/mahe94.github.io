---
layout: page
title: Incompressible Cryptography
description: Cryptographic systems where ciphertexts cannot be meaningfully compressed
img: assets/img/IC.jpg
importance: 4
category: Work
related_publications: true
bibliography_query: "@*[project_incompressible=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/IC.jpg" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

Modern cryptography typically focuses on hiding *information*. Incompressible cryptography takes a different perspective: it asks whether we can design systems where ciphertexts are not only secure, but also inherently **incompressible**.

Intuitively, a ciphertext is *incompressible* if it cannot be represented using significantly fewer bits while still preserving its cryptographic usefulness. In particular, even if an adversary later receives the secret key, it should not be able to compress a ciphertext into a much shorter form from which the original message can still be meaningfully recovered.

This project develops the theory of incompressible cryptographic primitives, their constructions, and their limitations.

## Motivation

Why should ciphertexts be incompressible?

In many modern settings—such as cloud storage, secure outsourcing, distributed backup systems, and large-scale data management—compression is a natural and powerful tool. Data is often compressed to reduce storage costs, transmission time, or bandwidth usage.

For encrypted data, however, compression raises a subtle security question. Suppose an adversary obtains a ciphertext today, but does not yet know the secret key. If the adversary can compress the ciphertext into a much shorter string while preserving enough information for future decryption, then it may store only this compressed version. Later, if the secret key is leaked, stolen, or otherwise compromised, the adversary may still be able to recover the original message from the compressed ciphertext.

Incompressible cryptography is designed to rule out precisely this kind of attack. It asks for encryption schemes where ciphertexts cannot be meaningfully compressed before key compromise. Even if the secret key is revealed after the compression takes place, the compressed ciphertext should not retain enough information to recover the encrypted message.

More fundamentally, incompressibility captures the following question:

> Can we design encryption schemes whose ciphertexts remain secure even against adversaries who first compress the ciphertext and only later obtain the secret key?

This perspective is different from standard encryption security. Standard secrecy usually protects the message as long as the secret key remains hidden. Incompressibility asks for a stronger, post-compromise guarantee: the ciphertext should be so information-rich, or structurally resistant to compression, that an adversary must essentially store the whole ciphertext in order to benefit from a future key leakage.

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
