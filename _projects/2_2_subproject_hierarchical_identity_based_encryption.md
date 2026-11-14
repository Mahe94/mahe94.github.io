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

Before sending an encrypted message, a sender usually needs the recipient's public key and a reliable way to check that it belongs to the right person. Public keys can be shared openly; their corresponding secret keys enable decryption. Maintaining the connection between people and public keys is an important practical task, especially in an organization with many users and changing responsibilities.

**Identity-based encryption** offers another way to organize this process. A recognizable identifier, such as an email address, can serve as the recipient's public identity for encryption. A trusted authority uses a master secret to issue the corresponding decryption key. This shifts the responsibility for issuing keys to that authority, whose security and trustworthiness are central to the system.

A hierarchical version allows this responsibility to be delegated. For example, a university authority might authorize individual departments to issue keys within their own part of the organization, and a department could delegate further. Each level operates within an assigned branch of the hierarchy. The challenge is to ensure that receiving authority over one branch does not allow someone to read messages intended for unrelated branches.

My work studies security when an attacker can decide what to do as the attack unfolds. The attacker may obtain some users' keys, examine the available information, and only then select a target. Proving security in this adaptive setting is more demanding than proving it when the target is fixed at the beginning. Delegation makes the problem richer because keys at different levels of a hierarchy are related.

Another part of my work studies **non-committing encryption**, a tool used in security proofs for protocols where participants may be compromised during execution. Such proofs use a mathematical simulation of what an attacker sees. The simulation must remain consistent even when secret information is revealed later; non-committing encryption provides flexibility needed for this task. I investigate this property for identity-based encryption and, in related work, for attribute-based encryption, where access depends on satisfying a policy. Together, these directions explore how organized access to encrypted information can coexist with strong guarantees against evolving attacks.

## Core Questions

- Can delegated encryption remain secure when an attacker chooses the target identity after seeing other users' keys?
- How does the depth of an identity hierarchy affect the assumptions and efficiency needed for security?
- How can a security proof account for participants whose secrets are exposed partway through a protocol?
- How do these requirements extend from identities to policies expressed through attributes?

## Main Results

- **A Note on Adaptive Security in Hierarchical Identity-Based Encryption (2025):** Establishes and analyzes adaptive security for HIBE, focusing on the interaction between delegated secret keys and adaptive identity selection.
- **Non-Committing Identity Based Encryption: Constructions and Applications (2025):** Develops non-committing IBE and applications of its simulation guarantees to adaptive security.
- **Non-Committing Attribute and Identity Based Encryption: Constructions and Applications (2025 manuscript, updated 2026):** Extends the PKC 2025 work to encompass attribute-based and identity-based encryption, studying non-committing security for these access-control mechanisms.
