---
layout: page
title: Hierarchical & Identity-Based Encryption
description: Encryption with identity-derived public keys, delegation, and adaptive security
img: assets/img/ibe.png
importance: 2
category: Ongoing Projects
permalink: /projects/hierarchical-identity-based-encryption/
parent_project: advanced-encryption
related_publications: true
bibliography_query: "@*[project_hibe=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/ibe.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

Sending encrypted information normally requires obtaining and authenticating the recipient's public key. In a large organization, maintaining that directory of keys and certificates can itself become a difficult administrative problem. Identity-based encryption offers a different approach: a familiar identifier, such as an email address or organizational label, serves as the public key, while a trusted authority issues the corresponding secret key.

Hierarchical identity-based encryption extends this idea to organizations with several levels of authority. A root authority can delegate key-generation capabilities to departments, which can in turn delegate to teams or individuals. The resulting identity tree mirrors real administrative structure and avoids routing every key request through a single central authority.

The cryptographic challenge is to prove security when an adversary adaptively chooses identities, requests secret keys for related nodes, and decides on its challenge only after observing the system. Reductions must preserve delegation while embedding a hardness challenge without answering a prohibited key query. This project studies adaptive security, delegation, and simulation-friendly notions such as non-committing encryption, with the goal of obtaining expressive identity-based systems from standard assumptions.

## Core Questions

- Can HIBE achieve adaptive security for unbounded or polynomial-depth identity spaces under standard assumptions?
- Which partitioning, dual-system, or complexity-leveraging techniques preserve delegation while answering adaptive extraction queries?
- What efficiency or reduction losses separate selective-identity security from full adaptive security?
- How can identity-based encryption satisfy non-committing or simulation-based notions needed by adaptively secure protocols?

## Main Results

- **A Note on Adaptive Security in Hierarchical Identity-Based Encryption (2025):** Establishes and analyzes adaptive security for HIBE, focusing on the interaction between delegated secret keys and adaptive identity selection.
- **Non-Committing Identity-Based Encryption: Constructions and Applications (2025):** Develops non-committing identity-based encryption and applies its simulation properties to stronger adaptive-security settings.
