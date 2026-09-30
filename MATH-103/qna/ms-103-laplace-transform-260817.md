# Laplace Transform — Homework

Topics covered: Laplace transform of an integral, L{sin(at)/t}, inverse Laplace transform via partial fractions.

---

## 1. Key Formulas

### 1.1 Laplace Transform of an Integral

If L{f(t)} = F(s), then

    L{ ∫₀ᵗ f(u) du } = (1/s) F(s) = (1/s) L{f(t)}

**Derivation sketch:** Let g(t) = ∫₀ᵗ f(u)du, so g'(t) = f(t) and g(0) = 0.
Using L{g'(t)} = sL{g(t)} − g(0):

    L{f(t)} = s·L{g(t)} − 0
    ⇒ L{g(t)} = (1/s)·L{f(t)}

### 1.2 Division-by-t Property

    L{ f(t)/t } = ∫ₛ^∞ F(σ) dσ     (valid when lim(t→0) f(t)/t exists)

### 1.3 L{sin(at)/t}

Since L{sin(at)} = a/(s² + a²):

    L{ sin(at)/t } = ∫ₛ^∞ a/(σ² + a²) dσ
                    = [ tan⁻¹(σ/a) ]ₛ^∞
                    = π/2 − tan⁻¹(s/a)
                    = tan⁻¹(a/s)

So:

    L{ sin(at)/t } = tan⁻¹(a/s)

### 1.4 L{(e^(at) − 1)/t}

Since L{e^(at) − 1} = 1/(s−a) − 1/s:

    L{ (e^(at) − 1)/t } = ∫ₛ^∞ [ 1/(σ−a) − 1/σ ] dσ
                         = [ ln((σ−a)/σ) ]ₛ^∞
                         = ln(1) − ln((s−a)/s)
                         = ln( s/(s−a) )

### 1.5 Standard Inverse Laplace Pairs

    L⁻¹{ 1/s }     = 1
    L⁻¹{ 1/(s+a) } = e^(−at)

### 1.6 Partial Fraction Decomposition (distinct linear factors)

    N(s) / [(s+r₁)(s+r₂)]  =  A/(s+r₁)  +  B/(s+r₂)

Multiply both sides by the denominator, then substitute s = −r₁ and s = −r₂ (the "cover-up" method) to solve for A and B directly.

---

## 2. Worked Problems

### Problem 1 — L{ ∫₀ᵗ sin(u)/u du }

**Given:**

    L{ ∫₀ᵗ sin(u)/u du } = ?

**Using the integral property (1.1):**

    L{ ∫₀ᵗ f(u) du } = (1/s) L{f(t)}

Here f(t) = sin(t)/t, so:

    L{ ∫₀ᵗ sin(u)/u du } = (1/s) · L{ sin(t)/t }

**Apply the formula from (1.3)** with a = 1:

    L{ sin(t)/t } = tan⁻¹(1/s)

**Therefore:**

    L{ ∫₀ᵗ sin(u)/u du }  =  (1/s) · tan⁻¹(1/s)     **Ans.**

---

### Problem 2 — Inverse Laplace of F(s) = 12 / [s(s+3)]

**Given:**

    F(s) = 12 / [ s(s+3) ]  =  A/s  +  B/(s+3)

Multiply both sides by s(s+3):

    12 = A(s+3) + Bs

**Set s = 0:**

    12 = A(3)  ⇒  A = 4

**Set s = −3:**

    12 = B(−3)  ⇒  B = −4

**Decomposed form:**

    F(s) = 4/s  −  4/(s+3)

**Inverse Laplace transform** (using 1.5):

    f(t) = L⁻¹{ 4/s − 4/(s+3) }
         = 4(1) − 4e^(−3t)
         = 4 − 4e^(−3t)

**Answer:**

    f(t) = 4(1 − e^(−3t))     **Ans.**

---

### Problem 3 — Inverse Laplace of F(s) = (2s+6) / (s² + 6s + 8)

**Given:**

    F(s) = (2s+6) / (s² + 6s + 8)

**Factor the denominator:**

    s² + 6s + 8 = s² + 4s + 2s + 8
                = s(s+4) + 2(s+4)
                = (s+4)(s+2)

So:

    F(s) = (2s+6) / [(s+2)(s+4)]  =  A/(s+2)  +  B/(s+4)

Multiply both sides by (s+2)(s+4):

    2s + 6 = A(s+4) + B(s+2)

**Set s = −2:**

    2(−2)+6 = A(−2+4) + B(0)
    2 = 2A
    A = 1

**Set s = −4:**

    2(−4)+6 = A(0) + B(−4+2)
    −2 = −2B
    B = 1

**Decomposed form:**

    F(s) = 1/(s+2)  +  1/(s+4)

**Inverse Laplace transform** (using 1.5):

    f(t) = L⁻¹{ 1/(s+2) + 1/(s+4) }
         = e^(−2t) + e^(−4t)

**Answer:**

    f(t) = e^(−2t) + e^(−4t)     **Ans.**

> *Note: the original working showed "2 = 2A ∴ A = 2," which is an arithmetic slip — 2 = 2A gives A = 1, consistent with the final decomposed form F(s) = 1/(s+2) + 1/(s+4) used in the next step.*

---

## 3. Extra Practice Problems (with solutions)

### Q1 — Inverse Laplace of F(s) = (s+3) / [s(s+2)]

    F(s) = (s+3)/[s(s+2)] = A/s + B/(s+2)
    s+3 = A(s+2) + Bs

Set s = 0:  3 = 2A  ⇒  A = 3/2
Set s = −2: 1 = −2B ⇒ B = −1/2

    F(s) = (3/2)/s − (1/2)/(s+2)

**Answer:**

    f(t) = 3/2 − (1/2)e^(−2t)

---

### Q2 — Inverse Laplace of F(s) = 1 / [(s+1)(s+2)(s+3)]

    F(s) = A/(s+1) + B/(s+2) + C/(s+3)
    1 = A(s+2)(s+3) + B(s+1)(s+3) + C(s+1)(s+2)

Set s = −1:  1 = A(1)(2) = 2A   ⇒  A = 1/2
Set s = −2:  1 = B(−1)(1) = −B  ⇒  B = −1
Set s = −3:  1 = C(−2)(−1) = 2C ⇒  C = 1/2

    F(s) = (1/2)/(s+1) − 1/(s+2) + (1/2)/(s+3)

**Answer:**

    f(t) = (1/2)e^(−t) − e^(−2t) + (1/2)e^(−3t)

---

### Q3 — Find L{ ∫₀ᵗ sin(3u)/u du }

Using the integral property (1.1) with f(t) = sin(3t)/t:

    L{ ∫₀ᵗ sin(3u)/u du } = (1/s) · L{ sin(3t)/t }

From (1.3) with a = 3:

    L{ sin(3t)/t } = tan⁻¹(3/s)

**Answer:**

    L{ ∫₀ᵗ sin(3u)/u du } = (1/s) · tan⁻¹(3/s)

---

### Q4 — Find L{ ∫₀ᵗ (e^(2u) − 1)/u du }

Using the integral property (1.1) with f(t) = (e^(2t) − 1)/t:

    L{ ∫₀ᵗ (e^(2u)−1)/u du } = (1/s) · L{ (e^(2t)−1)/t }

From (1.4) with a = 2:

    L{ (e^(2t)−1)/t } = ln( s/(s−2) )

**Answer:**

    L{ ∫₀ᵗ (e^(2u)−1)/u du } = (1/s) · ln( s/(s−2) )

---

## 4. Quick Reference Summary

| Property / Function                     | Laplace Transform          |
|------------------------------------------|-----------------------------|
| ∫₀ᵗ f(u) du                              | (1/s) F(s)                  |
| sin(at)/t                                | tan⁻¹(a/s)                  |
| (e^(at) − 1)/t                           | ln( s/(s−a) )                |
| 1                                         | 1/s                          |
| e^(−at)                                   | 1/(s+a)                      |
| f(t)/t  (general)                        | ∫ₛ^∞ F(σ) dσ                 |
