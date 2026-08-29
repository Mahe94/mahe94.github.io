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

Identity-based encryption replaces conventional public keys with meaningful identifiers such as email addresses, usernames, or organizational labels. Hierarchical identity-based encryption extends that idea by allowing secret-key capabilities to be delegated down a tree of identities, which makes the model especially natural for large systems with layered authority. These primitives are appealing because they combine public-key functionality with a much richer access structure.

The hard part is security. In realistic settings, an adversary may adaptively choose which identities to attack, which secret keys to request, and which ciphertexts to challenge. Proving security in these models requires careful control over delegation, simulation, and exposure patterns. That is where hierarchical and identity-based encryption become both practically relevant and theoretically subtle.

This project studies adaptive security, delegation, and simulation-friendly constructions for identity-based and hierarchical encryption. The broader goal is to understand how far we can push these systems while preserving the strong guarantees needed in modern public-key applications.

## Motivation

Hierarchical and identity-based systems are useful when key management needs to follow real organizational structure rather than a flat list of independent users. They also provide a natural setting for studying advanced proof techniques, because adaptive corruption and delegated authority place strong demands on the security argument.

## Core Questions

- How can hierarchical identity-based encryption achieve adaptive security under standard assumptions?
- What proof techniques support delegation without losing tight control over exposure patterns?
- When can identity-based encryption be made non-committing or simulation friendly?
- How do these primitives connect to broader goals in advanced public-key encryption?

## Main Results

- **A Note on Adaptive Security in Hierarchical Identity-Based Encryption (2025):** Studies adaptive security in hierarchical identity-based encryption and clarifies how delegation can be handled in stronger threat models.
- **Non-Committing Identity-Based Encryption: Constructions and Applications (2025):** Develops simulation-friendly identity-based encryption with applications to stronger notions of public-key security.
