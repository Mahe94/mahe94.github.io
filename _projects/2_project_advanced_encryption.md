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

Encryption turns readable information into a form that can be recovered only with the appropriate secret key. This basic idea supports private communication and secure storage, but the circumstances in which encrypted information is used can be complicated. A file may remain in an archive for years, responsibility for it may pass between people, and a service may need to handle thousands of encrypted records at once. Each situation raises questions that go beyond whether a single message is hidden at the moment it is sent.

Consider an organization storing confidential records. An attacker might copy some encrypted data and wait for a future key leak. Different departments may need the authority to grant access to different users. When records are ready to be released, the organization may need to authorize public decryption of a selected collection. These examples motivate distinct research problems involving storage, delegation, and controlled release. A precise security guarantee must describe both what the system allows and what an attacker can do.

My work on **Incompressible Cryptography** examines the first of these concerns. If an attacker has limited storage before a key is exposed, how much encrypted information must be retained to benefit from the exposure? The goal is to make a short stored representation insufficient for the attacker's later purpose. This direction also studies how the guarantee interacts with partial leakage of secrets and with encryption that allows keys to reveal selected functions of a message.

My work on **Hierarchical & Identity-Based Encryption** concerns the organization of access. An identifier, such as an email address, can be used for encryption, while a trusted authority issues secret keys. A hierarchy allows that authority to delegate key generation to other levels of an organization. I study how to prove security when attackers choose their targets over time and when secret information may be exposed during a larger protocol.

**Batch Decryption** studies how an authority can publish a short key that allows anyone to decrypt a selected collection of ciphertexts. It examines how to make this release compact, support different patterns of authorization, and protect messages outside the authorized batches. Across all three directions, the approach is to make the desired protection precise, investigate constructions that achieve it, and understand their limitations. The subprojects below explain the individual problems, results, and supporting papers.

## Subprojects

<div class="projects">
  <div class="grid">
    {% assign subprojects = site.projects | where: "parent_project", page.project_key | sort: "importance" %}
    {%- for project in subprojects -%}
      {% include projects.html %}
    {%- endfor -%}
  </div>
</div>
