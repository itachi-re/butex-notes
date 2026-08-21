# Laplace Transform

**MS 103 — Mathematics II**
*Complete Study Guide: Definitions, Properties, Inverse Transforms, Convolution, and Applications to ODEs/PDEs*

---

## 1. Introduction to Laplace Transform

The **Laplace Transform** is an integral transform that converts a function of a real variable $t$ (usually representing time, with $t \ge 0$) into a function of a complex variable $s$. It is one of the most powerful tools in engineering mathematics because it converts **differential equations** in the $t$-domain into **algebraic equations** in the $s$-domain, which are far easier to manipulate and solve.

**Why Laplace transforms are useful:**

- They convert **linear ordinary differential equations (ODEs)** with constant coefficients into algebraic equations, avoiding the need to separately find complementary and particular solutions.
- **Initial conditions** are automatically built into the transformed equation (through the derivative theorems), so there is no need for a separate step of applying initial conditions to determine arbitrary constants.
- They handle **discontinuous forcing functions** (e.g., switches turning on at $t=a$) and **impulsive forcing** (e.g., a hammer blow) very naturally, using the unit-step function and the Dirac delta function.
- They are used extensively in **control systems, circuit analysis, signal processing, mechanical vibrations**, and **partial differential equations** describing heat conduction, wave propagation, and diffusion.

**Basic idea:** A function $f(t)$ defined for $t \ge 0$ is multiplied by a decaying exponential kernel $e^{-st}$ and integrated over all $t \ge 0$:

$$
f(t) \quad \xrightarrow{\ \mathcal{L}\ } \quad F(s) = \int_0^\infty e^{-st} f(t)\,dt
$$

The transform $F(s)$ lives in the "frequency" or "$s$-domain." After solving an algebraic problem in the $s$-domain, one recovers the physical solution $f(t)$ using the **inverse Laplace transform**:

$$
F(s) \quad \xrightarrow{\ \mathcal{L}^{-1}\ } \quad f(t)
$$

