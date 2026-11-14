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

Much of the work of protecting digital information is carried out by symmetric-key cryptography. In an encryption scheme of this kind, the parties use a shared secret key to protect and recover messages. Related cryptographic components help detect changes to data and authenticate communications. These mechanisms must operate efficiently because they may be applied to large amounts of information or run on devices with limited computing resources.

Designs often achieve their protection through repeated rounds of relatively simple operations. A single round may mix the data only partially; repeating the process is intended to make the relationship between the input, key, and output difficult to exploit. The central challenge for a cryptanalyst is to determine whether some recognizable structure survives that mixing and can give an attacker an advantage.

My work examines this question in designs including Keccak, Ascon, and TinyJAMBU. Different analyses look for different kinds of evidence. A **distinguisher** identifies behavior that separates a construction from an ideal random object. A key-recovery attack goes further and attempts to obtain the secret key. A preimage attack seeks an input that produces a specified output. Understanding which task an attack accomplishes is necessary for interpreting its implications.

An analysis may focus on fewer rounds than the full design or on a particular class of keys. These restrictions make it possible to study structure in detail and help assess the margin between the analyzed setting and the intended use of the complete system. For example, weak-key analysis asks whether certain keys permit attacks that are unavailable for other keys. Reduced-round analysis asks how much repeated mixing is needed to defeat a particular technique.

Another part of my work studies the algebra behind these methods. Cryptographic operations can be represented by polynomial expressions, and the presence or absence of particular terms can reveal useful structure. Predicting those terms is itself a computational problem. By studying its difficulty and its relationship to attacks such as zero-sum distinguishers, the project connects mathematical questions about computation with concrete analysis of cryptographic designs.

## Core Questions

- Which algebraic patterns reveal that a cipher or permutation differs from an ideal random object?
- How can reducing the number of rounds expose structure useful for understanding a design's security margin?
- Do particular classes of keys permit attacks that are unavailable for other keys?
- How difficult is it to predict polynomial terms, and how can this inform attacks based on sums of outputs?

## Main Results

- **Complexity of Monomial Prediction in Cryptography and Machine Learning (2024):** Studies the computational complexity of monomial prediction and its connections to structured Boolean computation.
- **Weak-keys and key-recovery attack for TinyJAMBU (2022):** Identifies a weak-key class and develops a corresponding key-recovery attack against TinyJAMBU.
- **On the hardness of monomial prediction and zero-sum distinguishers for Ascon (2022):** Relates the hardness of monomial prediction to the construction and limitations of zero-sum distinguishers for Ascon.
- **Cryptanalysis of round-reduced Keccak using non-linear structures (2019):** Uses nonlinear structures to develop preimage attacks on reduced-round KECCAK-384 and KECCAK-512.
- **Cryptanalysis of 1-round KECCAK (2018):** Gives a dedicated structural analysis of one-round Keccak and derives concrete cryptanalytic consequences.
