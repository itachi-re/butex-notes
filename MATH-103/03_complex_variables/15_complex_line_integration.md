---
title: "Complex Line Integration"
course: "MATH-103"
course_title: "Complex Variables"
unit: "complex_variables"
topic_number: 15
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
  - line-integration
---

# 1. Overview

This topic defines integration of a complex function along a curve, parameterizing the path exactly as in real-variable line integrals. It closes out the differentiation half of the unit (building on [analytic function](10_analytic_function.md)) and opens the integration half, feeding directly into [contours](16_contours.md) and the [Cauchy-Goursat theorem](17_cauchy_goursat_theorem.md).

---

# 2. Definitions & Key Terms

1. **Complex Line Integral** — ∫_C f(z) dz, the integral of f along a curve C in the complex plane.
   > Plain-English: adding up f(z)·(a tiny step along the path) as z moves along C.

2. **Parameterization** — writing the curve C as z(t) = x(t) + iy(t) for a ≤ t ≤ b.
   > Plain-English: describing every point of the curve using a single real parameter t (like time).

---

# 3. Core Content

### A. Definition / Theorem

If C is a smooth curve parameterized by z(t) = x(t)+iy(t), a≤t≤b, and f is continuous on C:

```
∫_C f(z) dz = ∫ₐᵇ f(z(t)) z′(t) dt
```

### B. Formula

```
∫_C f(z) dz = ∫ₐᵇ f(z(t)) z′(t) dt,   z′(t) = x′(t) + iy′(t)
```

Splitting into real/imaginary parts (with f=u+iv along C):

```
∫_C f(z) dz = ∫_C (u dx − v dy) + i∫_C (v dx + u dy)
```

### C. Derivation — Why the Formula Takes This Form

Partition [a,b] into t₀=a<t₁<…<tₙ=b, giving points z_k=z(t_k) on C. Form the Riemann-sum-style approximation:

```
Σₖ f(z_k)[z_k − z_{k−1}]
```

As the partition is refined, z_k − z_{k−1} ≈ z′(t_k)Δt_k (a first-order Taylor approximation of the smooth parameterization), so the sum approaches

```
Σₖ f(z(t_k)) z′(t_k) Δt_k → ∫ₐᵇ f(z(t)) z′(t) dt
```

by the definition of the (real) Riemann integral applied to the complex-valued integrand f(z(t))z′(t), which is split into its real and imaginary parts (each an ordinary real integral) to actually be computed.

### D. Geometric Interpretation

∫_C f(z) dz sums up the effect of f "pushing" along infinitesimal displacement vectors dz tangent to C; unlike a real integral over an interval, the result generally depends on the specific path C taken between its endpoints, not just the endpoints themselves — UNLESS f is analytic on a simply connected domain containing C (a fact used heavily starting with the [Cauchy-Goursat theorem](17_cauchy_goursat_theorem.md)).

### E. Conditions

* C should be smooth (or piecewise smooth: finitely many smooth pieces joined end to end) for z′(t) to exist (except at finitely many corner points).
* The integral's value can depend on the direction of traversal: reversing C negates the integral, ∫_{−C} f dz = −∫_C f dz.
* f must be at least piecewise continuous along C for the integral to be defined via this Riemann-sum limit.

### F. Example

∫_C z dz along the straight segment from 0 to 1+i, parameterized z(t)=t(1+i), 0≤t≤1, gives (1+i)²/2 = i (worked in detail below).

---

# 4. Worked Examples

### Example 1 — 🟢 Foundational

**Problem:** Evaluate ∫_C z dz along the segment from 0 to 1+i.

**Solution**

Step 1: Parameterize z(t)=t(1+i), 0≤t≤1. z′(t)=1+i.

Step 2: ∫₀¹ z(t)z′(t) dt = ∫₀¹ t(1+i)(1+i) dt = (1+i)² ∫₀¹ t dt = (1+i)²·(1/2).

Step 3: (1+i)²=2i.

**Answer:** ∫_C z dz = 2i·(1/2) = i.

### Example 2 — 🟡 Intermediate

**Problem:** Evaluate ∮_C dz/z where C is the unit circle |z|=1 traversed counterclockwise.

**Solution**

Step 1: Parameterize z(t)=e^(it), 0≤t≤2π. z′(t)=ie^(it).

Step 2: ∫₀^(2π) [1/e^(it)]·ie^(it) dt = ∫₀^(2π) i dt.