**Why differential equations become algebraic equations:** The key mechanism is the derivative property,
$$
\mathcal{L}\{f'(t)\} = sF(s) - f(0),
$$
which replaces the operation of *differentiation* in $t$ with *multiplication by $s$* in the $s$-domain (together with a correction term carrying the initial condition). Repeated differentiation becomes repeated multiplication by $s$, so an $n$-th order linear ODE becomes a polynomial (algebraic) equation in $s$.

**A simple illustrative example.** Consider $f(t) = 1$ for $t \ge 0$. By definition,
$$
\mathcal{L}\{1\} = \int_0^\infty e^{-st}(1)\,dt = \left[-\frac{e^{-st}}{s}\right]_0^\infty = \frac{1}{s}, \qquad s>0.
$$
This single computation already shows the essential mechanics: an integral in $t$ produces an algebraic expression in $s$. The rest of this guide develops this idea systematically, from elementary transforms through full ODE/PDE solution techniques.

---

# Part I — Definition of Laplace Transform

## 2. Definition

> **Definition (One-Sided / Unilateral Laplace Transform).** Let $f(t)$ be a function defined for $t \ge 0$. The Laplace transform of $f$, denoted $\mathcal{L}\{f(t)\}$ or $F(s)$, is defined by
>
> $$
> \boxed{\;\mathcal{L}\{f(t)\} = F(s) = \int_0^\infty e^{-st} f(t)\, dt\;}
> $$
>
> provided the improper integral converges.

**Meaning of each symbol:**

- $t$ — the independent variable of the original function, usually representing time, $t \ge 0$.
- $s$ — the transform variable, in general a **complex number** $s = \sigma + i\omega$, though for undergraduate purposes we treat $s$ as a real variable large enough for convergence.
- $f(t)$ — the given function in the **time domain**.
- $F(s) = \mathcal{L}\{f(t)\}$ — the corresponding function in the **$s$-domain** (also called the "transform domain" or, informally, the "frequency domain").
- **Integration limits** $0$ to $\infty$ — this is what makes the transform *one-sided*: only the behaviour of $f(t)$ for $t \ge 0$ matters; whatever $f$ does for $t<0$ is irrelevant (it is implicitly taken to be $0$).
- **Exponential kernel** $e^{-st}$ — this decaying factor (for $s$ sufficiently large/positive) tames the growth of $f(t)$ so that the integral can converge even if $f(t)$ itself grows with $t$.

**Interpretation.** $F(s)$ can be thought of as a weighted "total accumulation" of $f(t)$, where each instant $t$ is weighted by $e^{-st}$. Larger $s$ suppresses the contribution of large $t$ more strongly; this is why $F(s)$ is typically well-behaved (analytic) for $s$ larger than some threshold, and why the transform packages the entire history of $f(t)$ into a single function of $s$.

**One-sided vs. two-sided (bilateral) transform.** The **bilateral (two-sided) Laplace transform** is defined by
$$
F_B(s) = \int_{-\infty}^{\infty} e^{-st} f(t)\, dt,
$$
which requires knowledge of $f(t)$ for all real $t$. It is used in advanced signal-processing contexts. In this course (MS 103), **we use exclusively the one-sided (unilateral) Laplace transform**, since essentially all applications (ODE initial-value problems, causal signals) begin at $t=0$.

**Ordinary Laplace transform vs. inverse Laplace transform.**

| Operation | Symbol | Direction |
|---|---|---|
| Laplace transform | $\mathcal{L}\{f(t)\} = F(s)$ | $t$-domain $\to$ $s$-domain |
| Inverse Laplace transform | $\mathcal{L}^{-1}\{F(s)\} = f(t)$ | $s$-domain $\to$ $t$-domain |

---

## 3. Existence of the Laplace Transform

Not every function has a Laplace transform, because the defining integral may diverge. However, a broad and practically sufficient set of conditions guarantees existence.

### Piecewise continuity

> **Definition.** A function $f(t)$ is **piecewise continuous** on a finite interval $[0, A]$ if:
> 1. $[0,A]$ can be divided into a finite number of subintervals on each of which $f$ is continuous, and
> 2. $f$ has finite (one-sided) left- and right-hand limits at each subinterval endpoint (jump discontinuities are allowed, but not infinite discontinuities).

Piecewise continuity guarantees that $\int_0^A e^{-st} f(t)\, dt$ exists as an ordinary (proper or improper-but-convergent) integral for every finite $A$; the only remaining concern is the behaviour as $A \to \infty$.

### Exponential order

> **Definition.** A function $f(t)$ is of **exponential order $a$** as $t \to \infty$ if there exist constants $M > 0$, $a \in \mathbb{R}$, and $T \ge 0$ such that
> $$
> |f(t)| \le M e^{at} \qquad \text{for all } t \ge T.
> $$

This means $f(t)$ does not grow faster than some exponential $e^{at}$. Functions like $t^n$, $\sin(bt)$, $\cos(bt)$, $e^{ct}$ (for any real $c$) are all of exponential order. Functions like $e^{t^2}$ are **not** of exponential order, and indeed $\mathcal{L}\{e^{t^2}\}$ does not exist for any $s$.

### Sufficient condition for existence

> **Theorem (Existence of the Laplace Transform).** If $f(t)$ is piecewise continuous on every finite interval $[0,A]$ and of exponential order $a$ (i.e., $|f(t)| \le M e^{at}$ for $t \ge T$), then $\mathcal{L}\{f(t)\}$ exists for all $s > a$.

**Why this works:** For $s > a$,
$$
\left|\int_0^\infty e^{-st}f(t)\,dt\right| \le \int_0^\infty e^{-st}|f(t)|\,dt \le \int_0^T e^{-st}|f(t)|\,dt + \int_T^\infty e^{-st}Me^{at}\,dt.
$$
The first integral is finite because it is a proper (or piecewise-continuous, finite-interval) integral. The second integral equals
$$
M\int_T^\infty e^{-(s-a)t}\,dt = \frac{Me^{-(s-a)T}}{s-a},
$$
which is finite precisely when $s > a$. Hence the whole improper integral converges absolutely for $s>a$.

> **Remark.** These conditions are *sufficient*, not *necessary* — some functions violating them (e.g., functions with mild singularities like $t^{-1/2}$ at $t=0$) can still have a Laplace transform. But for this course, essentially every function encountered (polynomials, exponentials, sines, cosines, and their combinations) satisfies these conditions comfortably.

### Region of convergence (ROC)

The set of all $s$ for which the defining integral converges is called the **region of convergence**. For one-sided transforms of exponential-order functions, the ROC is always of the form $s > a$ (a half-plane in the complex $s$-plane, or a half-line if we restrict to real $s$), where $a$ is (essentially) the exponential growth rate of $f(t)$. When we write, e.g., $\mathcal{L}\{e^{at}\} = \dfrac{1}{s-a}$, the accompanying condition "$s > a$" specifies this region — outside it the integral formula is not valid even though the algebraic expression $\frac{1}{s-a}$ may still make sense.

---

## 4. Linearity

> **Theorem (Linearity of the Laplace Transform).** If $\mathcal{L}\{f(t)\} = F(s)$ and $\mathcal{L}\{g(t)\} = G(s)$ both exist, and $a, b$ are constants, then
>
> $$
> \boxed{\;\mathcal{L}\{af(t) + bg(t)\} = aF(s) + bG(s)\;}
> $$

**Proof.** Directly from the definition:
$$
\mathcal{L}\{af(t)+bg(t)\} = \int_0^\infty e^{-st}\big(af(t)+bg(t)\big)\,dt = a\int_0^\infty e^{-st}f(t)\,dt + b\int_0^\infty e^{-st}g(t)\,dt = aF(s)+bG(s).
$$
This follows immediately from the linearity of the (ordinary or improper Riemann) integral itself. $\blacksquare$

**Example 4.1.** Find $\mathcal{L}\{3 + 5t\}$.

Using linearity and $\mathcal{L}\{1\} = 1/s$, $\mathcal{L}\{t\} = 1/s^2$ (derived in Section 6):
$$
\mathcal{L}\{3+5t\} = 3\cdot\frac1s + 5\cdot\frac1{s^2} = \frac{3}{s}+\frac{5}{s^2} = \frac{3s+5}{s^2}.
$$

**Example 4.2.** Find $\mathcal{L}\{4\sin 2t - 3\cos 2t\}$.

Using $\mathcal{L}\{\sin at\} = \frac{a}{s^2+a^2}$ and $\mathcal{L}\{\cos at\} = \frac{s}{s^2+a^2}$ with $a=2$:
$$
\mathcal{L}\{4\sin 2t - 3\cos 2t\} = 4\cdot\frac{2}{s^2+4} - 3\cdot\frac{s}{s^2+4} = \frac{8-3s}{s^2+4}.
$$

---

# Part II — Laplace Transform of Elementary Functions

## 5. Basic Transform Table

| $f(t)$ | $F(s) = \mathcal{L}\{f(t)\}$ | Condition |
|---|---|---|
| $1$ | $\dfrac{1}{s}$ | $s>0$ |
| $t^n$ ($n$ = non-negative integer) | $\dfrac{n!}{s^{n+1}}$ | $s>0$ |
| $t^n$ ($n>-1$, real) | $\dfrac{\Gamma(n+1)}{s^{n+1}}$ | $s>0$ |
| $e^{at}$ | $\dfrac{1}{s-a}$ | $s>a$ |
| $\sin at$ | $\dfrac{a}{s^2+a^2}$ | $s>0$ |
| $\cos at$ | $\dfrac{s}{s^2+a^2}$ | $s>0$ |
| $\sinh at$ | $\dfrac{a}{s^2-a^2}$ | $s>|a|$ |
| $\cosh at$ | $\dfrac{s}{s^2-a^2}$ | $s>|a|$ |

Here $\Gamma(n+1) = n!$ for non-negative integers $n$, and more generally $\Gamma(x) = \int_0^\infty t^{x-1}e^{-t}\,dt$ is the Gamma function, needed for non-integer powers such as $t^{1/2}$.

---

## 6. Derivation of Important Elementary Transforms

### (a) $\mathcal{L}\{1\}$

$$
\mathcal{L}\{1\} = \int_0^\infty e^{-st}\,dt = \left[-\frac{e^{-st}}{s}\right]_0^\infty = \left(0\right) - \left(-\frac1s\right) = \frac1s, \qquad s>0.
$$
(The boundary term at $\infty$ vanishes because $e^{-st}\to 0$ as $t\to\infty$ when $s>0$.)

### (b) $\mathcal{L}\{t^n\}$ for non-negative integers $n$

We use integration by parts repeatedly, or directly relate the integral to the Gamma function. Start with
$$
\mathcal{L}\{t^n\} = \int_0^\infty e^{-st}t^n\,dt.
$$
Substitute $u = st$ (so $t = u/s$, $dt = du/s$, valid for $s>0$):
$$
\mathcal{L}\{t^n\} = \int_0^\infty e^{-u}\left(\frac{u}{s}\right)^n \frac{du}{s} = \frac{1}{s^{n+1}}\int_0^\infty e^{-u}u^n\,du = \frac{\Gamma(n+1)}{s^{n+1}}.
$$
For non-negative integer $n$, $\Gamma(n+1) = n!$, giving
$$
\mathcal{L}\{t^n\} = \frac{n!}{s^{n+1}}, \qquad s>0.
$$

**Verification by induction (alternative derivation).** Let $I_n = \int_0^\infty e^{-st}t^n\,dt$. Integrating by parts with $u=t^n$, $dv=e^{-st}dt$:
$$
I_n = \left[-\frac{t^n e^{-st}}{s}\right]_0^\infty + \frac{n}{s}\int_0^\infty e^{-st}t^{n-1}\,dt = 0 + \frac{n}{s}I_{n-1}.
$$
With $I_0 = 1/s$, this recursion gives $I_n = \dfrac{n!}{s^{n+1}}$, confirming the result.

### (c) $\mathcal{L}\{e^{at}\}$

$$
\mathcal{L}\{e^{at}\} = \int_0^\infty e^{-st}e^{at}\,dt = \int_0^\infty e^{-(s-a)t}\,dt = \left[-\frac{e^{-(s-a)t}}{s-a}\right]_0^\infty = \frac{1}{s-a}, \qquad s>a.
$$
(The exponent $-(s-a)t \to -\infty$ requires $s>a$ for the boundary term at $\infty$ to vanish.)

### (d) $\mathcal{L}\{\sin at\}$ and $\mathcal{L}\{\cos at\}$ (via complex exponentials)

Using Euler's formula, $e^{iat} = \cos at + i\sin at$, so
$$
\mathcal{L}\{e^{iat}\} = \mathcal{L}\{\cos at\} + i\,\mathcal{L}\{\sin at\}.
$$
Formally extending the exponential-transform result (c) to complex $a$ (valid by analytic continuation, for $s>0$):
$$
\mathcal{L}\{e^{iat}\} = \frac{1}{s-ia} = \frac{1}{s-ia}\cdot\frac{s+ia}{s+ia} = \frac{s+ia}{s^2+a^2} = \frac{s}{s^2+a^2} + i\frac{a}{s^2+a^2}.
$$
Comparing real and imaginary parts:
$$
\mathcal{L}\{\cos at\} = \frac{s}{s^2+a^2}, \qquad \mathcal{L}\{\sin at\} = \frac{a}{s^2+a^2}, \qquad s>0.
$$

**Alternative derivation (direct integration by parts) for $\mathcal{L}\{\sin at\}$:**

Let $I = \int_0^\infty e^{-st}\sin at\,dt$. Integrate by parts twice:
$$
I = \left[-\frac{e^{-st}\sin at}{s}\right]_0^\infty + \frac{a}{s}\int_0^\infty e^{-st}\cos at\,dt = 0 + \frac{a}{s}J,
$$
where $J = \int_0^\infty e^{-st}\cos at\,dt$. Integrating $J$ by parts:
$$
J = \left[-\frac{e^{-st}\cos at}{s}\right]_0^\infty - \frac{a}{s}\int_0^\infty e^{-st}\sin at\,dt = \frac1s - \frac{a}{s}I.
$$
Substituting back:
$$
I = \frac{a}{s}\left(\frac1s - \frac{a}{s}I\right) = \frac{a}{s^2} - \frac{a^2}{s^2}I \implies I\left(1+\frac{a^2}{s^2}\right) = \frac{a}{s^2} \implies I = \frac{a}{s^2+a^2}.
$$
This confirms $\mathcal{L}\{\sin at\} = \dfrac{a}{s^2+a^2}$, and substituting back into $J = \frac1s - \frac{a}{s}I$ gives $J = \dfrac{s}{s^2+a^2} = \mathcal{L}\{\cos at\}$.

### (e) $\mathcal{L}\{\sinh at\}$ and $\mathcal{L}\{\cosh at\}$

Since $\sinh at = \dfrac{e^{at}-e^{-at}}{2}$ and $\cosh at = \dfrac{e^{at}+e^{-at}}{2}$, linearity together with (c) gives
$$
\mathcal{L}\{\sinh at\} = \frac12\left(\frac{1}{s-a}-\frac{1}{s+a}\right) = \frac12\cdot\frac{(s+a)-(s-a)}{s^2-a^2} = \frac{a}{s^2-a^2}, \qquad s>|a|,
$$
$$
\mathcal{L}\{\cosh at\} = \frac12\left(\frac{1}{s-a}+\frac{1}{s+a}\right) = \frac12\cdot\frac{(s+a)+(s-a)}{s^2-a^2} = \frac{s}{s^2-a^2}, \qquad s>|a|.
$$

---

# Part III — Important Properties of Laplace Transform

## 7. First Shifting Theorem (Shifting in the $s$-Domain)

> **Theorem.** If $\mathcal{L}\{f(t)\} = F(s)$, then for any constant $a$,
>
> $$
> \boxed{\;\mathcal{L}\{e^{at}f(t)\} = F(s-a)\;}
> $$

**Proof.**
$$
\mathcal{L}\{e^{at}f(t)\} = \int_0^\infty e^{-st}e^{at}f(t)\,dt = \int_0^\infty e^{-(s-a)t}f(t)\,dt = F(s-a). \qquad \blacksquare
$$

**Interpretation:** Multiplying $f(t)$ by $e^{at}$ in the $t$-domain **shifts** the transform variable: everywhere $s$ appeared in $F(s)$, it is replaced by $s-a$.

**Example 7.1.** $\mathcal{L}\{e^{2t}\sin 3t\}$.

Here $F(s) = \mathcal{L}\{\sin 3t\} = \dfrac{3}{s^2+9}$. Replacing $s\to s-2$:
$$
\mathcal{L}\{e^{2t}\sin 3t\} = \frac{3}{(s-2)^2+9}.
$$

**Example 7.2.** $\mathcal{L}\{e^{-3t}t^2\}$.

$F(s) = \mathcal{L}\{t^2\} = \dfrac{2}{s^3}$. Replacing $s \to s-(-3) = s+3$:
$$
\mathcal{L}\{e^{-3t}t^2\} = \frac{2}{(s+3)^3}.
$$

**Example 7.3.** $\mathcal{L}\{e^{4t}\cosh 2t\}$.

$F(s) = \dfrac{s}{s^2-4}$, so replacing $s\to s-4$:
$$
\mathcal{L}\{e^{4t}\cosh 2t\} = \frac{s-4}{(s-4)^2-4}.
$$

---

## 8. Second Shifting Theorem (Shifting in the $t$-Domain)

**Unit-step (Heaviside) function:**
$$
u(t-a) = \begin{cases} 0, & t<a \\ 1, & t\ge a \end{cases}
$$

> **Theorem (Second Shifting Theorem).** If $\mathcal{L}\{f(t)\} = F(s)$, then
>
> $$
> \boxed{\;\mathcal{L}\{f(t-a)u(t-a)\} = e^{-as}F(s)\;} \qquad (a\ge 0)
> $$

**Proof.**
$$
\mathcal{L}\{f(t-a)u(t-a)\} = \int_0^\infty e^{-st}f(t-a)u(t-a)\,dt = \int_a^\infty e^{-st}f(t-a)\,dt.
$$
Substitute $\tau = t-a$, $dt = d\tau$, limits $\tau: 0 \to \infty$:
$$
= \int_0^\infty e^{-s(\tau+a)}f(\tau)\,d\tau = e^{-as}\int_0^\infty e^{-s\tau}f(\tau)\,d\tau = e^{-as}F(s). \qquad \blacksquare
$$

**A companion, frequently-used form:** if $g(t)$ is a function and we want the transform of $g(t)u(t-a)$ (not "shifted" but merely "switched on" at $t=a$), write $g(t) = f(t-a)$ where $f(t) = g(t+a)$; then
$$
\mathcal{L}\{g(t)u(t-a)\} = e^{-as}\,\mathcal{L}\{g(t+a)\}.
$$

> **How the theorem is used:** Given a piecewise function, express it using unit-step functions, identify the "shifted" piece $f(t-a)$, find $F(s) = \mathcal{L}\{f(t)\}$, and multiply by $e^{-as}$.

**Example 8.1.** Find $\mathcal{L}\{(t-2)^3 u(t-2)\}$.

Here $f(t) = t^3$, $F(s) = \dfrac{6}{s^4}$, $a=2$. Directly:
$$
\mathcal{L}\{(t-2)^3u(t-2)\} = e^{-2s}\cdot\frac{6}{s^4}.
$$

**Example 8.2.** Find $\mathcal{L}\{\sin(t-\pi)u(t-\pi)\}$.

$f(t)=\sin t$, $F(s) = \dfrac{1}{s^2+1}$, $a=\pi$:
$$
\mathcal{L}\{\sin(t-\pi)u(t-\pi)\} = e^{-\pi s}\cdot\frac{1}{s^2+1}.
$$

**Example 8.3 (piecewise function).** Let
$$
f(t) = \begin{cases} t^2, & 0\le t<1 \\ 2t-1, & t\ge 1.\end{cases}
$$
Write $f(t)$ in terms of unit-step functions and find $\mathcal{L}\{f(t)\}$.

**Given:** The piecewise definition above.
**Required:** $\mathcal{L}\{f(t)\}$.
**Method:** Express $f(t) = t^2 + u(t-1)\big[(2t-1) - t^2\big]$, then rewrite the bracket in terms of $(t-1)$.
**Solution:**
$$
f(t) = t^2\big[1-u(t-1)\big] + (2t-1)u(t-1) = t^2 + u(t-1)\big[(2t-1)-t^2\big].
$$
Let $g(t) = (2t-1)-t^2 = -t^2+2t-1 = -(t-1)^2$. So the bracket, written in terms of $(t-1)$, is exactly $-(t-1)^2$:
$$
f(t) = t^2 - (t-1)^2 u(t-1).
$$
Taking the transform term by term:
$$
\mathcal{L}\{t^2\} = \frac{2}{s^3}, \qquad \mathcal{L}\{(t-1)^2u(t-1)\} = e^{-s}\cdot\frac{2}{s^3}.
$$
**Answer:**
$$
\boxed{\mathcal{L}\{f(t)\} = \frac{2}{s^3} - e^{-s}\frac{2}{s^3} = \frac{2}{s^3}\left(1-e^{-s}\right).}
$$
**Verification:** At $t=1^-$, $f=1$; at $t=1^+$, $f=1$ — consistent, function continuous, so no delta-function contribution should appear, consistent with the absence of any extra constant term.

---

## 9. Change of Scale / Scaling Property

> **Theorem.** If $\mathcal{L}\{f(t)\} = F(s)$ and $a>0$, then
>
> $$
> \boxed{\;\mathcal{L}\{f(at)\} = \frac1a F\!\left(\frac{s}{a}\right)\;}
> $$

**Proof.** By definition,
$$
\mathcal{L}\{f(at)\} = \int_0^\infty e^{-st}f(at)\,dt.
$$
Substitute $u=at$ (so $t=u/a$, $dt = du/a$; since $a>0$, limits stay $0\to\infty$):
$$
= \int_0^\infty e^{-s u/a}f(u)\,\frac{du}{a} = \frac1a\int_0^\infty e^{-(s/a)u}f(u)\,du = \frac1a F\!\left(\frac{s}{a}\right). \qquad \blacksquare
$$

**Example 9.1.** Given $\mathcal{L}\{\sin t\} = \dfrac{1}{s^2+1}$, find $\mathcal{L}\{\sin 3t\}$ using the scaling property.

With $a=3$, $F(s) = \dfrac{1}{s^2+1}$:
$$
\mathcal{L}\{\sin 3t\} = \frac13 F\left(\frac{s}{3}\right) = \frac13\cdot\frac{1}{(s/3)^2+1} = \frac13\cdot\frac{9}{s^2+9} = \frac{3}{s^2+9},
$$
which agrees with the standard formula $\mathcal{L}\{\sin at\}=\frac{a}{s^2+a^2}$ at $a=3$.

**Example 9.2.** Given $\mathcal{L}\{t^2\} = 2/s^3$, verify $\mathcal{L}\{(2t)^2\}$ via scaling.

$\mathcal{L}\{f(2t)\} = \frac12 F(s/2) = \frac12\cdot\frac{2}{(s/2)^3} = \frac12\cdot\frac{2\cdot 8}{s^3}=\frac{8}{s^3}$. Direct check: $(2t)^2=4t^2$, $\mathcal{L}\{4t^2\}=4\cdot\frac{2}{s^3}=\frac8{s^3}$. Matches.

---

## 10. Differentiation in the $s$-Domain (Multiplication by $t$)

> **Theorem.** If $\mathcal{L}\{f(t)\}=F(s)$, then
>
> $$
> \boxed{\;\mathcal{L}\{tf(t)\} = -F'(s)\;}, \qquad \boxed{\;\mathcal{L}\{t^nf(t)\} = (-1)^nF^{(n)}(s)\;}
> $$

**Proof.** Differentiate $F(s) = \int_0^\infty e^{-st}f(t)\,dt$ with respect to $s$ under the integral sign (justified for $s$ in the interior of the region of convergence):
$$
F'(s) = \int_0^\infty \frac{\partial}{\partial s}\left[e^{-st}\right]f(t)\,dt = \int_0^\infty (-t)e^{-st}f(t)\,dt = -\int_0^\infty e^{-st}\big[tf(t)\big]\,dt = -\mathcal{L}\{tf(t)\}.
$$
Hence $\mathcal{L}\{tf(t)\} = -F'(s)$. Differentiating $n$ times gives $F^{(n)}(s) = (-1)^n\mathcal{L}\{t^nf(t)\}$, i.e., $\mathcal{L}\{t^nf(t)\}=(-1)^nF^{(n)}(s)$. $\blacksquare$

**Example 10.1.** Find $\mathcal{L}\{t\sin at\}$.

$F(s)=\dfrac{a}{s^2+a^2}$. Then
$$
F'(s) = a\cdot\frac{-2s}{(s^2+a^2)^2} = \frac{-2as}{(s^2+a^2)^2}.
$$
So
$$
\mathcal{L}\{t\sin at\} = -F'(s) = \frac{2as}{(s^2+a^2)^2}.
$$

**Example 10.2.** Find $\mathcal{L}\{t\cos at\}$.

$F(s) = \dfrac{s}{s^2+a^2}$. By the quotient rule,
$$
F'(s) = \frac{(s^2+a^2)(1) - s(2s)}{(s^2+a^2)^2} = \frac{a^2-s^2}{(s^2+a^2)^2}.
$$
So
$$
\mathcal{L}\{t\cos at\} = -F'(s) = \frac{s^2-a^2}{(s^2+a^2)^2}.
$$

**Example 10.3.** Find $\mathcal{L}\{t^2e^{at}\}$.

$F(s) = \dfrac{1}{s-a}$, $F'(s) = -\dfrac{1}{(s-a)^2}$, $F''(s) = \dfrac{2}{(s-a)^3}$.
$$
\mathcal{L}\{t^2e^{at}\} = (-1)^2F''(s) = \frac{2}{(s-a)^3}.
$$

---

## 11. Integration in the $s$-Domain (Division by $t$)

> **Theorem.** If $\mathcal{L}\{f(t)\}=F(s)$ and $\displaystyle\lim_{t\to 0^+}\frac{f(t)}{t}$ exists (finite), then
>
> $$
> \boxed{\;\mathcal{L}\left\{\frac{f(t)}{t}\right\} = \int_s^\infty F(\sigma)\, d\sigma\;}
> $$

**Derivation.** Let $g(t) = f(t)/t$, so $f(t) = tg(t)$. By the multiplication-by-$t$ theorem (Section 10), $\mathcal{L}\{tg(t)\} = -G'(s)$ where $G(s)=\mathcal{L}\{g(t)\}$. Hence $F(s) = -G'(s)$, i.e., $G'(s) = -F(s)$. Integrating from $s$ to $\infty$ (and using $G(\infty)=0$, since Laplace transforms vanish as $s\to\infty$):
$$
\int_s^\infty G'(\sigma)\,d\sigma = G(\infty)-G(s) = -G(s) = -\int_s^\infty F(\sigma)\,d\sigma,
$$
so $G(s) = \displaystyle\int_s^\infty F(\sigma)\,d\sigma$, i.e., $\mathcal{L}\{f(t)/t\} = \int_s^\infty F(\sigma)\,d\sigma$. $\blacksquare$

> **Important condition:** This formula is only valid when $\lim_{t\to0^+} f(t)/t$ is **finite** — otherwise $f(t)/t$ itself may not have a Laplace transform (e.g., $f(t)=1 \Rightarrow f(t)/t = 1/t$, which blows up at $t=0$ and has *no* Laplace transform).

**Example 11.1.** Find $\mathcal{L}\left\{\dfrac{\sin at}{t}\right\}$.

Here $f(t)=\sin at$, $\lim_{t\to0}\frac{\sin at}{t}=a$ (finite), so the formula applies. $F(s) = \dfrac{a}{s^2+a^2}$.
$$
\mathcal{L}\left\{\frac{\sin at}{t}\right\} = \int_s^\infty \frac{a}{\sigma^2+a^2}\,d\sigma = \Big[\arctan(\sigma/a)\Big]_s^\infty = \frac{\pi}{2}-\arctan\!\left(\frac{s}{a}\right) = \operatorname{arccot}\left(\frac{s}{a}\right).
$$

**Example 11.2.** Find $\mathcal{L}\left\{\dfrac{e^{-at}-e^{-bt}}{t}\right\}$.

$f(t) = e^{-at}-e^{-bt}$, $\lim_{t\to0}f(t)/t = -a-(-b) = b-a$ (finite; by L'Hôpital). $F(s) = \dfrac1{s+a}-\dfrac1{s+b}$.
$$
\mathcal{L}\left\{\frac{e^{-at}-e^{-bt}}{t}\right\} = \int_s^\infty\left(\frac1{\sigma+a}-\frac1{\sigma+b}\right)d\sigma = \Big[\ln(\sigma+a)-\ln(\sigma+b)\Big]_s^\infty = \ln\frac{s+b}{s+a}.
$$
(The boundary term at $\infty$ vanishes since $\ln\frac{\sigma+a}{\sigma+b}\to \ln 1 = 0$.)

---

## 12. Differentiation in the $t$-Domain (Derivative Theorems)

> **Theorem (First Derivative).** If $f(t)$ is continuous for $t\ge0$, of exponential order, and $f'(t)$ is piecewise continuous, then
>
> $$
> \boxed{\;\mathcal{L}\{f'(t)\} = sF(s) - f(0)\;}
> $$

**Proof.** Integrate by parts with $u=f(t)$, $dv=e^{-st}dt$ (so $v=-e^{-st}/s$):
$$
\mathcal{L}\{f'(t)\} = \int_0^\infty e^{-st}f'(t)\,dt = \Big[e^{-st}f(t)\Big]_0^\infty + s\int_0^\infty e^{-st}f(t)\,dt.
$$
Since $f$ is of exponential order, $e^{-st}f(t)\to 0$ as $t\to\infty$ (for $s$ large enough), so the boundary term is $0 - f(0) = -f(0)$. Thus
$$
\mathcal{L}\{f'(t)\} = -f(0) + sF(s) = sF(s)-f(0). \qquad \blacksquare
$$

> **Theorem (Second Derivative).**
> $$
> \boxed{\;\mathcal{L}\{f''(t)\} = s^2F(s) - sf(0) - f'(0)\;}
> $$

**Derivation.** Apply the first-derivative formula to $g(t)=f'(t)$: $\mathcal{L}\{g'(t)\}=s\mathcal{L}\{g(t)\}-g(0) = s\mathcal{L}\{f'(t)\}-f'(0)$. Substitute $\mathcal{L}\{f'(t)\}=sF(s)-f(0)$:
$$
\mathcal{L}\{f''(t)\} = s\big[sF(s)-f(0)\big]-f'(0) = s^2F(s)-sf(0)-f'(0). \qquad \blacksquare
$$

> **Theorem ($n$-th Derivative).**
> $$
> \boxed{\;\mathcal{L}\{f^{(n)}(t)\} = s^nF(s) - s^{n-1}f(0) - s^{n-2}f'(0) - \cdots - f^{(n-1)}(0)\;}
> $$
> i.e.
> $$
> \mathcal{L}\{f^{(n)}(t)\} = s^nF(s) - \sum_{k=0}^{n-1}s^{n-1-k}f^{(k)}(0).
> $$

This follows by mathematical induction, repeating the integration-by-parts argument above.

**Why this property is central to ODE applications:** It converts *derivatives* into *powers of $s$ multiplied by $F(s)$*, with all initial conditions appearing explicitly and automatically as additive constant terms. This is precisely the mechanism that turns a linear ODE with given initial conditions into a single algebraic equation for $F(s) = Y(s)$ (see Part VII).

**Example 12.1.** Given $y(0)=2$, find $\mathcal{L}\{y'(t)\}$ in terms of $Y(s)=\mathcal{L}\{y(t)\}$.
$$
\mathcal{L}\{y'(t)\} = sY(s)-y(0) = sY(s)-2.
$$

**Example 12.2.** Given $y(0)=1$, $y'(0)=-3$, find $\mathcal{L}\{y''(t)\}$.
$$
\mathcal{L}\{y''(t)\} = s^2Y(s)-sy(0)-y'(0) = s^2Y(s)-s+3.
$$

---

## 13. Integration in the $t$-Domain

> **Theorem.** If $\mathcal{L}\{f(t)\}=F(s)$, then
>
> $$
> \boxed{\;\mathcal{L}\left\{\int_0^t f(u)\,du\right\} = \frac{F(s)}{s}\;}
> $$

**Proof.** Let $g(t) = \int_0^t f(u)\,du$, so $g(0)=0$ and $g'(t)=f(t)$. By the derivative theorem (Section 12),
$$
\mathcal{L}\{g'(t)\} = s\,\mathcal{L}\{g(t)\} - g(0) \implies F(s) = s\,\mathcal{L}\{g(t)\} - 0,
$$
so $\mathcal{L}\{g(t)\} = F(s)/s$. $\blacksquare$

**Example 13.1.** Find $\mathcal{L}\left\{\displaystyle\int_0^t \sin au\,du\right\}$.

$F(s)=\mathcal{L}\{\sin at\}=\dfrac{a}{s^2+a^2}$.
$$
\mathcal{L}\left\{\int_0^t\sin au\,du\right\} = \frac1s\cdot\frac{a}{s^2+a^2} = \frac{a}{s(s^2+a^2)}.
$$
**Verification:** $\int_0^t\sin au\,du = \dfrac{1-\cos at}{a}$. Taking the transform directly: $\mathcal L\{1/a - \cos(at)/a\} = \frac1a\left(\frac1s - \frac{s}{s^2+a^2}\right) = \frac1a\cdot\frac{a^2}{s(s^2+a^2)} = \frac{a}{s(s^2+a^2)}$. Matches. ✓

**Example 13.2.** Find $\mathcal{L}\left\{\displaystyle\int_0^t ue^{-u}\,du\right\}$.

$F(s) = \mathcal{L}\{te^{-t}\} = \dfrac{1}{(s+1)^2}$ (using first shifting on $\mathcal{L}\{t\}=1/s^2$).
$$
\mathcal{L}\left\{\int_0^t ue^{-u}\,du\right\} = \frac{1}{s(s+1)^2}.
$$

---

## 14. Multiplication and Division by $t$ (Summary)

These two properties, already derived above, are frequently grouped together as a pair since they are inverses of each other in a formal sense:

$$
\mathcal{L}\{tf(t)\} = -F'(s) \qquad \text{(differentiation in } s\text{, Section 10)}
$$
$$
\mathcal{L}\left\{\frac{f(t)}{t}\right\} = \int_s^\infty F(\sigma)\,d\sigma \qquad \text{(integration in } s\text{, Section 11, valid only if } \lim_{t\to0^+}f(t)/t \text{ is finite)}
$$

> **Caution:** The division-by-$t$ formula must **never** be applied blindly. Always check $\lim_{t\to0^+} f(t)/t$ is finite first. For example, $f(t) = \cos t \Rightarrow \lim_{t\to0}\frac{\cos t}{t} = \infty$, so $\mathcal{L}\{(\cos t)/t\}$ does **not** exist via this formula (and indeed does not exist at all).

---

## 15. Initial Value Theorem

> **Theorem (Initial Value Theorem, IVT).** If $f(t)$ and $f'(t)$ are such that $\mathcal{L}\{f(t)\}=F(s)$ exists, and $\lim_{s\to\infty}sF(s)$ exists, then
>
> $$
> \boxed{\;f(0^+) = \lim_{s\to\infty} sF(s)\;}
> $$

**Sketch of reasoning.** From $\mathcal{L}\{f'(t)\}=sF(s)-f(0)$, taking $s\to\infty$:
$$
\lim_{s\to\infty}\int_0^\infty e^{-st}f'(t)\,dt = 0
$$
(since $e^{-st}\to0$ pointwise and the integral is dominated appropriately), so $\lim_{s\to\infty}\big[sF(s)-f(0)\big]=0$, giving $f(0^+)=\lim_{s\to\infty}sF(s)$.

**Conditions:** $f(t)$ must be continuous (or have a well-defined right-hand limit at $0$) and of exponential order, and the limit $\lim_{s\to\infty}sF(s)$ must actually exist.

**Example 15.1.** For $f(t)=\cos at$, $F(s)=\dfrac{s}{s^2+a^2}$.
$$
\lim_{s\to\infty}sF(s) = \lim_{s\to\infty}\frac{s^2}{s^2+a^2} = 1.
$$
This matches $f(0)=\cos 0 = 1$. ✓

**Example 15.2.** For $f(t)=e^{-3t}$, $F(s)=\dfrac1{s+3}$.
$$
\lim_{s\to\infty}sF(s) = \lim_{s\to\infty}\frac{s}{s+3}=1 = f(0)=e^0=1. \checkmark
$$

---

## 16. Final Value Theorem

> **Theorem (Final Value Theorem, FVT).** If $f(t)$ and $f'(t)$ have Laplace transforms, and $\lim_{t\to\infty}f(t)$ exists (i.e., $f$ actually settles to a finite limit), and $sF(s)$ has no poles in the closed right-half plane $\operatorname{Re}(s)\ge 0$ other than possibly a simple pole of $F(s)$ at $s=0$, then
>
> $$
> \boxed{\;\lim_{t\to\infty} f(t) = \lim_{s\to 0} sF(s)\;}
> $$

**Necessary stability condition.** The Final Value Theorem is valid **only if** $f(t)$ actually converges as $t\to\infty$. Equivalently, all poles of $sF(s)$ must lie in the open left half-plane $\operatorname{Re}(s)<0$, except possibly a simple pole at the origin. If $F(s)$ has poles with $\operatorname{Re}(s)\ge0$ (other than a single simple pole at $s=0$), including complex-conjugate poles on the imaginary axis (e.g., from $\sin$ or $\cos$ terms, which never settle to a limit), the theorem **does not apply**, and blind application gives a wrong (meaningless) answer.

**Example 16.1 (Theorem works).** $f(t)=1-e^{-2t}$, $F(s) = \dfrac1s-\dfrac1{s+2} = \dfrac{2}{s(s+2)}$.

$sF(s) = \dfrac{2}{s+2}$, which has its only pole at $s=-2$ (left half-plane) — condition satisfied.
$$
\lim_{s\to0}sF(s) = \frac{2}{0+2}=1.
$$
Direct check: $\lim_{t\to\infty}(1-e^{-2t}) = 1$. ✓ Matches.

**Example 16.2 (Theorem fails — illustrating the danger of blind application).** Let $f(t)=\cos t$, so $F(s) = \dfrac{s}{s^2+1}$.

Formally, $sF(s) = \dfrac{s^2}{s^2+1}$, and $\lim_{s\to0}sF(s) = 0$. But $\lim_{t\to\infty}\cos t$ **does not exist** (it oscillates forever between $-1$ and $1$). The formula gives a numerical answer ($0$), but this answer is **meaningless**, because $sF(s)=\frac{s^2}{s^2+1}$ has poles at $s=\pm i$, which lie **on** the imaginary axis (i.e., in the closed right half-plane boundary), violating the hypothesis. This demonstrates precisely why the stability condition must always be checked before invoking the FVT.

**Example 16.3 (Theorem fails — unbounded growth).** Let $f(t) = e^{t}$, $F(s) = \dfrac1{s-1}$. $sF(s) = \dfrac{s}{s-1}$ has a pole at $s=1>0$, in the right half-plane, so the theorem does not apply. Indeed $\lim_{t\to\infty}e^t = \infty$, not a finite limit; formally $\lim_{s\to0}\frac{s}{s-1}=0$, which would be wrong.

---

# Part IV — Applications of Laplace Transform Properties

## 17. Transform Evaluation Problems

**Example 17.1 — Polynomial.**
Find $\mathcal{L}\{t^3-6t^2+3\}$.

1. **Given function:** $t^3-6t^2+3$.
2. **Relevant property:** linearity + power rule $\mathcal{L}\{t^n\}=n!/s^{n+1}$.
3. **Substitution:** $\mathcal{L}\{t^3\}=6/s^4$, $\mathcal{L}\{t^2\}=2/s^3$, $\mathcal{L}\{1\}=1/s$.
4. **Simplification:** $\mathcal{L}\{t^3\}-6\mathcal{L}\{t^2\}+3\mathcal{L}\{1\} = \dfrac{6}{s^4}-\dfrac{12}{s^3}+\dfrac{3}{s}$.
5. **Final answer:**
$$
\boxed{\mathcal L\{t^3-6t^2+3\} = \frac{6}{s^4}-\frac{12}{s^3}+\frac3s.}
$$

**Example 17.2 — Exponential.** $\mathcal{L}\{5e^{-2t}\} = 5\cdot\dfrac{1}{s+2}=\dfrac{5}{s+2}$.

**Example 17.3 — Trigonometric combination.** $\mathcal{L}\{3\sin 4t+2\cos 4t\} = 3\cdot\dfrac{4}{s^2+16}+2\cdot\dfrac{s}{s^2+16} = \dfrac{2s+12}{s^2+16}$.

**Example 17.4 — Hyperbolic.** $\mathcal{L}\{\cosh 5t - \sinh 5t\} = \dfrac{s}{s^2-25}-\dfrac{5}{s^2-25} = \dfrac{s-5}{s^2-25} = \dfrac{s-5}{(s-5)(s+5)}=\dfrac1{s+5}$.

**Example 17.5 — Product with $t$.** $\mathcal{L}\{t^2\cos 3t\}$. Using $\mathcal L\{t^n f(t)\}=(-1)^nF^{(n)}(s)$ with $F(s)=\dfrac{s}{s^2+9}$:

$F'(s) = \dfrac{9-s^2}{(s^2+9)^2}$ (computed as in Example 10.2 with $a=3$). Then
$$
F''(s) = \frac{d}{ds}\left[\frac{9-s^2}{(s^2+9)^2}\right] = \frac{(-2s)(s^2+9)^2 - (9-s^2)\cdot2(s^2+9)(2s)}{(s^2+9)^4}.
$$
Factor $(s^2+9)$ from numerator:
$$
= \frac{(s^2+9)\big[-2s(s^2+9) - 4s(9-s^2)\big]}{(s^2+9)^4} = \frac{-2s(s^2+9)-4s(9-s^2)}{(s^2+9)^3}.
$$
Expand numerator: $-2s^3-18s -36s+4s^3 = 2s^3 - 54s$.
$$
F''(s) = \frac{2s^3-54s}{(s^2+9)^3} = \frac{2s(s^2-27)}{(s^2+9)^3}.
$$
So
$$
\boxed{\mathcal{L}\{t^2\cos 3t\} = F''(s) = \frac{2s(s^2-27)}{(s^2+9)^3}.}
$$

**Example 17.6 — Exponential shift.** $\mathcal{L}\{e^{3t}(2t-1)\} = 2\cdot\dfrac{1}{(s-3)^2} - \dfrac{1}{s-3}$ (shift $s\to s-3$ applied to $\mathcal L\{2t-1\}=2/s^2-1/s$).

---

## 18. Piecewise Functions

Piecewise-defined functions are converted into a single closed-form expression using unit-step functions, then transformed using the Second Shifting Theorem (Section 8).

**General procedure:**
1. Write $f(t)$ as a sum: $f(t) = f_1(t) + u(t-a_1)\big[f_2(t)-f_1(t)\big] + u(t-a_2)\big[f_3(t)-f_2(t)\big]+\cdots$
2. Rewrite each bracketed difference as a function of the shifted variable, e.g. $(t-a_i)$.
3. Apply $\mathcal{L}\{g(t-a)u(t-a)\}=e^{-as}G(s)$ to each term.

**Example 18.1.**
$$
f(t) = \begin{cases} 0, & 0\le t<2 \\ (t-2)^2, & t\ge2. \end{cases}
$$
Here $f(t) = (t-2)^2 u(t-2)$ directly (already in shifted form). With $g(t)=t^2$, $G(s)=2/s^3$:
$$
\boxed{\mathcal L\{f(t)\} = e^{-2s}\cdot\frac{2}{s^3}.}
$$

**Example 18.2.**
$$
f(t) = \begin{cases} \cos t, & 0\le t<\pi \\ 0, & t\ge \pi. \end{cases}
$$
Write $f(t) = \cos t\,[1-u(t-\pi)] = \cos t - \cos t\cdot u(t-\pi)$. We must express $\cos t$ in terms of $(t-\pi)$: since $\cos t = \cos\big((t-\pi)+\pi\big) = -\cos(t-\pi)$,
$$
f(t) = \cos t + \cos(t-\pi)u(t-\pi).
$$
$$
\boxed{\mathcal{L}\{f(t)\} = \frac{s}{s^2+1} + e^{-\pi s}\cdot\frac{s}{s^2+1} = \frac{s\big(1+e^{-\pi s}\big)}{s^2+1}.}
$$

---

## 19. Periodic Functions

> **Theorem.** If $f(t)$ is periodic with period $T$, i.e. $f(t+T)=f(t)$ for all $t\ge0$, then
>
> $$
> \boxed{\;\mathcal{L}\{f(t)\} = \frac{\displaystyle\int_0^T e^{-st}f(t)\,dt}{1-e^{-sT}}\;}
> $$

**Proof.** Split the integral into successive periods:
$$
F(s) = \int_0^\infty e^{-st}f(t)\,dt = \sum_{n=0}^\infty \int_{nT}^{(n+1)T}e^{-st}f(t)\,dt.
$$
In the $n$-th integral substitute $t = nT+\tau$, $\tau\in[0,T)$; using periodicity $f(nT+\tau)=f(\tau)$:
$$
\int_{nT}^{(n+1)T}e^{-st}f(t)\,dt = \int_0^T e^{-s(nT+\tau)}f(\tau)\,d\tau = e^{-snT}\int_0^T e^{-s\tau}f(\tau)\,d\tau.
$$
So
$$
F(s) = \left(\sum_{n=0}^\infty e^{-snT}\right)\int_0^T e^{-s\tau}f(\tau)\,d\tau = \frac{1}{1-e^{-sT}}\int_0^T e^{-s\tau}f(\tau)\,d\tau,
$$
using the geometric series $\sum_{n=0}^\infty x^n = \frac1{1-x}$ with $x=e^{-sT}$ (which satisfies $|x|<1$ for $s>0$). $\blacksquare$

**Example 19.1 — Square wave.** Let $f(t)$ have period $T=2$, with
$$
f(t) = \begin{cases}1, & 0\le t<1\\ -1, & 1\le t<2,\end{cases} \qquad f(t+2)=f(t).
$$
**Given:** period $T=2$, $f(t)$ as above.
**Required:** $\mathcal{L}\{f(t)\}$.
**Method:** Periodic function formula.
**Solution:**
$$
\int_0^2 e^{-st}f(t)\,dt = \int_0^1 e^{-st}\,dt - \int_1^2 e^{-st}\,dt = \left[-\frac{e^{-st}}s\right]_0^1 - \left[-\frac{e^{-st}}s\right]_1^2.
$$
$$
= \frac{1-e^{-s}}{s} - \frac{e^{-s}-e^{-2s}}{s} = \frac{1-2e^{-s}+e^{-2s}}{s} = \frac{(1-e^{-s})^2}{s}.
$$
Then
$$
\mathcal{L}\{f(t)\} = \frac{(1-e^{-s})^2/s}{1-e^{-2s}} = \frac{(1-e^{-s})^2}{s(1-e^{-s})(1+e^{-s})} = \frac{1-e^{-s}}{s(1+e^{-s})}.
$$
**Answer:**
$$
\boxed{\mathcal{L}\{f(t)\} = \frac{1-e^{-s}}{s(1+e^{-s})} = \frac1s\tanh\!\left(\frac{s}{2}\right).}
$$
(The last simplification uses $\tanh(s/2) = \dfrac{1-e^{-s}}{1+e^{-s}}$, obtained by multiplying numerator and denominator by $e^{s/2}$.)

**Example 19.2 — Half-wave rectified sine.** $f(t) = |\sin t|$ interpreted with fundamental period... A commonly used simpler periodic example: $f(t)=\sin t$ on $[0,\pi]$, $f(t)=0$ on $[\pi,2\pi]$, period $T=2\pi$ (half-wave rectifier output).

$$
\int_0^{2\pi} e^{-st}f(t)\,dt = \int_0^\pi e^{-st}\sin t\,dt.
$$
Using the standard result $\int e^{-st}\sin t\,dt = \dfrac{-e^{-st}(s\sin t+\cos t)}{s^2+1}+C$, evaluate from $0$ to $\pi$:
$$
\int_0^\pi e^{-st}\sin t\,dt = \left[\frac{-e^{-st}(s\sin t+\cos t)}{s^2+1}\right]_0^\pi = \frac{-e^{-\pi s}(0-1)}{s^2+1} - \frac{-(0+1)}{s^2+1} = \frac{e^{-\pi s}+1}{s^2+1}.
$$
So
$$
\boxed{\mathcal{L}\{f(t)\} = \frac{1+e^{-\pi s}}{(s^2+1)\left(1-e^{-2\pi s}\right)} = \frac{1}{(s^2+1)(1-e^{-\pi s})}.}
$$
(Using $1-e^{-2\pi s} = (1-e^{-\pi s})(1+e^{-\pi s})$ to cancel.)

---

# Part V — Inverse Laplace Transform

## 20. Definition of Inverse Laplace Transform

> **Definition.** If $\mathcal{L}\{f(t)\}=F(s)$, then $f(t)$ is called the **inverse Laplace transform** of $F(s)$, written
> $$
> \mathcal{L}^{-1}\{F(s)\} = f(t).
> $$

By linearity of $\mathcal{L}$ and the uniqueness of Laplace transforms among piecewise-continuous functions of exponential order (**Lerch's theorem**: if two piecewise-continuous functions have the same Laplace transform, they are equal except possibly at isolated points), $\mathcal{L}^{-1}$ is a well-defined **linear** operator:
$$
\mathcal{L}^{-1}\{aF(s)+bG(s)\} = a\mathcal{L}^{-1}\{F(s)\}+b\mathcal{L}^{-1}\{G(s)\}.
$$

**Basic strategy for finding inverse transforms:**
1. Recognize $F(s)$ directly from the standard table (Section 21).
2. If not directly recognizable, manipulate $F(s)$ algebraically — partial fractions, completing the square, factoring out constants — until each piece matches a table entry.
3. Apply shifting theorems (first/second) where an exponential factor $e^{-as}$ or a shifted denominator like $(s-a)$ appears.
4. Use convolution (Part VI) when $F(s)$ is naturally a product of two simpler known transforms.

---

## 21. Basic Inverse Transform Table

| $F(s)$ | $f(t) = \mathcal{L}^{-1}\{F(s)\}$ |
|---|---|
| $\dfrac1s$ | $1$ |
| $\dfrac{1}{s^n}$ | $\dfrac{t^{n-1}}{(n-1)!}$ |
| $\dfrac{1}{s-a}$ | $e^{at}$ |
| $\dfrac{s}{s^2+a^2}$ | $\cos at$ |
| $\dfrac{a}{s^2+a^2}$ | $\sin at$ |
| $\dfrac{s}{s^2-a^2}$ | $\cosh at$ |
| $\dfrac{a}{s^2-a^2}$ | $\sinh at$ |
| $\dfrac{1}{(s-a)^2}$ | $te^{at}$ |
| $\dfrac{1}{(s-a)^n}$ | $\dfrac{t^{n-1}e^{at}}{(n-1)!}$ |
| $\dfrac{b}{(s-a)^2+b^2}$ | $e^{at}\sin bt$ |
| $\dfrac{s-a}{(s-a)^2+b^2}$ | $e^{at}\cos bt$ |
| $e^{-as}F(s)$ | $f(t-a)u(t-a)$ |

---

## 22. Inverse Laplace by Partial Fractions

The method: write the given rational function $F(s) = \dfrac{P(s)}{Q(s)}$ (with $\deg P < \deg Q$; if not, first perform polynomial division) as a sum of simpler fractions whose inverse transforms are known from the table.

### Distinct linear factors

**Example 22.1.** Find $\mathcal{L}^{-1}\left\{\dfrac{1}{(s+2)(s+3)}\right\}$.

**Decomposition:** $\dfrac{1}{(s+2)(s+3)} = \dfrac{A}{s+2}+\dfrac{B}{s+3}$.

**Solve for constants:** Multiply through by $(s+2)(s+3)$: $1 = A(s+3)+B(s+2)$. Setting $s=-2$: $1=A(1) \Rightarrow A=1$. Setting $s=-3$: $1=B(-1) \Rightarrow B=-1$.

**Apply inverse formulas:**
$$
\mathcal{L}^{-1}\left\{\frac{1}{s+2}\right\}=e^{-2t}, \qquad \mathcal{L}^{-1}\left\{\frac{1}{s+3}\right\}=e^{-3t}.
$$
**Answer:**
$$
\boxed{\mathcal{L}^{-1}\left\{\frac1{(s+2)(s+3)}\right\} = e^{-2t}-e^{-3t}.}
$$
**Verification:** $\mathcal{L}\{e^{-2t}-e^{-3t}\} = \dfrac1{s+2}-\dfrac1{s+3} = \dfrac{(s+3)-(s+2)}{(s+2)(s+3)} = \dfrac1{(s+2)(s+3)}$. ✓

### Repeated linear factors

**Example 22.2.** Find $\mathcal{L}^{-1}\left\{\dfrac{1}{(s+1)^2(s+2)}\right\}$.

**Decomposition:** $\dfrac{1}{(s+1)^2(s+2)} = \dfrac{A}{s+1}+\dfrac{B}{(s+1)^2}+\dfrac{C}{s+2}$.

**Solve for constants:** $1 = A(s+1)(s+2)+B(s+2)+C(s+1)^2$.

Set $s=-1$: $1 = B(1) \Rightarrow B=1$.
Set $s=-2$: $1 = C(1) \Rightarrow C=1$.
Compare $s^2$ coefficients: $0 = A+C \Rightarrow A = -C = -1$.

**Apply inverse formulas:**
$$
\mathcal{L}^{-1}\left\{\frac{-1}{s+1}\right\}=-e^{-t}, \quad \mathcal{L}^{-1}\left\{\frac1{(s+1)^2}\right\}=te^{-t}, \quad \mathcal{L}^{-1}\left\{\frac1{s+2}\right\}=e^{-2t}.
$$
**Answer:**
$$
\boxed{\mathcal{L}^{-1}\left\{\frac1{(s+1)^2(s+2)}\right\} = -e^{-t}+te^{-t}+e^{-2t}.}
$$
**Verification (at $s\to\infty$, initial value check):** $sF(s) = \dfrac{s}{(s+1)^2(s+2)}\to0$ as $s\to\infty$; and $f(0) = -1+0+1=0$. ✓ Matches.

### Irreducible quadratic factors

**Example 22.3.** Find $\mathcal{L}^{-1}\left\{\dfrac{s+1}{s^2+4}\right\}$.

Split directly (no need for partial fractions since the denominator is already irreducible and matches table forms):
$$
\frac{s+1}{s^2+4} = \frac{s}{s^2+4}+\frac{1}{s^2+4} = \frac{s}{s^2+4} + \frac12\cdot\frac{2}{s^2+4}.
$$
$$
\boxed{\mathcal{L}^{-1}\left\{\frac{s+1}{s^2+4}\right\} = \cos 2t + \frac12\sin 2t.}
$$

**Example 22.4 (general quadratic-factor decomposition).** Find $\mathcal{L}^{-1}\left\{\dfrac{3s+1}{(s+1)(s^2+1)}\right\}$.

**Decomposition:** $\dfrac{3s+1}{(s+1)(s^2+1)} = \dfrac{A}{s+1}+\dfrac{Bs+C}{s^2+1}$.

**Solve for constants:** $3s+1 = A(s^2+1)+(Bs+C)(s+1)$.

Set $s=-1$: $-3+1=A(2) \Rightarrow A=-1$.
Compare $s^2$: $0=A+B \Rightarrow B=1$.
Compare constants: $1=A+C \Rightarrow C=2$.

**Apply inverse formulas:**
$$
\frac{-1}{s+1}+\frac{s+2}{s^2+1} = \frac{-1}{s+1}+\frac{s}{s^2+1}+\frac{2}{s^2+1}.
$$
**Answer:**
$$
\boxed{\mathcal{L}^{-1}\left\{\frac{3s+1}{(s+1)(s^2+1)}\right\} = -e^{-t}+\cos t + 2\sin t.}
$$

### Repeated quadratic factors

For a repeated irreducible quadratic $(s^2+a^2)^2$, the decomposition takes the form
$$
\frac{P(s)}{(s^2+a^2)^2} = \frac{As+B}{s^2+a^2} + \frac{Cs+D}{(s^2+a^2)^2}.
$$
The second piece requires the $t$-multiplication results from Section 10: recall $\mathcal L\{t\sin at\}=\dfrac{2as}{(s^2+a^2)^2}$ and $\mathcal L\{t\cos at\} = \dfrac{s^2-a^2}{(s^2+a^2)^2}$, from which
$$
\mathcal{L}^{-1}\left\{\frac{1}{(s^2+a^2)^2}\right\} = \frac{\sin at - at\cos at}{2a^3}, \qquad \mathcal{L}^{-1}\left\{\frac{s}{(s^2+a^2)^2}\right\} = \frac{t\sin at}{2a}.
$$
(The first identity can be derived via the convolution theorem — see Example 28.2.)

---

## 23. Completing the Square

When $F(s)$ has a quadratic denominator that does not factor over the rationals (or when the numerator involves $s$ linearly), completing the square converts the denominator into the form $(s-h)^2+k^2$, matching the shifted trigonometric table entries.

**Example 23.1.** Find $\mathcal{L}^{-1}\left\{\dfrac{1}{s^2+4s+13}\right\}$.

Complete the square: $s^2+4s+13 = (s+2)^2+9$.
$$
\mathcal{L}^{-1}\left\{\frac1{(s+2)^2+9}\right\} = \frac13\mathcal{L}^{-1}\left\{\frac{3}{(s+2)^2+3^2}\right\} = \frac13e^{-2t}\sin 3t.
$$
**Answer:**
$$
\boxed{\mathcal L^{-1}\left\{\frac1{s^2+4s+13}\right\} = \frac13 e^{-2t}\sin 3t.}
$$

**Example 23.2.** Find $\mathcal{L}^{-1}\left\{\dfrac{s+3}{s^2+2s+5}\right\}$.

Complete the square: $s^2+2s+5 = (s+1)^2+4$. Write numerator in terms of $(s+1)$: $s+3 = (s+1)+2$.
$$
\frac{(s+1)+2}{(s+1)^2+4} = \frac{s+1}{(s+1)^2+4} + \frac{2}{(s+1)^2+4}.
$$
$$
\boxed{\mathcal{L}^{-1}\left\{\frac{s+3}{s^2+2s+5}\right\} = e^{-t}\cos 2t + e^{-t}\sin 2t.}
$$

---

## 24. Inverse Transform Using Shifting

**Example 24.1 (First shifting).** Find $\mathcal{L}^{-1}\left\{\dfrac{2}{(s-3)^4}\right\}$.

Recognize $\dfrac{1}{(s-3)^4}$ as the shift ($s\to s-3$) of $\dfrac{1}{s^4}$, whose inverse is $\dfrac{t^3}{3!}=\dfrac{t^3}{6}$.
$$
\boxed{\mathcal{L}^{-1}\left\{\frac{2}{(s-3)^4}\right\} = 2e^{3t}\cdot\frac{t^3}{6} = \frac{t^3e^{3t}}{3}.}
$$

**Example 24.2 (Second shifting).** Find $\mathcal{L}^{-1}\left\{\dfrac{e^{-2s}}{s^3}\right\}$.

Here $\dfrac1{s^3} \leftrightarrow \dfrac{t^2}{2}$, so with $a=2$:
$$
\boxed{\mathcal{L}^{-1}\left\{\frac{e^{-2s}}{s^3}\right\} = \frac{(t-2)^2}{2}u(t-2).}
$$

**Example 24.3 (Combined).** Find $\mathcal{L}^{-1}\left\{\dfrac{se^{-\pi s}}{s^2+1}\right\}$.

$\dfrac{s}{s^2+1}\leftrightarrow\cos t$, with shift $a=\pi$:
$$
\boxed{\mathcal{L}^{-1}\left\{\frac{se^{-\pi s}}{s^2+1}\right\} = \cos(t-\pi)\,u(t-\pi) = -\cos t\,\, u(t-\pi).}
$$
(using $\cos(t-\pi)=-\cos t$).

---

## 25. Inverse Transform Using Differentiation/Integration Properties

**Example 25.1 (using differentiation in $s$).** Find $\mathcal{L}^{-1}\left\{\dfrac{2s}{(s^2+1)^2}\right\}$.

From Example 10.1 with $a=1$: $\mathcal{L}\{t\sin t\} = \dfrac{2s}{(s^2+1)^2}$. Hence
$$
\boxed{\mathcal{L}^{-1}\left\{\frac{2s}{(s^2+1)^2}\right\} = t\sin t.}
$$

**Example 25.2 (using integration in $s$, i.e. inverting a division-by-$t$ transform).** Given $F(s)=\ln\left(\dfrac{s+1}{s}\right)$, find $f(t)$.

Since $F(s) = \ln(s+1)-\ln s$, differentiate: $F'(s) = \dfrac1{s+1}-\dfrac1s$. By the multiplication-by-$t$ property, $\mathcal{L}\{tf(t)\} = -F'(s) = \dfrac1s-\dfrac1{s+1}$, whose inverse is $1-e^{-t}$. Hence $tf(t) = 1-e^{-t}$, so
$$
\boxed{f(t) = \frac{1-e^{-t}}{t}.}
$$

---

# Part VI — Convolution Theorem

## 26. Convolution

> **Definition.** The **convolution** of two functions $f(t)$ and $g(t)$ (defined for $t\ge0$) is
>
> $$
> \boxed{\;(f*g)(t) = \int_0^t f(\tau)\,g(t-\tau)\,d\tau\;}
> $$

**Meaning:** Convolution measures the "overlap" or accumulated interaction between $f$ and a time-reversed, time-shifted copy of $g$, as the shift $t$ varies. It arises naturally when combining the effect of a system's impulse response $g(t)$ with an input signal $f(t)$.

**Commutativity:** $(f*g)(t) = (g*f)(t)$.
*Proof:* substitute $\sigma = t-\tau$ in the defining integral:
$$
(f*g)(t) = \int_0^t f(\tau)g(t-\tau)\,d\tau = \int_0^t f(t-\sigma)g(\sigma)\,d\sigma = (g*f)(t).
$$

**Associativity:** $(f*g)*h = f*(g*h)$ (can be shown by writing out the double integrals and changing the order/region of integration; both sides equal $\displaystyle\iint_{0\le\tau\le u\le t} f(\tau)g(u-\tau)h(t-u)\,d\tau\,du$).

**Relationship to Laplace transforms:** Convolution in the $t$-domain corresponds to ordinary multiplication in the $s$-domain (Section 27) — this is the key reason convolution is so useful.

---

## 27. Convolution Theorem

> **Theorem (Convolution Theorem).** If $\mathcal{L}\{f(t)\}=F(s)$ and $\mathcal{L}\{g(t)\}=G(s)$, then
>
> $$
> \boxed{\;\mathcal{L}\{(f*g)(t)\} = F(s)\,G(s)\;}
> $$
>
> Equivalently,
>
> $$
> \boxed{\;\mathcal{L}^{-1}\{F(s)G(s)\} = (f*g)(t)\;}
> $$

**Derivation.** By definition,
$$
\mathcal{L}\{(f*g)(t)\} = \int_0^\infty e^{-st}\left(\int_0^t f(\tau)g(t-\tau)\,d\tau\right)dt.
$$
This is a double integral over the region $0\le\tau\le t<\infty$. Changing the order of integration (integrate over $t$ first, for fixed $\tau$, with $t$ ranging from $\tau$ to $\infty$):
$$
= \int_0^\infty f(\tau)\left(\int_\tau^\infty e^{-st}g(t-\tau)\,dt\right)d\tau.
$$
In the inner integral substitute $u=t-\tau$ ($t=u+\tau$, $dt=du$, limits $u:0\to\infty$):
$$
\int_\tau^\infty e^{-st}g(t-\tau)\,dt = \int_0^\infty e^{-s(u+\tau)}g(u)\,du = e^{-s\tau}\int_0^\infty e^{-su}g(u)\,du = e^{-s\tau}G(s).
$$
Substituting back:
$$
\mathcal{L}\{(f*g)(t)\} = \int_0^\infty f(\tau)e^{-s\tau}G(s)\,d\tau = G(s)\int_0^\infty e^{-s\tau}f(\tau)\,d\tau = G(s)F(s). \qquad \blacksquare
$$

**Example 27.1.** Find $\mathcal{L}^{-1}\left\{\dfrac{1}{s(s-2)}\right\}$ using convolution.

Write $\dfrac{1}{s(s-2)} = F(s)G(s)$ with $F(s)=\dfrac1s \leftrightarrow f(t)=1$ and $G(s)=\dfrac1{s-2}\leftrightarrow g(t)=e^{2t}$.
$$
(f*g)(t) = \int_0^t (1)\,e^{2(t-\tau)}\,d\tau = e^{2t}\int_0^t e^{-2\tau}\,d\tau = e^{2t}\left[\frac{-e^{-2\tau}}{2}\right]_0^t = e^{2t}\cdot\frac{1-e^{-2t}}{2} = \frac{e^{2t}-1}{2}.
$$
**Answer:**
$$
\boxed{\mathcal{L}^{-1}\left\{\frac1{s(s-2)}\right\} = \frac{e^{2t}-1}{2}.}
$$
**Verification via partial fractions:** $\dfrac1{s(s-2)} = \dfrac{-1/2}{s}+\dfrac{1/2}{s-2}$, whose inverse is $-\tfrac12+\tfrac12 e^{2t} = \tfrac{e^{2t}-1}{2}$. ✓ Matches.

**Example 27.2.** Find $\mathcal{L}^{-1}\left\{\dfrac1{(s^2+1)^2}\right\}$ using convolution.

$F(s)=G(s)=\dfrac1{s^2+1}$, $f(t)=g(t)=\sin t$.
$$
(f*g)(t) = \int_0^t \sin\tau\sin(t-\tau)\,d\tau.
$$
Use the product-to-sum identity $\sin A\sin B = \tfrac12[\cos(A-B)-\cos(A+B)]$ with $A=\tau$, $B=t-\tau$: $A-B = 2\tau-t$, $A+B=t$.
$$
\sin\tau\sin(t-\tau) = \frac12\big[\cos(2\tau-t)-\cos t\big].
$$
$$
(f*g)(t) = \frac12\int_0^t\big[\cos(2\tau-t)-\cos t\big]\,d\tau = \frac12\left[\frac{\sin(2\tau-t)}{2}-\tau\cos t\right]_0^t.
$$
At $\tau=t$: $\frac{\sin t}{2}-t\cos t$. At $\tau=0$: $\frac{\sin(-t)}{2}-0 = -\frac{\sin t}2$.
$$
(f*g)(t) = \frac12\left[\left(\frac{\sin t}2 - t\cos t\right)-\left(-\frac{\sin t}2\right)\right] = \frac12\big[\sin t - t\cos t\big].
$$
**Answer:**
$$
\boxed{\mathcal{L}^{-1}\left\{\frac1{(s^2+1)^2}\right\} = \frac{\sin t - t\cos t}{2}.}
$$
(This matches the general formula from Section 22 with $a=1$: $\frac{\sin at - at\cos at}{2a^3}$.)

---

## 28. Applications of Convolution

**When convolution is advantageous:** Convolution is especially useful when $F(s)$ **does not factor nicely into partial fractions** — e.g. when it involves a general (unspecified) forcing function $f(t)$, or when the algebra of partial fractions would be more tedious than direct convolution (e.g., repeated quadratic factors).

**Example 28.1 (General forcing function).** Solve $y''+y = f(t)$, $y(0)=0$, $y'(0)=0$, for a general (unspecified) forcing function $f(t)$, using convolution.

Taking the Laplace transform: $s^2Y(s)+Y(s) = F(s) \Rightarrow Y(s) = \dfrac{F(s)}{s^2+1} = F(s)\cdot\dfrac1{s^2+1}$.

Since $\mathcal L^{-1}\{1/(s^2+1)\} = \sin t$, by the convolution theorem:
$$
\boxed{y(t) = \int_0^t f(\tau)\sin(t-\tau)\,d\tau.}
$$
This gives the solution for **any** input $f(t)$ at once — a major practical advantage of the convolution approach, especially in system/control-theory contexts (this integral is precisely the system's response via its "impulse response" $\sin t$).

**Example 28.2.** Use convolution to find $\mathcal L^{-1}\left\{\dfrac{1}{s^2(s+1)}\right\}$.

$F(s) = \dfrac1{s^2}\leftrightarrow f(t)=t$, $G(s)=\dfrac1{s+1}\leftrightarrow g(t)=e^{-t}$.
$$
(f*g)(t) = \int_0^t \tau e^{-(t-\tau)}\,d\tau = e^{-t}\int_0^t \tau e^{\tau}\,d\tau.
$$
Integrate by parts: $\int \tau e^\tau\,d\tau = \tau e^\tau - e^\tau$, so $\int_0^t \tau e^\tau\,d\tau = \big[\tau e^\tau - e^\tau\big]_0^t = (te^t-e^t)-(0-1) = te^t-e^t+1$.
$$
(f*g)(t) = e^{-t}\big(te^t-e^t+1\big) = t-1+e^{-t}.
$$
**Answer:**
$$
\boxed{\mathcal{L}^{-1}\left\{\frac1{s^2(s+1)}\right\} = t-1+e^{-t}.}
$$

---

# Part VII — Solution of Ordinary Differential Equations

## 29. Laplace Transform Method for ODEs

**Complete workflow:**

1. Write the differential equation, e.g. $y''+ay'+by = f(t)$.
2. Apply $\mathcal{L}\{\cdot\}$ to both sides.
3. Use the derivative-transform formulas $\mathcal{L}\{y'\}=sY(s)-y(0)$, $\mathcal{L}\{y''\}=s^2Y(s)-sy(0)-y'(0)$, etc.
4. Substitute the given initial conditions $y(0), y'(0),\ldots$
5. Solve algebraically for $Y(s)$.
6. Simplify $Y(s)$ into a form amenable to inversion.
7. Perform partial fractions (or completing the square, or identify convolution structure) if required.
8. Apply $\mathcal{L}^{-1}$ to obtain $y(t)$.
9. Verify the solution by substituting back into the original ODE (and checking initial conditions).

---

## 30. First-Order ODEs

**Example 30.1 (Simple linear equation, exponential forcing).** Solve $y'+3y = e^{2t}$, $y(0)=1$.

**Given:** $y'+3y=e^{2t}$, $y(0)=1$.
**Required:** $y(t)$.
**Method:** Laplace transform + derivative theorem.
**Solution:**
Taking $\mathcal{L}\{\cdot\}$: $\big[sY(s)-1\big] + 3Y(s) = \dfrac{1}{s-2}$.
$$
(s+3)Y(s) = 1+\frac1{s-2} = \frac{s-2+1}{s-2} = \frac{s-1}{s-2}.
$$
$$
Y(s) = \frac{s-1}{(s-2)(s+3)}.
$$
Partial fractions: $\dfrac{s-1}{(s-2)(s+3)} = \dfrac{A}{s-2}+\dfrac{B}{s+3}$. Multiplying out: $s-1 = A(s+3)+B(s-2)$.
Set $s=2$: $1 = 5A \Rightarrow A = \tfrac15$. Set $s=-3$: $-4 = -5B \Rightarrow B=\tfrac45$.
$$
Y(s) = \frac{1/5}{s-2}+\frac{4/5}{s+3}.
$$
**Answer:**
$$
\boxed{y(t) = \frac15 e^{2t}+\frac45e^{-3t}.}
$$
**Verification:** $y(0) = \tfrac15+\tfrac45=1$ ✓. $y' = \tfrac25e^{2t}-\tfrac{12}5e^{-3t}$; $y'+3y = \tfrac25e^{2t}-\tfrac{12}5e^{-3t}+\tfrac35e^{2t}+\tfrac{12}5e^{-3t} = e^{2t}$ ✓.

**Example 30.2 (Trigonometric forcing).** Solve $y'-2y=\sin t$, $y(0)=0$.

Taking transforms: $sY(s) - 0 - 2Y(s) = \dfrac1{s^2+1}$, so $Y(s) = \dfrac{1}{(s-2)(s^2+1)}$.

Partial fractions: $\dfrac1{(s-2)(s^2+1)} = \dfrac{A}{s-2}+\dfrac{Bs+C}{s^2+1}$. Then $1 = A(s^2+1)+(Bs+C)(s-2)$.
Set $s=2$: $1=5A \Rightarrow A=\tfrac15$.
Compare $s^2$: $0=A+B \Rightarrow B=-\tfrac15$.
Compare constants: $1 = A-2C \Rightarrow C = \dfrac{A-1}{2} = \dfrac{1/5-1}{2}=-\tfrac25$.
$$
Y(s) = \frac{1/5}{s-2} + \frac{-\tfrac15 s -\tfrac25}{s^2+1} = \frac15\cdot\frac1{s-2} -\frac15\cdot\frac{s}{s^2+1}-\frac25\cdot\frac1{s^2+1}.
$$
**Answer:**
$$
\boxed{y(t) = \frac15 e^{2t} - \frac15\cos t - \frac25\sin t.}
$$

**Example 30.3 (Step-function forcing).** Solve $y'+y = u(t-1)$, $y(0)=0$.

$sY(s)+Y(s) = \dfrac{e^{-s}}{s}$, so $Y(s) = \dfrac{e^{-s}}{s(s+1)}$.

$\dfrac1{s(s+1)} = \dfrac1s-\dfrac1{s+1}$, so $\mathcal{L}^{-1}\left\{\dfrac1{s(s+1)}\right\} = 1-e^{-t}$. By the second shifting theorem:
$$
\boxed{y(t) = \big[1-e^{-(t-1)}\big]u(t-1).}
$$

---

## 31. Second-Order ODEs

**Example 31.1 (Sine forcing, distinct real roots after transform).** Solve $y''-3y'+2y = 4\sin t$, $y(0)=1$, $y'(0)=0$.

Taking transforms:
$$
\big[s^2Y-s(1)-0\big] - 3\big[sY-1\big]+2Y = \frac{4}{s^2+1}.
$$
$$
(s^2-3s+2)Y - s + 3 = \frac{4}{s^2+1} \implies (s-1)(s-2)Y = s-3+\frac{4}{s^2+1}.
$$
$$
Y(s) = \frac{s-3}{(s-1)(s-2)} + \frac{4}{(s-1)(s-2)(s^2+1)}.
$$
**Partial fractions — first term:** $\dfrac{s-3}{(s-1)(s-2)} = \dfrac{A}{s-1}+\dfrac{B}{s-2}$; $s-3=A(s-2)+B(s-1)$. $s=1: -2=-A\Rightarrow A=2$. $s=2: -1=B$.
First term $= \dfrac2{s-1}-\dfrac1{s-2}$.

**Partial fractions — second term:** $\dfrac{4}{(s-1)(s-2)(s^2+1)} = \dfrac{C}{s-1}+\dfrac{D}{s-2}+\dfrac{Es+F}{s^2+1}$.
$4 = C(s-2)(s^2+1)+D(s-1)(s^2+1)+(Es+F)(s-1)(s-2)$.
$s=1$: $4=C(-1)(2)=-2C \Rightarrow C=-2$.
$s=2$: $4=D(1)(5)=5D \Rightarrow D=4/5$.
$s=i$: $4 = (Ei+F)(i-1)(i-2)$. Compute $(i-1)(i-2) = i^2-3i+2 = -1-3i+2 = 1-3i$. So $4 = (Ei+F)(1-3i) = (E i + F) - 3i(Ei+F) = Ei+F -3Ei^2-3Fi = Ei+F+3E-3Fi$.
Real part: $4 = F+3E$. Imaginary part: $0 = E-3F \Rightarrow E=3F$.
Substituting: $4 = F+9F=10F \Rightarrow F=2/5$, $E=6/5$.

Second term $= \dfrac{-2}{s-1}+\dfrac{4/5}{s-2}+\dfrac{(6/5)s+2/5}{s^2+1}$.

**Combine everything:**
$$
Y(s) = \left(\frac2{s-1}-\frac1{s-2}\right) + \left(\frac{-2}{s-1}+\frac{4/5}{s-2}+\frac{6s/5+2/5}{s^2+1}\right).
$$
$$
= \frac{(2-2)}{s-1} + \frac{(-1+4/5)}{s-2} + \frac{6s/5+2/5}{s^2+1} = -\frac{1/5}{s-2}+\frac{6}{5}\cdot\frac{s}{s^2+1}+\frac25\cdot\frac1{s^2+1}.
$$
**Answer:**
$$
\boxed{y(t) = -\frac15 e^{2t} + \frac65\cos t + \frac25\sin t.}
$$
**Verification (initial conditions):** $y(0) = -\tfrac15+\tfrac65 = 1$ ✓. $y'(t) = -\tfrac25e^{2t}-\tfrac65\sin t+\tfrac45\cos t$; $y'(0) = -\tfrac25+\tfrac45=\tfrac25$... 

Let's recheck: this should equal $0$. Re-examine computation — recompute $y'(0)$ using $Y(s)$ initial-value cross-check instead: $y'(0)$ should follow from $sY(s)-y(0)\to$ ... Actually the cleanest check is via the Initial Value Theorem applied to $Y(s)$ itself giving $y(0)$ (already checked, $=1$ ✓) and computing $y'(0)$ directly from the ODE at $t=0$: from the ODE, $y''(0) - 3y'(0)+2y(0) = 4\sin 0 = 0$, which involves $y''(0)$, not directly useful for checking $y'(0)$. Instead, apply the IVT to $\mathcal{L}\{y'(t)\} = sY(s)-y(0)$:
$$
y'(0) = \lim_{s\to\infty} s\big[sY(s)-1\big].
$$
Using $Y(s) = -\tfrac{1/5}{s-2}+\tfrac65\cdot\tfrac{s}{s^2+1}+\tfrac25\cdot\tfrac1{s^2+1}$, for large $s$: $sY(s) \approx -\tfrac15 + \tfrac65 + O(1/s) = 1+O(1/s)$, so $sY(s)-1 \to 0$ appropriately and $s[sY(s)-1] \to$ finite value; computing the next-order term confirms $y'(0)=0$ as required by direct differentiation of the closed-form solution:
$y'(t) = -\tfrac25e^{2t} -\tfrac65\sin t + \tfrac25\cos t$ (note: derivative of $\tfrac25\sin t$ is $\tfrac25\cos t$, not $\tfrac45\cos t$ as mistakenly written above — correcting the arithmetic slip): $y'(0) = -\tfrac25-0+\tfrac25 = 0$ ✓. Matches.

**Example 31.2 (Repeated roots).** Solve $y''-4y'+4y=0$, $y(0)=2$, $y'(0)=1$.

$$
\big[s^2Y-2s-1\big]-4\big[sY-2\big]+4Y=0 \implies (s-2)^2Y = 2s+1-8 = 2s-7.
$$
$$
Y(s) = \frac{2s-7}{(s-2)^2} = \frac{2(s-2)-3}{(s-2)^2} = \frac2{s-2}-\frac3{(s-2)^2}.
$$
**Answer:**
$$
\boxed{y(t) = 2e^{2t}-3te^{2t}.}
$$
**Verification:** $y(0)=2$ ✓. $y'(t)=4e^{2t}-3e^{2t}-6te^{2t}=e^{2t}-6te^{2t}$; $y'(0)=1$ ✓.

**Example 31.3 (Complex roots, zero forcing).** Solve $y''+4y=0$, $y(0)=0$, $y'(0)=2$.

$$
s^2Y-2+4Y=0 \implies Y(s)=\frac{2}{s^2+4}.
$$
**Answer:**
$$
\boxed{y(t)=\sin 2t.}
$$

**Example 31.4 (Step-function forcing).** Solve $y''+y = u(t-\pi)$, $y(0)=0$, $y'(0)=0$.

$$
s^2Y+Y = \frac{e^{-\pi s}}{s} \implies Y(s) = \frac{e^{-\pi s}}{s(s^2+1)}.
$$
Partial fractions: $\dfrac1{s(s^2+1)} = \dfrac1s - \dfrac{s}{s^2+1}$, so $\mathcal{L}^{-1}\left\{\dfrac1{s(s^2+1)}\right\} = 1-\cos t$. By second shifting:
$$
\boxed{y(t) = \big[1-\cos(t-\pi)\big]u(t-\pi) = \big[1+\cos t\big]u(t-\pi).}
$$
(using $\cos(t-\pi)=-\cos t$).

---

## 32. Higher-Order ODEs

**Example 32.1 (Third-order).** Solve $y'''-y'=0$, $y(0)=0$, $y'(0)=1$, $y''(0)=2$.

Taking transforms with the third-derivative formula $\mathcal{L}\{y'''\}=s^3Y-s^2y(0)-sy'(0)-y''(0)$:
$$
\big[s^3Y - 0 - s - 2\big] - \big[sY-0\big] = 0 \implies (s^3-s)Y = s+2.
$$
$$
Y(s) = \frac{s+2}{s(s-1)(s+1)}.
$$
Partial fractions: $\dfrac{s+2}{s(s-1)(s+1)} = \dfrac As+\dfrac{B}{s-1}+\dfrac{C}{s+1}$.
$s+2 = A(s-1)(s+1)+Bs(s+1)+Cs(s-1)$.
$s=0$: $2=A(-1)(1)=-A \Rightarrow A=-2$.
$s=1$: $3=B(1)(2)=2B \Rightarrow B=3/2$.
$s=-1$: $1=C(-1)(-2)=2C \Rightarrow C=1/2$.
**Answer:**
$$
\boxed{y(t) = -2+\frac32 e^{t}+\frac12 e^{-t}.}
$$
**Verification:** $y(0)=-2+\tfrac32+\tfrac12=0$ ✓. $y'(t)=\tfrac32e^t-\tfrac12e^{-t}$, $y'(0)=\tfrac32-\tfrac12=1$ ✓. $y''(t)=\tfrac32e^t+\tfrac12e^{-t}$, $y''(0)=\tfrac32+\tfrac12=2$ ✓.

---

## 33. Simultaneous Differential Equations

**Example 33.1.** Solve the system
$$
x'+y = t, \qquad y'-x = 1, \qquad x(0)=0,\ y(0)=1.
$$

Let $X(s)=\mathcal{L}\{x(t)\}$, $Y(s)=\mathcal{L}\{y(t)\}$. Taking transforms:
$$
sX(s)-0+Y(s) = \frac1{s^2} \qquad \text{...(i)}
$$
$$
sY(s)-1-X(s) = \frac1s \qquad \text{...(ii)}
$$
From (i): $Y(s) = \dfrac1{s^2}-sX(s)$. Substitute into (ii):
$$
s\left(\frac1{s^2}-sX\right)-1-X = \frac1s \implies \frac1s - s^2X - 1 - X = \frac1s.
$$
$$
-s^2X - X = 1 \implies -(s^2+1)X = 1 \implies X(s) = \frac{-1}{s^2+1}.
$$
So $x(t) = -\sin t$. Then $Y(s) = \dfrac1{s^2}-s\left(\dfrac{-1}{s^2+1}\right) = \dfrac1{s^2}+\dfrac{s}{s^2+1}$, giving $y(t) = t+\cos t$.

**Answer:**
$$
\boxed{x(t) = -\sin t, \qquad y(t) = t+\cos t.}
$$
**Verification:** $x(0)=0$ ✓. $y(0)=0+1=1$ ✓. $x'+y = -\cos t + t+\cos t = t$ ✓ (matches first equation). $y'-x = 1-\sin t -(-\sin t) = 1$ ✓ (matches second equation).

---

# Part VIII — Special Functions and Inputs

## 34. Unit-Step Function

The unit-step (Heaviside) function
$$
u(t-a) = \begin{cases}0,& t<a\\ 1,& t\ge a\end{cases}
$$
is the fundamental building block for representing **piecewise-defined** or **switched** signals. Any piecewise function
$$
f(t) = \begin{cases}0, & 0\le t<a\\ g(t), & t\ge a\end{cases}
$$
is written compactly as
$$
f(t) = g(t)\,u(t-a).
$$
More generally, a function that equals $g_1(t)$ on $[0,a)$ and $g_2(t)$ on $[a,\infty)$ is written
$$
f(t) = g_1(t)\big[1-u(t-a)\big] + g_2(t)\,u(t-a) = g_1(t) + \big[g_2(t)-g_1(t)\big]u(t-a).
$$
To apply the Second Shifting Theorem, the bracketed term must then be re-expressed as a function of $(t-a)$.

**Example 34.1.**
$$
f(t)=\begin{cases}0,&0\le t<3\\ t^2-9,&t\ge3\end{cases}
$$
Write $t^2-9$ in terms of $(t-3)$: $t^2-9 = (t-3)(t+3) = (t-3)^2+6(t-3)$ (expanding $(t-3)^2+6(t-3) = t^2-6t+9+6t-18=t^2-9$, confirmed). So
$$
f(t) = \big[(t-3)^2+6(t-3)\big]u(t-3),
$$
$$
\boxed{\mathcal{L}\{f(t)\} = e^{-3s}\left(\frac2{s^3}+\frac6{s^2}\right).}
$$

---

## 35. Impulse / Dirac Delta Function

> **Definition (informal).** The Dirac delta function $\delta(t-a)$ represents an idealized instantaneous impulse at $t=a$: it is zero everywhere except at $t=a$, has "infinite height" there, and satisfies
> $$
> \int_0^\infty \delta(t-a)\,dt = 1, \qquad \int_0^\infty \delta(t-a)f(t)\,dt = f(a)
> $$
> (the **sifting property**), for any function $f(t)$ continuous at $t=a$.

It is formally defined as the limit of a family of tall, narrow pulses of unit area, e.g.
$$
\delta(t-a) = \lim_{\varepsilon\to0^+}\frac1\varepsilon\Big[u(t-a)-u(t-a-\varepsilon)\Big].
$$

> **Transform of the delta function:**
> $$
> \boxed{\;\mathcal{L}\{\delta(t-a)\} = e^{-as}\;} \qquad (a\ge0), \qquad \text{and in particular } \mathcal{L}\{\delta(t)\}=1.
> $$

**Derivation.** Using the sifting property with $f(t)=e^{-st}$:
$$
\mathcal{L}\{\delta(t-a)\} = \int_0^\infty e^{-st}\delta(t-a)\,dt = e^{-as}.
$$

**Physical/mathematical interpretation:** $\delta(t-a)$ models a very sudden, very large force or input applied briefly at $t=a$ — e.g. a hammer strike on a mechanical system, or a sudden voltage spike in a circuit. In ODE applications, forcing terms of the form $\delta(t-a)$ produce **discontinuities in a derivative** of the solution at $t=a$ (e.g., a sudden jump in velocity), while the solution itself remains continuous.

**Example 35.1.** Solve $y''+y=\delta(t-2)$, $y(0)=0$, $y'(0)=0$.

$$
s^2Y+Y = e^{-2s} \implies Y(s)=\frac{e^{-2s}}{s^2+1}.
$$
$$
\boxed{y(t) = \sin(t-2)\,u(t-2).}
$$
This models an oscillator at rest, struck by an instantaneous impulse at $t=2$, after which it oscillates with unit amplitude.

---

# Part IX — Partial Differential Equations

## 36. Laplace Transform for PDEs

To apply the Laplace transform to a PDE $u(x,t)$, we transform **with respect to one variable only** — typically $t$ (treating $x$ as a fixed parameter), since $t$ usually ranges over $[0,\infty)$ with prescribed initial data, matching the one-sided Laplace framework.

- **Variable transformed:** $t$. Define $U(x,s) = \mathcal{L}_t\{u(x,t)\} = \displaystyle\int_0^\infty e^{-st}u(x,t)\,dt$.
- **Variable that remains:** $x$ (and $s$, the new transform variable) — the transformed equation is a relation between $U(x,s)$ and its **$x$-derivatives**, i.e. an **ordinary** differential equation in $x$ (with $s$ appearing as a parameter).
- **How derivatives transform:**
$$
\mathcal{L}_t\{u_t\} = sU(x,s)-u(x,0), \qquad \mathcal{L}_t\{u_{tt}\} = s^2U(x,s)-su(x,0)-u_t(x,0),
$$
$$
\mathcal{L}_t\{u_x\} = \frac{\partial U}{\partial x}, \qquad \mathcal{L}_t\{u_{xx}\} = \frac{\partial^2 U}{\partial x^2}
$$
(the last two follow because differentiation with respect to $x$ commutes with the $t$-integral, since $x$ and $t$ are independent variables — differentiating under the integral sign).
- **How the PDE becomes simpler:** A PDE in $u(x,t)$ (two independent variables) becomes an **ODE in $x$** for $U(x,s)$, with $s$ appearing as a parameter — this is a substantial simplification, since ODEs are generally much easier to solve than PDEs.
- **Boundary/initial conditions:** Initial conditions in $t$ (e.g. $u(x,0)$, $u_t(x,0)$) are substituted directly into the transformed derivative formulas, exactly as in the ODE case. Boundary conditions in $x$ (e.g. $u(0,t)$, $u(L,t)$) are themselves transformed with respect to $t$ to give boundary conditions on $U(x,s)$ (e.g. $U(0,s) = \mathcal{L}_t\{u(0,t)\}$), which are then used to fix the arbitrary constants in the ODE solution for $U(x,s)$.

---

## 37. Standard PDE Examples

### Heat equation

**Example 37.1.** Solve the semi-infinite heat conduction problem
$$
u_t = \alpha^2 u_{xx}, \qquad x>0,\ t>0,
$$
$$
u(x,0)=0, \qquad u(0,t)=u_0 \ (\text{constant}), \qquad u(x,t)\ \text{bounded as } x\to\infty.
$$

**1. State the PDE:** $u_t=\alpha^2u_{xx}$.
**2. Initial/boundary conditions:** $u(x,0)=0$; $u(0,t)=u_0$; boundedness as $x\to\infty$.
**3. Transform w.r.t. $t$:** Let $U(x,s)=\mathcal{L}_t\{u(x,t)\}$.
**4. Transform derivatives:**
$$
\mathcal{L}_t\{u_t\} = sU(x,s)-u(x,0) = sU(x,s).
$$
$$
\mathcal{L}_t\{u_{xx}\} = \frac{d^2U}{dx^2}.
$$
So the PDE becomes the ODE (in $x$, with $s$ a parameter):
$$
sU = \alpha^2\frac{d^2U}{dx^2} \implies \frac{d^2U}{dx^2} - \frac{s}{\alpha^2}U = 0.
$$
**5. Solve the resulting ODE:** The characteristic equation $m^2 = s/\alpha^2$ gives $m = \pm\sqrt{s}/\alpha$, so
$$
U(x,s) = C_1 e^{-\sqrt{s}\,x/\alpha} + C_2 e^{\sqrt{s}\,x/\alpha}.
$$
**6. Apply boundary conditions:** Boundedness as $x\to\infty$ (for $s>0$) forces $C_2=0$. The boundary condition $u(0,t)=u_0 \Rightarrow U(0,s) = \mathcal{L}\{u_0\} = u_0/s$, so $C_1 = u_0/s$.
$$
U(x,s) = \frac{u_0}{s}\,e^{-\sqrt s\,x/\alpha}.
$$
**7. Inverse Laplace transform:** Using the standard (tabulated, advanced) inverse pair
$$
\mathcal{L}^{-1}\left\{\frac1s e^{-k\sqrt s}\right\} = \operatorname{erfc}\!\left(\frac{k}{2\sqrt t}\right), \qquad k>0,
$$
where $\operatorname{erfc}(z) = 1-\operatorname{erf}(z) = \dfrac{2}{\sqrt\pi}\displaystyle\int_z^\infty e^{-\xi^2}\,d\xi$ is the complementary error function, and with $k=x/\alpha$:
$$
\boxed{u(x,t) = u_0\,\operatorname{erfc}\!\left(\frac{x}{2\alpha\sqrt t}\right).}
$$
**8. Verify:** As $t\to0^+$ (for $x>0$), $\dfrac{x}{2\alpha\sqrt t}\to\infty$, so $\operatorname{erfc}(\cdot)\to0$, giving $u(x,0^+)=0$, consistent with the initial condition. As $x\to0^+$, $\operatorname{erfc}(0)=1$, giving $u(0,t)=u_0$, consistent with the boundary condition. ✓

### Wave equation

**Example 37.2.** Solve the semi-infinite vibrating string problem
$$
u_{tt} = c^2u_{xx}, \qquad x>0,\ t>0,
$$
$$
u(x,0)=0,\quad u_t(x,0)=0,\quad u(0,t)=f(t),\quad u(x,t)\ \text{bounded as } x\to\infty.
$$

**1–2. PDE and conditions:** as stated.
**3. Transform w.r.t. $t$:** $U(x,s)=\mathcal{L}_t\{u(x,t)\}$.
**4. Transform derivatives:**
$$
\mathcal{L}_t\{u_{tt}\} = s^2U(x,s)-su(x,0)-u_t(x,0) = s^2U(x,s).
$$
$$
\mathcal{L}_t\{u_{xx}\}=\frac{d^2U}{dx^2}.
$$
So
$$
s^2U = c^2\frac{d^2U}{dx^2} \implies \frac{d^2U}{dx^2}-\frac{s^2}{c^2}U=0.
$$
**5. Solve:** $U(x,s) = C_1e^{-sx/c}+C_2e^{sx/c}$.
**6. Boundary conditions:** Boundedness as $x\to\infty$ forces $C_2=0$. $U(0,s) = \mathcal{L}\{f(t)\} = F(s)$, so $C_1=F(s)$:
$$
U(x,s) = F(s)\,e^{-sx/c}.
$$
**7. Inverse transform:** By the Second Shifting Theorem, with shift $a=x/c$:
$$
\boxed{u(x,t) = f\!\left(t-\frac xc\right)u\!\left(t-\frac xc\right).}
$$
**8. Verify/interpret:** This is a **travelling wave** solution — a disturbance $f(t)$ applied at $x=0$ propagates undistorted to the right with speed $c$, arriving at position $x$ after a delay $x/c$ (and is zero before the wave arrives, exactly as the unit-step factor enforces). This matches the well-known d'Alembert-type travelling-wave behaviour of the 1-D wave equation.

### Other suitable linear PDE — first-order transport equation

**Example 37.3.** Solve $u_t+cu_x=0$, $x>0,t>0$, $u(x,0)=0$, $u(0,t)=g(t)$ ($c>0$ constant), bounded solution.

Transform w.r.t. $t$: $\mathcal L_t\{u_t\}=sU-u(x,0)=sU$; $\mathcal L_t\{u_x\}=dU/dx$. PDE becomes
$$
sU + c\frac{dU}{dx}=0 \implies \frac{dU}{dx} = -\frac{s}{c}U.
$$
This first-order linear ODE has solution $U(x,s) = U(0,s)e^{-sx/c}$. With $U(0,s)=G(s)=\mathcal L\{g(t)\}$:
$$
U(x,s) = G(s)e^{-sx/c}.
$$
By the Second Shifting Theorem:
$$
\boxed{u(x,t) = g\!\left(t-\frac xc\right)u\!\left(t-\frac xc\right).}
$$
This again represents a signal $g(t)$ injected at $x=0$ propagating rightward at constant speed $c$ without distortion — the expected behaviour for the transport (advection) equation.

---

# Part X — Important Theorems (Summary)

## 38. Theorems to Know

| Theorem | Statement | Key Condition |
|---|---|---|
| **Linearity** | $\mathcal L\{af+bg\}=aF(s)+bG(s)$ | $F,G$ exist |
| **First Shifting** | $\mathcal L\{e^{at}f(t)\}=F(s-a)$ | shift ROC by $a$ |
| **Second Shifting** | $\mathcal L\{f(t-a)u(t-a)\}=e^{-as}F(s)$ | $a\ge0$ |
| **Change of Scale** | $\mathcal L\{f(at)\}=\tfrac1aF(s/a)$ | $a>0$ |
| **Differentiation ($t$-domain)** | $\mathcal L\{f'(t)\}=sF(s)-f(0)$ | $f$ cts, exp. order |
| **Integration ($t$-domain)** | $\mathcal L\{\int_0^tf\,du\}=F(s)/s$ | — |
| **Differentiation ($s$-domain)** | $\mathcal L\{tf(t)\}=-F'(s)$ | — |
| **Integration ($s$-domain)** | $\mathcal L\{f(t)/t\}=\int_s^\infty F(\sigma)d\sigma$ | $\lim_{t\to0}f(t)/t$ finite |
| **Initial Value** | $f(0^+)=\lim_{s\to\infty}sF(s)$ | limit exists |
| **Final Value** | $\lim_{t\to\infty}f(t)=\lim_{s\to0}sF(s)$ | $f(t)$ actually converges; poles of $sF(s)$ in open LHP (or simple pole at $0$) |
| **Periodic Function** | $\mathcal L\{f\}=\dfrac{\int_0^Te^{-st}f(t)dt}{1-e^{-sT}}$ | $f(t+T)=f(t)$ |
| **Convolution** | $\mathcal L\{f*g\}=F(s)G(s)$ | $F,G$ exist |

Full statements, derivations, and conditions for each of these are given in Sections 4, 7–13, 15, 16, 19, and 27 respectively.

---

# Part XI — Worked Examples

## 39. Basic Transform Problems

1. $\mathcal L\{5\}=\dfrac5s$
2. $\mathcal L\{t^4\}=\dfrac{24}{s^5}$
3. $\mathcal L\{3t^2-2t+7\}=\dfrac6{s^3}-\dfrac2{s^2}+\dfrac7s$
4. $\mathcal L\{e^{-5t}\}=\dfrac1{s+5}$
5. $\mathcal L\{2e^{3t}-e^{-t}\}=\dfrac2{s-3}-\dfrac1{s+1}$
6. $\mathcal L\{\sin5t\}=\dfrac5{s^2+25}$
7. $\mathcal L\{\cos5t\}=\dfrac{s}{s^2+25}$
8. $\mathcal L\{\sinh4t\}=\dfrac4{s^2-16}$
9. $\mathcal L\{\cosh4t\}=\dfrac{s}{s^2-16}$
10. $\mathcal L\{te^{2t}\}$ — using first shifting on $\mathcal L\{t\}=1/s^2$: $=\dfrac1{(s-2)^2}$
11. $\mathcal L\{e^{-t}\sin2t\}$ — shift on $\dfrac2{s^2+4}$: $=\dfrac{2}{(s+1)^2+4}$
12. $\mathcal L\{t^2e^{-3t}\}$ — using $t^2\to2/s^3$, shift: $=\dfrac2{(s+3)^3}$

---

## 40. Inverse Transform Problems

1. $\mathcal L^{-1}\left\{\dfrac1{s^4}\right\} = \dfrac{t^3}{6}$
2. $\mathcal L^{-1}\left\{\dfrac1{s-5}\right\}=e^{5t}$
3. $\mathcal L^{-1}\left\{\dfrac{3}{s^2+9}\right\}=\sin3t$
4. $\mathcal L^{-1}\left\{\dfrac{s}{s^2+16}\right\}=\cos4t$
5. $\mathcal L^{-1}\left\{\dfrac{1}{(s-1)(s-2)}\right\}$: partial fractions $\dfrac{-1}{s-1}+\dfrac1{s-2}$, so $= e^{2t}-e^{t}$.
6. $\mathcal L^{-1}\left\{\dfrac{2s+3}{s^2+4s+13}\right\}$: complete the square $(s+2)^2+9$; write $2s+3 = 2(s+2)-1$: $= 2e^{-2t}\cos3t - \tfrac13e^{-2t}\sin3t$.
7. $\mathcal L^{-1}\left\{\dfrac{1}{s^2(s+1)}\right\}$ (repeated root at $s=0$, distinct at $s=-1$): decomposition $\dfrac{A}{s}+\dfrac{B}{s^2}+\dfrac{C}{s+1}$; solving gives $A=-1,B=1,C=1$; so $=-1+t+e^{-t}$.
8. $\mathcal L^{-1}\left\{\dfrac{s+1}{(s-2)^2}\right\}$: write $s+1=(s-2)+3$: $=e^{2t}+3te^{2t}$.
9. $\mathcal L^{-1}\left\{\dfrac{5}{(s+1)(s^2+4)}\right\}$ (quadratic factor): decomposition $\dfrac{A}{s+1}+\dfrac{Bs+C}{s^2+4}$; solving gives $A=1,B=-1,C=4$; so $=e^{-t}-\cos2t+2\sin2t$.
10. $\mathcal L^{-1}\left\{\dfrac{e^{-3s}}{s^2}\right\}$ (second shifting): $=(t-3)u(t-3)$.
11. $\mathcal L^{-1}\left\{\dfrac{se^{-2s}}{s^2+9}\right\}$: $=\cos\big(3(t-2)\big)u(t-2)$.
12. $\mathcal L^{-1}\left\{\dfrac{6s}{(s^2+1)^2}\right\}$ (differentiation in $s$): $=3t\sin t$.
13. $\mathcal L^{-1}\left\{\dfrac{1}{s(s^2+1)}\right\}$: decomposition $\dfrac1s-\dfrac{s}{s^2+1}$: $=1-\cos t$.
14. $\mathcal L^{-1}\left\{\dfrac{1}{(s+1)(s+2)(s+3)}\right\}$: decomposition $\dfrac{1/2}{s+1}-\dfrac{1}{s+2}+\dfrac{1/2}{s+3}$: $=\tfrac12e^{-t}-e^{-2t}+\tfrac12e^{-3t}$.
15. $\mathcal L^{-1}\left\{\dfrac{1}{s(s-1)}\right\}$ via convolution: $f(t)=1$, $g(t)=e^t$; $(f*g)(t)=\int_0^t e^\tau d\tau = e^t-1$, matching partial fractions $\big(\tfrac{-1}s+\tfrac1{s-1}\big)$.

---

## 41. ODE Problems

1. $y'+2y=0,\ y(0)=3$: $Y=\dfrac3{s+2} \Rightarrow y=3e^{-2t}$.
2. $y'-y=t,\ y(0)=0$: $(s-1)Y=1/s^2 \Rightarrow Y=\dfrac1{s^2(s-1)}$. Partial fractions: $\dfrac{-1}{s}-\dfrac1{s^2}+\dfrac1{s-1}$. So $y=-1-t+e^t$.
3. $y''+3y'+2y=0,\ y(0)=1,y'(0)=0$: $(s^2+3s+2)Y = s+3 \Rightarrow Y=\dfrac{s+3}{(s+1)(s+2)}$. Partial fractions: $\dfrac2{s+1}-\dfrac1{s+2}$. So $y=2e^{-t}-e^{-2t}$.
4. $y''-y=e^t,\ y(0)=0,y'(0)=0$: $(s^2-1)Y=\dfrac1{s-1} \Rightarrow Y=\dfrac1{(s-1)^2(s+1)}$. Decomposition: $\dfrac{1/4}{s+1}+\dfrac{-1/4}{s-1}+\dfrac{1/2}{(s-1)^2}$. So $y=\tfrac14e^{-t}-\tfrac14e^t+\tfrac12te^t$.
5. $y''+9y=\cos3t,\ y(0)=0,y'(0)=0$ (resonance case): $(s^2+9)Y=\dfrac{s}{s^2+9} \Rightarrow Y=\dfrac{s}{(s^2+9)^2}$. Using the repeated-quadratic formula (Section 22): $y=\dfrac{t\sin3t}{6}$.
6. $y'''+ y'=0,\ y(0)=0,y'(0)=1,y''(0)=0$: $s(s^2+1)Y = s\cdot0+1\cdot s^0\ldots$ — carefully: $\mathcal L\{y'''\}=s^3Y-s^2(0)-s(1)-0=s^3Y-s$. $\mathcal L\{y'\}=sY-0$. Sum: $s^3Y-s+sY=0 \Rightarrow (s^3+s)Y=s \Rightarrow Y=\dfrac{s}{s(s^2+1)}=\dfrac1{s^2+1}$. So $y=\sin t$.
7. $y''+2y'+5y=0,\ y(0)=1,y'(0)=-1$ (complex roots): $(s^2+2s+5)Y = s+2-1=s+1$. Complete square: $(s+1)^2+4$. $Y=\dfrac{s+1}{(s+1)^2+4}$. So $y=e^{-t}\cos2t$.
8. $y'+y=t\, u(t-1),\ y(0)=0$: needs $\mathcal L\{t\,u(t-1)\}$; write $t = (t-1)+1$, so $t\,u(t-1) = (t-1)u(t-1)+u(t-1)$, transform $=e^{-s}\left(\dfrac1{s^2}+\dfrac1s\right)$. So $(s+1)Y = e^{-s}\left(\dfrac1{s^2}+\dfrac1s\right)$, $Y=e^{-s}\left(\dfrac1{s^2(s+1)}+\dfrac1{s(s+1)}\right)$. Using Example 28.2's result $\mathcal L^{-1}\{1/(s^2(s+1))\}=t-1+e^{-t}$ and $\mathcal L^{-1}\{1/(s(s+1))\}=1-e^{-t}$: sum $= t+e^{-t}$; applying the shift, $y(t) = \big[(t-1)+e^{-(t-1)}\big]u(t-1)$.
9. $y''+4y'+4y=e^{-2t},\ y(0)=0,y'(0)=0$: $(s+2)^2Y=\dfrac1{s+2} \Rightarrow Y=\dfrac1{(s+2)^3}$. So $y=\dfrac{t^2}2e^{-2t}$.
10. $y''-2y'+y=0,\ y(0)=0,y'(0)=1$: $(s-1)^2Y=1 \Rightarrow Y=\dfrac1{(s-1)^2}$. So $y=te^t$.

---

## 42. PDE Problems

1. **First-order transport** $u_t+2u_x=0$, $u(x,0)=0$, $u(0,t)=\sin t$: by Example 37.3 with $c=2$, $g(t)=\sin t$: $u(x,t) = \sin\!\left(t-\dfrac x2\right)u\!\left(t-\dfrac x2\right)$.

2. **Wave equation** $u_{tt}=9u_{xx}$, $u(x,0)=0,u_t(x,0)=0,u(0,t)=t^2$: by Example 37.2 with $c=3$, $f(t)=t^2$: $u(x,t)=\left(t-\dfrac x3\right)^2u\!\left(t-\dfrac x3\right)$.

3. **Heat equation** $u_t=u_{xx}$ ($\alpha=1$), $u(x,0)=0$, $u(0,t)=1$ (constant unit boundary temperature): by Example 37.1: $u(x,t)=\operatorname{erfc}\left(\dfrac{x}{2\sqrt t}\right)$.

---

# Part XII — Common Mistakes

## 43. Common Examination Mistakes

- **Forgetting the lower limit $0$:** the one-sided transform always integrates from $0$, not $-\infty$; forgetting this changes the answer for any function that is not already zero for $t<0$.
- **Incorrectly transforming $e^{at}$:** writing $\mathcal L\{e^{at}\}=\dfrac1{s+a}$ instead of the correct $\dfrac1{s-a}$ — always check the sign matches the exponent.
- **Confusing $F(s-a)$ with $F(s+a)$** in the First Shifting Theorem: $e^{at}f(t)$ shifts $s\to s-a$ (subtract $a$), **not** $s\to s+a$.
- **Incorrect use of the Second Shifting Theorem:** applying $e^{-as}F(s)$ when the function is *not* actually in the shifted form $f(t-a)u(t-a)$; the function must first be algebraically rewritten in terms of $(t-a)$ before the theorem applies.
- **Forgetting the factor $e^{-as}$** entirely when transforming a function that starts at $t=a$ rather than $t=0$.
- **Incorrect derivative transforms:** omitting the initial-condition terms $-f(0)$, $-sf(0)-f'(0)$, etc., or getting their signs wrong.
- **Forgetting initial conditions** when solving second- (or higher-) order ODEs — every derivative order needs its own initial condition substituted.
- **Incorrect partial fractions:** especially sign errors when solving for constants by substitution, or misidentifying the correct number of unknowns for repeated/quadratic factors.
- **Incorrect repeated-root decomposition:** for $(s-a)^n$, one needs $n$ separate terms $\dfrac{A_1}{s-a}+\dfrac{A_2}{(s-a)^2}+\cdots+\dfrac{A_n}{(s-a)^n}$ — omitting intermediate powers is a common error.
- **Incorrect completing-the-square manipulation:** e.g. writing $s^2+4s+13=(s+2)^2+13$ (forgetting to subtract $2^2=4$) instead of the correct $(s+2)^2+9$.
- **Confusing convolution with ordinary multiplication:** $\mathcal L^{-1}\{F(s)G(s)\}$ is **not** $f(t)g(t)$; it is the convolution integral $(f*g)(t)$.
- **Applying the Final Value Theorem when its conditions fail:** e.g. for oscillatory ($\sin,\cos$) or unbounded solutions — always check that $\lim_{t\to\infty}f(t)$ genuinely exists (poles of $sF(s)$ strictly in the left half-plane, except a possible simple pole at $s=0$) before using the theorem.
- **Forgetting the period factor** $\dfrac1{1-e^{-sT}}$ in periodic-function problems, or using the wrong period $T$.
- **Incorrectly transforming piecewise functions:** forgetting to rewrite the "extra" piece in terms of $(t-a)$ before applying the shifting theorem — a very common source of error.
- **Sign errors in differential equations:** misplacing minus signs when moving terms across the equals sign after taking the transform.
- **Forgetting initial conditions in second-order ODEs:** omitting either $y(0)$ or $y'(0)$ (both are needed).
- **Taking the inverse transform before simplifying $F(s)$:** always simplify/decompose $F(s)$ fully (partial fractions, completing the square) *before* attempting to invert term by term.
- **Transforming the wrong variable in PDE problems:** the Laplace transform must be applied consistently with respect to $t$ (not $x$) unless the problem explicitly requires transforming $x$; mixing this up leads to a nonsensical transformed equation.

---

# Part XIII — Exam Preparation

## 44. Important Definitions (Rapid Revision)

- **Laplace transform:** $\mathcal L\{f(t)\}=F(s)=\displaystyle\int_0^\infty e^{-st}f(t)\,dt$, for $t\ge0$.
- **Inverse Laplace transform:** the operation $\mathcal L^{-1}\{F(s)\}=f(t)$ recovering $f$ from $F$.
- **Linearity:** $\mathcal L\{af+bg\}=aF+bG$.
- **First shifting theorem:** $\mathcal L\{e^{at}f(t)\}=F(s-a)$.
- **Second shifting theorem:** $\mathcal L\{f(t-a)u(t-a)\}=e^{-as}F(s)$.
- **Unit-step function:** $u(t-a)=0$ for $t<a$, $=1$ for $t\ge a$.
- **Periodic function:** $f(t+T)=f(t)$ for all $t\ge0$; transform $=\dfrac{\int_0^Te^{-st}f(t)dt}{1-e^{-sT}}$.
- **Convolution:** $(f*g)(t)=\displaystyle\int_0^tf(\tau)g(t-\tau)\,d\tau$.
- **Initial value theorem:** $f(0^+)=\displaystyle\lim_{s\to\infty}sF(s)$.
- **Final value theorem:** $\displaystyle\lim_{t\to\infty}f(t)=\lim_{s\to0}sF(s)$, valid only when $f(t)$ actually converges.
- **Region of convergence:** the set of $s$ (typically $s>a$ for some real $a$) for which the defining integral converges.

---

## 45. Important Short Questions

**Q1. Define the Laplace transform.**
*A.* $\mathcal L\{f(t)\}=F(s)=\int_0^\infty e^{-st}f(t)\,dt$, for functions defined on $t\ge0$.

**Q2. State the sufficient conditions for existence of the Laplace transform.**
*A.* $f(t)$ must be piecewise continuous on every finite interval $[0,A]$ and of exponential order (i.e. $|f(t)|\le Me^{at}$ for large $t$); then $F(s)$ exists for $s>a$.

**Q3. Find $\mathcal L\{t^3\}$.**
*A.* $\dfrac{3!}{s^4}=\dfrac6{s^4}$.

**Q4. State the First Shifting Theorem.**
*A.* $\mathcal L\{e^{at}f(t)\}=F(s-a)$.

**Q5. State the Second Shifting Theorem.**
*A.* $\mathcal L\{f(t-a)u(t-a)\}=e^{-as}F(s)$, $a\ge0$.

**Q6. What is the Laplace transform of $\delta(t-a)$?**
*A.* $e^{-as}$.

**Q7. State the convolution theorem.**
*A.* $\mathcal L\{f*g\}=F(s)G(s)$, equivalently $\mathcal L^{-1}\{FG\}=(f*g)(t)$.

**Q8. Under what condition does the Final Value Theorem fail?**
*A.* When $\lim_{t\to\infty}f(t)$ does not exist (e.g. oscillatory or unbounded solutions), i.e. when $sF(s)$ has poles on or to the right of the imaginary axis other than a simple pole at the origin.

**Q9. Find $\mathcal L\{t\sin at\}$.**
*A.* $\dfrac{2as}{(s^2+a^2)^2}$.

**Q10. What is the transform of $\int_0^t f(u)\,du$?**
*A.* $F(s)/s$.

---

## 46. Important 5-Mark Questions

**Q1. Derive the Laplace transform of $\cos at$ from first principles.**
*(See full derivation in Section 6(d): via integration by parts twice, giving $J=\dfrac{s}{s^2+a^2}$.)*

**Q2. State and prove the First Shifting Theorem.**
*(See Section 7: proof by direct substitution into the defining integral.)*

**Q3. Find $\mathcal L^{-1}\left\{\dfrac{s+1}{s^2+2s+5}\right\}$.**
*(See Example 23.2 for the complete worked solution: $e^{-t}\cos2t+e^{-t}\sin2t$.)*

**Q4. State and prove the differentiation theorem $\mathcal L\{f'(t)\}=sF(s)-f(0)$.**
*(See Section 12: integration by parts.)*

**Q5. State and prove the theorem for the transform of $\int_0^tf(u)\,du$.**
*(See Section 13.)*

**Q6. State the Initial and Final Value Theorems and their conditions.**
*(See Sections 15–16.)*

**Q7. Solve $y'-y=e^{2t}$, $y(0)=0$ using Laplace transforms.**
*(By the ODE method: $Y(s)=\dfrac1{(s-1)(s-2)}$, giving $y(t)=e^{2t}-e^t$.)*

**Q8. Decompose $\dfrac1{(s+1)^2(s+2)}$ into partial fractions and find its inverse transform.**
*(See Example 22.2: $y = -e^{-t}+te^{-t}+e^{-2t}$.)*

**Q9. State and prove the convolution theorem.**
*(See Section 27, full double-integral derivation.)*

**Q10. Explain the Laplace transform method for solving ODEs, listing all steps.**
*(See Section 29.)*

**Q11. Solve $y''+y=0$, $y(0)=0,y'(0)=2$ by Laplace transform.**
*(See Example 31.3: $y(t)=\sin2t$ — actually with the given ICs here, $Y(s) = 2/(s^2+1)$, $y(t)=2\sin t$.)*

**Q12. Explain the method of applying the Laplace transform to a PDE, with one worked example.**
*(See Sections 36–37.)*

---

## 47. Long/Derivation Questions

1. **Derive from the definition** the Laplace transforms of $1$, $t^n$, $e^{at}$, $\sin at$, $\cos at$. *(Section 6.)*
2. **Derive and prove the First Shifting Theorem**, with at least two examples. *(Section 7.)*
3. **Derive and prove the Second Shifting Theorem**, including the unit-step function, with examples on piecewise functions. *(Section 8, 18.)*
4. **Derive the differentiation theorems** $\mathcal L\{f'(t)\}$, $\mathcal L\{f''(t)\}$, and the general $n$-th order formula. *(Section 12.)*
5. **Derive the integration theorem** $\mathcal L\{\int_0^tf\,du\}=F(s)/s$. *(Section 13.)*
6. **State and prove the Initial Value Theorem**, with two verifying examples. *(Section 15.)*
7. **State and prove the Final Value Theorem**, including its stability conditions, with one example where it works and one where it fails. *(Section 16.)*
8. **Derive the Laplace transform of a periodic function**, with two worked examples (square wave, half-rectified sine). *(Section 19.)*
9. **State and prove the Convolution Theorem**, with at least two worked examples of finding inverse transforms via convolution. *(Section 27.)*
10. **Solve a complete second-order linear ODE with initial conditions** using the full 9-step Laplace transform workflow. *(Section 31, Examples 31.1–31.4.)*
11. **Solve a complete PDE (heat or wave equation)** using the Laplace transform method, showing all steps including the inverse transform and verification. *(Section 37, Examples 37.1–37.2.)*

**Every derivation above:** states its assumptions explicitly, begins from the defining integral $F(s)=\int_0^\infty e^{-st}f(t)\,dt$ where appropriate, shows every algebraic and calculus step, explains the reasoning at each stage, and boxes the final boxed result — exactly as demonstrated throughout Parts I–IX of this guide.

---

# Part XIV — Formula and Transform Tables

## 48. Complete Laplace Transform Table

| $f(t)$ | $F(s)=\mathcal L\{f(t)\}$ | Conditions/Notes |
|---|---|---|
| $1$ | $\dfrac1s$ | $s>0$ |
| $t^n$ ($n\in\mathbb Z_{\ge0}$) | $\dfrac{n!}{s^{n+1}}$ | $s>0$ |
| $t^n$ ($n>-1$) | $\dfrac{\Gamma(n+1)}{s^{n+1}}$ | $s>0$ |
| $e^{at}$ | $\dfrac1{s-a}$ | $s>a$ |
| $\sin at$ | $\dfrac{a}{s^2+a^2}$ | $s>0$ |
| $\cos at$ | $\dfrac{s}{s^2+a^2}$ | $s>0$ |
| $\sinh at$ | $\dfrac{a}{s^2-a^2}$ | $s>|a|$ |
| $\cosh at$ | $\dfrac{s}{s^2-a^2}$ | $s>|a|$ |
| $t^ne^{at}$ | $\dfrac{n!}{(s-a)^{n+1}}$ | $s>a$ |
| $e^{at}\sin bt$ | $\dfrac{b}{(s-a)^2+b^2}$ | $s>a$ |
| $e^{at}\cos bt$ | $\dfrac{s-a}{(s-a)^2+b^2}$ | $s>a$ |
| $t\sin at$ | $\dfrac{2as}{(s^2+a^2)^2}$ | $s>0$ |
| $t\cos at$ | $\dfrac{s^2-a^2}{(s^2+a^2)^2}$ | $s>0$ |
| $u(t-a)$ | $\dfrac{e^{-as}}{s}$ | $a\ge0$ |
| $\delta(t-a)$ | $e^{-as}$ | $a\ge0$ |
| $f(t-a)u(t-a)$ | $e^{-as}F(s)$ | $a\ge0$ |

---

## 49. Property Table

| Time-domain function | Laplace transform |
|---|---|
| $af(t)+bg(t)$ | $aF(s)+bG(s)$ |
| $e^{at}f(t)$ | $F(s-a)$ |
| $f(t-a)u(t-a)$ | $e^{-as}F(s)$ |
| $f(at)$ | $\tfrac1aF(s/a)$ |
| $f'(t)$ | $sF(s)-f(0)$ |
| $f''(t)$ | $s^2F(s)-sf(0)-f'(0)$ |
| $f^{(n)}(t)$ | $s^nF(s)-\sum_{k=0}^{n-1}s^{n-1-k}f^{(k)}(0)$ |
| $tf(t)$ | $-F'(s)$ |
| $t^nf(t)$ | $(-1)^nF^{(n)}(s)$ |
| $f(t)/t$ | $\int_s^\infty F(\sigma)\,d\sigma$ (if $\lim_{t\to0^+}f(t)/t$ finite) |
| $\int_0^t f(u)\,du$ | $F(s)/s$ |
| $f*g$ | $F(s)G(s)$ |

---

# Part XV — Quick Revision

## 50. One-Page Laplace Transform Revision

### Definition
$$
\mathcal L\{f(t)\} = F(s) = \int_0^\infty e^{-st}f(t)\,dt.
$$

### Core transforms
$$
\mathcal L\{1\}=\frac1s,\quad \mathcal L\{t^n\}=\frac{n!}{s^{n+1}},\quad \mathcal L\{e^{at}\}=\frac1{s-a},
$$
$$
\mathcal L\{\sin at\}=\frac{a}{s^2+a^2},\quad \mathcal L\{\cos at\}=\frac{s}{s^2+a^2},
$$
$$
\mathcal L\{\sinh at\}=\frac{a}{s^2-a^2},\quad \mathcal L\{\cosh at\}=\frac{s}{s^2-a^2}.
$$

### Core properties
- **Linearity:** $\mathcal L\{af+bg\}=aF+bG$.
- **First shift:** $\mathcal L\{e^{at}f(t)\}=F(s-a)$.
- **Second shift:** $\mathcal L\{f(t-a)u(t-a)\}=e^{-as}F(s)$.
- **Derivative:** $\mathcal L\{f'(t)\}=sF(s)-f(0)$; $\mathcal L\{f''(t)\}=s^2F(s)-sf(0)-f'(0)$.
- **Integral:** $\mathcal L\{\int_0^tf\,du\}=F(s)/s$.
- **Multiply by $t$:** $\mathcal L\{tf(t)\}=-F'(s)$.
- **IVT:** $f(0^+)=\lim_{s\to\infty}sF(s)$.
- **FVT:** $\lim_{t\to\infty}f(t)=\lim_{s\to0}sF(s)$ (if $f(t)$ converges).

### Inverse transforms (most frequent)
$$
\mathcal L^{-1}\left\{\frac1s\right\}=1,\ \mathcal L^{-1}\left\{\frac1{s^n}\right\}=\frac{t^{n-1}}{(n-1)!},\ \mathcal L^{-1}\left\{\frac1{s-a}\right\}=e^{at},
$$
$$
\mathcal L^{-1}\left\{\frac{s}{s^2+a^2}\right\}=\cos at,\ \mathcal L^{-1}\left\{\frac{a}{s^2+a^2}\right\}=\sin at,\ \mathcal L^{-1}\{e^{-as}F(s)\}=f(t-a)u(t-a).
$$

### Convolution
$$
\mathcal L\{f*g\}=F(s)G(s), \qquad (f*g)(t)=\int_0^t f(\tau)g(t-\tau)\,d\tau.
$$

### ODE workflow (9 steps)
1. Write the ODE. 2. Take $\mathcal L\{\cdot\}$ of both sides. 3. Apply derivative formulas. 4. Substitute initial conditions. 5. Solve algebraically for $Y(s)$. 6. Simplify. 7. Partial-fraction decompose. 8. Apply $\mathcal L^{-1}$. 9. Verify by substitution.

### PDE workflow
1. State the PDE and its I.C./B.C. 2. Transform with respect to $t$ (treating $x$ fixed). 3. Convert derivatives: $u_t\to sU-u(x,0)$, $u_x\to U_x$, $u_{xx}\to U_{xx}$. 4. Solve the resulting ODE in $x$ (with $s$ as parameter). 5. Apply the (transformed) boundary conditions to fix constants. 6. Take $\mathcal L_t^{-1}$ to recover $u(x,t)$. 7. Verify against the original I.C./B.C.
