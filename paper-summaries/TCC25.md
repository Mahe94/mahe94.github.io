---
layout: paper-summary
title: "Separating Pseudorandom Codes from Local Oracles"
paper_authors: "Nico Dottling, Anne Muller, Mahesh Sreekumar Rajasree"
venue: "TCC 2025"
permalink: /paper-summaries/TCC25/
---

# Paper Summary: Separating Pseudorandom Codes from Local Oracles

## Everyone

Modern digital systems often need two properties at the same time.

First, they need **robustness**. This means that even if some information is slightly damaged, changed, or corrupted, the original information should still be recoverable. This is the goal of error-correcting codes. For example, when a message is sent over a noisy channel, some bits may flip during transmission. An error-correcting code adds carefully chosen redundancy so that the receiver can still recover the original message.

Second, they need **secrecy or hidden structure**. In cryptography, we often want strings that look completely random to anyone who does not have the secret key. Such strings are called pseudorandom: they are generated using some hidden structure, but to an outsider they look like random noise.

A **pseudorandom code** combines both of these goals. It is an error-correcting code whose codewords look random to outsiders. Someone with the secret key can decode the message even after some noise is added. Someone without the secret key should not even be able to tell whether a string is a real codeword or just a uniformly random string.

This combination is surprisingly powerful. One important motivation comes from **watermarking AI-generated content**. Suppose we want an AI model to produce text containing a hidden watermark. The watermark should not noticeably change the quality of the text. It should be invisible to ordinary users. But later, someone with the secret key should be able to detect the watermark, even if the text has been slightly edited. Pseudorandom codes provide a natural mathematical tool for this kind of task: they hide the watermark while still allowing robust detection.

The main question of this paper is:

> Can we build pseudorandom codes from very basic cryptographic assumptions, such as one-way functions, random oracles, or trapdoor permutations?

This is a foundational question. In cryptography, one-way functions are among the weakest and most central assumptions. Many cryptographic objects can be built from them. If pseudorandom codes could also be built from such minimal assumptions, that would mean pseudorandom codes are not much harder to obtain than ordinary pseudorandomness.

The paper shows that, in an important binary setting, the answer is **no** for a broad class of black-box constructions.

Here, “binary” means that codewords are strings of bits. This is the most natural setting for many cryptographic and communication tasks. A “black-box construction” means a construction that uses an underlying primitive only through input-output access, without exploiting its internal structure. This is a standard way to formalize generic constructions in cryptography.

The paper proves that there is no black-box construction of binary pseudorandom codes that can tolerate a constant amount of random noise from a broad class of oracles called **local oracles**. This class includes random oracles and trapdoor permutation oracles, which are among the most common idealized ways of modeling cryptographic hardness.

The intuition is the following.

A pseudorandom code must correct many possible noisy versions of the same codeword. If a codeword can tolerate many errors, then many nearby corrupted strings must all decode to the same message. This creates a large “cloud” of related inputs around each codeword.

But local oracles do not naturally have such large clouds of related inputs. For a local oracle, after seeing a small number of query-answer pairs, only a small number of other queries become meaningfully related to them. Random oracles are the clearest example: if you query a random oracle at one point, that tells you essentially nothing about its value at almost every other point.

So the paper identifies a mismatch:

> Robust decoding requires many related noisy variants, but local oracles only provide a limited amount of related structure.

This mismatch is the reason why binary pseudorandom codes cannot be obtained in a fully black-box way from such oracles.

The paper also gives a complementary positive result. It shows that if we move away from binary alphabets and allow very large alphabets, then pseudorandom codes can be constructed from one-way functions. In other words, the impossibility result is not saying that pseudorandom codes are impossible in general. It says that the binary case is fundamentally harder for black-box constructions from local sources of cryptographic hardness.

The broader message of the paper is that pseudorandom codes seem to require assumptions that already contain some coding-theoretic structure. This helps explain why known constructions of pseudorandom codes rely on assumptions such as McEliece-type assumptions, Learning Parity with Noise, planted XOR-type assumptions, or local weak pseudorandom functions. These assumptions are not arbitrary: they already contain some form of noise-resilience or hidden coding structure.

In simple terms, this paper says:

> To build a binary object that is both random-looking and error-correcting, ordinary black-box cryptographic hardness is not enough. One needs a primitive that already has some form of robust, code-like behavior.

This gives a clearer understanding of why pseudorandom codes are difficult to construct and why their existing constructions rely on stronger, coding-related assumptions.

---

## Researcher

This paper studies the assumption complexity of **pseudorandom codes** (PRCs), recently introduced by Christ and Gunn. A PRC is an error-correcting code whose codewords are computationally indistinguishable from uniformly random strings. The decoder uses a secret key and should recover the message even after the codeword is corrupted by noise, while an adversary without the key should not distinguish codewords from random strings.

The paper focuses on secret-key PRCs over the binary alphabet, with robustness against a Bernoulli noise channel. The central question is whether such PRCs can be built in a black-box way from generic cryptographic assumptions that are not themselves coding-theoretic.

The answer is negative for a broad class of oracles called **local oracles**.

The class of local oracles is intended to capture oracles whose query-answer behavior does not create large noise-resilient neighborhoods. Informally, after an adversary has collected a polynomial number of query-answer pairs, only polynomially many further queries are meaningfully related to the collected information. For all other queries, the oracle’s answer can be simulated consistently without knowing the previous query history. Random oracles satisfy this property. The paper also shows that trapdoor permutation oracles satisfy it.

The main separation theorem says that, for any constant noise parameter, there is no black-box construction of binary secret-key PRCs robust to the corresponding Bernoulli channel from any local oracle. As immediate consequences, there is no such black-box construction from random oracles or trapdoor permutations.

