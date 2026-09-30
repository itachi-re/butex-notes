# MS-103: Vector Calculus & Laplace Transform — Model Answers

Clean Markdown transcription of the handwritten homework solutions, formatted for GitHub math rendering.

> **Source note:** Problems and methods follow the 18-page handwritten solution set. Material is ordered by mathematical dependency. Slips in the handwriting were corrected where the intended calculation was unambiguous, and every final answer below has been re-verified.

## Contents

**Part I — Vector Calculus**

1. [Q1. Directional derivative along the normal to a surface](#q1-directional-derivative-along-the-normal-to-a-surface)
2. [Q2. Orthogonal surfaces: finding two constants](#q2-orthogonal-surfaces-finding-two-constants)
3. [Q3. Volume of a parallelepiped](#q3-volume-of-a-parallelepiped)
4. [Q4. Condition for coplanarity](#q4-condition-for-coplanarity)
5. [Q5. Vector triple-product identity](#q5-vector-triple-product-identity)
6. [Q6. Area of a parallelogram](#q6-area-of-a-parallelogram)

**Part II — Laplace Transform**

7. [Q7. Laplace transform of an integral of sin u / u](#q7-laplace-transform-of-an-integral-of-sin-u--u)
8. [Q8. Multiplication by t^n in the Laplace domain](#q8-multiplication-by-tn-in-the-laplace-domain)
9. [Q9. Transform of t² cos at](#q9-transform-of-t-cos-at)
10. [Q10. Transform of t³ eᵗ](#q10-transform-of-t-et)
11. [Q11. Inverse transform and long-time response](#q11-inverse-transform-and-long-time-response)
12. [Q12. Two inverse Laplace transforms](#q12-two-inverse-laplace-transforms)
13. [Q13. First-order IVP with constant forcing](#q13-first-order-ivp-with-constant-forcing)
14. [Q14. First-order IVP with ramp input](#q14-first-order-ivp-with-ramp-input)
15. [Q15. First-order IVP with exponential input](#q15-first-order-ivp-with-exponential-input)
16. [Q16. Second-order homogeneous IVP](#q16-second-order-homogeneous-ivp)
17. [Q17. Second-order IVP with sin 3t forcing](#q17-second-order-ivp-with-sin-3t-forcing)
18. [Q18. Resonant IVP](#q18-resonant-ivp)
19. [Q19. Forced IVP with repeated root](#q19-forced-ivp-with-repeated-root)

[Quick revision summary](#quick-revision-summary) · [Key formulas](#key-formulas)

---

# Part I — Vector Calculus

## Q1. Directional derivative along the normal to a surface

**Problem.** Find the rate of change of $`\phi = xyz`$ in the direction normal to the surface $`x^2y + y^2x + yz^2 = 8`$ at the point $`(1,1,1)`$.

**Definition.** The directional derivative of $`\phi`$ along a unit vector $`\hat{\mathbf u}`$ is $`D_{\hat{\mathbf u}}\phi = \nabla\phi\cdot\hat{\mathbf u}`$. A normal to the surface $`F(x,y,z)=C`$ is $`\nabla F`$.

**Solution.**

```math
\nabla\phi = yz\,\mathbf i + xz\,\mathbf j + xy\,\mathbf k
\quad\Longrightarrow\quad
\nabla\phi\big|_{(1,1,1)} = \mathbf i + \mathbf j + \mathbf k
```

Let $`F = x^2y + y^2x + yz^2 - 8`$. Then

```math
\nabla F = (2xy + y^2)\,\mathbf i + (x^2 + 2xy + z^2)\,\mathbf j + 2yz\,\mathbf k
\quad\Longrightarrow\quad
\nabla F\big|_{(1,1,1)} = 3\mathbf i + 4\mathbf j + 2\mathbf k
```

The unit normal is

```math
\hat{\mathbf n} = \frac{3\mathbf i + 4\mathbf j + 2\mathbf k}{\sqrt{9+16+4}} = \frac{3\mathbf i + 4\mathbf j + 2\mathbf k}{\sqrt{29}}
```

Therefore

```math
D_{\hat{\mathbf n}}\phi = (\mathbf i + \mathbf j + \mathbf k)\cdot\frac{3\mathbf i + 4\mathbf j + 2\mathbf k}{\sqrt{29}} = \boxed{\dfrac{9}{\sqrt{29}}}
```

---

## Q2. Orthogonal surfaces: finding two constants

**Problem.** Find $`\lambda`$ and $`\mu`$ such that the surfaces $`\lambda x^2 - \mu yz = (\lambda+2)x`$ and $`4x^2y + z^3 = 4`$ intersect orthogonally at $`(1,-1,2)`$.

**Definition.** Two surfaces are orthogonal at a point when their normals are perpendicular: $`\nabla F_1\cdot\nabla F_2 = 0`$.

**Solution.** Let $`F_1 = \lambda x^2 - \mu yz - (\lambda+2)x`$. Then

```math
\nabla F_1 = \bigl(2\lambda x - (\lambda+2)\bigr)\mathbf i - \mu z\,\mathbf j - \mu y\,\mathbf k
\;\Longrightarrow\;
\mathbf n_1 = (\lambda-2)\mathbf i - 2\mu\,\mathbf j + \mu\,\mathbf k
```

Let $`F_2 = 4x^2y + z^3 - 4`$. Then

```math
\nabla F_2 = 8xy\,\mathbf i + 4x^2\,\mathbf j + 3z^2\,\mathbf k
\;\Longrightarrow\;
\mathbf n_2 = -8\mathbf i + 4\mathbf j + 12\mathbf k
```

Orthogonality, $`\mathbf n_1\cdot\mathbf n_2 = 0`$, gives

```math
-8(\lambda-2) - 8\mu + 12\mu = 0
\;\Longrightarrow\;
2\lambda - \mu = 4 \qquad (1)
```

The point lies on the first surface:

```math
\lambda + 2\mu = \lambda + 2
\;\Longrightarrow\;
\mu = 1 \qquad (2)
```

Substituting (2) into (1) gives $`2\lambda = 5`$, so

```math
\boxed{\lambda = \tfrac52,\qquad \mu = 1}
```

---

## Q3. Volume of a parallelepiped

**Problem.** Find the volume of the parallelepiped with coterminal edges $`\mathbf a = 3\mathbf i + 7\mathbf j + 5\mathbf k`$, $`\mathbf b = -3\mathbf i + 7\mathbf j - 3\mathbf k`$, $`\mathbf c = 7\mathbf i - 5\mathbf j - 3\mathbf k`$.

**Definition.** $`V = \left|\mathbf a\cdot(\mathbf b\times\mathbf c)\right|`$, the absolute value of the scalar triple product.

**Solution.**

```math
\begin{aligned}
[\mathbf a\,\mathbf b\,\mathbf c]
&=
\begin{vmatrix}
3 & 7 & 5\\
-3 & 7 & -3\\
7 & -5 & -3
\end{vmatrix}\\[4pt]
&= 3\begin{vmatrix}7&-3\\-5&-3\end{vmatrix}
 - 7\begin{vmatrix}-3&-3\\7&-3\end{vmatrix}
 + 5\begin{vmatrix}-3&7\\7&-5\end{vmatrix}\\[4pt]
&= 3(-21-15) - 7(9+21) + 5(15-49)\\
&= -108 - 210 - 170 = -488
\end{aligned}
```

```math
\boxed{V = 488 \text{ cubic units}}
```

---

## Q4. Condition for coplanarity

**Problem.** Find $`a`$ such that $`\mathbf a_1 = 2\mathbf i - \mathbf j + \mathbf k`$, $`\mathbf a_2 = \mathbf i + 2\mathbf j - 3\mathbf k`$, $`\mathbf a_3 = 3\mathbf i + a\mathbf j + 5\mathbf k`$ are coplanar.

**Theorem.** Three vectors are coplanar if and only if $`\mathbf a_1\cdot(\mathbf a_2\times\mathbf a_3) = 0`$.

**Solution.**

```math
\begin{vmatrix}
2 & -1 & 1\\
1 & 2 & -3\\
3 & a & 5
\end{vmatrix} = 0
```

```math
2(10+3a) + (5+9) + (a-6) = 0
\;\Longrightarrow\;
7a + 28 = 0
\;\Longrightarrow\;
\boxed{a = -4}
```

---

## Q5. Vector triple-product identity

**Problem.** Prove $`\mathbf a\times(\mathbf b\times\mathbf c) = (\mathbf a\cdot\mathbf c)\,\mathbf b - (\mathbf a\cdot\mathbf b)\,\mathbf c`$.

**Proof.** Write $`\mathbf a = (a_1,a_2,a_3)`$, $`\mathbf b = (b_1,b_2,b_3)`$, $`\mathbf c = (c_1,c_2,c_3)`$. Then

```math
\mathbf b\times\mathbf c = (b_2c_3 - b_3c_2,\; b_3c_1 - b_1c_3,\; b_1c_2 - b_2c_1)
```

The $`\mathbf i`$-component of $`\mathbf a\times(\mathbf b\times\mathbf c)`$ is

```math
a_2(b_1c_2 - b_2c_1) - a_3(b_3c_1 - b_1c_3)
= b_1(a_2c_2 + a_3c_3) - c_1(a_2b_2 + a_3b_3)
```

Adding and subtracting $`a_1b_1c_1`$:

```math
= b_1(a_1c_1 + a_2c_2 + a_3c_3) - c_1(a_1b_1 + a_2b_2 + a_3b_3)
= b_1(\mathbf a\cdot\mathbf c) - c_1(\mathbf a\cdot\mathbf b)
```

The $`\mathbf j`$- and $`\mathbf k`$-components follow in the same way, giving $`b_2(\mathbf a\cdot\mathbf c) - c_2(\mathbf a\cdot\mathbf b)`$ and $`b_3(\mathbf a\cdot\mathbf c) - c_3(\mathbf a\cdot\mathbf b)`$. Hence

```math
\boxed{\mathbf a\times(\mathbf b\times\mathbf c) = (\mathbf a\cdot\mathbf c)\,\mathbf b - (\mathbf a\cdot\mathbf b)\,\mathbf c}
\qquad\blacksquare
```

---

## Q6. Area of a parallelogram

**Problem.** Find the area of the parallelogram with adjacent sides $`\mathbf a = \mathbf i - 2\mathbf j + 3\mathbf k`$ and $`\mathbf b = 2\mathbf i + \mathbf j - 4\mathbf k`$.

**Definition.** $`A = |\mathbf a\times\mathbf b|`$.

**Solution.**

```math
\mathbf a\times\mathbf b =
\begin{vmatrix}
\mathbf i & \mathbf j & \mathbf k\\
1 & -2 & 3\\
2 & 1 & -4
\end{vmatrix}
= \mathbf i(8-3) - \mathbf j(-4-6) + \mathbf k(1+4)
= 5\mathbf i + 10\mathbf j + 5\mathbf k
```

```math
A = \sqrt{25 + 100 + 25} = \sqrt{150} = \boxed{5\sqrt6}
```

---

# Part II — Laplace Transform

## Q7. Laplace transform of an integral of sin u / u

**Problem.** Prove that

```math
\mathcal L\left\{\int_0^t \frac{\sin u}{u}\,du\right\} = \frac1s\tan^{-1}\!\left(\frac1s\right)
```

**Useful result.** $`\mathcal L\{\sin(at)/t\} = \tan^{-1}(a/s)`$ for $`a>0`$, so $`\mathcal L\{\sin t / t\} = \tan^{-1}(1/s)`$.

**Proof.** Let $`f(t) = \sin t / t`$ and $`g(t) = \int_0^t f(u)\,du`$. Then $`g'(t) = f(t)`$ and $`g(0)=0`$. Transforming,

```math
sG(s) - g(0) = F(s) \;\Longrightarrow\; sG(s) = \tan^{-1}\!\left(\frac1s\right)
```

```math
\boxed{G(s) = \frac1s\tan^{-1}\!\left(\frac1s\right)}
\qquad\blacksquare
```

---

## Q8. Multiplication by t^n in the Laplace domain

**Problem.** If $`F(s) = \mathcal L\{f(t)\}`$, prove

```math
\mathcal L\{t^n f(t)\} = (-1)^n \frac{d^nF}{ds^n}
```

**Proof.** By definition $`F(s) = \int_0^\infty e^{-st}f(t)\,dt`$. Differentiating under the integral sign (valid under the usual conditions),

```math
\frac{dF}{ds} = \int_0^\infty (-t)\,e^{-st}f(t)\,dt = -\mathcal L\{t f(t)\}
```

so $`\mathcal L\{tf(t)\} = -F'(s)`$. Differentiating again gives $`\mathcal L\{t^2f(t)\} = F''(s)`$. Repeating $`n`$ times:

```math
\boxed{\mathcal L\{t^n f(t)\} = (-1)^n F^{(n)}(s)}
\qquad\blacksquare
```

---

## Q9. Transform of t² cos at

**Problem.** Evaluate $`\mathcal L\{t^2\cos at\}`$.

Using Q8 with $`n=2`$ and $`\mathcal L\{\cos at\} = \dfrac{s}{s^2+a^2}`$:

```math
\frac{d}{ds}\left(\frac{s}{s^2+a^2}\right) = \frac{a^2 - s^2}{(s^2+a^2)^2}
```

```math
\frac{d^2}{ds^2}\left(\frac{s}{s^2+a^2}\right) = \frac{2s(s^2 - 3a^2)}{(s^2+a^2)^3}
```

```math
\boxed{\mathcal L\{t^2\cos at\} = \frac{2s(s^2 - 3a^2)}{(s^2+a^2)^3}}
```

---

## Q10. Transform of t³ eᵗ

**Problem.** Evaluate $`\mathcal L\{t^3 e^t\}`$.

Using Q8 with $`n=3`$ and $`\mathcal L\{e^t\} = \dfrac{1}{s-1}`$:

```math
\mathcal L\{t^3e^t\} = -\frac{d^3}{ds^3}\left(\frac1{s-1}\right)
= -\left(-\frac{6}{(s-1)^4}\right)
= \boxed{\frac{6}{(s-1)^4}}
```

---

## Q11. Inverse transform and long-time response

**Problem.** Given $`X(s) = \dfrac{5}{s(s+2)}`$, find $`x(t)`$ and the long-time response.

Partial fractions:

```math
\frac{5}{s(s+2)} = \frac52\left(\frac1s - \frac1{s+2}\right)
\;\Longrightarrow\;
\boxed{x(t) = \frac52\left(1 - e^{-2t}\right)}
```

As $`t\to\infty`$ the transient $`-\tfrac52 e^{-2t}`$ decays to zero, so

```math
\boxed{\lim_{t\to\infty}x(t) = \frac52}
```

---

## Q12. Two inverse Laplace transforms

**(i)** Find $`\mathcal L^{-1}\left\{\dfrac{12}{s(s+3)}\right\}`$.

```math
\frac{12}{s(s+3)} = 4\left(\frac1s - \frac1{s+3}\right)
\;\Longrightarrow\;
\boxed{4\left(1 - e^{-3t}\right)}
```

**(ii)** Find $`\mathcal L^{-1}\left\{\dfrac{2s+6}{s^2+6s+8}\right\}`$.

Since $`s^2+6s+8 = (s+2)(s+4)`$,

```math
\frac{2s+6}{(s+2)(s+4)} = \frac1{s+2} + \frac1{s+4}
\;\Longrightarrow\;
\boxed{e^{-2t} + e^{-4t}}
```

---

## Q13. First-order IVP with constant forcing

**Problem.** Solve $`y' + 5y = 10`$, $`y(0) = 1`$.

```math
sY - 1 + 5Y = \frac{10}{s}
\;\Longrightarrow\;
Y = \frac{s+10}{s(s+5)} = \frac2s - \frac1{s+5}
```

```math
\boxed{y(t) = 2 - e^{-5t}}
```

Check: $`y(0) = 2 - 1 = 1`$ ✓

---

## Q14. First-order IVP with ramp input

**Problem.** Solve $`y' + 2y = 2u(t)`$ with $`u(t) = t`$ and $`y(0) = 0`$.

```math
(s+2)Y = \frac{2}{s^2}
\;\Longrightarrow\;
Y = \frac{2}{s^2(s+2)} = -\frac1{2s} + \frac1{s^2} + \frac1{2(s+2)}
```

```math
\boxed{y(t) = t - \frac12 + \frac12 e^{-2t}}
```

---

## Q15. First-order IVP with exponential input

**Problem.** Solve $`y' + 2y = 2u(t)`$ with $`u(t) = e^t`$ and $`y(0) = 0`$.

```math
(s+2)Y = \frac{2}{s-1}
\;\Longrightarrow\;
Y = \frac{2}{(s-1)(s+2)} = \frac23\cdot\frac1{s-1} - \frac23\cdot\frac1{s+2}
```

```math
\boxed{y(t) = \frac23 e^{t} - \frac23 e^{-2t}}
```

---

## Q16. Second-order homogeneous IVP

**Problem.** Solve $`y'' + 2y' + y = 0`$ with $`y(0) = 0`$, $`y'(0) = 2`$.

```math
\bigl[s^2Y - 2\bigr] + 2sY + Y = 0
\;\Longrightarrow\;
Y = \frac{2}{(s+1)^2}
```

Since $`\mathcal L^{-1}\{1/(s+1)^2\} = te^{-t}`$,

```math
\boxed{y(t) = 2te^{-t}}
```

---

## Q17. Second-order IVP with sin 3t forcing

**Problem.** Solve $`y'' + y = \sin 3t`$ with $`y(0) = 0`$, $`y'(0) = 0`$.

```math
(s^2+1)Y = \frac{3}{s^2+9}
\;\Longrightarrow\;
Y = \frac{3}{(s^2+1)(s^2+9)} = \frac38\left(\frac1{s^2+1} - \frac1{s^2+9}\right)
```

```math
y(t) = \frac38\sin t - \frac38\cdot\frac13\sin 3t
```

```math
\boxed{y(t) = \frac38\sin t - \frac18\sin 3t}
```

---

## Q18. Resonant IVP

**Problem.** Solve $`y'' + 25y = 10\cos 5t`$ with $`y(0) = 2`$, $`y'(0) = 0`$.

```math
(s^2+25)Y = 2s + \frac{10s}{s^2+25}
\;\Longrightarrow\;
Y = \frac{2s}{s^2+25} + \frac{10s}{(s^2+25)^2}
```

Using $`\mathcal L\{t\sin at\} = \dfrac{2as}{(s^2+a^2)^2}`$ with $`a=5`$:

```math
\boxed{y(t) = 2\cos 5t + t\sin 5t}
```

The amplitude grows linearly in $`t`$ because the forcing frequency equals the natural frequency, which is resonance.

---

## Q19. Forced IVP with repeated root

**Problem.** Solve $`y'' - 4y' + 4y = 64\sin 2t`$ with $`y(0) = 0`$, $`y'(0) = 1`$.

```math
(s-2)^2\,Y - 1 = \frac{128}{s^2+4}
\;\Longrightarrow\;
Y = \frac{1}{(s-2)^2} + \frac{128}{(s-2)^2(s^2+4)}
```

Partial fractions:

```math
\frac{128}{(s-2)^2(s^2+4)} = -\frac{8}{s-2} + \frac{16}{(s-2)^2} + \frac{8s}{s^2+4}
```

so

```math
Y = -\frac{8}{s-2} + \frac{17}{(s-2)^2} + \frac{8s}{s^2+4}
```

```math
\boxed{y(t) = -8e^{2t} + 17te^{2t} + 8\cos 2t}
```

**Check.** $`y(0) = -8 + 8 = 0`$ ✓. Also

```math
y'(t) = -16e^{2t} + 17e^{2t} + 34te^{2t} - 16\sin 2t
\;\Longrightarrow\;
y'(0) = -16 + 17 = 1 \;✓
```

---

# Quick Revision Summary

| Q | Topic | Final answer |
|---:|---|---|
| 1 | Directional derivative along surface normal | $`\dfrac{9}{\sqrt{29}}`$ |
| 2 | Orthogonal surfaces | $`\lambda = \dfrac52,\ \mu = 1`$ |
| 3 | Parallelepiped volume | $`488`$ cubic units |
| 4 | Coplanarity constant | $`a = -4`$ |
| 5 | BAC–CAB identity | $`\mathbf a\times(\mathbf b\times\mathbf c) = (\mathbf a\cdot\mathbf c)\mathbf b - (\mathbf a\cdot\mathbf b)\mathbf c`$ |
| 6 | Parallelogram area | $`5\sqrt6`$ |
| 7 | $`\mathcal L\{\int_0^t \sin u/u\,du\}`$ | $`\dfrac1s\tan^{-1}\dfrac1s`$ |
| 8 | Multiplication by $`t^n`$ | $`(-1)^nF^{(n)}(s)`$ |
| 9 | $`\mathcal L\{t^2\cos at\}`$ | $`\dfrac{2s(s^2-3a^2)}{(s^2+a^2)^3}`$ |
| 10 | $`\mathcal L\{t^3e^t\}`$ | $`\dfrac{6}{(s-1)^4}`$ |
| 11 | Position response | $`\dfrac52(1-e^{-2t})`$, limit $`\dfrac52`$ |
| 12(i) | Inverse Laplace | $`4(1-e^{-3t})`$ |
| 12(ii) | Inverse Laplace | $`e^{-2t}+e^{-4t}`$ |
| 13 | $`y'+5y=10,\ y(0)=1`$ | $`2-e^{-5t}`$ |
| 14 | $`y'+2y=2t,\ y(0)=0`$ | $`t-\dfrac12+\dfrac12e^{-2t}`$ |
| 15 | $`y'+2y=2e^t,\ y(0)=0`$ | $`\dfrac23(e^t-e^{-2t})`$ |
| 16 | $`y''+2y'+y=0`$ | $`2te^{-t}`$ |
| 17 | $`y''+y=\sin3t`$ | $`\dfrac38\sin t-\dfrac18\sin3t`$ |
| 18 | $`y''+25y=10\cos5t`$ | $`2\cos5t+t\sin5t`$ |
| 19 | $`y''-4y'+4y=64\sin2t`$ | $`-8e^{2t}+17te^{2t}+8\cos2t`$ |

# Key Formulas

## Vector calculus

**Gradient**

```math
\nabla\phi = \frac{\partial\phi}{\partial x}\mathbf i + \frac{\partial\phi}{\partial y}\mathbf j + \frac{\partial\phi}{\partial z}\mathbf k
```

**Divergence**

```math
\nabla\cdot\mathbf A = \frac{\partial A_1}{\partial x} + \frac{\partial A_2}{\partial y} + \frac{\partial A_3}{\partial z}
```

**Directional derivative**

```math
D_{\hat{\mathbf u}}\phi = \nabla\phi\cdot\hat{\mathbf u}
```

**Surface normal.** For $`F(x,y,z)=C`$, the normal is parallel to $`\nabla F`$.

**Scalar triple product and parallelepiped volume**

```math
V = \left|\mathbf a\cdot(\mathbf b\times\mathbf c)\right|
```

**BAC–CAB**

```math
\mathbf a\times(\mathbf b\times\mathbf c) = (\mathbf a\cdot\mathbf c)\mathbf b - (\mathbf a\cdot\mathbf b)\mathbf c
```

**Parallelogram area**

```math
A = |\mathbf a\times\mathbf b|
```

## Laplace transform

**Definition**

```math
\mathcal L\{f(t)\} = \int_0^\infty e^{-st}f(t)\,dt
```

**Multiplication by $`t^n`$**

```math
\mathcal L\{t^nf(t)\} = (-1)^n\frac{d^nF}{ds^n}
```

**Derivatives**

```math
\mathcal L\{f'\} = sF - f(0)
```

```math
\mathcal L\{f''\} = s^2F - sf(0) - f'(0)
```

```math
\mathcal L\{f'''\} = s^3F - s^2f(0) - sf'(0) - f''(0)
```

**First shifting property**

```math
\mathcal L\{e^{at}f(t)\} = F(s-a)
```

**Basic transforms**

```math
\mathcal L\{1\} = \frac1s,\qquad \mathcal L\{t^n\} = \frac{n!}{s^{n+1}},\qquad \mathcal L\{e^{at}\} = \frac1{s-a}
```

```math
\mathcal L\{\cos at\} = \frac{s}{s^2+a^2},\qquad \mathcal L\{\sin at\} = \frac{a}{s^2+a^2}
```
