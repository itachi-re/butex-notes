---
title: "Residue"
course: "MATH-103"
course_title: "Complex Variables"
unit: "complex_variables"
topic_number: 20
credit: 3
hours_per_week: 3
total_hours: 45
level: 1
term: 1
course_type: "theory"
date: "2026-08-31"
tags:
  - complex-variables
  - mathematics
  - complex-analysis
  - residue
---

# 1. Overview

The residue of f at an isolated singularity a is the specific Laurent coefficient c₋₁, which single-handedly determines the value of ∮ f(z)dz around a small loop enclosing a. It builds on [singular point and pole](19_singular_point_and_pole.md) and is the object summed over in [Cauchy's residue theorem](21_cauchys_residue_theorem.md).

---

# 2. Definitions & Key Terms

1. **Residue at a (Res(f, a))** — the coefficient c₋₁ of 1/(z−a) in the Laurent expansion of f about a.
   > Plain-English: the one specific number in the Laurent series that "survives" integration around a small loop and captures the whole singularity's contribution.

---

# 3. Core Content

### A. Definition / Theorem

If f(z) = Σₙ cₙ(z−a)ⁿ is the Laurent expansion of f in a punctured neighborhood of a, then:

```
Res(f, a) = c₋₁
```

**Simple pole formula:** if f has a simple pole (order 1) at a:

```
Res(f, a) = lim(z→a) (z−a) f(z)
```

**Order-m pole formula:** if f has a pole of order m at a:

```
Res(f, a) = (1/(m−1)!) lim(z→a) d^(m−1)/dz^(m−1) [(z−a)ᵐ f(z)]
```

### B. Formula

```
Res(f, a) = c₋₁                                              (definition)
Res(f, a) = lim(z→a) (z−a)f(z)                                (simple pole)
Res(f, a) = (1/(m−1)!) lim(z→a) d^(m−1)/dz^(m−1)[(z−a)ᵐf(z)]  (pole of order m)
```

### C. Derivation — Why c₋₁ Is the Special Coefficient

Integrate the Laurent series termwise around a small positively oriented circle Cᵣ: |z−a|=r:

```
∮_{Cᵣ} f(z) dz = Σₙ cₙ ∮_{Cᵣ} (z−a)ⁿ dz
```

Parameterize z−a = re^(iθ), dz=ire^(iθ)dθ:

```
∮_{Cᵣ} (z−a)ⁿ dz = ∫₀^(2π) rⁿe^(inθ)·ire^(iθ) dθ = ir^(n+1) ∫₀^(2π) e^(i(n+1)θ) dθ
```

For n ≠ −1, ∫₀^(2π) e^(i(n+1)θ) dθ = 0 (a full period of a nonconstant complex exponential integrates to zero). For n = −1, the integrand is e^(i·0)=1, so ∫₀^(2π) 1 dθ = 2π, giving ∮_{Cᵣ}(z−a)⁻¹dz = i·2π = 2πi. So EVERY term except the n=−1 term integrates to zero, leaving:

```
∮_{Cᵣ} f(z) dz = c₋₁ · 2πi = 2πi · Res(f,a)
```

**Simple-pole formula derivation:** if f has a simple pole, f(z) = c₋₁/(z−a) + c₀ + c₁(z−a) + …, so (z−a)f(z) = c₋₁ + c₀(z−a) + … . Taking the limit as z→a kills every term except c₋₁, giving lim(z→a)(z−a)f(z) = c₋₁ = Res(f,a).

### D. Geometric Interpretation

The residue measures how much "circulation" a small loop around the singularity picks up — every other Laurent term contributes a net-zero rotation over a full loop, but the 1/(z−a) term alone accumulates a nonzero total, exactly 2πi times its coefficient.

### E. Conditions

* The simple-pole formula requires the pole to have order exactly 1; using it on a higher-order pole (without the extra derivative/factorial machinery) gives an incorrect (often 0 or ∞) result.
* The order-m formula requires knowing m in advance (from topic 19's classification) and computing an (m−1)th derivative — practical mainly for small m.

### F. Example

For f(z)=1/(z−3), a simple pole at z=3: Res(f,3) = lim(z→3)(z−3)·1/(z−3) = 1.

---

# 4. Worked Examples

### Example 1 — 🟢 Foundational

**Problem:** Find Res(f, 2) for f(z) = 1/[(z−2)(z+5)].

**Solution**

Step 1: z=2 is a simple pole (the factor (z+5) is nonzero and analytic there).

Step 2: Res(f,2) = lim(z→2) (z−2)·1/[(z−2)(z+5)] = lim(z→2) 1/(z+5) = 1/7.

**Answer:** Res(f,2) = 1/7.

### Example 2 — 🟡 Intermediate

**Problem:** Find Res(f, 0) for f(z) = e^z / z³ (pole of order 3 at z=0).

**Solution**

Step 1: Use the order-m formula with m=3: Res(f,0) = (1/2!) lim(z→0) d²/dz² [z³·e^z/z³] = (1/2) lim(z→0) d²/dz²[e^z].

Step 2: d²/dz²[e^z] = e^z. lim(z→0) e^z = 1.

**Answer:** Res(f,0) = 1/2.

### Example 3 — 🔴 Exam-Level

**Problem:** Find Res(f, i) for f(z) = z/[(z²+1)²], a pole of order 2 at z=i (since z²+1=(z−i)(z+i), so (z²+1)²=(z−i)²(z+i)²).

**Solution**

Step 1: m=2. Write g(z) = z/(z+i)², so f(z)=g(z)/(z−i)².

Step 2: Res(f,i) = (1/1!) lim(z→i) d/dz[g(z)] = lim(z→i) g′(z).

Step 3: g(z)=z(z+i)⁻². By the product/chain rule: g′(z) = (z+i)⁻² + z·(−2)(z+i)⁻³ = (z+i)⁻² − 2z(z+i)⁻³.

Step 4: At z=i: (i+i)=2i, so (2i)⁻²=1/(−4)=−1/4, and (2i)⁻³=1/((2i)³)=1/(−8i)=i/8. So g′(i) = −1/4 − 2i·(i/8) = −1/4 − i²/4 = −1/4 − (−1)/4 = −1/4+1/4 = 0.

**Answer:** Res(f, i) = 0.

---

# 5. Applications

* The single computational input needed for the residue theorem (topic 21), which evaluates whole contour integrals from a sum of residues.
* Used to evaluate real improper integrals via contour integration (topic 22), the capstone application of this unit.

---

# 6. Diagram / Visual

```mermaid
graph LR
    Laurent["Laurent series Σcₙ(z-a)ⁿ"] -->|"integrate term by term around small loop"| Cancel["all terms except n=-1 vanish"]
    Cancel --> Result["∮f dz = 2πi·c₋₁ = 2πi·Res(f,a)"]
```

Every power of (z−a) except the exact power −1 integrates to zero around a small loop — the residue is precisely the coefficient that survives.

---

# 7. Common Mistakes

- ❌ **Mistake:** Using the simple-pole formula lim(z→a)(z−a)f(z) on a pole of order 2 or higher.
  ✅ **Correct:** For order m>1, use the full formula with the (m−1)th derivative and (m−1)! factor — the simple-pole shortcut only works for m=1.

- ❌ **Mistake:** Confusing the residue with the value of f at the singularity, or with the limit of f itself.
  ✅ **Correct:** The residue is a specific Laurent coefficient (c₋₁), not f(a) (which is typically undefined at a pole) nor lim(z→a)f(z) (which is typically infinite).

- ❌ **Mistake:** Forgetting to first correctly determine the pole's order before selecting a residue formula.
  ✅ **Correct:** Classify the singularity (topic 19) first; the correct residue formula depends on knowing m accurately.

---

# 8. Practice Problems

**P1 (Conceptual):** Why do all Laurent terms except n=−1 integrate to zero around a small circle centered at the singularity?

<details><summary>Solution</summary>
Because ∫₀^(2π) e^(i(n+1)θ) dθ = 0 whenever n+1≠0 (a nonconstant periodic complex exponential integrates to zero over a full period), and only n=−1 makes the exponent zero, giving a nonzero (constant-integrand) result.
</details>

**P2 (Computational):** Find Res(f, −1) for f(z) = 1/[(z+1)(z−4)].

<details><summary>Solution</summary>
Simple pole at z=−1. Res = lim(z→−1)(z+1)·1/[(z+1)(z−4)] = 1/(−1−4) = −1/5.
</details>

**P3 (Computational):** Find Res(f, 0) for f(z) = cosz/z² (pole of order 2 at 0).

<details><summary>Solution</summary>
m=2, g(z)=cosz. Res = (1/1!)lim(z→0) d/dz[cosz] = lim(z→0)(−sinz) = 0.
</details>

**P4 (Exam-style):** Find Res(f, 0) for f(z) = (e^z−1)/z² (pole of order 1, not 2, after checking for cancellation — determine the true order first).

<details><summary>Solution</summary>
e^z−1 = z + z²/2! + z³/3! + …, so (e^z−1)/z² = 1/z + 1/2! + z/3! + … — this is a simple pole (order 1) at z=0, not order 2 as the raw denominator might suggest, because the numerator vanishes to first order there too. Res(f,0) = coefficient of 1/z = 1.
</details>

**P5 (Exam-style):** Find Res(f, 2) for f(z) = z²/(z−2)³ (pole of order 3).

<details><summary>Solution</summary>
m=3, g(z)=z². Res = (1/2!)lim(z→2) d²/dz²[z²] = (1/2)·2 = 1 (since d²/dz²[z²]=2, a constant).
</details>

---

# 9. Summary

| Concept | Essential Result | Condition |
|---|---|---|
| Residue (definition) | Res(f,a) = c₋₁ | Laurent coefficient |
| Simple pole formula | Res(f,a) = lim(z→a)(z−a)f(z) | order-1 pole only |
| Order-m formula | Res(f,a) = (1/(m−1)!)lim d^(m−1)/dz^(m−1)[(z−a)ᵐf(z)] | order-m pole |
| Circle integral link | ∮_{small loop} f dz = 2πi·Res(f,a) | isolated singularity a |

With residues computable, the next topic states Cauchy's residue theorem, generalizing this small-loop result to any simple closed contour enclosing multiple singularities.

---

# 10. References

1. James Ward Brown & Ruel V. Churchill — Complex Variables and Applications
2. Schaum's Outline of Complex Variables
3. John B. Conway — Functions of One Complex Variable
4. E. T. Copson — An Introduction to the Theory of Functions of a Complex Variable