**Answer:** = i·2π = 2πi. (This is the fundamental building block behind [Cauchy's integral formula](18_cauchys_integral_formula.md).)

### Example 3 — 🔴 Exam-Level

**Problem:** Evaluate ∫_C z̄ dz along two different paths from 0 to 1+i — (a) the straight segment, (b) the path along the real axis from 0 to 1, then vertically from 1 to 1+i — and confirm the results differ (illustrating path-dependence for the non-analytic function z̄).

**Solution**

**Path (a):** z(t)=t(1+i), z̄(t)=t(1−i), z′(t)=1+i. Integral = ∫₀¹ t(1−i)(1+i) dt = ∫₀¹ t(1+1) dt = 2∫₀¹t dt = 2(1/2)=1.

**Path (b):** Segment 1: z(t)=t, 0≤t≤1 (real axis). z̄=t, z′=1. Integral₁=∫₀¹ t dt = 1/2.
Segment 2: z(t)=1+it, 0≤t≤1 (vertical). z̄=1−it, z′=i. Integral₂=∫₀¹(1−it)i dt = i∫₀¹(1−it)dt = i[1 − i(1/2)] = i + 1/2.
Total for path (b): 1/2 + i + 1/2 = 1 + i.

**Answer:** Path (a) gives 1; path (b) gives 1+i — different values, confirming ∫_C z̄ dz is path-dependent, consistent with z̄ being nowhere analytic (topic 08).

---

# 5. Applications

* The basic mechanism behind evaluating work done by a complex force field, and the starting point for deriving all later contour-integral theorems (Cauchy-Goursat, Cauchy's integral formula, residue theorem).
* Circulation and flux calculations in 2-D fluid flow use complex line integrals of the complex velocity potential.

---

# 6. Diagram / Visual

```mermaid
graph LR
    A((z(a))) -->|"curve C, parameterized by t"| B((z(b)))
```

Picture the curve C traced out as t runs from a to b, with f(z(t))z′(t) summed (integrated) along the way.

---

# 7. Common Mistakes

- ❌ **Mistake:** Forgetting to multiply by z′(t) when substituting the parameterization into f(z) dz.
  ✅ **Correct:** dz becomes z′(t) dt under the substitution — always include this factor.

- ❌ **Mistake:** Assuming ∫_C f(z) dz depends only on the endpoints of C, for any f.
  ✅ **Correct:** Path-independence only holds when f is analytic on a simply connected domain containing all the paths in question (see Cauchy-Goursat, next-next topic); for general f (like z̄), the value depends on the specific path.

- ❌ **Mistake:** Ignoring orientation, e.g. computing the same numeric value regardless of whether C is traversed clockwise or counterclockwise.
  ✅ **Correct:** Reversing the direction of traversal negates the integral.

---

# 8. Practice Problems

**P1 (Conceptual):** Why does a Riemann-sum argument (rather than a limit-based derivative argument) naturally justify the line-integral formula?

<details><summary>Solution</summary>
Because integration is fundamentally about summing contributions along a partition and taking a limit as the partition is refined — exactly the same idea as the real-variable Riemann integral, just applied to the complex-valued path parameterization.
</details>

**P2 (Computational):** Evaluate ∫_C (2z+1) dz along the segment from 0 to 2i, parameterized z(t)=2it, 0≤t≤1.

<details><summary>Solution</summary>
z′(t)=2i. ∫₀¹(2(2it)+1)(2i)dt = ∫₀¹(4it+1)(2i)dt = ∫₀¹(8i²t+2i)dt = ∫₀¹(−8t+2i)dt = [−4t²+2it]₀¹ = −4+2i.
</details>

**P3 (Computational):** Evaluate ∮_C dz along the unit circle |z|=1 (any closed curve gives 0 for the constant-function-like case of dz itself, since ∫dz=z(b)−z(a) and the endpoints coincide for a closed curve).

<details><summary>Solution</summary>
z(t)=e^(it), 0≤t≤2π, z′=ie^(it). ∫₀^(2π) ie^(it) dt = [e^(it)]₀^(2π) = e^(2πi)−e^0 = 1−1 = 0.
</details>

**P4 (Exam-style):** Show generally that ∫_C dz = z(b) − z(a) for any smooth curve, and explain why this integral is always path-independent regardless of the specific curve chosen between the same two endpoints.

<details><summary>Solution</summary>
∫_C dz = ∫ₐᵇ 1·z′(t) dt = ∫ₐᵇ z′(t) dt = z(b)−z(a), by the Fundamental Theorem of Calculus applied componentwise to x(t), y(t). Since f(z)=1 is entire (constant function), and the antiderivative z itself is entire, the result depends only on the endpoints — consistent with the general principle (proved fully later) that path-independence holds whenever f has an antiderivative analytic throughout a domain containing all the paths.
</details>

**P5 (Exam-style):** Evaluate ∫_C |z| dz along the upper half of the unit circle from z=1 to z=−1 (counterclockwise), parameterized z(t)=e^(it), 0≤t≤π.

<details><summary>Solution</summary>
|z(t)|=|e^(it)|=1 for all t (unit circle). z′(t)=ie^(it). ∫₀^π 1·ie^(it) dt = [e^(it)]₀^π = e^(iπ)−e^0 = −1−1 = −2.
</details>

---

# 9. Summary

| Concept | Essential Result | Condition |
|---|---|---|
| Line integral | ∫_C f(z)dz = ∫ₐᵇ f(z(t))z′(t)dt | C smooth (or piecewise smooth), f continuous on C |
| Orientation | reversing C negates the integral | always |
| Path-dependence | generally path-dependent | unless f analytic on a simply connected domain containing the paths |

With integration along a curve now defined, the next topic classifies the different types of curves (contours) used throughout the rest of the unit.

---

# 10. References

1. James Ward Brown & Ruel V. Churchill — Complex Variables and Applications
2. Schaum's Outline of Complex Variables
3. John B. Conway — Functions of One Complex Variable
4. E. T. Copson — An Introduction to the Theory of Functions of a Complex Variable
