---
layout: page
title: Batch Decryption
description: Compact keys for authorizing public decryption of selected ciphertext batches
img: assets/img/batch.png
importance: 3
category: Ongoing Projects
permalink: /projects/batch-decryption/
parent_project: advanced-encryption
related_publications: true
bibliography_query: "@*[project_batch=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/batch.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

Encrypted information sometimes needs to remain private until a particular collection of messages is ready to be made public. For example, a system might receive encrypted transactions and reveal a selected group only after deciding which transactions to process. The authority controlling that release needs a way to unlock the chosen messages while leaving other messages protected.

**Batch decryption** allows the authority to publish a short key that lets anyone decrypt a selected batch of ciphertexts. Think of a collection of locked boxes: the authority releases a compact opening instruction for the chosen boxes without handing out the master key. The cryptographic challenge is to make that instruction small while ensuring that it grants precisely the intended access. Publishing the authority's ordinary secret key would expose too much, while issuing a separate decryption key for every message could require a much larger release.

One motivation is an **encrypted mempool**, a waiting area for encrypted transactions before they are processed by a blockchain system. Keeping transaction contents hidden during this stage can help a system control when they become visible. Batch decryption supplies a mechanism for the later release: an authority selects the ciphertexts to unlock and publishes the information needed to read them. The surrounding system still determines who acts as the authority and how the batch is chosen.

My work studies two ways to organize these releases. In an epochless setting, releases need not be tied to predefined periods, and selected batches can overlap. In an epoch-based setting, ciphertexts belong to designated periods and security is analyzed under specified restrictions on releases within a period. These choices affect what access the system supports and what must be proved about an attacker who adapts its choices as information becomes available.

The project develops constructions from established computational assumptions and studies their authorization guarantees. One construction provides a compact release in an RSA group; another supports identity-based encryption, where an identity determines the intended recipient, in an epoch-based model. The aim is to understand how compact public release can be achieved, which patterns of repeated authorization are supported, and what assumptions justify the protection of ciphertexts that have not been authorized for decryption.

## Core Questions

- How can one short key authorize public decryption of a chosen batch without exposing other messages?
- Can the system support repeated releases for overlapping batches without fixing a maximum batch size at setup?
- How does organizing ciphertexts into epochs change the permitted releases and security guarantees?
- Which established assumptions support adaptive security, including for identity-based encryption with batch decryption?

## Main Results

- **Batch Decryption from New Standard Assumptions (2026, under submission):** Gives an epochless construction based on Fiat's Batch RSA with a one-group-element decryption hint, batch-independent key and ciphertext sizes, and adaptive security under strong RSA in the random-oracle model. It supports overlapping releases without a setup-time batch bound. Also gives an adaptively secure epoch-based batch-IBE construction, instantiated from CDH, with at most one batch-key query for the challenge epoch.
