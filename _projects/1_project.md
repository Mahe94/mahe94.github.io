---
layout: page
title: Watermarking LLMs
description: Cryptographic foundations for detecting and protecting AI-generated text
img: assets/img/llm.png
importance: 1
category: Ongoing Projects
related_publications: true
bibliography_query: "@*[project_llm=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/llm.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

AI-generated text now appears in places where provenance matters. A help-desk reply may be drafted by a model and lightly edited by a human. A student submission may contain a mixture of original writing and generated paragraphs. A company report may begin as a model summary and then pass through several rounds of internal revision. Once such text starts moving through email threads, document editors, translation tools, and social platforms, it becomes surprisingly hard to answer a simple but important question: where did this text come from?

This project studies watermarking for large language models from a cryptographic perspective. The broad idea is to make a model produce text that still reads naturally to people, but also contains a hidden signal that can later be detected by an authorized party. Unlike visible labels or metadata, the signal should travel with the text itself. That is useful in real settings where formatting is stripped away, files are copied into new systems, or outputs are intentionally reposted without attribution.

The challenge is that text is a very delicate medium. A watermark cannot simply insert obvious markers or strange phrasing, because users will notice. It also cannot rely on the text staying unchanged, because generated content is often summarized, paraphrased, spell-checked, translated, or blended with human edits. In practice, a robust watermark would need to survive routine editing while remaining invisible to ordinary readers and difficult for an adversary to erase.

These requirements make the problem both practical and theoretically subtle. Classical watermarking for images, audio, or video already has a rich history, but language brings new constraints: outputs must remain fluent, semantically coherent, diverse, and statistically close to natural writing. This project therefore uses tools from cryptography, pseudorandomness, coding theory, and the theory of language generation to understand what secure watermarking can really mean for modern LLM systems.

## Motivation

Simple detectors often work only when the attacker is weak and the text is left mostly unchanged. Real deployments are harder. A watermark may need to survive copy-editing, translation, summarization, or intentional rewriting, and it still has to remain invisible to ordinary readers.

That is why this project focuses on rigorous definitions and proofs. If watermarking is going to matter for provenance, safety, or accountability, we need to understand exactly what can be achieved, what assumptions are required, and where the limits are.

## Core Questions

- Can an LLM embed a hidden signal without noticeably hurting fluency, usefulness, or diversity?
- What kinds of robustness are achievable against paraphrasing, small edits, and adaptive removal attacks?
- Can watermarking be based on standard cryptographic assumptions rather than model-specific heuristics?
- How much secret state or detection power should the watermarking party need?
- What are the strongest impossibility results for text watermarking under realistic threat models?

## Main Results

- **Chosen Ciphertext Secure Pseudorandom Codes in the Standard Model (2026):** Gives stronger pseudorandom code constructions in the standard model, moving closer to attack-resilient foundations for watermarking-style signals.
- **Separating Pseudorandom Codes from Local Oracles (2025):** Shows that local-oracle techniques are insufficient for full pseudorandom codes, clarifying an important barrier behind cryptographic watermarking.
