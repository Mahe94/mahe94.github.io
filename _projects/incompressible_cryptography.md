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

This project studies incompressible cryptography: cryptographic objects that should not admit a much shorter representation that remains useful after the key is later revealed. Intuitively, incompressibility forces an adversary to keep essentially the whole ciphertext, or else lose the ability to benefit from a later compromise. That turns storage itself into part of the security story. The attacker should not be able to hedge by cheaply storing a compressed version and waiting for a better opportunity.

The project explores this idea across several settings, from basic encryption to richer primitives such as functional encryption and leakage-resilient constructions. The larger goal is to understand how post-compromise guarantees can be formalized, what assumptions are enough to build such systems, and where the strongest barriers appear. In that sense, incompressible cryptography is not just about compression; it is about designing encryption whose security remains meaningful even when time, storage, and delayed key exposure all enter the picture.

## Motivation

Standard encryption protects the message while the key remains secret, but it says much less about what happens after compromise. If an attacker can replace a large ciphertext with a tiny compressed summary and still decrypt later, then long-term storage security is weaker than it first appears.

That question matters in outsourced storage, delayed forensics, archived communications, and any system where keys may be exposed months or years after the data was collected. Incompressibility captures this post-compromise viewpoint in a precise way.

## Core Questions

- What does it mean to compress a ciphertext without destroying its future usefulness?
- Can incompressibility be achieved together with strong notions such as CCA security, functional encryption, or leakage resilience?
- How does incompressibility interact with structured messages and key-dependent information?
- Which constructions can be proved secure from standard assumptions?
- What barriers prevent incompressibility in richer cryptographic models?

## Main Results

- **Incompressible Encryption Beyond CPA/CCA Security (2025):** Studies incompressible encryption under stronger security notions than the standard CPA and CCA baselines.
- **Incompressible Functional Encryption (2025):** Extends incompressibility beyond basic encryption to the functional encryption setting.
- **Leakage-Resilient Incompressible Cryptography: Constructions and Barriers (2024):** Gives both positive constructions and barrier results for incompressibility in the presence of leakage.
