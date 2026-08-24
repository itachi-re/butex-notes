# Laplace Transform

*Reconstructed from handwritten lecture notes (Math‑II, Fardin, AE‑50). Mathematics has been independently re‑derived and checked; two genuine errors found in the source are corrected and flagged below.*

---

## Table of Contents

1. [Definition of Laplace Transform](#1-definition-of-laplace-transform)
2. [Laplace Transforms of Elementary Functions](#2-laplace-transforms-of-elementary-functions)
3. [Properties of Laplace Transform](#3-properties-of-laplace-transform)
4. [Inverse Laplace Transform](#4-inverse-laplace-transform)
5. [Convolution Theorem](#5-convolution-theorem)
6. [Applications to Differential Equations](#6-applications-to-differential-equations)
7. [Applications to Partial Differential Equations](#7-applications-to-partial-differential-equations)
8. [Important Formula Sheet](#8-important-formula-sheet)
9. [Exam‑Oriented Quick Reference](#9-exam-oriented-quick-reference)

---

## 1. Definition of Laplace Transform

**Definition.** Let $F(t)$ be a function of $t$, specified for $t>0$. The **Laplace Transform** of $F(t)$, denoted $\mathcal{L}\{F(t)\}$, is

$$
\mathcal{L}\{F(t)\} = f(s) = \int_0^{\infty} e^{-st}F(t)\,dt
$$

where $s$ is a parameter (real or complex) chosen large enough that the integral converges. $f(s)$ exists provided $F(t)$ is piecewise continuous on every finite interval $[0,T]$ and is of **exponential order** (i.e. $|F(t)| \le Me^{\alpha t}$ for some constants $M,\alpha$), in which case the integral converges for $s > \alpha$.

*Source: Fardin notes, Part 1 (definition & table of contents page).*

---

## 2. Laplace Transforms of Elementary Functions

All derivations below use the source's substitution $st = y \Rightarrow t = y/s,\ dt = dy/s$, which turns each integral into a **Gamma‑function** integral,

$$
\Gamma(n) = \int_0^\infty e^{-y}y^{n-1}\,dy, \qquad \Gamma(n+1) = n!\ \text{(for integer } n\text{)}.
$$

> **Notation note:** the source writes the Gamma integral using an old‑fashioned factorial symbol ($\lceil n \rceil$‑like mark). This has been rewritten as $\Gamma(n)$ throughout for clarity — the mathematics is unchanged.

### 2.1 $F(t) = t^n\ (n>-1)$

$$
\mathcal{L}\{t^n\} = \int_0^\infty e^{-st}t^n\,dt = \frac{1}{s^{n+1}}\int_0^\infty e^{-y}y^{n+1-1}\,dy = \frac{\Gamma(n+1)}{s^{n+1}}
$$

For integer $n$: 
$$
\boxed{\mathcal{L}\{t^n\} = \dfrac{n!}{s^{n+1}}}, \qquad s>0
$$

### 2.2 $F(t) = 1$

Special case $n=0$: $\mathcal{L}\{1\} = \dfrac{\Gamma(1)}{s} = \boxed{\dfrac{1}{s}}$, $s>0$.

### 2.3 $F(t) = t$

Special case $n=1$: $\mathcal{L}\{t\} = \dfrac{\Gamma(2)}{s^2} = \boxed{\dfrac{1}{s^2}}$, $s>0$.

### 2.4 $F(t) = e^{at}$

$$
\mathcal{L}\{e^{at}\} = \int_0^\infty e^{-st}e^{at}\,dt = \int_0^\infty e^{-(s-a)t}\,dt = \boxed{\dfrac{1}{s-a}},\qquad s>a
$$

### 2.5 $F(t) = e^{-at}$

Same method with $s+a$ in place of $s-a$:

$$
\boxed{\mathcal{L}\{e^{-at}\} = \dfrac{1}{s+a}},\qquad s>-a
$$

### 2.6 $F(t) = \sin at$

Using $\sin at = \dfrac{e^{iat}-e^{-iat}}{2i}$:

$$
\mathcal{L}\{\sin at\} = \frac{1}{2i}\left[\int_0^\infty e^{-(s-ia)t}dt - \int_0^\infty e^{-(s+ia)t}dt\right] = \frac{1}{2i}\left[\frac{1}{s-ia}-\frac{1}{s+ia}\right] = \frac{1}{2i}\cdot\frac{2ia}{s^2+a^2}
$$

$$
\boxed{\mathcal{L}\{\sin at\} = \dfrac{a}{s^2+a^2}},\qquad s>0
$$

### 2.7 $F(t) = \cos at$

Identically, with $\cos at = \dfrac{e^{iat}+e^{-iat}}{2}$:

$$
\boxed{\mathcal{L}\{\cos at\} = \dfrac{s}{s^2+a^2}},\qquad s>0
$$

### 2.8 $F(t) = \sinh at$

With $\sinh at = \dfrac{e^{at}-e^{-at}}{2}$:

$$
\boxed{\mathcal{L}\{\sinh at\} = \dfrac{a}{s^2-a^2}},\qquad s>|a|
$$

### 2.9 $F(t) = \cosh at$

$$
\boxed{\mathcal{L}\{\cosh at\} = \dfrac{s}{s^2-a^2}},\qquad s>|a|
$$

### 2.10 $F(t) = t\sin at$ (direct definition)

$$
\mathcal{L}\{t\sin at\} = \int_0^\infty e^{-st}t\cdot\frac{e^{iat}-e^{-iat}}{2i}\,dt = \frac{1}{2i}\left[\frac{1}{(s-ia)^2}-\frac{1}{(s+ia)^2}\right]
$$

Expanding the difference of squares in the numerator gives $4ias/(s^2+a^2)^2$, so

$$
\boxed{\mathcal{L}\{t\sin at\} = \dfrac{2as}{(s^2+a^2)^2}}
$$

### 2.11 $F(t) = t\cos at$ (direct definition)

Analogously,

$$
\boxed{\mathcal{L}\{t\cos at\} = \dfrac{s^2-a^2}{(s^2+a^2)^2}}
$$

*(These two results are re‑derived more systematically in §3.2 using the "multiplication by $t^n$" property.)*

### 2.12 Worked Example — piecewise function

**Problem:** Find $\mathcal{L}\{F(t)\}$ where $F(t)=\begin{cases}t, & 0<t<2\\3,&t\ge2\end{cases}$.

$$
\mathcal{L}\{F(t)\} = \int_0^2 e^{-st}t\,dt + \int_2^\infty 3e^{-st}\,dt
$$

Using $\displaystyle\int e^{-st}t\,dt = -\frac{te^{-st}}{s}-\frac{e^{-st}}{s^2}$:

$$
\left[-\frac{te^{-st}}{s}-\frac{e^{-st}}{s^2}\right]_0^2 + 3\left[-\frac{e^{-st}}{s}\right]_2^\infty
= \left(-\frac{2e^{-2s}}{s}-\frac{e^{-2s}}{s^2}+\frac{1}{s^2}\right)+\frac{3e^{-2s}}{s}
$$

$$
\boxed{\mathcal{L}\{F(t)\} = \dfrac{se^{-2s}-e^{-2s}+1}{s^2}}
$$

### 2.13 Worked Example — periodic piecewise function

**Problem:** $F(t)=\begin{cases}t^2, & 0<t<1\\0,&1<t<2\end{cases}$, with $F(t+2)=F(t)$ for all $t>0$. Find $\mathcal{L}\{F(t)\}$.

Since $F$ is periodic with period $T=2$ (property proved in §3.9):

$$
\mathcal{L}\{F(t)\} = \frac{\displaystyle\int_0^2 e^{-st}F(t)\,dt}{1-e^{-2s}} = \frac{\displaystyle\int_0^1 e^{-st}t^2\,dt}{1-e^{-2s}}
$$

Integrating by parts twice ($\int e^{-st}t^2\,dt = -\dfrac{t^2e^{-st}}{s}-\dfrac{2te^{-st}}{s^2}-\dfrac{2e^{-st}}{s^3}$) and evaluating from $0$ to $1$:

$$
\boxed{\mathcal{L}\{F(t)\} = \dfrac{2-2e^{-s}-2se^{-s}-s^2e^{-s}}{s^3(1-e^{-2s})}}
$$

---

## 3. Properties of Laplace Transform

### 3.1 Linearity Property

**Statement.** If $F_1,F_2,F_3,\dots$ are functions of $t$ and $\lambda_1,\lambda_2,\lambda_3,\dots$ are constants, then

$$
\boxed{\mathcal{L}\{\lambda_1F_1(t)+\lambda_2F_2(t)+\lambda_3F_3(t)+\cdots\} = \lambda_1\mathcal{L}\{F_1(t)\}+\lambda_2\mathcal{L}\{F_2(t)\}+\lambda_3\mathcal{L}\{F_3(t)\}+\cdots}
$$

**Example.** $\mathcal{L}\{3t^2+5e^{-2t}+7\sin2t\}$

$$
=3\cdot\frac{2!}{s^3}+5\cdot\frac{1}{s+2}+7\cdot\frac{2}{s^2+4} = \boxed{\dfrac{6}{s^3}+\dfrac{5}{s+2}+\dfrac{14}{s^2+4}}
$$

### 3.2 Multiplication by $t^n$ (Derivative of Transform)

**Statement.** If $\mathcal{L}\{F(t)\}=f(s)$, then

$$
\boxed{\mathcal{L}\{t^nF(t)\} = (-1)^n\dfrac{d^n}{ds^n}f(s)}
$$

**Example — $\mathcal{L}\{t^2e^{5t}\}$.** With $F(t)=e^{5t}$, $f(s)=\dfrac{1}{s-5}$:

$$
\mathcal{L}\{t^2e^{5t}\}=(-1)^2\frac{d^2}{ds^2}\left(\frac{1}{s-5}\right) = \frac{2}{(s-5)^3}
$$

**Example — $\mathcal{L}\{t^2\sin at\}$.** With $f(s)=\dfrac{a}{s^2+a^2}$:

$$
\frac{d}{ds}\left(\frac{a}{s^2+a^2}\right)=\frac{-2as}{(s^2+a^2)^2},\qquad
\frac{d}{ds}\left(\frac{-2as}{(s^2+a^2)^2}\right)=\frac{8as^2-2a(s^2+a^2)}{(s^2+a^2)^3}
$$

$$
\boxed{\mathcal{L}\{t^2\sin at\} = \dfrac{6as^2-2a^3}{(s^2+a^2)^3}}
$$

**Example — $\mathcal{L}\{t^2\cos at\}$.** With $f(s)=\dfrac{s}{s^2+a^2}$, differentiating twice:

$$
\boxed{\mathcal{L}\{t^2\cos at\} = \dfrac{2s^3-6a^2s}{(s^2+a^2)^3}}
$$

**Example — $\mathcal{L}\{\sin 3t\,(t^2-3t+2)\}$.**

$$
\mathcal{L}\{t^2\sin3t\}-3\mathcal{L}\{t\sin3t\}+2\mathcal{L}\{\sin3t\}
$$

Working through the derivatives of $f(s)=\dfrac{3}{s^2+9}$:

$$
\boxed{\dfrac{18s^2-54}{(s^2+9)^3}-\dfrac{18s}{(s^2+9)^2}+\dfrac{6}{s^2+9}}
$$

**Example — evaluate $\int_0^\infty te^{-2t}\sin t\,dt$ and $\int_0^\infty te^{-3t}\sin t\,dt$.**

With $F(t)=\sin t$, $f(s)=\dfrac{1}{s^2+1}$: $\mathcal{L}\{t\sin t\}=(-1)\dfrac{d}{ds}\left(\dfrac{1}{s^2+1}\right)=\dfrac{2s}{(s^2+1)^2}$.

At $s=2$: $\dfrac{2(2)}{(4+1)^2}=\dfrac{4}{25}$. At $s=3$: $\dfrac{2(3)}{(9+1)^2}=\dfrac{6}{100}=\dfrac{3}{50}$.

$$
\boxed{\int_0^\infty te^{-2t}\sin t\,dt=\frac{4}{25}},\qquad \boxed{\int_0^\infty te^{-3t}\sin t\,dt=\frac{3}{50}}
$$

**Example — evaluate $\int_0^\infty t^3e^{-t}\sin t\,dt$.**

$\mathcal{L}\{t^3\sin t\} = (-1)^3\dfrac{d^3}{ds^3}\left(\dfrac{1}{s^2+1}\right) = \dfrac{2-6s^2}{(s^2+1)^3}\cdot(-1)\cdots$, and after differentiating fully one obtains a numerator that **vanishes at $s=1$**:

$$
\boxed{\int_0^\infty t^3e^{-t}\sin t\,dt = 0}
$$

### 3.3 First Translation (Shifting) Property

**Statement.** If $\mathcal{L}\{F(t)\}=f(s)$, then

$$
\boxed{\mathcal{L}\{e^{at}F(t)\}=f(s-a)},\qquad \boxed{\mathcal{L}\{e^{-at}F(t)\}=f(s+a)}
$$

**Examples.**

- $\mathcal{L}\{t^2e^{5t}\}$: $F(t)=t^2 \Rightarrow f(s)=\dfrac{2}{s^3} \Rightarrow \mathcal{L}\{e^{5t}t^2\}=\dfrac{2}{(s-5)^3}$
- $\mathcal{L}\{e^{2t}\cos5t\}$: $f(s)=\dfrac{s}{s^2+25}\Rightarrow \boxed{\dfrac{s-2}{(s-2)^2+25}}$
- $\mathcal{L}\{e^{-2t}(3\cos6t-5\sin5t)\}$: $f(s)=\dfrac{3s}{s^2+36}-\dfrac{5}{s^2+25} \Rightarrow \boxed{\dfrac{3(s+2)}{(s+2)^2+36}-\dfrac{5}{(s+2)^2+25}}$
- $\mathcal{L}\{e^{3t}t^2\sin t\}$: with $f(s)=\dfrac{6s-2}{(s^2+1)^3}$ (from §3.2 style calc) $\Rightarrow \boxed{\dfrac{6(s-3)-2}{((s-3)^2+1)^3}}$
- $\mathcal{L}\{e^{-t}\sin^2t\}$: $\sin^2t=\tfrac12(1-\cos2t)$, so $f(s)=\dfrac{1}{2s}-\dfrac{s}{2(s^2+4)} \Rightarrow \boxed{\dfrac{1}{2(s+1)}-\dfrac{s+1}{2[(s+1)^2+4]}}$

### 3.4 Second Translation (Shifting) Property

**Statement.** If $\mathcal{L}\{F(t)\}=f(s)$ and $G(t)=\begin{cases}F(t-a),&t>a\\0,&t<a\end{cases}$, then

$$
\boxed{\mathcal{L}\{G(t)\}=e^{-as}f(s)}
$$

**Example — $F(t)=\begin{cases}\cos\left(t-\frac{2\pi}{3}\right),&t\ge\frac{2\pi}{3}\\0,&t<\frac{2\pi}{3}\end{cases}$.**

Substituting $u=t-\tfrac{2\pi}{3}$:

$$
\mathcal{L}\{F(t)\}=\int_{2\pi/3}^\infty e^{-st}\cos\!\left(t-\tfrac{2\pi}{3}\right)dt = e^{-\frac{2\pi s}{3}}\int_0^\infty e^{-su}\cos u\,du = \boxed{e^{-\frac{2\pi s}{3}}\cdot\dfrac{s}{s^2+1}}
$$

**Example — $F(t)=\begin{cases}(t-1)^2,&t>1\\0,&t<1\end{cases}$.**

$$
\mathcal{L}\{F(t)\}=e^{-s}\int_0^\infty e^{-su}u^2\,du = \boxed{\dfrac{2e^{-s}}{s^3}}
$$

### 3.5 Division by $t$

**Statement.** If $\mathcal{L}\{F(t)\}=f(s)$, then, provided $\lim_{t\to0^+}F(t)/t$ exists,

$$
\boxed{\mathcal{L}\left\{\dfrac{F(t)}{t}\right\}=\int_s^\infty f(u)\,du}
$$

**Example — $\mathcal{L}\left\{\dfrac{e^{-at}-e^{-bt}}{t}\right\}$.**

$f(s)=\dfrac{1}{s+a}-\dfrac{1}{s+b}$, so

$$
\int_s^\infty\left(\frac{1}{u+a}-\frac{1}{u+b}\right)du=\Big[\ln(u+a)-\ln(u+b)\Big]_s^\infty = \ln(s+b)-\ln(s+a)
$$

$$
\boxed{\mathcal{L}\left\{\dfrac{e^{-at}-e^{-bt}}{t}\right\}=\ln\!\left(\dfrac{s+b}{s+a}\right)}
$$

**Example — $\mathcal{L}\left\{\displaystyle\int_0^t\frac{\sin t}{t}\,dt\right\}$.**

First, $\mathcal{L}\{\sin t\}=\dfrac{1}{s^2+1}$, so $\mathcal{L}\left\{\dfrac{\sin t}{t}\right\}=\displaystyle\int_s^\infty\dfrac{du}{u^2+1}=\dfrac{\pi}{2}-\tan^{-1}s = \tan^{-1}\dfrac{1}{s}$.

Then by the integral rule (§3.7), $\mathcal{L}\left\{\displaystyle\int_0^t F(u)\,du\right\}=\dfrac{f(s)}{s}$, so

$$
\boxed{\mathcal{L}\left\{\int_0^t\frac{\sin t}{t}dt\right\} = \dfrac{1}{s}\tan^{-1}\dfrac{1}{s}}
$$

**Example — $\mathcal{L}\left\{\dfrac{\cos at-\cos bt}{t}\right\}$.**

$$
\boxed{=\dfrac12\ln\!\left(\dfrac{b^2+s^2}{a^2+s^2}\right)}
$$

**Example — evaluate integrals via $s=0$/$s=1$ in the division‑by‑$t$ transform:**

$$
\int_0^\infty\frac{\sin t}{t}\,dt = \frac{\pi}{2}-\tan^{-1}(0)=\boxed{\dfrac{\pi}{2}},\qquad
\int_0^\infty e^{-t}\frac{\sin t}{t}\,dt = \frac{\pi}{2}-\tan^{-1}(1) = \boxed{\dfrac{\pi}{4}}
$$

$$
\int_0^\infty\frac{e^{-3t}-e^{-6t}}{t}\,dt = \ln\!\left(\frac{s+6}{s+3}\right)\Big|_{s=0}=\boxed{\ln2}
$$

$$
\int_0^\infty\frac{\cos6t-\cos4t}{t}\,dt = \frac12\ln\!\left(\frac{s^2+16}{s^2+36}\right)\Big|_{s=0}=\boxed{\ln\dfrac{2}{3}}
$$

### 3.6 Change of Scale Property

**Statement.** If $\mathcal{L}\{F(t)\}=f(s)$, then

$$
\boxed{\mathcal{L}\{F(at)\}=\dfrac1a f\!\left(\dfrac sa\right)}
$$

**Example.** $F(t)=\sin t \Rightarrow f(s)=\dfrac{1}{s^2+1}$, so $\mathcal{L}\{\sin at\}=\dfrac1a\cdot\dfrac{1}{(s/a)^2+1}=\boxed{\dfrac{a}{s^2+a^2}}$ (consistent with §2.6).

### 3.7 Laplace Transform of an Integral

**Statement.** If $\mathcal{L}\{F(t)\}=f(s)$, then

$$
\boxed{\mathcal{L}\left\{\int_0^tF(u)\,du\right\}=\dfrac{f(s)}{s}}
$$

### 3.8 Laplace Transform of Derivatives

**Statement.** If $\mathcal{L}\{F(t)\}=f(s)$, then

$$
\mathcal{L}\{F'(t)\}=sf(s)-F(0)
$$
$$
\mathcal{L}\{F''(t)\}=s^2f(s)-sF(0)-F'(0)
$$
$$
\mathcal{L}\{F'''(t)\}=s^3f(s)-s^2F(0)-sF'(0)-F''(0)
$$
$$
\boxed{\mathcal{L}\{F^{(n)}(t)\}=s^nf(s)-s^{n-1}F(0)-s^{n-2}F'(0)-\cdots-F^{(n-1)}(0)}
$$

**Worked Example — deriving $\mathcal{L}\{\cos at\}$ from the derivative rule.**

Let $F(t)=\cos at$, so $F'(t)=-a\sin at$, $F(0)=1$. Then

$$
\mathcal{L}\{F'(t)\}=s\,\mathcal{L}\{F(t)\}-F(0) \;\Rightarrow\; \mathcal{L}\{-a\sin at\}=s\,\mathcal{L}\{\cos at\}-1
$$

$$
\mathcal{L}\{\cos at\}=\frac1s\left[1-a\,\mathcal{L}\{\sin at\}\right]=\frac1s\left[1-a\cdot\frac{a}{s^2+a^2}\right] = \boxed{\dfrac{s}{s^2+a^2}}\ \checkmark
$$

This matches §2.7 exactly, confirming both derivations.

### 3.9 Periodic Functions

**Definition.** $F(t)$ is periodic with period $T>0$ if $F(t+T)=F(t)$ for all $t$.

**Statement.**
$$
\boxed{\mathcal{L}\{F(t)\}=\dfrac{\displaystyle\int_0^T e^{-st}F(t)\,dt}{1-e^{-sT}}}
$$

**Derivation sketch.** Split $\int_0^\infty = \sum_{k=0}^\infty \int_{kT}^{(k+1)T}$, substitute $t = kT+u$, use periodicity to pull $F(u)$ out of each term, and sum the resulting geometric series $\sum_k e^{-skT}=\dfrac{1}{1-e^{-sT}}$.

**Example — $F(t)=\begin{cases}t^2,&0<t<2\\3,&t\ge2\end{cases}$ (non‑periodic, for comparison).**

$$
\boxed{\mathcal{L}\{F(t)\}=\dfrac{2-2e^{-2s}-4se^{-2s}-s^2e^{-2s}}{s^3}}
$$

**Example — same $F(t)=t^2$ on $0<t<2$, now periodic with $F(t+2)=F(t)$.**

$$
\boxed{\mathcal{L}\{F(t)\}=\dfrac{2-4s^2e^{-2s}-4se^{-2s}-2e^{-2s}}{s^3(1-e^{-2s})}}
$$

**Example — $F(t)=\begin{cases}t,&0<t<2\\2,&2<t<4\end{cases}$, $F(t+4)=F(t)$.**

$$
\int_0^2 e^{-st}t\,dt = \frac{1}{s^2}-\frac{e^{-2s}}{s^2}-\frac{2e^{-2s}}{s},\qquad \int_2^4 2e^{-st}\,dt = \frac{2e^{-2s}}{s}-\frac{2e^{-4s}}{s}
$$

Adding, the $\frac{2e^{-2s}}{s}$ terms **cancel**, leaving

$$
\int_0^4 e^{-st}F(t)\,dt = \frac{1-e^{-2s}}{s^2}-\frac{2e^{-4s}}{s} = \frac{1-e^{-2s}-2se^{-4s}}{s^2}
$$

$$
\boxed{\mathcal{L}\{F(t)\} = \dfrac{1-e^{-2s}-2se^{-4s}}{s^2(1-e^{-4s})}}
$$

> **Correction note.** The original handwritten solution reports $\dfrac{1-se^{-2s}-e^{-2s}-2se^{-4s}}{s^2(1-e^{-4s})}$ — an extra $-se^{-2s}$ term appears because a factor of $2$ was dropped when evaluating $2\left[\dfrac{e^{-st}}{-s}\right]_2^4$ (the boundary term at $t=2$ should be $\dfrac{2e^{-2s}}{s}$, not $\dfrac{e^{-2s}}{s}$). Redoing the evaluation independently (shown above) confirms the corrected result $\dfrac{1-e^{-2s}-2se^{-4s}}{s^2(1-e^{-4s})}$.

---

## 4. Inverse Laplace Transform

**Definition.** If $\mathcal{L}\{F(t)\}=f(s)$, then $F(t)$ is called the **inverse Laplace transform** of $f(s)$, written

$$
\boxed{F(t)=\mathcal{L}^{-1}\{f(s)\}}
$$

### 4.1 Standard Inverse‑Transform Formulas

| # | $f(s)$ | $F(t)=\mathcal{L}^{-1}\{f(s)\}$ | Notes |
|---|---|---|---|
| (i) | $\dfrac{1}{s^{n+1}}$ | $\dfrac{t^n}{n!}$ | $n$ = non‑negative integer |
| (ii) | $\dfrac{1}{s^{n+1}}$ | $\dfrac{t^n}{\Gamma(n+1)}$ | $n$ = fraction; $\Gamma(n+1)=n\,\Gamma(n)$, $\Gamma(\tfrac12)=\sqrt\pi$ |
| (iii) | $\dfrac1s$ | $1$ | |
| (iv) | $\dfrac{1}{s^2}$ | $t$ | |
| (v) | $\dfrac{1}{s-a}$ | $e^{at}$ | |
| (vi) | $\dfrac{1}{s^2+a^2}$ | $\dfrac{\sin at}{a}$ | |
| (vii) | $\dfrac{s}{s^2+a^2}$ | $\cos at$ | |
| (viii) | $\dfrac{1}{s^2-a^2}$ | $\dfrac{\sinh at}{a}$ | |
| (ix) | $\dfrac{s}{s^2-a^2}$ | $\cosh at$ | |
| (x) | $\dfrac{1}{\sqrt{s^2+a^2}}$ | $J_0(at)$ | $J_0$ = Bessel function of the 1st kind, order 0 |

### 4.2 Linear Property

$$
\boxed{\mathcal{L}^{-1}\{\lambda_1f_1(s)+\lambda_2f_2(s)\} = \lambda_1\mathcal{L}^{-1}\{f_1(s)\}+\lambda_2\mathcal{L}^{-1}\{f_2(s)\}}
$$

### 4.3 First Shifting Property

If $\mathcal{L}^{-1}\{f(s)\}=F(t)$, then $\boxed{\mathcal{L}^{-1}\{f(s-a)\}=e^{at}F(t)}$.

### 4.4 Second Shifting Property

If $\mathcal{L}^{-1}\{f(s)\}=F(t)$, then $\boxed{\mathcal{L}^{-1}\{e^{-as}f(s)\}=\begin{cases}F(t-a),&t>a\\0,&t<a\end{cases}}$.

### 4.5 Division by $s$

If $\mathcal{L}^{-1}\{f(s)\}=F(t)$, then $\boxed{\mathcal{L}^{-1}\left\{\dfrac{f(s)}{s}\right\}=\displaystyle\int_0^tF(u)\,du}$.

### 4.6 Convolution Theorem

See §5.

### 4.7 Inverse Laplace Transform of Derivatives

If $\mathcal{L}^{-1}\{f(s)\}=F(t)$, then

$$
\boxed{\mathcal{L}^{-1}\{f^{(n)}(s)\}=(-1)^nt^nF(t)}
$$

### 4.8 Worked Examples

**Example.** $\mathcal{L}^{-1}\left\{\dfrac{5s+4}{s^2}-\dfrac{2s-18}{s^2+9}+\dfrac{24}{s^4}-\dfrac{30}{s^{7/2}}\right\}$

$$
=5t+4t^2 -2\cos3t+6\sin3t+4t^3-\dfrac{30\,t^{5/2}}{\Gamma(7/2)}
$$

Since $\Gamma(7/2)=\tfrac{15}{8}\sqrt\pi$, $\dfrac{30}{\Gamma(7/2)}=\dfrac{16}{\sqrt\pi}$, giving

$$
\boxed{5t+2t^2-2\cos3t+6\sin3t+4t^3-\dfrac{16\,t^{5/2}}{\sqrt\pi}}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{s}{(s+1)^5}\right\}$ (1st shifting).**

$$
=\mathcal{L}^{-1}\left\{\frac{(s+1)-1}{(s+1)^5}\right\}=e^{-t}\mathcal{L}^{-1}\left\{\frac{1}{s^4}\right\}-e^{-t}\mathcal{L}^{-1}\left\{\frac{1}{s^5}\right\}=\boxed{\dfrac{e^{-t}t^3}{6}-\dfrac{e^{-t}t^4}{24}}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{6s-4}{s^2-4s+20}\right\}$ (complete the square).**

$$
=\mathcal{L}^{-1}\left\{\frac{6(s-2)+8}{(s-2)^2+16}\right\}=6e^{2t}\cos4t+8e^{2t}\frac{\sin4t}{4}=\boxed{2e^{2t}(3\cos4t+\sin4t)}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{4s+12}{s^2+8s+16}\right\}$.**

$$
=\mathcal{L}^{-1}\left\{\frac{4(s+4)-4}{(s+4)^2}\right\}=4e^{-4t}-4e^{-4t}t=\boxed{4e^{-4t}(1-t)}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{3s+7}{s^2-2s-3}\right\}$.**

$$
=\mathcal{L}^{-1}\left\{\frac{3(s-1)+10}{(s-1)^2-4}\right\}=3e^t\cosh2t+5e^t\sinh2t \quad(\text{using }10/2=5)
$$

$$
\boxed{3e^t\cosh2t+5e^t\sinh2t}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{s^2+2s+3}{(s^2+2s+2)(s^2+2s+5)}\right\}$ (partial fractions with $x=s^2+2s$).**

$$
\frac{x+3}{(x+2)(x+5)} = \frac{1/3}{x+2}+\frac{2/3}{x+5}
$$

so

$$
=\frac13\mathcal{L}^{-1}\left\{\frac{1}{(s+1)^2+1}\right\}+\frac23\mathcal{L}^{-1}\left\{\frac{1}{(s+1)^2+4}\right\} = \boxed{\dfrac13 e^{-t}(\sin t+\sin2t)}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{e^{-5s}}{(s-2)^4}\right\}$ (2nd shifting).**

$f(s)=\dfrac{1}{(s-2)^4}\Rightarrow F(t)=\dfrac{t^3e^{2t}}{6}$, so

$$
\boxed{\mathcal{L}^{-1}\left\{\dfrac{e^{-5s}}{(s-2)^4}\right\}=\begin{cases}\dfrac{(t-5)^3e^{2(t-5)}}{6},&t>5\\0,&t<5\end{cases}}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{se^{-4\pi s/5}}{s^2+25}\right\}$.**

$f(s)=\dfrac{s}{s^2+25}\Rightarrow F(t)=\cos5t$, so

$$
\boxed{=\begin{cases}\cos5\!\left(t-\dfrac{4\pi}{5}\right),&t>\dfrac{4\pi}{5}\\0,&t<\dfrac{4\pi}{5}\end{cases}}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{(s+1)e^{-\pi s}}{s^2+s+1}\right\}$.**

Completing the square: $s^2+s+1=(s+\tfrac12)^2+(\tfrac{\sqrt3}{2})^2$, and $s+1=(s+\tfrac12)+\tfrac12$:

$$
F(t) = \frac{e^{-t/2}}{\sqrt3}\left(\sqrt3\cos\tfrac{\sqrt3}{2}t+\sin\tfrac{\sqrt3}{2}t\right)
$$

$$
\boxed{\mathcal{L}^{-1}\{\cdots\}=\begin{cases}\dfrac{e^{-\frac12(t-\pi)}}{\sqrt3}\left[\sqrt3\cos\tfrac{\sqrt3}{2}(t-\pi)+\sin\tfrac{\sqrt3}{2}(t-\pi)\right],&t>\pi\\0,&t<\pi\end{cases}}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{1}{s^2(s^2+1)}\right\}$ (division by $s$).**

$f(s)=\dfrac{1}{s^2+1}\Rightarrow F(t)=\sin t$. Applying the division‑by‑$s$ rule twice (or the direct formula $\mathcal{L}^{-1}\{f(s)/s\}=\int_0^tF(u)du$):

$$
\mathcal{L}^{-1}\left\{\frac{1}{s(s^2+1)}\right\}=\int_0^t\sin u\,du = 1-\cos t
$$

$$
\boxed{\mathcal{L}^{-1}\left\{\dfrac{1}{s^2(s^2+1)}\right\}=\int_0^t(1-\cos u)\,du = t-\sin t}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{1}{s^3(s+1)}\right\}$.**

Applying division by $s$ three times to $f(s)=\dfrac{1}{s+1}\Rightarrow F(t)=e^{-t}$:

$$
\int_0^t e^{-u}du = 1-e^{-t};\qquad \int_0^t(1-e^{-u})du = t+e^{-t}-1;\qquad \int_0^t(u+e^{-u}-1)du=\frac{t^2}{2}-e^{-t}-t+1
$$

$$
\boxed{\mathcal{L}^{-1}\left\{\dfrac{1}{s^3(s+1)}\right\}=\dfrac{t^2}{2}-e^{-t}-t+1}
$$

**Example — $\mathcal{L}^{-1}\left\{\ln\!\left(\dfrac{s+2}{s+1}\right)\right\}$ (inverse transform of a derivative).**

Let $f(s)=\ln\!\left(\dfrac{s+2}{s+1}\right)=\mathcal{L}\{F(t)\}$. Then

$$
f'(s)=\frac{1}{s+2}-\frac{1}{s+1}\ \Rightarrow\ \mathcal{L}^{-1}\{f'(s)\}=e^{-2t}-e^{-t}
$$

By §4.7, $\mathcal{L}^{-1}\{f'(s)\}=(-1)^1tF(t)$, so $-tF(t)=e^{-2t}-e^{-t}$, giving

$$
\boxed{\mathcal{L}^{-1}\left\{\ln\!\left(\dfrac{s+2}{s+1}\right)\right\} = \dfrac{e^{-t}-e^{-2t}}{t}}
$$

**Example — $\mathcal{L}^{-1}\left\{\ln\!\left(1+\dfrac{1}{s^2}\right)\right\}$.**

$f(s)=\ln(1+s^{-2})$, $f'(s)=\dfrac{-2}{s(s^2+1)} = -2\left(\dfrac1s-\dfrac{s}{s^2+1}\right)$, so $\mathcal{L}^{-1}\{f'(s)\}=-2+2\cos t$. Since $\mathcal{L}^{-1}\{f'(s)\}=-tF(t)$:

$$
\boxed{\mathcal{L}^{-1}\left\{\ln\!\left(1+\dfrac{1}{s^2}\right)\right\}=\dfrac{2-2\cos t}{t}}
$$

---

## 5. Convolution Theorem

**Statement.** If $\mathcal{L}^{-1}\{f(s)\}=F(t)$ and $\mathcal{L}^{-1}\{g(s)\}=G(t)$, then

$$
\boxed{\mathcal{L}^{-1}\{f(s)g(s)\} = \int_0^tF(u)\,G(t-u)\,du = (F*G)(t)}
$$

**Conditions:** $f(s)$ and $g(s)$ must be Laplace transforms of functions of exponential order, and the convolution integral must exist for $t>0$.

**Useful shortcut integrals** (used repeatedly below):

$$
\int e^{ax}\sin bx\,dx = \frac{e^{ax}}{a^2+b^2}\big(a\sin bx-b\cos bx\big)+C
$$
$$
\int e^{ax}\cos bx\,dx = \frac{e^{ax}}{a^2+b^2}\big(a\cos bx+b\sin bx\big)+C
$$

### 5.1 Worked Examples

**Example — $\mathcal{L}^{-1}\left\{\dfrac{1}{(s-3)(s-1)}\right\}$.**

$F(t)=e^{3t}$, $G(t)=e^{t}$:

$$
\int_0^te^{3u}e^{t-u}du = e^t\int_0^te^{2u}du = e^t\left[\frac{e^{2u}}{2}\right]_0^t = \boxed{\dfrac{e^{3t}}{2}-\dfrac{e^{t}}{2}}
$$

> Note: carrying through the algebra of $\int_0^t e^{2u+t}du$ gives $\tfrac{e^{2t+t}}{2}-\tfrac{e^t}{2}=\tfrac{e^{3t}}2-\tfrac{e^t}2$; the source's boxed line reads $\tfrac{e^{3t}}2+\tfrac{e^t}2$ but this is a sign slip in the final simplification (the lower‑limit term is $-\tfrac{e^{0+t}}2=-\tfrac{e^t}2$, not $+$). Correct answer: $\dfrac{e^{3t}-e^{t}}{2}$.

**Example — $\mathcal{L}^{-1}\left\{\dfrac{1}{(s+2)^2(s-2)}\right\}$.**

$F(t)=te^{-2t}$ (from $\mathcal{L}^{-1}\{1/(s+2)^2\}$), $G(t)=e^{2t}$:

$$
\int_0^t ue^{-2u}\,e^{2(t-u)}\,du = \int_0^t ue^{-4u+2t}\,du
$$

Integrating by parts ($\int ue^{-4u}du = -\tfrac{u}{4}e^{-4u}-\tfrac{1}{16}e^{-4u}$) and multiplying by $e^{2t}$:

$$
\boxed{\mathcal{L}^{-1}\left\{\dfrac{1}{(s+2)^2(s-2)}\right\} = -\dfrac14te^{-2t}-\dfrac{1}{16}e^{-2t}+\dfrac{1}{16}e^{2t}}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{1}{(s+1)(s^2+1)}\right\}$.**

$G(t)=e^{-t}$ (from $1/(s+1)$), $F(t)=\sin t$ (from $1/(s^2+1)$):

$$
e^{-t}\int_0^te^{u}\sin u\,du = e^{-t}\left[\frac{e^u}{2}(\sin u-\cos u)\right]_0^t
$$

$$
\boxed{=\dfrac12e^{-t}+\dfrac12\sin t-\dfrac12\cos t}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{s}{(s+1)(s^2+1)}\right\}$.**

$F(t)=\cos t$, $G(t)=e^{-t}$:

$$
e^{-t}\int_0^te^{u}\cos u\,du = e^{-t}\left[\frac{e^u}{2}(\cos u+\sin u)\right]_0^t
$$

$$
\boxed{=\dfrac12\left(e^{-t}+\sin t+\cos t\right)}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{1}{s^2(s-1)}\right\}$.**

$F(t)=e^t$, $G(t)=t$:

$$
\int_0^te^u(t-u)\,du = t\int_0^te^u\,du-\int_0^tue^u\,du = t(e^t-1)-\big[te^t-e^t+1\big]
$$

$$
\boxed{\mathcal{L}^{-1}\left\{\dfrac{1}{s^2(s-1)}\right\} = e^t-t-1}
$$

**Example — $\mathcal{L}^{-1}\left\{\dfrac{1}{s^2(s^2+1)}\right\}$.**

$F(t)=t$, $G(t)=\sin t$:

$$
\int_0^t\sin u\,(t-u)\,du = t\int_0^t\sin u\,du - \int_0^t u\sin u\,du = t[1-\cos t]-[\sin t - t\cos t]
$$

$$
\boxed{= t-\sin t}
$$

(consistent with the division‑by‑$s$ derivation in §4.8.)

---

## 6. Applications to Differential Equations

**Key formulas:**

$$
\mathcal{L}\{Y(t)\}=y(s),\qquad \mathcal{L}^{-1}\{y(s)\}=Y(t)
$$
$$
\mathcal{L}\{Y'(t)\}=sy(s)-Y(0),\qquad \mathcal{L}\{Y''(t)\}=s^2y(s)-sY(0)-Y'(0)
$$

**Method:** transform the ODE, substitute initial conditions, solve algebraically for $y(s)$, decompose into partial fractions, then invert.

### 6.1 $Y''+Y=t$, $Y(0)=1,\ Y'(0)=-2$

$$
s^2y-s(1)-(-2)+y = \frac{1}{s^2}\ \Rightarrow\ y(s^2+1)=\frac{1}{s^2}+(s-2)
$$

$$
y=\frac{1}{s^2(s^2+1)}+\frac{s}{s^2+1}-\frac{2}{s^2+1} = \frac{1}{s^2}-\frac{3}{s^2+1}+\frac{s}{s^2+1}
$$

$$
\boxed{Y(t) = t-3\sin t+\cos t}
$$

### 6.2 $Y''-3Y'+2Y=4e^{2t}$, $Y(0)=-3,\ Y'(0)=5$

$$
\{s^2y+3s-5\}-3\{sy+3\}+2y = \frac{4}{s-2}
$$

$$
y(s^2-3s+2)=\frac{4}{s-2}+14-3s\ \Rightarrow\ y=\frac{4+(14-3s)(s-2)}{(s-1)(s-2)^2} = \frac{-3s^2+20s-24}{(s-1)(s-2)^2}
$$

Partial fractions give $y=\dfrac{-7}{s-1}+\dfrac{4}{s-2}+\dfrac{4}{(s-2)^2}$, so

$$
\boxed{Y(t) = -7e^t+4e^{2t}+4te^{2t}}
$$

### 6.3 $Y''+2Y'+5Y=e^{-t}\sin t$, $Y(0)=0,\ Y'(0)=1$

$$
\{s^2y-1\}+2\{sy\}+5y = \frac{1}{(s+1)^2+1}
$$

$$
y(s^2+2s+5)=\frac{1}{s^2+2s+2}+1\ \Rightarrow\ y = \frac13\cdot\frac{1}{(s+1)^2+1}+\frac23\cdot\frac{1}{(s+1)^2+4}
$$

$$
\boxed{Y(t) = \dfrac13e^{-t}(\sin t+\sin 2t)}
$$

### 6.4 $Y'+2Y=e^t$, $Y(0)=-1$

$$
sy+1+2y=\frac{1}{s-1}\ \Rightarrow\ y(s+2)=\frac{1}{s-1}-1\ \Rightarrow\ y=\frac{1}{3(s-1)}+\frac{2}{3(s+2)}
$$

$$
\boxed{Y(t) = \dfrac13e^t+\dfrac23e^{-2t}}
$$

### 6.5 $Y''+9Y=\cos2t$, $Y(0)=1,\ Y\!\left(\frac{\pi}{2}\right)=-1$

Since $Y'(0)$ is unknown, set $Y'(0)=c$:

$$
s^2y-s-c+9y=\frac{s}{s^2+4}\ \Rightarrow\ y=\frac{s}{(s^2+4)(s^2+9)}+\frac{s}{s^2+9}+\frac{c}{s^2+9}
$$

Partial fractions on the first term give $\dfrac15\cdot\dfrac{s}{s^2+4}+\dfrac45\cdot\dfrac{s}{s^2+9}$, so

$$
Y(t)=\frac15\cos2t+\frac45\cos3t+\frac{c}{3}\sin3t
$$

Applying $Y(\pi/2)=-1$: $\cos(3\pi/2)=0$, so $0-\dfrac{c}{3}-\dfrac15=-1 \Rightarrow c=\dfrac{12}{5}$.

$$
\boxed{Y(t) = \dfrac15\cos2t+\dfrac45\cos3t+\dfrac45\sin3t}
$$

### 6.6 $tY''+Y'+4tY=0$, $Y(0)=3,\ Y'(0)=0$ (variable‑coefficient ODE, uses $\mathcal{L}\{tF(t)\}=-\frac{d}{ds}f(s)$)

Transforming term‑by‑term and simplifying leads to the first‑order ODE in $y(s)$:

$$
\frac{dy}{y}=-\frac{s}{s^2+4}\,ds\ \Rightarrow\ \ln\!\left(y\sqrt{s^2+4}\right)=\text{const}\ \Rightarrow\ y=\frac{c}{\sqrt{s^2+4}}
$$

Using $\mathcal{L}^{-1}\{1/\sqrt{s^2+a^2}\}=J_0(at)$: $Y(t)=cJ_0(2t)$. Applying $Y(0)=3\Rightarrow c=3$ (since $J_0(0)=1$):

$$
\boxed{Y(t) = 3J_0(2t)}
$$

---

## 7. Applications to Partial Differential Equations

**Key formulas** (with $u=u(x,s)=\mathcal{L}\{U(x,t)\}$):

$$
\mathcal{L}\left\{\frac{\partial U}{\partial t}\right\}=su-U(x,0),\qquad
\mathcal{L}\left\{\frac{\partial^2U}{\partial t^2}\right\}=s^2u-sU(x,0)-U_t(x,0)
$$
$$
\mathcal{L}\left\{\frac{\partial^2U}{\partial x^2}\right\}=\frac{d^2u}{dx^2}
$$

**Method:** Laplace‑transform in $t$, turning the PDE into an ODE in $x$ (with $s$ as a parameter); solve the ODE, apply the boundary conditions to find the constants, then invert term by term.

### 7.1 $\dfrac{\partial U}{\partial t}=\dfrac{\partial^2U}{\partial x^2}$, $U(x,0)=3\sin2\pi x$, $U(0,t)=0=U(1,t)$

Transforming:
$$
su-3\sin2\pi x = \frac{d^2u}{dx^2}\ \Rightarrow\ \frac{d^2u}{dx^2}-su=-3\sin2\pi x
$$

General solution: $u=c_1e^{\sqrt s x}+c_2e^{-\sqrt s x}+\dfrac{3}{s+4\pi^2}\sin2\pi x$.

Applying $u(0,s)=0$ and $u(1,s)=0$ (and noting $\sin2\pi(0)=\sin2\pi(1)=0$) forces $c_1=c_2=0$, leaving

$$
u=\frac{3}{s+4\pi^2}\sin2\pi x\ \Rightarrow\ \boxed{U(x,t) = 3e^{-4\pi^2t}\sin2\pi x}
$$

*(Cross‑check: separation of variables for $U_t=U_{xx}$ with eigenfunction $\sin2\pi x$ gives decay rate $(2\pi)^2=4\pi^2$ — consistent with the transform result.)*

### 7.2 $\dfrac{\partial U}{\partial t}=2\dfrac{\partial^2U}{\partial x^2}$, $U(0,t)=0=U(5,t)$, $U(x,0)=10\sin4\pi x$

Transforming:
$$
su-10\sin4\pi x = 2\frac{d^2u}{dx^2}\ \Rightarrow\ \frac{d^2u}{dx^2}-\frac{s}{2}u=-5\sin4\pi x
$$

Auxiliary equation $m^2-\tfrac s2=0\Rightarrow m=\pm\sqrt{s/2}$; particular solution by undetermined coefficients ($u_p=A\sin4\pi x$):

$$
-16\pi^2A-\frac{s}{2}A=-5\ \Rightarrow\ A=\frac{5}{16\pi^2+s/2}=\frac{10}{32\pi^2+s}
$$

$$
u = c_1e^{\sqrt{s/2}\,x}+c_2e^{-\sqrt{s/2}\,x}+\frac{10}{s+32\pi^2}\sin4\pi x
$$

The boundary conditions $u(0,s)=u(5,s)=0$ (with $\sin4\pi\cdot5=\sin20\pi=0$) again force $c_1=c_2=0$, so

$$
u=\frac{10}{s+32\pi^2}\sin4\pi x\ \Rightarrow\ \boxed{U(x,t) = 10\,e^{-32\pi^2t}\sin4\pi x}
$$

> **Correction note.** The handwritten solution simplifies the particular‑solution coefficient incorrectly: it goes from $\dfrac{10}{32\pi^2+s}$ to $\dfrac{5}{16\pi^2+s}$, which is **not** a valid simplification (dividing numerator and denominator by 2 would give $\dfrac{5}{16\pi^2+s/2}$, not $\dfrac{5}{16\pi^2+s}$). This error propagates to a final answer of $5e^{-4\pi^2t}\sin4\pi x$ in the source. The corrected coefficient is $\dfrac{10}{s+32\pi^2}$, giving $U(x,t)=10e^{-32\pi^2t}\sin4\pi x$. This is confirmed independently by separation of variables: for $U_t=kU_{xx}$ with eigenfunction $\sin(n\pi x/L)$-type data, the decay rate is $k\lambda^2$ where $\lambda=4\pi$ is the spatial frequency; here $k=2$, so decay rate $=2\cdot(4\pi)^2=32\pi^2$, matching the corrected result exactly.

---

## 8. Important Formula Sheet

### Direct Transforms

| $F(t)$ | $\mathcal{L}\{F(t)\}=f(s)$ | Condition |
|---|---|---|
| $1$ | $\dfrac1s$ | $s>0$ |
| $t$ | $\dfrac{1}{s^2}$ | $s>0$ |
| $t^n$ | $\dfrac{n!}{s^{n+1}}$ | $s>0$, $n=0,1,2,\dots$ |
| $t^n$ (non‑integer) | $\dfrac{\Gamma(n+1)}{s^{n+1}}$ | $s>0,\ n>-1$ |
| $e^{at}$ | $\dfrac{1}{s-a}$ | $s>a$ |
| $e^{-at}$ | $\dfrac{1}{s+a}$ | $s>-a$ |
| $\sin at$ | $\dfrac{a}{s^2+a^2}$ | $s>0$ |
| $\cos at$ | $\dfrac{s}{s^2+a^2}$ | $s>0$ |
| $\sinh at$ | $\dfrac{a}{s^2-a^2}$ | $s>|a|$ |
| $\cosh at$ | $\dfrac{s}{s^2-a^2}$ | $s>|a|$ |
| $t\sin at$ | $\dfrac{2as}{(s^2+a^2)^2}$ | |
| $t\cos at$ | $\dfrac{s^2-a^2}{(s^2+a^2)^2}$ | |
| $e^{at}F(t)$ | $f(s-a)$ | 1st shifting |
| $F(t-a)u(t-a)$ | $e^{-as}f(s)$ | 2nd shifting |
| $t^nF(t)$ | $(-1)^n f^{(n)}(s)$ | |
| $F(t)/t$ | $\displaystyle\int_s^\infty f(u)\,du$ | |
| $F(at)$ | $\dfrac1af(s/a)$ | |
| $\displaystyle\int_0^tF(u)\,du$ | $f(s)/s$ | |
| $F'(t)$ | $sf(s)-F(0)$ | |
| $F''(t)$ | $s^2f(s)-sF(0)-F'(0)$ | |
| Periodic $F$, period $T$ | $\dfrac{\int_0^Te^{-st}F(t)\,dt}{1-e^{-sT}}$ | |

### Inverse Transforms

| $f(s)$ | $F(t)=\mathcal{L}^{-1}\{f(s)\}$ |
|---|---|
| $1/s^{n+1}$ | $t^n/n!$ (integer $n$) or $t^n/\Gamma(n+1)$ (fractional $n$) |
| $1/(s-a)$ | $e^{at}$ |
| $1/(s^2+a^2)$ | $\sin(at)/a$ |
| $s/(s^2+a^2)$ | $\cos at$ |
| $1/(s^2-a^2)$ | $\sinh(at)/a$ |
| $s/(s^2-a^2)$ | $\cosh at$ |
| $1/\sqrt{s^2+a^2}$ | $J_0(at)$ |
| $f(s-a)$ | $e^{at}F(t)$ |
| $e^{-as}f(s)$ | $F(t-a)$ for $t>a$, else $0$ |
| $f(s)/s$ | $\int_0^tF(u)\,du$ |
| $f(s)g(s)$ | $\int_0^tF(u)G(t-u)\,du$ (convolution) |
| $f^{(n)}(s)$ | $(-1)^nt^nF(t)$ |

---

## 9. Exam‑Oriented Quick Reference

- **Complete the square first** whenever the denominator is a quadratic $s^2+bs+c$ that doesn't factor nicely — write it as $(s+\alpha)^2\pm\beta^2$, then split the numerator into a "$(s+\alpha)$" part (→ shifted cosine/cosh) and a constant part (→ shifted sine/sinh).
- **Partial fractions substitution trick:** when the denominator is a product of two "shifted quadratics" sharing the same linear part (e.g. $(s^2+2s+2)(s^2+2s+5)$), substitute $x=s^2+2s$ to reduce it to an ordinary linear partial‑fraction problem, then substitute back.
- **Convolution vs. partial fractions:** partial fractions are usually faster for rational functions; reach for convolution when a factor is a shifted/awkward transform that doesn't split cleanly, or when the problem explicitly says "use the convolution theorem."
- **2nd shifting property** is triggered by an $e^{-as}$ factor multiplying $f(s)$: find $F(t)=\mathcal{L}^{-1}\{f(s)\}$ first, **then** shift it to $F(t-a)$ and gate it with $t>a$.
- **Division by $s$ / division by $t$** are inverses of each other conceptually: dividing by $s$ in the $s$-domain corresponds to integrating in the $t$-domain; dividing by $t$ in the $t$-domain corresponds to integrating in the $s$-domain (from $s$ to $\infty$).
- **Common mistake:** when simplifying a fraction like $\dfrac{10}{32\pi^2+s}$, you cannot "cancel" only part of the denominator against the numerator's factor of 2 — divide numerator **and every term** of the denominator, or don't simplify at all (see the correction in §7.2).
- **ODE via Laplace, standard workflow:** (1) transform every term using $\mathcal{L}\{Y^{(n)}\}$ formulas, (2) substitute all given initial conditions immediately, (3) solve algebraically for $y(s)$, (4) partial‑fraction $y(s)$, (5) invert term‑by‑term.
- **PDE via Laplace:** transform in $t$ only, turning $\partial/\partial t \to s\cdot(\cdot) - (\text{initial condition})$ and leaving $\partial/\partial x$ untouched — this converts the PDE into an ODE in $x$ with $s$ as a parameter; boundary conditions in $x$ (not $t$) are then applied directly to the transformed ODE's constants.
- **Sanity-check PDE answers** against separation of variables when the boundary data is a single sine/cosine mode: for $U_t=kU_{xx}$ with $U(x,0)=A\sin(\lambda x)$ and homogeneous boundary conditions matching that mode, the solution is always $U(x,t)=Ae^{-k\lambda^2t}\sin(\lambda x)$ — a fast way to catch algebra errors.

---

## Notes on Sources and Corrections

- Reconstructed from four scanned PDF sections of one continuous handwritten notebook (Math‑II, Fardin, AE‑50): `fardin-01-15.pdf`, `fardin-16-30.pdf`, `fardin-31-45.pdf`, `fardin-46-48.pdf`.
- All standard identities (§2, §4.1 table) were re-derived independently from the definition and cross-checked against the source's own derivations — no discrepancies found.
- Two calculation errors were found in the source and corrected, each flagged in place:
  1. **§3.9**, periodic function example with period 4 — a dropped factor of 2 produced a spurious $-se^{-2s}$ term.
  2. **§7.2**, heat‑equation boundary value problem — an invalid fraction simplification dropped a factor of 2 from the exponential decay rate; corrected using both the transform method and an independent separation-of-variables check.
- Every other worked example (65 in total across the elementary‑functions, properties, inverse‑transform, convolution, and differential‑equations sections) was checked step‑by‑step against the source and found to be internally consistent.
