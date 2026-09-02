---
title: "Cauchy's Integral Formula"
course: "MATH-103"
course_title: "Complex Variables"
unit: "complex_variables"
topic_number: 18
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
  - cauchys-integral-formula
---

# 1. Overview

Cauchy's integral formula expresses the value of an analytic function at an interior point entirely in terms of a contour integral around its boundary, and its derivative form shows analytic functions are automatically infinitely differentiable. It builds directly on the [Cauchy-Goursat theorem](17_cauchy_goursat_theorem.md) and is the key tool for classifying [singular points and poles](19_singular_point_and_pole.md).

---

# 2. Definitions & Key Terms

1. **Cauchy's Integral Formula** — a formula recovering f(a) from a contour integral of f(z)/(z−a) around a curve enclosing a.
   > Plain-English: knowing f only on the boundary of a region completely determines its value at every interior point.

---

# 3. Core Content

### A. Definition / Theorem

**Theorem.** If f is analytic on and inside a simple closed contour C (positively oriented), and a is any point inside C:

```
f(a) = (1 / 2πi) ∮_C f(z)/(z − a) dz
```

**Derivative (extended) form:**

```
f⁽ⁿ⁾(a) = (n! / 2πi) ∮_C f(z)/(z − a)ⁿ⁺¹ dz
```

### B. Formula

```
f(a) = (1 / 2πi) ∮_C f(z)/(z−a) dz
f⁽ⁿ⁾(a) = (n! / 2πi) ∮_C f(z)/(z−a)ⁿ⁺¹ dz
```

### C. Derivation / Proof (base formula, via contour deformation and a limiting argument)

**Step 1 — Deform C to a small circle around a.** Since f(z)/(z−a) is analytic everywhere in the interior of C except at z=a, use the same deformation argument sketched in topic 17's Practice P5: replace C by a small positively oriented circle Cᵣ: |z−a|=r (r small enough to lie inside C), without changing the value of the integral:

```
∮_C f(z)/(z−a) dz = ∮_{Cᵣ} f(z)/(z−a) dz
```

**Step 2 — Parameterize Cᵣ.** Let z = a + re^(iθ), 0≤θ≤2π, so dz = ire^(iθ)dθ, and z−a = re^(iθ):

```
∮_{Cᵣ} f(z)/(z−a) dz = ∫₀^(2π) [f(a+re^(iθ))/re^(iθ)]·ire^(iθ) dθ = i∫₀^(2π) f(a+re^(iθ)) dθ
```

**Step 3 — Let r → 0.** Since f is continuous at a, f(a+re^(iθ)) → f(a) uniformly in θ as r→0, so:

```
i∫₀^(2π) f(a+re^(iθ)) dθ → i∫₀^(2π) f(a) dθ = i·f(a)·2π = 2πi·f(a)
```

