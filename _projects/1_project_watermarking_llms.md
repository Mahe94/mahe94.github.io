---
layout: page
title: Watermarking LLMs
description: Cryptographic foundations for detecting and protecting AI-generated text
img: assets/img/llm.png
importance: 1
category: Ongoing Projects
permalink: /projects/1_project/
related_publications: true
bibliography_query: "@*[project_llm=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/llm.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

AI-generated text now appears in places where provenance matters. A help-desk reply may be drafted by a model and lightly edited by a human. A student submission may contain a mixture of original writing and generated paragraphs. A company report may begin as a model summary and then pass through several rounds of internal revision. Once such text moves through email threads, document editors, translation tools, and social platforms, it becomes surprisingly hard to answer a simple but important question:

> Where did this text come from?

This project studies watermarking for large language models from a cryptographic perspective. The broad idea is to make a model produce text that still reads naturally to people, but also contains a hidden signal that can later be detected by an authorized party. Unlike visible labels or metadata, the signal should travel with the text itself. That is useful in real settings where formatting is stripped away, files are copied into new systems, or outputs are intentionally reposted without attribution.

The challenge is that text is a delicate medium. A watermark cannot simply insert obvious markers or strange phrasing, because users will notice. It also cannot rely on the text staying unchanged, because generated content is often summarized, paraphrased, spell-checked, translated, or blended with human edits. In practice, a robust watermark should survive useful transformations while remaining imperceptible to ordinary readers and difficult for an adversary to erase.

These requirements make the problem theoretically subtle. Language-model outputs must remain fluent, semantically coherent, diverse, and statistically close to unwatermarked text, while the detector must maintain low false-positive and false-negative rates. This leads naturally to cryptographic formulations based on pseudorandomness, indistinguishability, and robustness under adversarial channels. Pseudorandom codes provide one important abstraction: they combine random-looking encodings with error correction, allowing a hidden signal to remain detectable after controlled corruption.

The project develops rigorous security definitions, constructions, and limitations for such mechanisms. Its aim is to identify which watermarking guarantees can be based on standard cryptographic assumptions, which require additional coding-theoretic structure, and which are impossible under black-box or overly permissive editing models.

## Core Questions

- How should undetectability and soundness be defined when the adversary has adaptive access to the generator or detector?
- Which edit channels admit meaningful robustness without making the watermark detectable or degrading the output distribution?
- Can robust watermarking or pseudorandom codes be constructed from standard assumptions through black-box reductions?
- How do secret-key, public-detection, and chosen-ciphertext-style security models differ in their achievable guarantees?
- Which oracle separations or information-theoretic barriers explain the limits of robust binary encodings?

## Main Results

- **Chosen Ciphertext Secure Pseudorandom Codes in the Standard Model (2026):** Constructs pseudorandom codes satisfying a chosen-ciphertext-style security notion in the standard model, strengthening the cryptographic foundations available for adversarially robust watermarking.
- **Separating Pseudorandom Codes from Local Oracles (2025):** Rules out black-box constructions of binary secret-key pseudorandom codes tolerating constant Bernoulli noise from the broad class of local oracles, which includes random-oracle and trapdoor-permutation oracles.
