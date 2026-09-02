---
title: "Elementary Functions of Complex Variables"
course: "MATH-103"
course_title: "Complex Variables"
unit: "complex_variables"
topic_number: 07
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
  - elementary-functions
---

# 1. Overview

This topic extends familiar real functions — exponential, logarithmic, trigonometric, hyperbolic — to complex arguments, using [Euler's formula](06_eulers_formula.md) as the main tool. It completes the algebraic toolkit before the calculus of complex functions begins with [differentiation](08_differentiation.md).

---

# 2. Definitions & Key Terms

1. **Complex Exponential** — e^z = e^x(cos y + i sin y) for z = x+iy.
   > Plain-English: the exponential extended so it agrees with e^(iθ) when x=0.

2. **Complex Logarithm (multivalued)** — log z = ln|z| + i arg z.
   > Plain-English: the inverse of e^z, but with infinitely many values because arg z is multivalued.

3. **Principal Logarithm** — Log z = ln|z| + i Arg z.
   > Plain-English: the single-valued branch of log z using the principal argument.

---

# 3. Core Content

### A. Definition / Theorem

```
e^z       = e^x(cos y + i sin y)
log z     = ln|z| + i arg z = ln|z| + i(Arg z + 2nπ),  n ∈ ℤ,  z ≠ 0
sin z     = (e^(iz) − e^(−iz)) / 2i
cos z     = (e^(iz) + e^(−iz)) / 2
sinh z    = (e^z − e^(−z)) / 2
cosh z    = (e^z + e^(−z)) / 2
```

### B. Formula

```
e^(z1+z2) = e^z1 · e^z2                  (still holds)
|e^z| = e^x,   arg(e^z) = y
sin z = sin x cosh y + i cos x sinh y
cos z = cos x cosh y − i sin x sinh y
```

### C. Derivation

**e^z:** define e^z = e^(x+iy) = e^x · e^(iy), and apply Euler's formula to e^(iy) = cos y + i sin y, giving e^z = e^x(cos y + i sin y) directly.

**log z:** since e^z is periodic (e^(z+2πi) = e^z, because e^(2πi) = cos2π+isin2π = 1), its inverse must be multivalued. If e^w = z with w = u+iv, then e^u = |z| and v = arg z (mod 2π), so u = ln|z|, giving log z = ln|z| + i arg z, one value for each choice of the angle.

**sin z, cos z:** replace θ by z in the identities cosθ=(e^(iθ)+e^(−iθ))/2, sinθ=(e^(iθ)−e^(−iθ))/(2i) derived in [Euler's formula](06_eulers_formula.md#4-worked-examples), now allowing z to be complex. Expanding e^(iz)=e^(i(x+iy))=e^(−y)(cos x + i sin x) and e^(−iz)=e^y(cos x − i sin x) and combining gives sin z = sin x cosh y + i cos x sinh y (similarly for cos z).

### D. Geometric Interpretation

e^z maps horizontal lines (constant y) to rays from the origin and vertical lines (constant x) to circles centered at the origin — polar coordinates in the image correspond to Cartesian coordinates in the domain. log z, as the inverse, maps radial/angular structure back to Cartesian structure, with a branch cut needed along a ray from 0 to keep it single-valued.

### E. Conditions

* e^z is never zero for any finite z (since |e^z| = e^x > 0 always).
* log z is undefined at z = 0 and is inherently multivalued; the principal branch Log z is discontinuous across the branch cut where Arg z jumps (the negative real axis, by our convention).
* Unlike the real case, complex sin z and cos z are **unbounded** (since cosh y, sinh y grow without bound as |y|→∞).

### F. Example

e^(1+iπ/2) = e¹(cos(π/2)+isin(π/2)) = e·i = ei.

---

# 4. Worked Examples

### Example 1 — 🟢 Foundational

**Problem:** Evaluate e^(2+iπ).

**Solution**

Step 1: e^x = e², cos π = −1, sin π = 0.

**Answer:** e^(2+iπ) = e²(−1+0i) = −e².

### Example 2 — 🟡 Intermediate

**Problem:** Find all values of log(−1).

**Solution**

Step 1: |−1| = 1, ln1 = 0. arg(−1) = π + 2nπ.

**Answer:** log(−1) = i(π + 2nπ) = iπ(2n+1), n ∈ ℤ; principal value Log(−1) = iπ.

### Example 3 — 🔴 Exam-Level

**Problem:** Solve cos z = 2 for complex z (showing complex cos is unbounded, unlike the real case).

**Solution**

Step 1: cos z = (e^(iz)+e^(−iz))/2 = 2 ⟹ e^(iz) + e^(−iz) = 4.

Step 2: Let w = e^(iz): w + 1/w = 4 ⟹ w² − 4w + 1 = 0 ⟹ w = (4 ± √12)/2 = 2 ± √3.

Step 3: Both roots are positive real, so iz = ln(2±√3) ⟹ z = −i·ln(2±√3).

**Answer:** z = −i ln(2+√3) or z = −i ln(2−√3) (real solutions in y only, x=0), confirming cos z can exceed 1 for complex z, since cos z is unbounded there.

---

# 5. Applications

* Complex exponentials/logarithms underlie Laplace and Fourier transform theory used in signal processing and control systems.
* Complex trigonometric/hyperbolic identities appear in solving linear ODEs with complex characteristic roots.

---

# 6. Diagram / Visual

```mermaid
graph LR
    Domain["z-plane: vertical/horizontal grid lines"] -->|"w = e^z"| Range["w-plane: circles/rays"]
```

Vertical lines (x = const) map to circles |w| = e^x; horizontal lines (y = const) map to rays at angle y from the origin, under w = e^z.

---

# 7. Common Mistakes

- ❌ **Mistake:** Assuming |sin z| ≤ 1 and |cos z| ≤ 1 as in the real case.
  ✅ **Correct:** For complex z, sin z and cos z are unbounded because of the cosh y, sinh y factors.

- ❌ **Mistake:** Treating log z as single-valued without specifying a branch.
  ✅ **Correct:** log z is inherently multivalued; use Log z (principal branch) when a single value is required, and say so explicitly.

- ❌ **Mistake:** Assuming e^z is injective (one-to-one) on all of ℂ.
  ✅ **Correct:** e^z is periodic with period 2πi, so it is not injective on the whole plane; it is injective only on a horizontal strip of height 2π.

---

# 8. Practice Problems

**P1 (Conceptual):** Why must log z be multivalued, given that e^z is periodic?

<details><summary>Solution</summary>
If e^z is periodic with period 2πi, then z and z+2πi give the same output under e^z, so any well-defined inverse assigning one output to that value must assign multiple valid inputs — hence log must return a whole set, not a single value.
</details>

**P2 (Computational):** Compute |e^(3−4i)|.

<details><summary>Solution</summary>
|e^z| = e^x = e³.
</details>

**P3 (Computational):** Find Log(1+i) (principal value).

<details><summary>Solution</summary>
|1+i|=√2, Arg(1+i)=π/4. Log(1+i) = ln√2 + iπ/4 = (1/2)ln2 + iπ/4.
</details>

**P4 (Exam-style):** Show that e^z = 1 exactly when z = 2nπi for integer n.

<details><summary>Solution</summary>
e^z = e^x(cosy+isiny) = 1 requires e^x=1 (so x=0, since e^x>0 is injective on reals) and cosy=1, siny=0, which happens exactly when y=2nπ. So z = 2nπi.
</details>

**P5 (Exam-style):** Derive the identity cosh(iz) = cos z.

<details><summary>Solution</summary>
cosh(iz) = (e^(iz)+e^(−iz))/2 = cos z, directly matching the definition of cos z given above.
</details>

---

# 9. Summary

| Concept | Essential Result | Condition |
|---|---|---|
| Complex exponential | e^z = e^x(cosy+isiny) | z=x+iy |
| Complex log | log z = ln|z|+i arg z | z≠0, multivalued |
| Principal log | Log z = ln|z|+i Arg z | single-valued branch |
| sin z, cos z | unbounded on ℂ | via cosh y, sinh y terms |

With these functions defined, the next topics build the calculus of complex functions, beginning with differentiation.

---

# 10. References

1. James Ward Brown & Ruel V. Churchill — Complex Variables and Applications
2. Schaum's Outline of Complex Variables
3. John B. Conway — Functions of One Complex Variable
4. NIST Digital Library of Mathematical Functions — Elementary Functions
