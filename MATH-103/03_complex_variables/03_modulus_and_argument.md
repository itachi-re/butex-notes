---
title: "Modulus and Argument"
course: "MATH-103"
course_title: "Complex Variables"
unit: "complex_variables"
topic_number: 03
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
  - modulus-argument
---

# 1. Overview

The modulus |z| measures the distance of z from the origin, and the argument arg z measures its direction. Both build on the [polar form](02_rectangular_and_polar_form.md) and set up the distinction with the single-valued [principal argument](04_principal_argument.md) in the next topic.

---

# 2. Definitions & Key Terms

1. **Modulus** — |z| = √(x²+y²), the nonnegative distance of z from the origin.
   > Plain-English: how far the point is from 0.

2. **Argument** — arg z = {θ : x = |z| cos θ, y = |z| sin θ}, a multivalued set of angles.
   > Plain-English: any angle that correctly points from the origin to z.

---

# 3. Core Content

### A. Definition / Theorem

For z ≠ 0, |z| is uniquely determined, but arg z is a set: if θ₀ is one valid angle, then arg z = {θ₀ + 2nπ : n ∈ ℤ}.

### B. Formula

```
|z| = √(x² + y²)
arg z = θ + 2nπ,   n ∈ ℤ,   where tan θ = y/x (quadrant-adjusted)
```

### C. Derivation

|z| follows directly from the Pythagorean distance formula applied to (x,y). The multivaluedness of arg z follows because cos and sin have period 2π: if (x,y) = (|z|cos θ, |z|sin θ) holds for some θ, it also holds for θ + 2nπ for every integer n, so infinitely many angles describe the same point.

### D. Geometric Interpretation

|z| is the length of the position vector for z; arg z is the (undirected-by-convention, but conventionally counterclockwise-positive) angle that vector makes with the positive real axis, understood as a whole equivalence class of angles differing by full rotations.

### E. Conditions

* |z| = 0 iff z = 0.
* arg z is undefined at z = 0 (no direction).
* |z₁z₂| = |z₁||z₂| and arg(z₁z₂) = arg z₁ + arg z₂ (mod 2π) — used heavily in [De Moivre's theorem](05_de_moivres_theorem.md).

### F. Example

For z = −3 + 4i: |z| = √(9+16) = 5; one value of arg z is π − arctan(4/3) (second quadrant), and all values are this plus 2nπ.

---

# 4. Worked Examples

### Example 1 — 🟢 Foundational

**Problem:** Find |z| for z = 6 − 8i.

**Solution**

Step 1: |z| = √(6² + (−8)²) = √(36+64) = √100.

**Answer:** |z| = 10.

### Example 2 — 🟡 Intermediate

**Problem:** Find all values of arg z for z = −2 − 2i.

**Solution**

Step 1: |z| = √(4+4) = 2√2. The point is in the third quadrant.

Step 2: Reference angle: arctan(2/2) = π/4. Third-quadrant angle: π + π/4 = 5π/4 (equivalently −3π/4).

**Answer:** arg z = 5π/4 + 2nπ, n ∈ ℤ (equivalently −3π/4 + 2nπ).

### Example 3 — 🔴 Exam-Level

**Problem:** If |z − 3| = |z + 3|, describe the set of points z geometrically and find Re(z).

**Solution**

Step 1: Let z = x + iy. |z−3|² = (x−3)²+y², |z+3|² = (x+3)²+y².

Step 2: Set equal: (x−3)² = (x+3)² ⟹ x²−6x+9 = x²+6x+9 ⟹ −6x = 6x ⟹ x = 0.

**Answer:** The set is the imaginary axis (Re(z) = 0) — the perpendicular bisector of the segment joining 3 and −3.

---

# 5. Applications

* |z| gives signal amplitude/magnitude in AC circuit and signal-processing contexts.
* arg z gives phase angle, essential in phasor analysis.

---

# 6. Diagram / Visual

```mermaid
graph LR
    O((0)) -->|"length = |z|"| Z((z))
```

Picture z as a vector from the origin; its length is |z| and the angle it sweeps out from the positive real axis (mod 2π) is arg z.

---

# 7. Common Mistakes

- ❌ **Mistake:** Treating arg z as a single number.
  ✅ **Correct:** arg z is a set of infinitely many angles differing by 2nπ; the single-valued choice is Arg z, covered next.

- ❌ **Mistake:** Assuming |z₁+z₂| = |z₁|+|z₂|.
  ✅ **Correct:** In general only the triangle inequality |z₁+z₂| ≤ |z₁|+|z₂| holds; equality needs z₁, z₂ to point the same direction.

- ❌ **Mistake:** Computing arg z using arctan(y/x) without a quadrant check.
  ✅ **Correct:** Always locate (x,y) in its correct quadrant before assigning θ.

---

# 8. Practice Problems

**P1 (Conceptual):** Explain why |z|² = z z̄.

<details><summary>Solution</summary>
z z̄ = (x+iy)(x−iy) = x²+y² = |z|², a direct algebraic identity from topic 01.
</details>

**P2 (Computational):** Find |z| for z = 5(cos 40° + i sin 40°).

<details><summary>Solution</summary>
|z| = 5, since cos²+sin² = 1 always, independent of the angle.
</details>

**P3 (Computational):** Find one value of arg z for z = 1 − i√3.

<details><summary>Solution</summary>
|z| = 2, point is in Q4, reference angle arctan(√3) = π/3, so θ = −π/3.
</details>

**P4 (Exam-style):** Prove the triangle inequality |z₁ + z₂| ≤ |z₁| + |z₂|.

<details><summary>Solution</summary>
|z₁+z₂|² = (z₁+z₂)(z̄₁+z̄₂) = |z₁|² + |z₂|² + (z₁z̄₂ + z̄₁z₂) = |z₁|²+|z₂|² + 2Re(z₁z̄₂). Since Re(w) ≤ |w|, this is ≤ |z₁|²+|z₂|²+2|z₁||z₂| = (|z₁|+|z₂|)². Taking square roots (both sides nonnegative) gives the result.
</details>

**P5 (Exam-style):** Find all z with |z| = 4 and arg z = π/6, expressed in rectangular form.

<details><summary>Solution</summary>
x = 4 cos(π/6) = 4(√3/2) = 2√3, y = 4 sin(π/6) = 4(1/2) = 2. z = 2√3 + 2i.
</details>

---

# 9. Summary

| Concept | Essential Result | Condition |
|---|---|---|
| Modulus | |z| = √(x²+y²) | z ∈ ℂ |
| |z|² identity | |z|² = z z̄ | z ∈ ℂ |
| Argument | arg z = θ + 2nπ | z ≠ 0 |
| Triangle inequality | |z₁+z₂| ≤ |z₁|+|z₂| | always |

This multivalued notion of argument motivates fixing a single representative, the principal argument, in the next topic.

---

# 10. References

1. James Ward Brown & Ruel V. Churchill — Complex Variables and Applications
2. Schaum's Outline of Complex Variables
3. John B. Conway — Functions of One Complex Variable
4. Wolfram MathWorld — Argument
