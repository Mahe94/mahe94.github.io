---
layout: page
title: Batch Decryption
description: Scalable methods for decrypting many ciphertexts efficiently without giving up security
img: assets/img/batch.png
importance: 3
category: Ongoing Projects
permalink: /projects/batch-decryption/
parent_project: advanced-encryption
related_publications: false
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/batch.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

Many real systems do not decrypt one ciphertext at a time. A server may need to process large encrypted logs, a storage service may recover many archived records together, or a privacy-preserving workflow may handle an entire batch of encrypted inputs before producing an output. Repeating an expensive decryption procedure independently for every item can become a serious bottleneck.

Batch decryption asks whether common work can be shared across many ciphertexts. Depending on the setting, the goal may be to amortize computation, reduce communication, streamline key usage, or support structured post-processing across a collection. Any gain must preserve correctness for valid ciphertexts and prevent malformed or adversarially chosen inputs from turning the shared computation into a new attack surface.

At a technical level, the project studies when decryption algorithms admit secure batching, how the cost should scale with the batch size, and which security definitions capture attacks involving correlated or adaptively generated ciphertexts. It sits naturally alongside other advanced-encryption questions because large, long-lived, or access-controlled ciphertext collections require efficiency and security to be analyzed together.

## Core Questions

- Which classes of public-key or functional-encryption schemes admit asymptotic or concrete amortization across ciphertexts?
- How should correctness and CCA-style security be defined for correlated, malformed, or adaptively chosen ciphertext batches?
- Can preprocessing or shared auxiliary state reduce online decryption cost without weakening key or message privacy?
- What lower bounds govern the tradeoffs among computation, communication, batch size, and key-management complexity?

## Main Results

This project is ongoing. Concrete results and corresponding publications will be added here as they become available.
