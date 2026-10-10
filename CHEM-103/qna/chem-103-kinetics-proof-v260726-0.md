---
title: "Proof: SN1 & E1 are First Order; SN2 & E2 are Second Order"
course: CHEM-103
topic: Organic Reactions — Nucleophilic Substitution & Elimination Kinetics
type: Q&A
tags: [SN1, SN2, E1, E2, reaction-kinetics, rate-law, mechanism]
---

![Course](https://img.shields.io/badge/Course-CHEM--103-blue)
![Topic](https://img.shields.io/badge/Topic-Reaction%20Kinetics-orange)
![Status](https://img.shields.io/badge/Status-Exam%20Ready-brightgreen)

# Q. Prove that SN1 and E1 are first order reactions, while SN2 and E2 are second order reactions.

---

## Background — What "order of reaction" means here

The **order of a reaction** is determined experimentally from the rate law, based on **which species appear in the rate-determining step (RDS)** — not from the overall stoichiometric equation. This is the key idea the whole proof rests on:

> Order of reaction = number of molecules involved in the **slowest (rate-determining) step**, as reflected in the experimental rate law.

---

## 1. SN1 — First Order Nucleophilic Substitution

**Mechanism (2 steps):**

**Step 1 (slow, RDS):** The C–X bond breaks heterolytically → forms a **carbocation** intermediate. This step involves only the substrate (R–X), not the nucleophile.

$$R-X \xrightarrow{\text{slow}} R^+ + X^-$$

**Step 2 (fast):** The nucleophile attacks the carbocation rapidly.

$$R^+ + Nu^- \xrightarrow{\text{fast}} R-Nu$$

**Rate law:**
Since the rate of any multi-step reaction depends only on the **slowest step**, and Step 1 involves only R–X:

$$\text{Rate} = k[R-X]$$

The nucleophile concentration does **not** appear in the rate expression → depends on **one species only** → **First order overall (unimolecular, SN1)**.

<details>
<summary><strong>Example</strong></summary>

$$(CH_3)_3C-Br \xrightarrow{\text{slow}} (CH_3)_3C^+ + Br^-$$

$$(CH_3)_3C^+ + OH^- \xrightarrow{\text{fast}} (CH_3)_3C-OH$$

$$\text{Rate} = k[(CH_3)_3C-Br]$$

*(tert-Butyl bromide hydrolysis — a classic textbook SN1 example. Rate is unaffected even if [OH⁻] is doubled.)*

</details>

---

## 2. E1 — First Order Elimination

**Mechanism (2 steps) — same first step as SN1, since both proceed via a carbocation:**

**Step 1 (slow, RDS):** Ionization of R–X to form carbocation.

$$R-X \xrightarrow{\text{slow}} R^+ + X^-$$

**Step 2 (fast):** A base removes a β-hydrogen, forming the alkene (E1 and SN1 are competing pathways from the same carbocation intermediate).

$$R^+ \xrightarrow{\text{fast, } -H^+} \text{Alkene}$$

**Rate law:**
Again, the RDS involves only the substrate:

$$\text{Rate} = k[R-X]$$

→ **First order overall (unimolecular, E1)**.

<details>
<summary><strong>Example</strong></summary>

$$(CH_3)_3C-Br \xrightarrow{\text{slow}} (CH_3)_3C^+ + Br^-$$

$$(CH_3)_3C^+ \xrightarrow{\text{fast, } -H^+} (CH_3)_2C=CH_2$$

$$\text{Rate} = k[(CH_3)_3C-Br]$$

*(Same tert-butyl bromide substrate — under conditions favoring elimination, e.g. weak/hindered base, high temperature.)*

</details>

---

## 3. SN2 — Second Order Nucleophilic Substitution

**Mechanism (1 step, concerted):**
The nucleophile attacks the carbon **simultaneously** as the leaving group departs, via a single transition state (back-side attack, giving inversion of configuration — Walden inversion). There is **no intermediate**; bond breaking and bond forming happen together.

$$Nu^- + R-X \longrightarrow [Nu \cdots R \cdots X]^{\ddagger} \longrightarrow Nu-R + X^-$$

**Rate law:**
Since both the nucleophile **and** the substrate are involved in the single (and therefore rate-determining) step:

$$\text{Rate} = k[Nu^-][R-X]$$

Two species appear in the rate law → **Second order overall (bimolecular, SN2)**.

<details>
<summary><strong>Example</strong></summary>

$$OH^- + CH_3-Br \longrightarrow [HO \cdots CH_3 \cdots Br]^{\ddagger} \longrightarrow CH_3OH + Br^-$$

$$\text{Rate} = k[OH^-][CH_3Br]$$

*(Methyl bromide hydrolysis. Doubling [OH⁻] doubles the rate — direct experimental evidence of second order.)*

</details>

---

## 4. E2 — Second Order Elimination

**Mechanism (1 step, concerted):**
A strong base removes a β-hydrogen **at the same time** the leaving group departs from the adjacent carbon, forming the alkene directly through a single transition state (anti-periplanar arrangement required).

$$B^- + H-C-C-X \longrightarrow [B \cdots H \cdots C=C \cdots X]^{\ddagger} \longrightarrow BH + \text{Alkene} + X^-$$

**Rate law:**
Both the base and the substrate participate in this single concerted step:

$$\text{Rate} = k[B^-][R-X]$$

→ **Second order overall (bimolecular, E2)**.

<details>
<summary><strong>Example</strong></summary>

$$C_2H_5O^- + CH_3CH_2Br \longrightarrow [C_2H_5O \cdots H-CH_2-CH_2 \cdots Br]^{\ddagger} \longrightarrow C_2H_5OH + CH_2=CH_2 + Br^-$$

$$\text{Rate} = k[C_2H_5O^-][CH_3CH_2Br]$$

*(Ethyl bromide + sodium ethoxide — classic E2 dehydrohalogenation.)*

</details>

---

## Summary Table (write this in exam for full marks)

| Reaction | Mechanism type | Rate-determining step | Rate law | Order |
|---|---|---|---|---|
| SN1 | Stepwise (via carbocation) | Ionization of R–X only | Rate = k[R–X] | 1st order |
| E1 | Stepwise (via carbocation) | Ionization of R–X only | Rate = k[R–X] | 1st order |
| SN2 | Concerted (single step) | Nu⁻ attacks + X⁻ leaves together | Rate = k[Nu⁻][R–X] | 2nd order |
| E2 | Concerted (single step) | Base removes H⁺ + X⁻ leaves together | Rate = k[B⁻][R–X] | 2nd order |

**Conclusion:**
SN1 and E1 are first order because their **rate-determining step (carbocation formation) involves only the substrate**, independent of nucleophile/base concentration. SN2 and E2 are second order because they proceed through a **single concerted transition state involving both the substrate and the nucleophile/base simultaneously**, so both concentrations appear in the rate law.
