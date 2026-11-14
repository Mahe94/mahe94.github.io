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

Cryptographic security depends on what an attacker can compute. An encryption scheme is useful only if recovering its protected information without authorization is beyond the attacker's capabilities. Quantum computing changes those capabilities and therefore changes the questions that a security proof must answer. It affects both familiar computational problems and the ways an attacker may interact with parts of a cryptographic system.

A quantum computer uses quantum states and interference to carry out computations. It should not be understood as a machine that simply tries every answer and reads them all at once. Nevertheless, quantum algorithms can exploit structure unavailable to ordinary algorithms. As a result, an argument that rules out an ordinary computational attack may leave important quantum possibilities unaddressed.

My work focuses on these issues in mathematical models used to analyze cryptography. One such model replaces a function with an idealized source of consistent random answers, called a **random oracle**. In the quantum version of the model, an attacker can query that function on a superposition of inputs. This changes how the queries and their consequences can be analyzed, so techniques used in an ordinary security proof may require substantial revision.

One direction studies **non-committing encryption** in this setting. This is a tool for proving security when participants in a protocol can be compromised and their secrets exposed after communication has begun. A proof constructs a simulated account of what the attacker sees and must keep that account consistent with later revelations. Quantum access makes the task of constructing and analyzing such a simulation more delicate.

A second direction concerns **pseudorandom codes**: encodings that appear random while allowing recovery after some errors. My work examines limitations on constructing these codes from quantum random oracles. Such limitations help identify what an idealized source of randomness can provide and what additional mathematical structure may be needed. Together, these directions study how cryptographic guarantees and the assumptions behind them change when quantum computation becomes part of the model.

## Core Questions

- Which security arguments continue to work when an attacker can query an oracle in superposition?
- How can encryption support proofs that account for secrets exposed during a protocol in this setting?
- Can access to a quantum random oracle provide the structure needed for pseudorandom codes?
- What do impossibility results tell us about the additional assumptions a construction needs?

## Main Results

- **A Note on Non-Committing Encryption in the Quantum Random Oracle Model (2025):** Formulates and analyzes non-committing encryption when adversaries may access the random oracle in superposition.
- **Separating Pseudorandom Codes from Quantum Random Oracles (2026):** Studies the limits of constructing pseudorandom codes from quantum random oracles, addressing the assumption complexity of PRCs under quantum oracle access.
