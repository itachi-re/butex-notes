---
title: Solving ODEs with the Laplace Transform
module: MATH-103
topic: Laplace Transform — Initial Value Problems
tags: [laplace-transform, ode, partial-fractions, control-systems]
---

# Solving ODEs with the Laplace Transform

Three worked examples of using the Laplace transform to solve linear ODEs with initial conditions — the standard method: transform, solve algebraically for $Y(s)$, decompose into partial fractions, then invert.

---

## Problem 1 — First-Order Thermal Process Response

**Problem:** A simplified dryer temperature model is

$$y' + 2y = 2u(t), \qquad y(0) = 0$$

For a unit step input, find $y(t)$.

<details>
<summary><strong>Solution</strong></summary>

Since $u(t)$ is the unit step, $\mathcal{L}\{u(t)\} = \dfrac{1}{s}$, so $\mathcal{L}\{2u(t)\} = \dfrac{2}{s}$.

**Taking the Laplace transform of both sides:**

$$\mathcal{L}\{y' + 2y\} = \mathcal{L}\{2u(t)\}$$

$$sY(s) - y(0) + 2Y(s) = \frac{2}{s}$$

With $y(0) = 0$:

$$sY(s) + 2Y(s) = \frac{2}{s} \implies Y(s) = \frac{2}{s^2(s+2)}$$

**Partial fraction decomposition:**

$$\frac{2}{s^2(s+2)} = \frac{A}{s} + \frac{B}{s^2} + \frac{C}{s+2}$$

$$2 = As(s+2) + B(s+2) + Cs^2$$

- $s = 0$: $\quad 2 = 2B \implies B = 1$
- $s = -2$: $\quad 2 = 4C \implies C = \dfrac{1}{2}$
- Matching $s^2$ coefficients: $\ 0 = A + C \implies A = -\dfrac{1}{2}$

So:

$$Y(s) = -\frac{1}{2s} + \frac{1}{s^2} + \frac{1}{2(s+2)}$$

**Taking the inverse Laplace transform:**

$$y(t) = -\frac{1}{2} + t + \frac{1}{2}e^{-2t}$$

$$\boxed{y(t) = t - \frac{1}{2}\left(1 - e^{-2t}\right)}$$

</details>

---

## Problem 2 — First-Order Linear ODE with Constant Input

**Problem:** Solve using the Laplace transform:

$$y' + 5y = 10, \qquad y(0) = 1$$

<details>
<summary><strong>Solution</strong></summary>

**Taking the Laplace transform:**

$$\mathcal{L}\{y' + 5y\} = \mathcal{L}\{10\}$$

$$sY(s) - y(0) + 5Y(s) = \frac{10}{s}$$

With $y(0) = 1$:

$$sY(s) - 1 + 5Y(s) = \frac{10}{s}$$

$$(s+5)Y(s) = 1 + \frac{10}{s} = \frac{s+10}{s}$$

$$Y(s) = \frac{s+10}{s(s+5)}$$

**Partial fraction decomposition:**

$$\frac{s+10}{s(s+5)} = \frac{A}{s} + \frac{B}{s+5}$$

$$s + 10 = A(s+5) + Bs$$

- $s = 0$: $\quad 10 = 5A \implies A = 2$
- $s = -5$: $\quad -5 = -5B \implies B = 1$

So:

$$Y(s) = \frac{2}{s} + \frac{1}{s+5}$$

**Taking the inverse Laplace transform** (using $\mathcal{L}\{e^{at}\} = \dfrac{1}{s-a}$):

$$\boxed{y(t) = 2 + e^{-5t}}$$

</details>

---

## Problem 3 — Second-Order Homogeneous ODE

**Problem:** Solve using the Laplace transform:

$$y'' + 2y' + y = 0, \qquad y(0) = 0, \quad y'(0) = 2$$

<details>
<summary><strong>Solution</strong></summary>

**Taking the Laplace transform:**

$$\mathcal{L}\{y'' + 2y' + y\} = \mathcal{L}\{0\}$$

$$\left[s^2Y(s) - sy(0) - y'(0)\right] + 2\left[sY(s) - y(0)\right] + Y(s) = 0$$

With $y(0) = 0$, $y'(0) = 2$:

$$s^2Y(s) - 2 + 2sY(s) + Y(s) = 0$$

$$(s^2 + 2s + 1)\,Y(s) = 2$$

$$Y(s) = \frac{2}{s^2 + 2s + 1}$$

**Factoring the denominator:**

$$s^2 + 2s + 1 = (s+1)^2$$

$$Y(s) = \frac{2}{(s+1)^2}$$

**Taking the inverse Laplace transform** (using $\mathcal{L}\{te^{at}\} = \dfrac{1}{(s-a)^2}$):

$$\boxed{y(t) = 2te^{-t}}$$

</details>

---

## Key Laplace Transform Pairs Used

| $f(t)$ | $F(s) = \mathcal{L}\{f(t)\}$ |
|---|---|
| $u(t)$ (unit step) | $\dfrac{1}{s}$ |
| $1$ (constant) | $\dfrac{1}{s}$ |
| $t$ | $\dfrac{1}{s^2}$ |
| $e^{at}$ | $\dfrac{1}{s-a}$ |
| $te^{at}$ | $\dfrac{1}{(s-a)^2}$ |
| $y'(t)$ | $sY(s) - y(0)$ |
| $y''(t)$ | $s^2Y(s) - sy(0) - y'(0)$ |
