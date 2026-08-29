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

Many real systems do not decrypt one ciphertext at a time. A server may need to process large encrypted logs, a storage service may recover many archived records together, or a privacy-preserving workflow may need to handle an entire batch of encrypted inputs before producing an output. In those settings, the main question is not only whether decryption is correct, but whether it can scale gracefully as the workload grows.

Batch decryption studies techniques for handling many ciphertexts together while preserving the security guarantees expected from the underlying encryption scheme. Depending on the setting, the goal may be to amortize computation, reduce communication, streamline key usage, or support structured post-processing across a whole collection of ciphertexts. The challenge is to gain efficiency without opening a shortcut that an attacker can exploit.

This project focuses on the theory behind secure and efficient large-scale decryption workflows. It sits naturally alongside other advanced encryption questions, because once ciphertexts are numerous, long-lived, or tied to structured access policies, efficiency and security can no longer be treated as separate concerns.

## Motivation

Decryption cost becomes a real systems issue when encrypted workloads are large or repetitive. A principled understanding of batch decryption helps identify when efficiency gains are genuinely safe and when they quietly weaken the security model.

## Core Questions

- Which encryption settings admit meaningful amortization across many ciphertexts?
- How should batch decryption be modeled so that efficiency gains do not hide new attack surfaces?
- What tradeoffs arise between computation, communication, and key-management complexity?
- How does batch processing interact with richer notions of public-key and post-compromise security?
