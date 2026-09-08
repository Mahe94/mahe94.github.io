---
layout: page
title: Quantum Algorithms and Cryptography
description: Quantum-secure primitives, pseudorandomness, and cryptography in quantum models
img: assets/img/quantum-cryptography.png
importance: 4
category: Ongoing Projects
permalink: /projects/6_project/
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

This project studies these quantum and post-quantum aspects of cryptography, with a focus on quantum-secure definitions, non-committing encryption, oracle-model security, pseudorandomness, and robust encodings of classical or quantum information. At the technical level, it asks how simulation and indistinguishability arguments change in the quantum random oracle model, which classical reductions survive superposition access, and which new primitives are needed when the encoded object or the adversary's side information is quantum. The broader aim is to distinguish reusable classical proof techniques from those that fundamentally fail in quantum settings.

## Core Questions

- Which classical constructions and reductions remain sound under quantum computation, quantum side information, or superposition oracle access?
- How should non-committing encryption be defined and simulated in the quantum random oracle model?
- Which indistinguishability notions correctly capture pseudorandom classical encodings and pseudorandom quantum states?
- Can coding-theoretic structure provide robustness and pseudorandomness simultaneously in quantum-secure constructions?
- Which oracle separations or black-box lower bounds delineate the assumptions necessary for quantum pseudorandom codes?

## Main Results

- **A Note on Non-Committing Encryption in the Quantum Random Oracle Model (2025):** Formulates and analyzes non-committing encryption when adversaries may access the random oracle in superposition.
- **Quantum Pseudorandom Codes (2026):** Develops the notion and construction of pseudorandom codes for quantum settings, combining pseudorandomness with robust recovery in the presence of quantum information.
