---
layout: page
title: Quantum Cryptography
description: Quantum-secure primitives, pseudorandomness, and cryptography in quantum models
img: assets/img/quantum-cryptography.png
importance: 2
category: Work
related_publications: true
bibliography_query: "@*[project_quantum=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/quantum-cryptography.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

Quantum cryptography studies how cryptographic security changes when computation, information, and adversaries are quantum.

It includes cryptographic schemes secure against quantum computers, security proofs in quantum oracle models, quantum analogues of classical primitives, and new objects that use quantum states as part of the construction itself. These questions are central to the long-term security of cryptography, especially as quantum algorithms challenge many classical assumptions and force us to revisit the foundations of cryptographic security.

This project studies quantum and post-quantum aspects of cryptography, with a focus on quantum-secure definitions, pseudorandomness, non-committing encryption, oracle-model security, and robust encodings of information. The goal is to understand which classical cryptographic techniques remain secure in the presence of quantum adversaries, which ones fail, and what genuinely new possibilities arise from quantum information.

## Motivation

Classical cryptography is usually analyzed against classical adversaries. However, quantum computers change this picture in two important ways.

First, quantum algorithms can break several number-theoretic assumptions that have traditionally supported public-key cryptography. This motivates the study of post-quantum cryptography: cryptographic schemes whose security is expected to survive even against quantum computation.

Second, quantum adversaries are not merely faster classical adversaries. They can query oracles in superposition, manipulate quantum states, and use interference in ways that have no classical analogue. As a result, security proofs that are valid in the classical random oracle model may not automatically remain valid in the quantum random oracle model. Similarly, classical notions of pseudorandomness, robustness, simulation, and equivocation may need to be reformulated when quantum access or quantum information is involved.

This project is motivated by these foundational issues. It asks how classical cryptographic primitives behave in quantum models, and how one can design cryptographic objects that remain meaningful and secure when adversaries have quantum capabilities.

## Core Questions

This project focuses on questions such as:

- Which classical cryptographic constructions remain secure against quantum adversaries?
- How should non-committing encryption be analyzed in the quantum random oracle model?
- Can programmable random-oracle techniques survive quantum superposition queries?
- What kinds of pseudorandomness are meaningful in the presence of quantum information?
- Can pseudorandom codes be used as a foundation for quantum-secure or quantum-state-based primitives?
- What are the barriers to constructing pseudorandom codes from general assumptions?
- Can one build robust quantum encodings that are simultaneously error-correcting and pseudorandom?
- How do oracle separations clarify the limitations of black-box cryptographic constructions?
- What new techniques are needed to prove security in quantum-access settings?
