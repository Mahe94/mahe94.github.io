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

A paragraph written by an AI model can look much like one written by a person. Once it has been copied into a document, shared in a message, or posted online, the record of how it was produced may disappear. A visible label can be removed, and information attached to the original file may not survive copying. This makes it difficult to establish where a piece of text came from, even when the service that generated it would like to provide a way to check.

Watermarking explores whether evidence of origin can be carried within the text itself. The idea is to guide the model's choices so that its output contains a hidden statistical signal while still reading naturally. A detector with the appropriate information can then look for that signal. Such a signal would provide evidence about how the text was generated; it would not, by itself, establish whether its statements are true or who is responsible for sharing them.

The difficulty is that useful text rarely stays unchanged. Someone may correct a sentence, remove a passage, or combine generated material with their own writing. An attacker might also deliberately try to remove the watermark or make unrelated text appear watermarked. A meaningful guarantee must therefore specify which changes the watermark can tolerate and how reliably the detector distinguishes marked material from other text. Surviving a limited amount of corruption is a different requirement from surviving every possible rewrite.

My work approaches these questions through **pseudorandom codes**, a cryptographic building block that combines two ideas. Error correction adds carefully arranged redundancy so that information can be recovered after some damage. Pseudorandomness makes an encoding look like random data to someone who lacks the secret information needed to recognize it. Bringing these properties together creates a way to hide a recoverable signal, which is one foundation for watermarking.

I study how these codes behave when attackers can interact with a decoder, how several candidate constructions can be combined securely, and which underlying cryptographic tools are insufficient to construct them. The project develops the foundations behind watermarking: what protection can be proved, what assumptions it requires, and where mathematical limitations rule out an appealing approach.

## Core Questions

- How can a hidden signal remain recoverable after noise without becoming distinguishable from ordinary random data?
- What security is needed when an attacker can submit modified encodings to a decoder and observe its responses?
- Can several candidate constructions be combined so that security survives if only some of their assumptions hold?
- Which basic cryptographic tools are insufficient to construct robust pseudorandom codes?

## Main Results

- **On Robust Combiners for Pseudorandom Codes and PKE with Pseudorandom Ciphertexts (TCC 2026, accepted):** Studies robust combiners for pseudorandom codes and public-key encryption with pseudorandom ciphertexts.
- **A Simple Compiler for CCA2-Secure Pseudorandom Codes in the Standard Model (2026, under submission):** Studies a compiler for CCA2-secure pseudorandom codes in the standard model.

- **Chosen Ciphertext Secure Pseudorandom Codes in the Standard Model (2026):** Constructs pseudorandom codes satisfying a chosen-ciphertext-style security notion in the standard model, strengthening the cryptographic foundations available for adversarially robust watermarking.
- **Separating Pseudorandom Codes from Local Oracles (2025):** Rules out black-box constructions of binary secret-key pseudorandom codes tolerating constant Bernoulli noise from the broad class of local oracles, which includes random-oracle and trapdoor-permutation oracles.
