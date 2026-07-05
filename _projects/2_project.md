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

Advanced encryption asks for more than basic confidentiality. In many modern systems, encrypted data may be stored for years, shared across organizational hierarchies, or processed in large batches by servers that need strong security guarantees and efficient performance at the same time. Those settings push us beyond the standard picture of public-key encryption and raise questions about post-compromise safety, delegated access control, and scalable decryption.

This project brings together a group of related directions in modern encryption theory. One line studies incompressibility, where an attacker should not be able to keep only a tiny summary of a ciphertext and still benefit from a future key exposure. Another studies identity-based and hierarchical encryption, where secret keys are derived from identities and secret-key capabilities can be delegated across levels of authority. A third studies batch decryption, where many ciphertexts must be handled efficiently without weakening security.

Taken together, these directions ask how encryption should behave in realistic long-term systems: when keys may be revealed later, when access rights are structured, and when decryption work must scale. The common goal is to design encryption that remains meaningful under stronger functionality and stronger threat models than the classical baseline.

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
