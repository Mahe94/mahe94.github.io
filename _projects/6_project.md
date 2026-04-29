---
layout: page
title: Quantum Cryptography
description: Quantum-secure primitives, pseudorandomness, and cryptography in quantum models
img: assets/img/quantum-cryptography.png
importance: 2
category: Work
---

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

## Research Direction

The project studies several related themes in quantum cryptography and quantum-secure cryptography.

### Non-committing encryption in quantum models

Non-committing encryption is a powerful primitive in which ciphertexts can later be explained as encryptions of different messages. This property is useful in secure multiparty computation, simulation-based security, and settings where ciphertext equivocation is essential.

Classically, non-committing encryption has deep connections to the random oracle model and to programmable random oracles. A central question is whether such techniques remain secure when the adversary can query the random oracle in superposition. This leads naturally to the quantum random oracle model, where classical reprogramming techniques must be handled with much greater care.

This project studies whether classical non-committing encryption constructions can be lifted to the quantum random oracle model, and what additional arguments are needed to handle quantum adversaries.

### Quantum-secure pseudorandomness

Pseudorandomness is one of the central ideas in cryptography. In the quantum setting, pseudorandomness becomes richer and more subtle. One can ask whether classical outputs remain pseudorandom to quantum distinguishers, whether quantum states can be pseudorandom, and whether pseudorandom objects can also support error correction or other forms of robustness.

This project investigates pseudorandomness through the lens of pseudorandom codes and related primitives. Pseudorandom codes combine two requirements: their codewords should look random, while still being decodable under noise. This combination is especially interesting from a quantum perspective, because quantum cryptographic constructions often require both hiding and robustness.

### Pseudorandom codes and oracle separations

Pseudorandom codes are error-correcting codes whose codewords are computationally indistinguishable from random strings. They provide a clean meeting point between coding theory and cryptography.

This project studies the foundations of pseudorandom codes, including black-box separations and limitations of constructing them from general oracle-based assumptions. Such results help clarify whether pseudorandom codes require coding-theoretic hardness assumptions, or whether they can be built from more standard cryptographic assumptions.

These questions are also relevant to quantum cryptography, where one may hope to use pseudorandom-code-like objects as ingredients in robust quantum encodings, quantum pseudorandom codes, or quantum-secure authentication and encryption mechanisms.

### Quantum-secure public-key primitives

Quantum security also affects advanced public-key primitives such as identity-based encryption, hierarchical identity-based encryption, and non-committing variants of these schemes. These primitives are important because they go beyond ordinary encryption and support richer key structures, simulations, or adaptive security guarantees.

This project studies such primitives both as independent cryptographic objects and as possible building blocks for more advanced quantum-secure constructions.

### Robust quantum encodings

A long-term direction of this project is to understand whether one can construct quantum encodings that simultaneously satisfy three properties:

1. they encode quantum information,
2. they tolerate a meaningful level of noise, and
3. they look pseudorandom or maximally mixed to efficient adversaries.

This direction is motivated by the search for quantum analogues of pseudorandom codes and by the broader question of how to combine cryptographic pseudorandomness with quantum error correction.

## Results

This project includes several works and ongoing directions related to quantum-secure cryptography, pseudorandomness, and cryptographic security in quantum models.

### Non-committing encryption in the quantum random oracle model

The manuscript **A Note on Non-Committing Encryption in the Quantum Random Oracle Model** studies the security of non-committing encryption in the QROM. The work revisits classical non-committing encryption techniques and investigates whether they remain secure when the adversary can make quantum superposition queries to the random oracle.

The main purpose of this line of work is to understand how far classical programmable-random-oracle techniques can be pushed in a quantum setting. Since quantum adversaries interact with the oracle in a fundamentally different way, the proof techniques must account for the possibility of superposition queries and the limitations of classical reprogramming arguments.

## Related Publications

This project includes the following papers and works.

- **A Note on Non-Committing Encryption in the Quantum Random Oracle Model**  
  Anish Banerjee, Shankh Gupta, Venkata Koppula, and Mahesh Sreekumar Rajasree.  
  Manuscript, 2025.
