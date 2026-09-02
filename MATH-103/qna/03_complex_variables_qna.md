# Complex Variables — Q&A

Spoiler-blocked Q&A for MATH-103, Unit 3 (Complex Variables), grouped by topic number. Follows the repo's standard `<details>` convention — click a question to reveal the answer.

---

## 01 — Complex Number System

<details><summary>What is the defining algebraic property of i?</summary>
i² = −1.
</details>

<details><summary>Why can't complex numbers be ordered like real numbers (z₁ &lt; z₂)?</summary>
If such an order existed, i&gt;0 or i&lt;0 would force i²&gt;0, contradicting i²=−1. So no total order compatible with the field structure exists.
</details>

<details><summary>What is z·z̄ in terms of Re(z) and Im(z)?</summary>
z·z̄ = x²+y² = |z|², always a nonnegative real number.
</details>

---

## 02 — Rectangular and Polar Form

<details><summary>State the two conversion formulas between (x,y) and (r,θ).</summary>
x = r cosθ, y = r sinθ, and conversely r = √(x²+y²), tanθ = y/x (quadrant-adjusted).
</details>

<details><summary>Why is a quadrant check necessary when computing θ from arctan(y/x)?</summary>
Because arctan only returns values in (−π/2, π/2), which cannot distinguish quadrants — the actual signs of x and y must be used to place θ correctly.
</details>

---

## 03 — Modulus and Argument

<details><summary>Explain the difference between arg z and a single numeric angle.</summary>
arg z is a whole SET of angles {θ+2nπ : n∈ℤ}, not one number — any one of them correctly describes z's direction.
</details>

<details><summary>State the triangle inequality for complex numbers.</summary>
|z₁+z₂| ≤ |z₁|+|z₂|.
</details>

---

## 04 — Principal Argument

<details><summary>What interval convention does this repo use for Arg z?</summary>
(−π, π] — every principal argument value falls in this half-open interval.
</details>

<details><summary>Where does Arg z have a discontinuity, and why does it matter?</summary>
Across the negative real axis: points just above have Arg z near π, points just below have Arg z near −π. This matters for defining single-valued branches of log z and zᵃ (branch cuts).
</details>

---

## 05 — De Moivre's Theorem

<details><summary>State De Moivre's theorem.</summary>
(cosθ+isinθ)ⁿ = cosnθ+isinnθ, for integer n.
</details>

<details><summary>How many distinct nth roots does a nonzero complex number have, and how are they arranged geometrically?</summary>
Exactly n distinct roots, equally spaced (2π/n apart) on a circle of radius r^(1/n) — vertices of a regular n-gon.
</details>

---

## 06 — Euler's Formula

<details><summary>State Euler's formula.</summary>
e^(iθ) = cosθ + isinθ, for real θ.
</details>

<details><summary>What is |e^(iθ)| for real θ, and why?</summary>
Always 1, since |e^(iθ)| = √(cos²θ+sin²θ) = 1 by the Pythagorean identity.
</details>

<details><summary>State Euler's identity.</summary>
e^(iπ) + 1 = 0.
</details>

---

## 07 — Elementary Functions of Complex Variables

<details><summary>Why is log z inherently multivalued?</summary>
Because e^z is periodic with period 2πi (e^(z+2πi)=e^z), any inverse must assign multiple valid preimages to a single output — hence log z returns a set, not a single value.
</details>

<details><summary>Is complex sin z bounded, unlike real sin x? Explain briefly.</summary>
No — complex sin z is unbounded, since sin z = sinx coshy + i cosx sinhy involves cosh y and sinh y, which grow without bound as |y|→∞.
</details>

---

## 08 — Differentiation

<details><summary>State the definition of the complex derivative.</summary>
f′(z) = lim(Δz→0) [f(z+Δz)−f(z)]/Δz, provided the limit exists and is the same along every direction of approach.
</details>

<details><summary>Why is f(z) = z̄ nowhere differentiable?</summary>
The difference quotient Δz̄/Δz equals 1 along the real axis but −1 along the imaginary axis — disagreeing limits mean the overall limit does not exist, for any z.
</details>

---

## 09 — Derivatives

<details><summary>State the quotient rule for complex derivatives.</summary>
(f/g)′ = (f′g − fg′)/g², provided g(z)≠0.
</details>

<details><summary>What is d/dz[log z]?</summary>
1/z, valid on any branch, away from that branch's cut.
</details>

---

## 10 — Analytic Function

<details><summary>What is the key difference between "differentiable at a point" and "analytic at a point"?</summary>
Differentiable at a point only requires the limit to exist at that single point; analytic requires differentiability throughout an entire open neighborhood of the point.
</details>

<details><summary>Give the standard example of a function differentiable at exactly one point but analytic nowhere.</summary>
f(z) = |z|², differentiable only at z=0 (with f′(0)=0), hence analytic nowhere.
</details>

---

## 11 — Necessary and Sufficient Condition for Analyticity

<details><summary>State the necessary condition for analyticity.</summary>
If f is analytic at z₀, the Cauchy-Riemann equations uₓ=v_y, u_y=−vₓ must hold at z₀.
</details>

<details><summary>State the sufficient condition for analyticity.</summary>
If u, v have continuous first partial derivatives in a neighborhood of z₀ AND the Cauchy-Riemann equations hold throughout that neighborhood, then f is analytic at z₀.
</details>

<details><summary>Why doesn't satisfying C-R at a single point prove analyticity?</summary>
Because the sufficient direction requires C-R to hold throughout a whole neighborhood, with continuous partials — a single point's coincidental match gives no such guarantee.
</details>

---

