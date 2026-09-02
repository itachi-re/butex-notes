# Complex Variables — Quick Revision

```text
MATH-103 | Unit 3: Complex Variables | Credit: 3 | Hours/Week: 3 | Total Hours: 45
```

## Essential Definitions

1. **Complex number** — z = x+iy, x,y∈ℝ, i²=−1.
2. **Modulus** — |z| = √(x²+y²), distance from origin.
3. **Argument** — arg z = θ+2nπ, n∈ℤ (multivalued).
4. **Principal argument** — Arg z, the unique value in (−π, π].
5. **Analytic function** — differentiable throughout a whole neighborhood of every point (not just at a point).
6. **Harmonic function** — φ with φ_xx+φ_yy = 0.
7. **Contour** — a piecewise smooth curve; a simple closed contour is closed, non-self-intersecting, piecewise smooth.
8. **Singularity** — an isolated point where f fails to be analytic (removable, pole, or essential).
9. **Pole (order m)** — f(z)=g(z)/(z−a)ᵐ, g analytic, g(a)≠0.
10. **Residue** — Res(f,a) = c₋₁, the coefficient of 1/(z−a) in the Laurent expansion at a.

## Essential Formulae

```
z = x+iy = r(cosθ+isinθ) = re^(iθ)
r = |z| = √(x²+y²)
zⁿ = rⁿ(cosnθ+isinnθ)                                   (De Moivre)
zₖ = r^(1/n)[cos((θ+2kπ)/n)+isin((θ+2kπ)/n)], k=0,…,n−1  (nth roots)
e^(iθ) = cosθ+isinθ                                      (Euler)
e^z = e^x(cosy+isiny)
f′(z) = lim(Δz→0) [f(z+Δz)−f(z)]/Δz
uₓ = v_y,  u_y = −vₓ                                     (Cauchy-Riemann)
u_xx+u_yy = 0                                             (Laplace / harmonic)
∫_C f(z)dz = ∫ₐᵇ f(z(t))z′(t)dt
∮_C f(z)dz = 0                                            (Cauchy-Goursat, f analytic on/inside C)
f(a) = (1/2πi)∮_C f(z)/(z−a) dz                           (Cauchy's integral formula)
f⁽ⁿ⁾(a) = (n!/2πi)∮_C f(z)/(z−a)ⁿ⁺¹ dz
Res(f,a) = lim(z→a)(z−a)f(z)                              (simple pole)
∮_C f(z)dz = 2πi Σ Res(f,zₖ)                              (residue theorem, poles inside C only)
```

## Essential Theorems

* **De Moivre's theorem** — (cosθ+isinθ)ⁿ = cosnθ+isinnθ, for integer n; used for powers and nth roots.
* **Cauchy-Riemann equations** — necessary condition uₓ=v_y, u_y=−vₓ at every point where f is differentiable; sufficient (for analyticity) when combined with continuous partials throughout a neighborhood.
* **Cauchy-Goursat theorem** — ∮_C f(z)dz = 0 for f analytic on a simply connected domain containing simple closed contour C and its interior.
* **Cauchy's integral formula** — f(a) = (1/2πi)∮_C f(z)/(z−a)dz for a inside C; the derivative form shows analytic functions are infinitely differentiable.
* **Cauchy's residue theorem** — ∮_C f(z)dz = 2πi Σ Res(f,zⱼ), summed only over singularities zⱼ strictly inside C.

## Exam Problem Types

1. Convert rectangular ↔ polar form.
2. Find modulus and argument (general and principal).
3. Apply De Moivre's theorem to compute powers.
4. Find roots of a complex number (nth roots, equally spaced on a circle).
5. Test analyticity using the Cauchy-Riemann equations (check both equations AND continuity of partials).
6. Find the harmonic conjugate given one harmonic function.
7. Evaluate a complex line integral by parameterizing the curve.
8. Apply Cauchy's integral formula (identify which singularity is inside the contour).
9. Classify singularities (removable, pole of order m, essential) via the Laurent series or the g(z)/(z−a)ᵐ factorization.
10. Find residues (simple-pole formula vs. order-m formula).
11. Evaluate contour integrals using the residue theorem (sum residues INSIDE the contour only).
12. Evaluate real improper integrals ∫₋∞^∞ P(x)/Q(x)dx using a semicircular contour and upper-half-plane residues (deg Q ≥ deg P+2, or Jordan's lemma for trigonometric integrands with deg Q ≥ deg P+1).

## High-Yield Reminders

* `arg z` (multivalued) ≠ `Arg z` (single-valued, in (−π,π] here).
* Cauchy-Riemann holding at ONE point never proves analyticity — it must hold throughout a neighborhood, with continuous partials.
* Only poles strictly INSIDE the contour count in the residue theorem.
* Simple-pole residue formula only works for order-1 poles; higher order needs the derivative/factorial formula.
* For real improper integrals: check for real-axis poles first (they break the standard, unindented procedure).