But the left side (Step 1's integral) does not depend on r at all (it equals ∮_C, a fixed number), so it must already equal this limiting value: ∮_C f(z)/(z−a) dz = 2πi·f(a), giving f(a) = (1/2πi)∮_C f(z)/(z−a)dz.

(The derivative form follows by repeatedly differentiating both sides with respect to a under the integral sign — a standard but technical extension, stated here without full proof.)

### D. Geometric Interpretation

The formula says the value of an analytic function at any interior point is an "average" (weighted by 1/(z−a)) of its values on the boundary — a strong rigidity property with no real-variable analogue, and the direct reason analytic functions are so much more constrained than merely-differentiable real functions.

### E. Conditions

* f must be analytic on and inside C (the simple closed contour, positively oriented), and a must be strictly inside C (not on C, where the integral is undefined, nor outside, where the formula does not apply the same way — see Practice P4).
* The derivative form shows f⁽ⁿ⁾(a) exists for every n, for a analytic function — i.e. analytic functions are automatically infinitely differentiable, a fact used implicitly back in topic 13's harmonic-function proof.

---

# 4. Worked Examples

### Example 1 — 🟢 Foundational

**Problem:** Evaluate ∮_C e^z/(z−1) dz where C is the circle |z|=2 (counterclockwise).

**Solution**

Step 1: f(z)=e^z is entire; a=1 lies inside |z|=2 (|1|=1<2).

Step 2: By Cauchy's integral formula, ∮_C e^z/(z−1) dz = 2πi·f(1) = 2πi·e.

**Answer:** 2πi·e.

### Example 2 — 🟡 Intermediate

**Problem:** Evaluate ∮_C cos z / z² dz where C is the circle |z|=1, using the derivative form with n=1.

**Solution**

Step 1: f(z)=cos z is entire, a=0 (inside |z|=1). The integrand matches f(z)/(z−a)ⁿ⁺¹ with n+1=2, so n=1.

Step 2: f⁽¹⁾(a) = (1!/2πi)∮_C f(z)/(z−0)² dz ⟹ ∮_C cosz/z² dz = 2πi·f′(0).

Step 3: f′(z)=−sinz, f′(0)=0.

**Answer:** ∮_C cosz/z² dz = 2πi·0 = 0.

### Example 3 — 🔴 Exam-Level

**Problem:** Evaluate ∮_C z/[(z−1)(z+3)] dz where C is the circle |z|=2 (counterclockwise), by first isolating the singularity inside C.

**Solution**

Step 1: Singularities at z=1 (inside |z|=2, since |1|=1<2) and z=−3 (outside, since |−3|=3>2).

Step 2: Rewrite so that only the inside singularity's factor remains in the denominator: z/[(z−1)(z+3)] = [z/(z+3)] / (z−1), with f(z)=z/(z+3) analytic inside and on C (its only singularity, z=−3, is outside C).

Step 3: By Cauchy's integral formula, ∮_C f(z)/(z−1) dz = 2πi·f(1) = 2πi·[1/(1+3)] = 2πi/4.

**Answer:** ∮_C z/[(z−1)(z+3)] dz = πi/2.

---

# 5. Applications

* Directly derives the residue theorem (topic 21) when there are multiple singularities inside C.
* Proves analytic functions have convergent power (Taylor) series expansions and are infinitely differentiable — foundational results used implicitly whenever a Laurent expansion is invoked (topic 19–20).

---

# 6. Diagram / Visual

```mermaid
graph LR
    Boundary["Boundary C: values of f known here"] -->|"Cauchy's integral formula"| Interior["f(a) at any interior point a"]
```

Picture the values of f on the boundary circle C completely determining f at any point strictly inside — a strong "action at a distance" property unique to analytic functions.

---

# 7. Common Mistakes

- ❌ **Mistake:** Applying the formula when a lies outside C (or on C).
  ✅ **Correct:** a must be strictly interior to C; if a is outside, the relevant integral is instead 0 (by Cauchy-Goursat, since f(z)/(z−a) is then analytic throughout the interior).

- ❌ **Mistake:** Forgetting the n! factor in the derivative form.
  ✅ **Correct:** f⁽ⁿ⁾(a) = (n!/2πi)∮_C f(z)/(z−a)ⁿ⁺¹ dz — the n! is essential, not optional.

- ❌ **Mistake:** Applying the formula directly to an integrand with MULTIPLE singularities inside C without first isolating one.
  ✅ **Correct:** Cauchy's integral formula (as stated) handles exactly one interior singularity at a time; multiple interior singularities require the residue theorem (topic 21) or a partial-fraction / contour-splitting approach.

---

# 8. Practice Problems

**P1 (Conceptual):** Why does Cauchy's integral formula imply analytic functions are infinitely differentiable, unlike general real-differentiable functions?

<details><summary>Solution</summary>
The formula expresses f(a) as an integral where a appears only in the denominator (z−a); differentiating under the integral sign with respect to a can be repeated indefinitely (each differentiation just raises the power in the denominator and introduces a factorial), producing f⁽ⁿ⁾(a) for every n — a luxury not available for general real-valued differentiable functions, which need not have even a second derivative.
</details>

**P2 (Computational):** Evaluate ∮_C sinz/(z−π/2) dz where C is |z|=2.

<details><summary>Solution</summary>
a=π/2≈1.57, inside |z|=2. By the formula: 2πi·sin(π/2) = 2πi·1 = 2πi.
</details>

**P3 (Computational):** Evaluate ∮_C z²/(z+2)³ dz where C is |z|=3, using the derivative form.

<details><summary>Solution</summary>
a=−2 (inside |z|=3). f(z)=z², n+1=3 ⟹ n=2. f⁽²⁾(a)=(2!/2πi)∮ f(z)/(z−a)³dz. f′(z)=2z, f″(z)=2. So ∮ = (2πi/2!)·f″(−2) = πi·2 = 2πi.
</details>

**P4 (Exam-style):** Explain (without full proof) why ∮_C f(z)/(z−a) dz = 0 when a is OUTSIDE the simple closed contour C, assuming f is analytic on and inside C.

<details><summary>Solution</summary>
If a is outside C, then f(z)/(z−a) is analytic everywhere on and inside C (the only potential singularity, at z=a, is not in that region), so Cauchy-Goursat (topic 17) applies directly to the whole integrand, giving 0.
</details>

**P5 (Exam-style):** Use Cauchy's integral formula to evaluate ∮_C e^(2z)/(z−1)² dz where C is |z|=3, using the derivative form (n=1).

<details><summary>Solution</summary>
f(z)=e^(2z), a=1 (inside |z|=3), n+1=2 ⟹ n=1. f′(z)=2e^(2z), f′(1)=2e². ∮ = (2πi/1!)·f′(1) = 2πi·2e² = 4πi e².
</details>

---

# 9. Summary

| Concept | Essential Result | Condition |
|---|---|---|
| Cauchy's integral formula | f(a) = (1/2πi)∮_C f(z)/(z−a) dz | f analytic on and inside C, a interior to C |
| Derivative form | f⁽ⁿ⁾(a) = (n!/2πi)∮_C f(z)/(z−a)ⁿ⁺¹ dz | same hypotheses |
| Consequence | f analytic ⟹ infinitely differentiable | at every interior point |

With this formula established, the next topics turn to functions that are NOT analytic at isolated points — singularities and poles — where the formula's denominator structure motivates the definition of a residue.

---

# 10. References

1. James Ward Brown & Ruel V. Churchill — Complex Variables and Applications
2. Schaum's Outline of Complex Variables
3. John B. Conway — Functions of One Complex Variable
4. E. T. Copson — An Introduction to the Theory of Functions of a Complex Variable