Conceptually, the result says that binary PRCs cannot be obtained from generic one-wayness or trapdoor structure by black-box means. A construction must use some non-local structure, which is precisely what coding-theoretic assumptions provide.

The proof follows the Impagliazzo–Rudich style of black-box separation. A candidate construction is given oracle access to some oracle `O`. The adversary is computationally unbounded but restricted to making only polynomially many oracle queries. Therefore, if the construction is secure, its security must come from the oracle itself. The goal is to show that every such candidate construction can be distinguished from random using only polynomially many oracle queries.

A key difficulty is that the decoder may query the oracle. If the decoder made no oracle queries, the attack would be straightforward: the adversary could brute-force over possible secret keys and test whether some key decodes many challenge strings correctly. Random strings should not admit such a key, while genuine codewords should.

The main technical challenge is to remove, or “compile out,” the decoder’s oracle queries.

For this, the paper studies the query function of the decoder. Given a secret key and a received word, the decoder computes some oracle query. If the received word is a noisy version of a codeword, then for the decoder to be correct, the query behavior must itself be sufficiently stable under noise. Otherwise, the oracle query made by the noisy received word would be unrelated to the encoder’s oracle queries, and the oracle answer would be unpredictable from the encoder’s perspective. In that case, the decoder’s oracle query could essentially be simulated locally, meaning the oracle was not really helping.

This leads to a structural question about functions on the Boolean cube:

> How often can a query function map many noisy variants of a point to a globally rare query value?

The paper formalizes this using **global weights** and **local weights**. For a query function `Quer`, the global weight of a query `q` is the probability that `Quer` outputs `q` on a uniformly random input. The local weight of `q` around a point `x` is the probability that `Quer(x + e)` outputs `q` when `e` is Bernoulli noise.

A point is called exceptional if there exists a query that has small global weight but large local weight around that point. Such a point behaves like a local center of error correction for the query function: many noisy variants around the point collapse to the same rare query.

The paper proves that exceptional points are rare under the uniform distribution. The crucial analytic tool is the **Bonami–Beckner hypercontractivity theorem** on the Boolean hypercube. Hypercontractivity bounds higher moments of noisy Boolean functions in terms of lower moments of the original function. In this setting, it implies that a query cannot be globally rare but locally frequent around too many points.

The next step is to transfer this rarity statement from uniformly random strings to pseudorandom codewords. If codewords were exceptional much more often than random strings, then exceptionality itself would distinguish codewords from uniform strings, contradicting pseudorandomness. Hence, assuming the candidate PRC is secure, codewords are also rarely exceptional.

This enables the compilation argument. For a fixed decoder query function, the attacker learns all globally heavy oracle queries. There can be only polynomially many such queries if the threshold is inverse-polynomial. These query-answer pairs are stored in an augmented secret key. When the decoder later wants to query the oracle:

1. If the query is globally heavy, the augmented decoder answers it using the learned table.
2. If the query is globally light and unrelated to the encoder’s oracle queries, the answer can be simulated using locality of the oracle.
3. The only problematic case is a globally light query that is related to the encoder’s previous oracle queries.

The probability of the problematic case is bounded using the non-exceptionality of the codeword and the locality of the oracle. Since local oracles have only polynomially many related queries, and each light query has small local weight around a non-exceptional codeword, the total probability of failure is small.

This compiles out one oracle query. Repeating the argument removes all decoder oracle queries, increasing the augmented key size and correctness error only by controlled polynomial amounts.

Once the decoder is made oracle-free, the final distinguishing attack is conceptually simple. The adversary queries the challenge oracle on many random bits and receives strings. It adds Bernoulli noise to these strings and checks whether there exists an augmented key that decodes noticeably more than a random fraction of them correctly. For genuine codewords, the correct augmented key works often by robustness. For uniformly random strings, no key should decode many independently labeled samples correctly, by a Chernoff bound and a union bound over all augmented keys.

Thus the existence of a black-box PRC construction from a local oracle leads to a distinguisher, contradicting pseudorandomness.

The paper also proves a positive result for large alphabets. Over alphabets of size `2^λ`, the authors construct secret-key PRCs from one-way functions. The construction uses:

- a secret-key encryption scheme with pseudorandom ciphertexts,
- a Reed–Solomon code over a large field,
- and a pseudorandom permutation applied symbol-wise.

The encryption hides the message, the Reed–Solomon code provides error correction, and the pseudorandom permutation hides the algebraic structure of the Reed–Solomon codeword. A hybrid argument establishes pseudorandomness: first replace the ciphertexts by random strings using the security of the encryption scheme, then replace the PRP outputs by uniform symbols using PRP security and the low collision probability over the large alphabet.

This positive result shows that the binary-alphabet restriction is essential. The impossibility is not a blanket impossibility for all PRCs, but rather a statement about binary PRCs with constant noise tolerance and black-box access to local cryptographic oracles.

The main conceptual contribution is the identification of **locality** as a barrier to constructing binary PRCs. Random oracles and trapdoor permutations are local; ideal PRC oracles are not local, because one encoded codeword induces exponentially many related decoding queries in its error ball. This explains why known PRC constructions rely on assumptions that are already coding-theoretic or noise-resilient in nature.

---

## Computer Scientist

This paper studies the relationship between **error correction**, **pseudorandomness**, and **black-box cryptographic constructions**.

An ordinary error-correcting code maps a message `m` to a codeword `c` so that `m` can still be recovered from a corrupted word `c + e`, provided the error `e` is not too large. A pseudorandom code additionally requires that the codeword `c` look computationally indistinguishable from a uniformly random string to anyone who does not know the secret key.

The object considered in the paper is a secret-key pseudorandom code

```text
PRC = (KeyGen, Encode, Decode).