## 12 — Cauchy-Riemann Equations

<details><summary>State the Cauchy-Riemann equations.</summary>
uₓ = v_y and u_y = −vₓ.
</details>

<details><summary>Give the formula for f′(z) in terms of the partial derivatives of u and v.</summary>
f′(z) = uₓ + ivₓ = v_y − iu_y.
</details>

---

## 13 — Harmonic Function

<details><summary>State Laplace's equation.</summary>
φ_xx + φ_yy = 0.
</details>

<details><summary>Why are the real and imaginary parts of an analytic function automatically harmonic?</summary>
Differentiating the two Cauchy-Riemann equations and combining them (using equality of mixed partial derivatives) directly cancels to give u_xx+u_yy=0 and v_xx+v_yy=0.
</details>

---

## 14 — Harmonic Conjugate

<details><summary>Is the harmonic conjugate of a given u unique?</summary>
No — it is unique only up to an additive real constant; an extra point condition is needed to fix that constant.
</details>

<details><summary>Why are the level curves of u and its harmonic conjugate v always orthogonal?</summary>
∇u·∇v = uₓvₓ+u_yv_y, which substituting the Cauchy-Riemann relations reduces to 0 — so the two gradients (and hence the level curves) are always perpendicular where ∇u≠0.
</details>

---

## 15 — Complex Line Integration

<details><summary>State the formula for a complex line integral in terms of a parameterization z(t).</summary>
∫_C f(z)dz = ∫ₐᵇ f(z(t))z′(t) dt.
</details>

<details><summary>Is ∫_C f(z)dz generally path-independent?</summary>
No, not in general — path-independence only holds when f is analytic on a simply connected domain containing all the relevant paths.
</details>

---

## 16 — Contours

<details><summary>What four properties define a simple closed contour?</summary>
Closed (z(a)=z(b)), simple (no other self-intersections), and piecewise smooth (finitely many smooth pieces).
</details>

<details><summary>What does "positively oriented" mean for a contour?</summary>
Traversed counterclockwise, so the bounded interior stays on the left.
</details>

---

## 17 — Cauchy-Goursat Theorem

<details><summary>State the Cauchy-Goursat theorem.</summary>
If f is analytic throughout a simply connected domain D, then ∮_C f(z)dz = 0 for every simple closed contour C in D.
</details>

<details><summary>Does ∮_C dz/z = 0 for C the unit circle contradict Cauchy-Goursat?</summary>
No — 1/z is not analytic at z=0, which lies inside C, so the hypothesis of the theorem fails; there is no contradiction.
</details>

---

## 18 — Cauchy's Integral Formula

<details><summary>State Cauchy's integral formula.</summary>
f(a) = (1/2πi)∮_C f(z)/(z−a) dz, for f analytic on and inside simple closed contour C and a strictly inside C.
</details>

<details><summary>State the derivative (extended) form.</summary>
f⁽ⁿ⁾(a) = (n!/2πi)∮_C f(z)/(z−a)ⁿ⁺¹ dz.
</details>

<details><summary>What does the derivative form imply about analytic functions?</summary>
That they are automatically infinitely differentiable — f⁽ⁿ⁾(a) exists for every n.
</details>

---

## 19 — Singular Point and Pole

<details><summary>Distinguish a removable singularity, a pole, and an essential singularity in terms of the Laurent series.</summary>
Removable: no negative-power terms. Pole of order m: finitely many negative-power terms, lowest is (z−a)⁻ᵐ. Essential: infinitely many negative-power terms.
</details>

<details><summary>How do you read the order of a pole off a factored expression f(z)=g(z)/(z−a)ᵐ?</summary>
Provided g is analytic at a and g(a)≠0, the pole has order exactly m.
</details>

---

## 20 — Residue

<details><summary>What is the residue of f at a, in terms of the Laurent series?</summary>
The coefficient c₋₁ of 1/(z−a).
</details>

<details><summary>State the simple-pole residue formula.</summary>
Res(f,a) = lim(z→a) (z−a)f(z), valid only for a pole of order exactly 1.
</details>

<details><summary>State the order-m residue formula.</summary>
Res(f,a) = (1/(m−1)!) lim(z→a) d^(m−1)/dz^(m−1)[(z−a)ᵐf(z)].
</details>

---

## 21 — Cauchy's Residue Theorem

<details><summary>State Cauchy's residue theorem.</summary>
∮_C f(z)dz = 2πi Σⱼ Res(f,zⱼ), summed over singularities zⱼ strictly INSIDE the positively oriented simple closed contour C.
</details>

<details><summary>Do singularities outside C contribute to the integral?</summary>
No — only singularities strictly enclosed by C are summed.
</details>

---

## 22 — Application of Residue Theorem to Improper Integrals

<details><summary>State the standard formula for ∫₋∞^∞ P(x)/Q(x) dx via residues.</summary>
∫₋∞^∞ P(x)/Q(x)dx = 2πi Σ Res(f,zₖ), summed over poles zₖ in the UPPER half-plane, provided deg Q ≥ deg P+2 and no real poles.
</details>

<details><summary>Why must deg Q ≥ deg P+2 (for the plain ML-bound argument)?</summary>
So that |f(z)|=O(1/R²) on the semicircular arc of radius R, making the arc's contribution O(1/R)·(πR)-bounded appropriately → 0 as R→∞ by the ML-inequality.
</details>

<details><summary>What technique relaxes this to deg Q ≥ deg P+1 for integrands with an e^(iaz) factor?</summary>
Jordan's lemma, which exploits the exponential decay of e^(iaz) in the upper half-plane to force the arc integral to vanish under a weaker degree condition.
</details>
