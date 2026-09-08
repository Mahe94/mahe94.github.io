---
layout: page
title: Advanced Encryption
description: Stronger encryption models for post-compromise security, delegated access, and scalable decryption
img: assets/img/enc.png
importance: 2
category: Ongoing Projects
permalink: /projects/advanced-encryption/
project_key: advanced-encryption
related_publications: false
---
<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/enc.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

Encryption is often described as placing information in a locked box that only the intended recipient can open. That picture captures confidentiality, but modern systems ask much more of the box. Encrypted data may be stored for years, shared across an organization, processed by remote services, or decrypted in large batches. During that lifetime, keys may leak, responsibilities may be delegated, and efficiency constraints may become as important as the original secrecy requirement.

Advanced encryption develops definitions and constructions for these richer settings. One direction studies incompressibility, where an attacker should not be able to retain only a short summary of a ciphertext and later exploit a key exposure. Another studies identity-based and hierarchical encryption, where identities serve as public keys and secret-key capabilities can be delegated across levels of authority. A third studies batch decryption, where shared computation should reduce the cost of processing many ciphertexts without introducing new attacks.

Taken together, these directions examine how correctness, indistinguishability, simulation, post-compromise security, and efficiency interact beyond the classical public-key encryption model. The common goal is to identify security notions that remain meaningful under richer functionality and to realize them from well-understood cryptographic assumptions.

## Subprojects

<div class="projects">
  <div class="grid">
    {% assign subprojects = site.projects | where: "parent_project", page.project_key | sort: "importance" %}
    {%- for project in subprojects -%}
      {% include projects.html %}
    {%- endfor -%}
  </div>
</div>

<!-- ## Research Themes

- Post-compromise security and incompressibility
- Identity-based and hierarchical access structures
- Efficient handling and decryption of many ciphertexts
- Stronger security guarantees for rich public-key systems -->
