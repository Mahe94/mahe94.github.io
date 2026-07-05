---
layout: page
title: Quantum Algorithms and Cryptography
description: Quantum-secure primitives, pseudorandomness, and cryptography in quantum models
img: assets/img/quantum-cryptography.png
importance: 4
category: Ongoing Projects
related_publications: true
bibliography_query: "@*[project_quantum=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/quantum-cryptography.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

Cryptographic systems are often expected to protect information far longer than the hardware they run on today. A medical archive may need confidentiality for decades. Government records, industrial secrets, legal contracts, and identity systems may outlive several generations of software and key infrastructure. That long time horizon is what makes quantum cryptography urgent: even if large quantum computers are not available today, the data being collected and encrypted now may still need to remain secure when the threat model changes.

The first layer of the problem is familiar from post-quantum cryptography. Quantum algorithms threaten several number-theoretic assumptions that supported classical public-key systems for decades, so we need primitives whose security is expected to survive quantum computation. But the second layer is more subtle and, in many ways, more interesting: quantum adversaries are not just faster classical adversaries. They can hold superpositions, manipulate quantum side information, and query oracles in ways that have no direct classical analogue.

That shift changes how cryptographic proofs have to be written. Techniques that work comfortably in the classical random oracle model do not automatically survive in the quantum random oracle model. Definitions of pseudorandomness, simulation, equivocation, and robustness may need to be reformulated when an adversary can interact with a system through quantum access. Even when a primitive looks "classical" on the surface, the surrounding proof technology may need fundamentally different ideas.

This project studies these quantum and post-quantum aspects of cryptography, with a focus on quantum-secure definitions, non-committing encryption, oracle-model security, pseudorandomness, and robust encodings of information. The broader aim is to understand which classical methods remain reliable, which ones fail, and what new tools are needed to build cryptography that still makes sense once quantum computation becomes part of the adversarial landscape.

## Motivation

Quantum computers threaten more than a few legacy assumptions. They also change the way we reason about security proofs, because a quantum adversary can interact with an oracle in ways that no classical attacker can imitate. That makes standard definitions for pseudorandomness, simulation, and non-committing security worth revisiting from the ground up.

The project is motivated by the need for cryptography that remains meaningful under long-term quantum risk, not just cryptography that is efficient under today's threat model.

## Core Questions

- Which classical constructions remain secure when the adversary has quantum computation or quantum oracle access?
- How should non-committing encryption be modeled and proved in the quantum random oracle setting?
- What forms of pseudorandomness continue to make sense in the presence of quantum information?
- Can coding-based tools support quantum-secure primitives or quantum-state-based constructions?
- What new lower bounds or separations are needed to explain the limits of black-box techniques?

## Main Results

- **A Note on Non-Committing Encryption in the Quantum Random Oracle Model (2025):** Studies how non-committing encryption should be formulated and analyzed when oracle access is quantum.
- **Quantum Pseudorandom Codes (2026):** Investigates pseudorandom code constructions designed for quantum settings and their role in quantum-secure cryptography.
