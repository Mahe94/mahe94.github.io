---
layout: page
title: Incompressible Cryptography
description: Cryptographic systems where ciphertexts cannot be meaningfully compressed
img: assets/img/incomp.png
importance: 1
category: Ongoing Projects
permalink: /projects/incompressible-cryptography/
parent_project: advanced-encryption
related_publications: true
bibliography_query: "@*[project_incompressible=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/incomp.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

Encrypted data is often created long before anyone knows whether the underlying keys will remain safe. Hospitals archive medical records for years, companies store internal backups in the cloud, governments retain sensitive files for audit and compliance, and messaging providers keep encrypted material in disaster-recovery systems. In many of these settings, an attacker does not need to decrypt the data immediately. It may be enough to steal ciphertexts now, store some compact representation of them, and wait for a future key leak, insider compromise, or legal disclosure.

That possibility exposes a gap in the usual way we think about encryption. Standard security says that a ciphertext should hide the message as long as the secret key is unavailable. But in long-lived storage systems, the more realistic story is often "steal first, decrypt later." If an attacker can replace a large ciphertext with a tiny summary that still preserves enough information for future recovery, then the real cost of stealing and archiving encrypted data may be much lower than we intended.

This project studies incompressible cryptography: cryptographic objects that should not admit a much shorter representation that remains useful after the key is later revealed. Intuitively, incompressibility forces an adversary to retain essentially the whole ciphertext or lose the ability to benefit from a later compromise. That turns storage itself into part of the security guarantee.

Formally, the security experiment must account for an adversary that processes a ciphertext before key exposure, stores a bounded-length state, and later tries to recover information after receiving secret material. The project investigates how this post-compromise requirement interacts with CPA and CCA security, functional encryption, leakage resilience, and key-dependent messages. Its broader goal is to determine which standard assumptions support incompressibility and where richer functionality creates inherent barriers.

## Core Questions

- Which storage-bounded security experiments correctly capture useful compression before adaptive key exposure?
- Can incompressibility be composed with IND-CCA security, functional encryption, or simulation-based security notions?
- How do leakage, auxiliary information, and key-dependent messages affect the achievable compression lower bound?
- Which standard assumptions yield incompressible constructions with meaningful ciphertext expansion and tight parameters?
- What black-box or information-theoretic barriers arise when decryption functionality becomes more expressive?

## Main Results

- **Incompressible Encryption Beyond CPA/CCA Security (2025):** Extends incompressibility beyond the conventional CPA/CCA setting and studies how the guarantee behaves under stronger encryption security requirements.
- **Incompressible Functional Encryption (2025):** Formulates and constructs incompressibility for functional encryption, where exposed keys reveal functions of the plaintext rather than the plaintext itself.
- **Leakage-Resilient Incompressible Cryptography: Constructions and Barriers (2024):** Develops leakage-resilient constructions and identifies barriers governing the simultaneous treatment of leakage and incompressibility.
