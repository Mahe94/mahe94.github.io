---
layout: page
title: Incompressible Cryptography
description: Cryptographic systems where ciphertexts cannot be meaningfully compressed
img: assets/img/incomp.png
importance: 1
category: Ongoing Projects
permalink: /projects/incompressible-cryptography/
parent_project: advanced-encryption
related_publications: true
bibliography_query: "@*[project_incompressible=true]"
---

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/incomp.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## Introduction

Encryption is usually explained as a way to make information unreadable without a secret key. That protection matters when someone steals an encrypted file, but the story may continue long after the theft. An attacker can save the file and wait for a key to be exposed through a later compromise. For information kept over long periods, the amount of data an attacker can retain becomes an important part of the problem.

Imagine an attacker who briefly gains access to a large collection of encrypted records but cannot carry away or store everything. The attacker might try to keep a small summary that will become useful once a secret key is obtained. Ordinary confidentiality does not directly answer how much information must be saved before that future exposure. Incompressible cryptography makes this storage question part of the security guarantee.

The aim is to create cryptographic objects for which retaining too little information prevents an attacker from recovering the protected content later, even after receiving specified secret information. Here, compression means any strategy for keeping a shorter useful representation, including one designed specifically for the attack. The guarantee depends on the storage bound and on what is subsequently revealed. It does not prevent an attacker who can retain all the necessary data from using a later key leak.

My work studies how this idea fits with more demanding forms of encryption. In **functional encryption**, for example, a key may reveal a particular calculation on a message rather than the entire message. One can think of allowing a calculation of a total without granting access to every underlying record. This changes what an attacker might want to preserve and what protection should mean when different keys reveal different information.

I also investigate how incompressibility interacts with partial leakage of secrets and with messages that depend on encryption keys themselves. Related work on leakage-resilient encryption asks how protection can survive these exposures. Across these settings, the project develops constructions and identifies limitations, with the goal of understanding precisely when an attacker's limited storage can contribute to security.

## Core Questions

- How much information must an attacker retain before a key is exposed to recover protected data afterward?
- Can storage-based protection survive partial leakage of secret information?
- What changes when encrypted messages themselves depend on secret keys?
- Can incompressibility protect data when different keys reveal different functions of that data?

## Main Results

- **Incompressible Encryption Beyond CPA/CCA Security (2025):** Extends incompressibility beyond the conventional CPA/CCA setting and studies how the guarantee behaves under stronger encryption security requirements.
- **Incompressible Functional Encryption (2025):** Formulates and constructs incompressibility for functional encryption, where exposed keys reveal functions of the plaintext rather than the plaintext itself.
- **Leakage-Resilient Incompressible Cryptography: Constructions and Barriers (2024):** Develops leakage-resilient constructions and identifies barriers governing the simultaneous treatment of leakage and incompressibility.
- **Leakage-Resilient Key-Dependent Message Secure Encryption Schemes (2024):** Studies encryption combining leakage resilience with KDM security. This related work addresses exposure of secret information and encryption of key-dependent messages, complementing the project's work on incompressibility.
