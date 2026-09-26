# Math-II Notes

## Part I — Laplace Transform

> **Source:** `Math-II-Laplace-16-24.pdf`, pages 1–2.

### 1. Definition of Laplace Transform

> **Definition — Laplace Transform**
>
> Let $F(t)$ be a function of $t$ specified for $t>0$. Then the Laplace transform of $F(t)$, denoted by $L\{F(t)\}$, is defined by
>
> $$
> L\{F(t)\} = \int_0^{\infty} e^{-st}F(t)\,dt = f(s).
> $$

### 2. Laplace Transform of Some Elementary Functions

| No. | $F(t)$ | $L\{F(t)\}=f(s)$ | Condition |
|---|---|---|---|
| 01 | $1$ (i.e. $t^0$) | $\dfrac{1}{s}$ | $s>0$ |
| 02 | $t$ | $\dfrac{1}{s^2}$ | $s>0$ |
| 03 | $t^n$ | $\dfrac{n!}{s^{n+1}}$ | $s>0$ |
| 04 | $e^{at}$ | $\dfrac{1}{s-a}$ | $s>a$ |
| 05 | $e^{-at}$ | $\dfrac{1}{s+a}$ | $s>a$ |
| 06 | $\sin at$ | $\dfrac{a}{s^2+a^2}$ | $s>0$ |
| 07 | $\cos at$ | $\dfrac{s}{s^2+a^2}$ | $s>0$ |
| 08 | $\sinh at$ | $\dfrac{a}{s^2-a^2}$ | $s>\|a\|$ |
| 09 | $\sin at\cosh at$ | $\dfrac{s}{s^2-a^2}$ | $s>\|a\|$ |

> **Source note:** Entry 09 in the source is written "$\sin\cosh at$" together with the transform $\dfrac{s}{s^2-a^2}$, which is the standard transform of $\cosh at$. The handwriting is consistent with $\cosh at$; the entry has been transcribed under that reading, but the abbreviation as written is genuinely ambiguous.

### 3. Formulas Used Throughout This Section

$$
\int e^{ax}\sin bx\,dx = \frac{e^{ax}}{a^2+b^2}\left[a\sin bx - b\cos bx\right]
$$

$$
\int e^{ax}\cos bx\,dx = \frac{e^{ax}}{a^2+b^2}\left[a\cos bx + b\sin bx\right]
$$

$$
\sinh x = \frac{e^{x}-e^{-x}}{2}, \qquad \cosh x = \frac{e^{x}+e^{-x}}{2}
$$

> **Definition — Gamma Function**
>
> $$
> \Gamma(n) = \int_0^{\infty} e^{-x}x^{n-1}\,dx,\qquad n>0
> $$
> $$
> \Gamma(n) = (n-1)\,\Gamma(n-1),\qquad \Gamma(1)=1,\qquad \Gamma(n+1)=n!\ \text{or}\ Ln
> $$

### 4. Worked Derivations from First Principles

> **Source:** `Math-II-Laplace-16-24.pdf`, pages 2–9.

#### Example (i) — $F(t) = 1$

By the definition of Laplace transform, we know
$$
L\{F(t)\} = \int_0^\infty e^{-st}F(t)\,dt.
$$
Here $F(t)=1$.
$$
L\{1\} = \int_0^\infty e^{-st}\,dt = \left[\frac{e^{-st}}{-s}\right]_0^\infty = \left(\frac{e^{-\infty}}{-s}-\frac{e^{0}}{-s}\right) = \left(0+\frac{1}{s}\right)
$$
$$
\boxed{L\{1\} = \frac{1}{s}}
$$

#### Example (ii) — $F(t) = a$

$$
L\{a\} = \int_0^\infty e^{-st}a\,dt = a\left[\frac{e^{-st}}{-s}\right]_0^\infty = a\left(\frac{e^{-\infty}}{-s}-\frac{e^{0}}{-s}\right) = a\left(0+\frac{1}{s}\right)
$$
$$
\boxed{L\{a\} = \frac{a}{s}}
$$

#### Example (iii) — $F(t) = e^{at}$

$$
L\{e^{at}\} = \int_0^\infty e^{-st}\cdot e^{at}\,dt = \int_0^\infty e^{-(s-a)t}\,dt = \left[\frac{e^{-(s-a)t}}{-(s-a)}\right]_0^\infty
$$
$$
= \left[\frac{e^{-\infty}}{-(s-a)} - \frac{e^{0}}{-(s-a)}\right] = 0 + \frac{1}{s-a}
$$
$$
\boxed{L\{e^{at}\} = \frac{1}{s-a}}
$$

> **Source note:** The source's worked-examples list skips directly from $F(t)=e^{at}$ to $F(t)=\sin at$; the case $F(t)=e^{-at}$ is not separately derived in these pages, although its result appears in the table of elementary transforms above (entry 05).

#### Example (v) — $F(t) = \sin at$

$$
L\{\sin at\} = \int_0^\infty e^{-st}\sin at\,dt = \left[\frac{e^{-st}}{s^2+a^2}\left(-s\sin at - a\cos at\right)\right]_0^\infty
$$
$$
= 0 - \frac{1}{s^2+a^2}\times(-a) = \frac{a}{s^2+a^2}
$$
$$
\boxed{L\{\sin at\} = \frac{a}{s^2+a^2}}
$$

#### Example (vi) — $F(t) = \cos at$

$$
L\{\cos at\} = \int_0^\infty e^{-st}\cos at\,dt
$$
Using $\displaystyle\int_0^\infty e^{ax}\cos bx\,dx = \frac{e^{ax}}{a^2+b^2}[a\cos bx+b\sin bx]$ with $a\to -s,\ b\to a$:
$$
= \left[\frac{e^{-st}}{s^2+a^2}\left(-s\cos at + a\sin at\right)\right]_0^\infty = 0-\frac{1}{s^2+a^2}\left[-s\cdot 1 + a\cdot 0\right]
$$
$$
\boxed{L\{\cos at\} = \frac{s}{s^2+a^2}}
$$

#### Example (vii) — $F(t) = t$

$$
L\{t\} = \int_0^\infty e^{-st}t\,dt
$$
Let $st=z\Rightarrow t=\dfrac{z}{s},\ dt=\dfrac{dz}{s}$; as $t:0\to\infty,\ z:0\to\infty$.
$$
= \int_0^\infty e^{-z}\cdot\frac{z}{s}\cdot\frac{dz}{s} = \frac{1}{s^2}\int_0^\infty e^{-z}z^{2-1}\,dz = \frac{1}{s^2}\Gamma(2) = \frac{1}{s^2}\cdot 1
$$
$$
\boxed{L\{t\} = \frac{1}{s^2}}
$$

#### Example (viii) — $F(t) = t^n$

$$
L\{t^n\} = \int_0^\infty e^{-st}t^n\,dt
$$
Let $st=z\Rightarrow t=\dfrac{z}{s},\ dt=\dfrac{dz}{s}$.
$$
= \int_0^\infty e^{-z}\left(\frac{z}{s}\right)^n\frac{dz}{s} = \frac{1}{s^{n+1}}\int_0^\infty e^{-z}z^{(n+1)-1}\,dz = \frac{1}{s^{n+1}}\times\Gamma(n+1)
$$
$$
\boxed{L\{t^n\} = \frac{n!}{s^{n+1}}}
$$

#### Example (ix) — $F(t) = t^{-1/2}$

$$
L\{t^{-1/2}\} = \int_0^\infty e^{-st}\,t^{-1/2}\,dt = \int_0^\infty e^{-st}\,t^{1/2-1}\,dt = \frac{\Gamma(1/2)}{s^{1/2}} = \frac{\sqrt{\pi}}{\sqrt{s}}
$$
$$
\boxed{L\{t^{-1/2}\} = \sqrt{\frac{\pi}{s}}}
$$

### 5. Question 02 — Laplace Transform of $\cosh at$ and $\sinh at$

> **Source:** `Math-II-Laplace-16-24.pdf`, pages 10–12.

**Question.** Find the L.T. of the following function: (i) $F(t)=\cosh at$ (ii) $F(t)=\sinh at$.

**Solution (i) — $F(t)=\cosh at$:**

Since $\cosh at = \dfrac{e^{at}+e^{-at}}{2}$,
$$
L\{\cosh at\} = \int_0^\infty e^{-st}\left(\frac{e^{at}+e^{-at}}{2}\right)dt = \frac{1}{2}\int_0^\infty e^{-st}\left\{e^{-(s-a)t}+e^{-(s+a)t}\right\}dt
$$
$$
= \frac{1}{2}\left[\frac{e^{-(s-a)t}}{-(s-a)}+\frac{e^{-(s+a)t}}{-(s+a)}\right]_0^\infty = \frac{1}{2}\left[0+0-\left(\frac{-1}{s-a}-\frac{1}{s+a}\right)\right]
$$
$$
= \frac{1}{2}\left[\frac{1}{s-a}+\frac{1}{s+a}\right] = \frac{1}{2}\left(\frac{s+a+s-a}{s^2-a^2}\right) = \frac{1}{2}\cdot\frac{2s}{s^2-a^2}
$$
$$
\boxed{L\{\cosh at\} = \frac{s}{s^2-a^2}}
$$

**Solution (ii) — $F(t)=\sinh at$:**

Since $\sinh at = \dfrac{e^{at}-e^{-at}}{2}$,
$$
L\{\sinh at\} = \int_0^\infty e^{-st}\left(\frac{e^{at}-e^{-at}}{2}\right)dt = \frac{1}{2}\int_0^\infty\left\{e^{-(s-a)t}-e^{-(s+a)t}\right\}dt
$$
$$
= \frac{1}{2}\left[\frac{e^{-(s-a)t}}{-(s-a)}-\frac{e^{-(s+a)t}}{-(s+a)}\right]_0^\infty = \frac{1}{2}\left[0+\frac{1}{s-a}-\frac{1}{s+a}\right]
$$
$$
= \frac{1}{2}\left(\frac{2a}{s^2-a^2}\right)
$$
$$
\boxed{L\{\sinh at\} = \frac{a}{s^2-a^2}}
$$

### 6. Question 03 — Laplace Transforms of Exponentially Damped Sine/Cosine

> **Source:** `Math-II-Laplace-16-24.pdf`, pages 12–17.

**Question.** Find the Laplace transform of the following functions:
(i) $F(t)=e^{at}\sin bt$  (ii) $F(t)=e^{at}\cos bt$  (iii) $F(t)=e^{-2t}\sin 3t$  (iv) $F(t)=e^{-3t}\cos 2t$

**Solution (i) — $F(t)=e^{at}\sin bt$:**

$$
L\{e^{at}\sin bt\} = \int_0^\infty e^{-st}\,e^{at}\sin bt\,dt = \int_0^\infty e^{-(s-a)t}\sin bt\,dt
$$
$$
= \left[\frac{e^{-(s-a)t}}{(s-a)^2+b^2}\left\{-(s-a)\sin bt - b\cos bt\right\}\right]_0^\infty = 0-\frac{1}{(s-a)^2+b^2}\times(-b)
$$
$$
\boxed{L\{e^{at}\sin bt\} = \frac{b}{(s-a)^2+b^2}}
$$

**Solution (ii) — $F(t)=e^{at}\cos bt$:**

$$
L\{e^{at}\cos bt\} = \int_0^\infty e^{-(s-a)t}\cos bt\,dt = \left[\frac{e^{-(s-a)t}}{(s-a)^2+b^2}\left\{-(s-a)\cos bt+b\sin bt\right\}\right]_0^\infty
$$
$$
= -\frac{1}{(s-a)^2+b^2}\times\left\{-(s-a)\right\}
$$
$$
\boxed{L\{e^{at}\cos bt\} = \frac{s-a}{(s-a)^2+b^2}}
$$

**Solution (iii) — $F(t)=e^{-2t}\sin 3t$:**

Here $a=-2,\ b=3$:
$$
L\{e^{-2t}\sin 3t\} = \int_0^\infty e^{-(s+2)t}\sin 3t\,dt = \left[\frac{e^{-(s+2)t}}{(s+2)^2+9}\left\{-(s+2)\sin 3t - 3\cos 3t\right\}\right]_0^\infty
$$
$$
= 0+\frac{1}{(s+2)^2+9}\times 3
$$
$$
\boxed{L\{e^{-2t}\sin 3t\} = \frac{3}{(s+2)^2+9}}
$$

**Solution (iv) — $F(t)=e^{-3t}\cos 2t$:**

Here $a=-3,\ b=2$:
$$
L\{e^{-3t}\cos 2t\} = \int_0^\infty e^{-(s+3)t}\cos 2t\,dt = \left[\frac{e^{-(s+3)t}}{(s+3)^2+4}\left\{-(s+3)\cos 2t+2\sin 2t\right\}\right]_0^\infty
$$
$$
= 0-\frac{1}{(s+3)^2+4}\times\{-(s+3)\}
$$
$$
\boxed{L\{e^{-3t}\cos 2t\} = \frac{s+3}{(s+3)^2+4}}
$$

### 7. Question 4 — Linearity Applied to a Combined Function

> **Source:** `Math-II-Laplace-16-24.pdf`, page 18.

**Question.** Find the L.T. of $4e^{5t}+6t^3-3\cos 4t+4\sin 5t$.

**Solution:**
$$
L\{4e^{5t}+6t^3-3\cos 4t+4\sin 5t\} = 4L\{e^{5t}\}+6L\{t^3\}-3L\{\cos 4t\}+4L\{\sin 5t\}
$$
$$
= 4\times\frac{1}{s-5}+6\times\frac{3!}{s^{3+1}}-3\times\frac{s}{s^2+16}+4\times\frac{5}{s^2+25}
$$
$$
\boxed{L\{4e^{5t}+6t^3-3\cos 4t+4\sin 5t\} = \frac{4}{s-5}+\frac{36}{s^4}-\frac{3s}{s^2+16}+\frac{20}{s^2+25}}
$$

### 8. Change of Scale Property

> **Statement:** If $L\{F(t)\}=f(s)$, then
> $$
> L\{F(at)\}=\frac{1}{a}f\!\left(\frac{s}{a}\right).
> $$

**Proof:**

By the definition of L.T.,
$$
L\{F(t)\}=\int_0^\infty e^{-st}F(t)\,dt = f(s)
$$
$$
\therefore L\{F(at)\} = \int_0^\infty e^{-st}F(at)\,dt
$$
Let $at=z\Rightarrow t=\dfrac{z}{a},\ dt=\dfrac{dz}{a}$.
$$
= \int_0^\infty e^{-s(z/a)}F(z)\frac{dz}{a} = \frac{1}{a}\int_0^\infty e^{-\frac{s}{a}z}F(z)\,dz = \frac{1}{a}f\!\left(\frac{s}{a}\right)\quad[\text{by L.T. definition}]
$$
$$
\boxed{L\{F(at)\}=\frac{1}{a}f\!\left(\frac{s}{a}\right)}\quad\text{(proved)}
$$

**Examples applying the change of scale property:**

$$
L\{\sin at\} = \frac{1}{a}\times\frac{1}{(s/a)^2+1} = \frac{1}{a}\times\frac{a^2}{s^2+a^2}=\frac{a}{s^2+a^2}
$$

$$
L\{\sin t\cos t\} = \frac{1}{2}L\{2\sin t\cos t\} = \frac{1}{2}L\{\sin 2t\} = \frac{1}{2}\times\frac{1}{2}\times\frac{1}{(s/2)^2+1} = \frac{1}{4}\times\frac{4}{s^2+4}
$$
$$
\boxed{L\{\sin t\cos t\}=\frac{1}{s^2+4}}
$$

$$
L\{\cos^3(3t)\}:\quad \cos 3A = 4\cos^3A-3\cos A\ \Rightarrow\ \cos^3A = \frac{1}{4}(\cos 3A+3\cos A)
$$
$$
L\{\cos^3(3t)\} = \frac{1}{4}L\{\cos 9t + 3\cos 3t\} = \frac{1}{4}\left[L\{\cos 9t\}+3L\{\cos 3t\}\right]
$$
$$
= \frac{1}{4}\left[\frac{1}{9}\times\frac{s/9}{(s/9)^2+1}+3\times\frac{1}{3}\times\frac{s/3}{(s/3)^2+1}\right] = \frac{1}{4}\left[\frac{s}{s^2+81}+\frac{3s}{s^2+9}\right]
$$
$$
\boxed{L\{\cos^3(3t)\}=\frac{1}{4}\left[\frac{s}{s^2+81}+\frac{3s}{s^2+9}\right]}
$$

### 9. First Shifting Property (Shifting on the $s$-axis)

> **Statement:** If $L\{F(t)\}=f(s)$, then
> $$
> L\{e^{at}F(t)\} = f(s-a).
> $$

**Proof:**

By the definition of L.T.,
$$
L\{F(t)\}=\int_0^\infty e^{-st}F(t)\,dt=f(s)
$$
$$
\therefore L\{e^{at}F(t)\} = \int_0^\infty e^{-st}\,e^{at}F(t)\,dt = \int_0^\infty e^{-(s-a)t}F(t)\,dt = f(s-a)
$$
$$
\boxed{L\{e^{at}F(t)\}=f(s-a)}\quad\text{(proved)}
$$

**Examples applying the shifting property:**

(i) $L\{e^{3t}t^2\}$: Here $F(t)=t^2,\ L\{t^2\}=\dfrac{2!}{s^{2+1}}=\dfrac{2}{s^3}$.
$$
\boxed{L\{e^{3t}t^2\} = \frac{2}{(s-3)^3}}
$$

(ii) $L\{e^{4t}\cosh 5t\}$: Here $F(t)=\cosh 5t,\ L\{\cosh 5t\}=\dfrac{s}{s^2-25}$.
$$
L\{e^{4t}\cosh 5t\} = \frac{s-4}{(s-4)^2-25} = \frac{s-4}{s^2-8s+16-25}
$$
$$
\boxed{L\{e^{4t}\cosh 5t\} = \frac{s-4}{s^2-8s-9}}
$$

(iii) $L\{e^{-3t}(3\cos 6t-5\sin 6t)\}$: Here $F(t)=3\cos 6t-5\sin 6t$.
$$
L\{3\cos 6t-5\sin 6t\} = 3L\{\cos 6t\}-5L\{\sin 6t\} = 3\times\frac{s}{s^2+36}-5\times\frac{6}{s^2+36}=\frac{3s-30}{s^2+36}
$$
$$
\boxed{L\{e^{-3t}(3\cos 6t-5\sin 6t)\} = \frac{3(s+3)-30}{(s+3)^2+36}}
$$

(iv) $L\{e^{at}t^n\}$: Here $F(t)=t^n=\dfrac{n!}{s^{n+1}}$.
$$
\boxed{L\{e^{at}t^n\} = \frac{n!}{(s-a)^{n+1}}}
$$

### 10. Second Shifting Property (Shifting on the $t$-axis / Unit-Step Shift)

> **Statement:** If $L\{F(t)\}=f(s)$ and
> $$
> G(t) = \begin{cases} F(t-a), & t>a \\ 0, & t<a \end{cases}
> $$
> then $L\{G(t)\} = e^{-as}f(s)$, for $a>0$.

**Proof:**

By the definition of L.T.,
$$
L\{F(t)\} = \int_0^\infty e^{-st}F(t)\,dt = f(s)
$$
Given
$$
G(t) = \begin{cases} F(t-a), & t>a \\ 0, & t<a\end{cases}
$$
$$
L\{G(t)\} = \int_0^\infty e^{-st}G(t)\,dt = \int_0^{a}e^{-st}\cdot 0\,dt + \int_{a}^{\infty}e^{-st}F(t-a)\,dt = 0+\int_a^\infty e^{-st}F(t-a)\,dt
$$
Let $t-a=z\Rightarrow t=z+a,\ dt=dz$; as $t:a\to\infty,\ z:0\to\infty$.
$$
L\{G(t)\} = \int_0^\infty e^{-s(z+a)}F(z)\,dz = e^{-sa}\int_0^\infty e^{-sz}F(z)\,dz = e^{-sa}f(s)
$$
$$
\boxed{L\{G(t)\}=e^{-sa}f(s)}\quad\text{(proved)}
$$

### 11. Multiplication by Powers of $t$ Property

> **Statement:** If $L\{F(t)\}=f(s)$, then for $n=0,1,2,3,\dots$
> $$
> L\{t^nF(t)\} = (-1)^n\frac{d^n}{ds^n}f(s) = (-1)^n f^{(n)}(s).
> $$

**Proof:**

By the definition of L.T.,
$$
L\{F(t)\}=\int_0^\infty e^{-st}F(t)\,dt=f(s)
$$
Differentiating with respect to $s$:
$$
\frac{d}{ds}L\{F(t)\} = \frac{d}{ds}\left[\int_0^\infty e^{-st}F(t)\,dt\right] = \int_0^\infty \frac{\partial}{\partial s}(e^{-st})F(t)\,dt = \int_0^\infty (-t)e^{-st}F(t)\,dt
$$
$$
= -\int_0^\infty e^{-st}\,t\,F(t)\,dt = -L\{tF(t)\}
$$
$$
\Rightarrow \frac{d}{ds}\{f(s)\} = -L\{tF(t)\}\ \Rightarrow\ L\{tF(t)\} = (-1)\frac{d}{ds}f(s)
$$
Similarly,
$$
L\{t^2F(t)\} = (-1)^2\frac{d^2}{ds^2}f(s)
$$
$$
\vdots
$$
$$
\boxed{L\{t^nF(t)\} = (-1)^n\frac{d^n}{ds^n}f(s)}\quad\text{(proved)}
$$

### 12. Supplementary Questions and Cross-Checks

> **Source:** `Math-II-Laplace-16-24.pdf`, pages 25–29.

**Q. Define Laplace transformation.**

**Ans.** If $F(t)$ is defined for $t\geq 0$, its Laplace transform is
$$
L\{F(t)\} = f(s) = \int_0^\infty e^{-st}F(t)\,dt,
$$
provided this improper integral converges, where $s$ is a real (or complex) parameter chosen large enough for convergence.

**Q. Find the Laplace transform of $\sinh(t)$.**

By the definition of Laplace transform,
$$
L\{F(t)\} = \int_0^\infty e^{-st}F(t)\,dt
$$
$$
L\{\sinh t\} = \int_0^\infty e^{-st}\left(\frac{e^t-e^{-t}}{2}\right)dt \qquad\left[\because \sinh t=\frac{e^t-e^{-t}}{2}\right]
$$
$$
= \frac{1}{2}\int_0^\infty\left(e^{-(s-1)t}-e^{-(s+1)t}\right)dt = \frac{1}{2}\left[\frac{1}{s-1}-\frac{1}{s+1}\right]
$$
$$
= \frac{1}{2}\left[\frac{s+1-s+1}{s^2-1}\right] = \frac{1}{2}\cdot\frac{2}{s^2-1}
$$
$$
\boxed{L\{\sinh t\} = \frac{1}{s^2-1}},\qquad s>1
$$

**Cross-check:** $L\{\sinh at\} = \dfrac{a}{s^2-a^2}$; with $a=1$, $L\{\sinh t\}=\dfrac{1}{s^2-1}$. ✓ Consistent.

**Q. State and prove the second shifting property of Laplace transformation.** *(Restated derivation — same result as §10 above; see that section for the full proof.)*

**Q. Find the Laplace transform of $F(t)=e^{-t}\cos 2t$.**

$$
L\{e^{-t}\cos 2t\} = \int_0^\infty e^{-st}e^{-t}\cos 2t\,dt = \int_0^\infty e^{-(s+1)t}\cos 2t\,dt
$$
$$
= \left[\frac{e^{-(s+1)t}}{(s+1)^2+4}\left\{-(s+1)\cos 2t+2\sin 2t\right\}\right]_0^\infty = 0-\frac{1}{(s+1)^2+4}\times\{-(s+1)\}
$$
$$
\boxed{L\{e^{-t}\cos 2t\} = \frac{s+1}{(s+1)^2+4}}
$$

### 13. Solving a First-Order Differential Equation by Laplace Transform

> **Source:** `Math-II-Laplace-16-24.pdf`, pages 30–33.

**Question.** Solve the differential equation $\dfrac{dy}{dt}-y=e^{3t}$, with $y(0)=2$, using the Laplace transform.

**Solution.**

Let $y'=\dfrac{dy}{dt}$. We know
$$
L\{y'(t)\} = sY(s)-y(0), \qquad L\{y(t)\}=Y(s)
$$
and $L\{e^{3t}\}=\dfrac{1}{s-3}$.

Given $\dfrac{dy}{dt}-y=e^{3t}$, $y(0)=2$. Taking the Laplace transform of both sides,
$$
L\left\{\frac{dy}{dt}\right\}-L\{y\} = L\{e^{3t}\}
$$
$$
[sY(s)-y(0)]-Y(s) = \frac{1}{s-3}
$$
$$
[sY(s)-2]-Y(s) = \frac{1}{s-3}
$$
$$
(s-1)Y(s)-2 = \frac{1}{s-3}
$$
$$
Y(s) = \frac{2s-5}{(s-1)(s-3)}
$$

Using partial fractions:
$$
\frac{2s-5}{(s-1)(s-3)} = \frac{A}{s-1}+\frac{B}{s-3} \ \Rightarrow\ 2s-5 = A(s-3)+B(s-1)
$$
At $s=1$: $-2A=-3\Rightarrow A=\dfrac{3}{2}$. At $s=3$: $2B=1\Rightarrow B=\dfrac{1}{2}$.
$$
Y(s) = \frac{3/2}{s-1}+\frac{1/2}{s-3}
$$

Taking the inverse Laplace transform,
$$
L^{-1}\{Y(s)\} = \frac{3}{2}L^{-1}\!\left(\frac{1}{s-1}\right)+\frac{1}{2}L^{-1}\!\left(\frac{1}{s-3}\right)
$$

> **Source note:** The partial-fraction coefficients computed above give $A=3/2,\ B=1/2$, so $y(t)=\tfrac{3}{2}e^{t}+\tfrac{1}{2}e^{3t}$ is the result implied by the algebra shown. The original handwritten page, however, writes the final boxed answer with a **negative** sign on the first term:
> $$
> y(t) = -\frac{3}{2}e^{t}+\frac{1}{2}e^{3t}
> $$
> This sign is inconsistent with the value $A=+3/2$ derived two lines earlier in the same solution. Both forms are preserved here as the source presents them; the reader should verify the sign of $A$ independently (direct substitution of $y(t)=\tfrac32e^t+\tfrac12e^{3t}$ into the ODE with $y(0)=2$ satisfies the given initial condition, whereas the boxed negative-sign version gives $y(0)=-1$, which does not).

### 14. Residue Question (Unsolved in Source)

> **Source:** `Math-II-Laplace-16-24.pdf`, page 34.

**Q.** If $f(z)=\dfrac{z}{(z-2)(z+2)}$, find residues and evaluate $\displaystyle\oint_C f(z)\,dz$ where $C:|z|=5$.

> **Source unclear:** No solution to this question appears in the scanned pages; the page following the statement is blank. The question is preserved here for completeness, with no answer supplied since none exists in the source.

### 15. Further Worked Examples (Repeated / Supplementary Set)

> **Source:** `Math-II-Laplace-16-24.pdf`, pages 36–46.

**Q. Find the Laplace transform of $t^n$.** *(Re-derivation — identical method and result to §4, Example (viii) above.)*

**Q. Find the Laplace transform of the following function: (i) $F(t)=\cosh at$  (ii) $F(te^{-at}\cdot e^{at})$.**

> **Source unclear:** Part (ii) of this question, as written in the source ("$F(t\bar e^{-at}.e^{at})$"), is not legible as a well-formed mathematical expression; it has not been reconstructed. Part (i), $F(t)=\cosh at$, is solved below and reproduces the same derivation and result as §5, Example (i) above:
$$
\boxed{L\{\cosh at\} = \frac{s}{s^2-a^2}}
$$

**Q. State first shifting property. Then find the Laplace transform of $e^{2t}\sin 4t$.** $\big[L\{e^{at}F(t)\}=f(s-a)\big]$

*(Statement and proof — identical to §9 above.)*

**Finding $L\{e^{2t}\sin 4t\}$:**

By the definition of L.T. we know $L\{F(t)\}=\displaystyle\int_0^\infty e^{-st}F(t)\,dt$. Put $F(t)=\sin 4t$:
$$
L\{e^{2t}\sin 4t\} = \int_0^\infty e^{-st}e^{2t}\sin 4t\,dt = \int_0^\infty e^{-(s-2)t}\sin 4t\,dt
$$
$$
= \left[\frac{e^{-(s-2)t}}{(s-2)^2+16}\left\{-(s-2)\sin 4t-4\cos 4t\right\}\right]_0^\infty = 0-\frac{1}{(s-2)^2+16}\times(-4)
$$
$$
\boxed{L\{e^{2t}\sin 4t\} = \frac{4}{(s-2)^2+16}}\quad\text{(proved)}
$$

**Q. If $L\{F(t)\}=f(s)$, then show that $L\{F'''(t)\} = s^3f(s)-s^2F(0)-sF'(0)-F''(0)$.**

**Solution.** Given $L\{F(t)\}=f(s)$. By the definition of L.T.,
$$
L\{F(t)\}=\int_0^\infty e^{-st}F(t)\,dt
$$
$$
\therefore L\{F'''(t)\} = \int_0^\infty e^{-st}F'''(t)\,dt
$$
Integrating by parts,
$$
= \left[e^{-st}F''(t)\right]_0^\infty - \int_0^\infty(-s)e^{-st}F''(t)\,dt = 0-F''(0)+s\int_0^\infty e^{-st}F''(t)\,dt
$$
$$
= -F''(0)+s\left[-F'(0)+s\int_0^\infty e^{-st}F'(t)\,dt\right] = -F''(0)-sF'(0)+s\left[-F(0)+sf(s)\right]
$$
$$
= -F''(0)-sF'(0)-s^2F(0)+s^3f(s)
$$
$$
\boxed{L\{F'''(t)\} = s^3f(s)-s^2F(0)-sF'(0)-F''(0)}\quad\text{(proved)}
$$

**Q. Solve the following differential equation using Laplace transforms:**
$$
Y''(t)+9Y(t)=\cos 2t,\quad Y(0)=1,\ Y'(0)=a,\ Y(\pi/2)=-1.
$$

**Solution.**

Taking the Laplace transform of both sides,
$$
L\{Y''(t)\}+9L\{Y(t)\} = L\{\cos 2t\}
$$
$$
s^2y(s)-sY(0)-Y'(0)+9y(s) = \frac{s}{s^2+4}
$$
With $Y(0)=1,\ Y'(0)=a$:
$$
y(s)(s^2+9) = s+a+\frac{s}{s^2+4}
$$
$$
y(s) = \frac{s}{s^2+9}+\frac{a}{s^2+9}+\frac{s}{(s^2+4)(s^2+9)}
$$

Resolving the last term into partial fractions, $\dfrac{s}{(s^2+4)(s^2+9)} = \dfrac{As+B}{s^2+4}+\dfrac{Cs+D}{s^2+9}$. Since the numerator is odd in $s$ and the denominators are even, $B=D=0$. Multiplying out:
$$
s = As(s^2+9)+Cs(s^2+4)\ \Rightarrow\ 1 = A(s^2+9)+C(s^2+4)
$$
Comparing coefficients of $s^2$: $A+C=0$. Comparing constants: $9A+4C=1$. Solving, $A=\dfrac{1}{5},\ C=-\dfrac{1}{5}$, so
$$
\frac{s}{(s^2+4)(s^2+9)} = \frac{1}{5}\cdot\frac{s}{s^2+4}-\frac{1}{5}\cdot\frac{s}{s^2+9}
$$
Hence
$$
y(s) = \frac{s}{s^2+9}+\frac{a}{s^2+9}+\frac{1}{5}\cdot\frac{s}{s^2+4}-\frac{1}{5}\cdot\frac{s}{s^2+9}
$$

Taking the inverse Laplace transform,
$$
y(t) = \cos 3t + \frac{a}{3}\sin 3t + \frac{1}{5}\cos 2t - \frac{1}{5}\cos 3t
$$

> **Source note:** The final combination-of-terms step in the source is partly obscured, and the coefficient of the last $\cos 3t$ term is not fully legible; it has been reconstructed here from the partial-fraction coefficients $A=1/5,\ C=-1/5$ derived on the same page (giving a net coefficient of $1-\tfrac15=\tfrac45$ on $\cos 3t$ from the first and last terms combined, written above as separate $\cos3t$ and $-\tfrac15\cos3t$ terms to mirror the source's own layout). The constant $a=Y'(0)$ remains as an undetermined parameter in the source; the condition $Y(\pi/2)=-1$ given in the problem statement is not used to solve for $a$ anywhere in the visible solution.

### 16. Inverse Laplace Transform Examples

> **Source:** `Math-II-Laplace-16-24.pdf`, pages 47–50.

**Q. Evaluate $L^{-1}\left\{\dfrac{4s+12}{s^2+8s+16}\right\}$.**

$$
L^{-1}\left\{\frac{4s+12}{s^2+8s+16}\right\} = L^{-1}\left\{\frac{4s+16-4}{(s+4)^2}\right\} = L^{-1}\left\{\frac{4(s+4)}{(s+4)^2}-\frac{4}{(s+4)^2}\right\}
$$
$$
= 4L^{-1}\left(\frac{1}{s+4}\right)-4L^{-1}\left(\frac{1}{(s+4)^2}\right)
$$
Using the first shifting property, $L^{-1}\left(\dfrac{1}{(s+a)^2}\right)=te^{-at}$:
$$
= 4e^{-4t}-4e^{-4t}\cdot L^{-1}\left(\frac{1}{s^2}\right) = 4e^{-4t}-4e^{-4t}\cdot\frac{t^{2-1}}{1!} = 4e^{-4t}-4te^{-4t}
$$
$$
\boxed{L^{-1}\left\{\frac{4s+12}{s^2+8s+16}\right\} = 4e^{-4t}(1-t)}
$$

**Q. Evaluate $L^{-1}\left\{\dfrac{s^2+2s+3}{(s^2+2s+2)(s^2+2s+5)}\right\}$.**

Complete the square in each factor:
$$
s^2+2s+3 = (s+1)^2+2,\qquad s^2+2s+2=(s+1)^2+1,\qquad s^2+2s+5=(s+1)^2+4
$$
Let $u=s+1$. The expression becomes
$$
\frac{u^2+2}{(u^2+1)(u^2+4)}
$$
Partial fractions in $u$:
$$
\frac{u^2+2}{(u^2+1)(u^2+4)} = \frac{A}{u^2+1}+\frac{B}{u^2+4}\ \Rightarrow\ u^2+2 = A(u^2+4)+B(u^2+1)
$$
Comparing $u^2$ coefficients: $A+B=1$. Comparing constants: $4A+B=2$. Solving, $A=\dfrac13,\ B=\dfrac23$.
$$
\frac{s^2+2s+3}{(s^2+2s+2)(s^2+2s+5)} = \frac{1}{3}\cdot\frac{1}{u^2+1}+\frac{2}{3}\cdot\frac{1}{u^2+4}
$$

Taking the inverse Laplace transform (with $u=s+1$):
$$
L^{-1}\left\{\cdots\right\} = \frac{1}{3}L^{-1}\left(\frac{1}{(s+1)^2+1}\right)+\frac{1}{3}L^{-1}\left(\frac{2}{(s+1)^2+4}\right)
$$
$$
= \frac{1}{3}e^{-t}\sin t+\frac{1}{3}e^{-t}\sin 2t
$$
$$
\boxed{L^{-1}\left\{\frac{s^2+2s+3}{(s^2+2s+2)(s^2+2s+5)}\right\} = \frac{1}{3}e^{-t}(\sin t+\sin 2t)}
$$

**Q. Evaluate $L^{-1}\left\{\dfrac{s+2}{s^2+4s+13}\right\}$.**

Complete the square:
$$
s^2+4s+13 = (s+2)^2+9
$$
$$
\therefore \frac{s+2}{s^2+4s+13} = \frac{s+2}{(s+2)^2+9}
$$
$$
L^{-1}\left\{\frac{s+2}{(s+2)^2+9}\right\} = e^{-2t}\,L^{-1}\left(\frac{s}{s^2+3^2}\right) = e^{-2t}\cos 3t
$$

> **Source note:** The handwritten final line of this solution writes the answer as $e^{-3t}\cos 3t$. Given that the shift applied was by $a=2$ (from the factor $(s+2)^2+9$), the first-shifting property gives $e^{-2t}\cos 3t$ as computed directly above; the source's boxed exponent of $-3t$ is inconsistent with its own preceding algebra and is likely a transcription slip in the original notes. Both the derived result and the source's written answer are noted here.
$$
\boxed{L^{-1}\left\{\frac{s+2}{s^2+4s+13}\right\} = e^{-2t}\cos 3t}
$$

## Part II — Vector Algebra and Vector Calculus

### 1. Vector Algebra — Dot Product: Geometric Interpretation and Projection

> **Source:** `Math-II-Vector-16-24.pdf`, page 1.

**Question.** Give the geometrical interpretation of the scalar (dot) product of two vectors. Find the projection of one vector on another. (Also, if $|\mathbf{a}+\mathbf{b}|=|\mathbf{a}-\mathbf{b}|$, then show $\mathbf{a}$ and $\mathbf{b}$ are perpendicular.)

**Geometrical interpretation:** If $\mathbf{a}$ and $\mathbf{b}$ are two vectors with angle $\theta$ between them, then
$$
\mathbf{a}\cdot\mathbf{b} = |\mathbf{a}||\mathbf{b}|\cos\theta.
$$
Geometrically, $|\mathbf{b}|\cos\theta$ is the length of the projection of $\mathbf{b}$ on $\mathbf{a}$. In other words, the dot product is the product of the magnitude of one vector and the resolved component (projection) of the other vector along its direction. It is a scalar quantity, and $\mathbf{a}\cdot\mathbf{b}=0$ means the vectors are perpendicular.

![Geometric interpretation of the dot product and projection](assets/vector-dot-product.svg)

**Formula for projection of $\mathbf{A}$ on $\mathbf{B}$:**
$$
\boxed{\text{Projection of } \mathbf{A}\text{ on }\mathbf{B} = \frac{\mathbf{A}\cdot\mathbf{B}}{|\mathbf{B}|}}
$$

**Worked example (2016):** $\mathbf{A}=\mathbf{i}-2\mathbf{j}-\mathbf{k},\ \mathbf{B}=4\mathbf{i}-4\mathbf{j}+7\mathbf{k}$.
$$
\mathbf{A}\cdot\mathbf{B} = (1)(4)+(-2)(-4)+(-1)(7) = 4+8-7=5
$$
$$
|\mathbf{B}| = \sqrt{4^2+(-4)^2+7^2} = \sqrt{16+16+49}=\sqrt{81}=9
$$
$$
\boxed{\text{Projection of }\mathbf{A}\text{ on }\mathbf{B} = \frac{5}{9}}
$$

**Worked example (2021):** $\mathbf{A}=2\mathbf{i}-3\mathbf{j}+6\mathbf{k},\ \mathbf{B}=\mathbf{i}+2\mathbf{j}+2\mathbf{k}$.
$$
\mathbf{A}\cdot\mathbf{B} = 2-6+12 = 8,\qquad |\mathbf{B}|=\sqrt{1^2+2^2+2^2}=\sqrt{9}=3
$$
$$
\boxed{\text{Projection of }\mathbf{A}\text{ on }\mathbf{B} = \frac{8}{3}}
$$

**Second part (2017): If $|\mathbf{a}+\mathbf{b}|=|\mathbf{a}-\mathbf{b}|$, show $\mathbf{a}\perp\mathbf{b}$.**

$$
|\mathbf{a}+\mathbf{b}|^2 = (\mathbf{a}+\mathbf{b})\cdot(\mathbf{a}+\mathbf{b}) = \mathbf{a}\cdot\mathbf{a}+2\mathbf{a}\cdot\mathbf{b}+\mathbf{b}\cdot\mathbf{b} = |\mathbf{a}|^2+2\mathbf{a}\cdot\mathbf{b}+|\mathbf{b}|^2
$$
$$
|\mathbf{a}-\mathbf{b}|^2 = (\mathbf{a}-\mathbf{b})\cdot(\mathbf{a}-\mathbf{b}) = \mathbf{a}\cdot\mathbf{a}-2\mathbf{a}\cdot\mathbf{b}+\mathbf{b}\cdot\mathbf{b} = |\mathbf{a}|^2-2\mathbf{a}\cdot\mathbf{b}+|\mathbf{b}|^2
$$
Given $|\mathbf{a}+\mathbf{b}|=|\mathbf{a}-\mathbf{b}|\Rightarrow |\mathbf{a}+\mathbf{b}|^2=|\mathbf{a}-\mathbf{b}|^2$:
$$
|\mathbf{a}|^2+2\mathbf{a}\cdot\mathbf{b}+|\mathbf{b}|^2 = |\mathbf{a}|^2-2\mathbf{a}\cdot\mathbf{b}+|\mathbf{b}|^2
$$
$$
\Rightarrow 4\mathbf{a}\cdot\mathbf{b}=0 \Rightarrow \mathbf{a}\cdot\mathbf{b}=0
$$
$$
\boxed{\Rightarrow \mathbf{a}\perp\mathbf{b}}\qquad[\text{if }\mathbf{a}\cdot\mathbf{b}=0\text{ then the vectors are perpendicular}]
$$

### 2. Cross Product — Geometric Interpretation

> **Source:** `Math-II-Vector-16-24.pdf`, page 2.

**Question.** Give the geometrical interpretation of the cross (vector) product of two vectors.

If $\mathbf{a}$ and $\mathbf{b}$ are two vectors with angle $\theta$ between them, then
$$
\mathbf{a}\times\mathbf{b} = |\mathbf{a}||\mathbf{b}|\sin\theta\,\hat{\mathbf{n}}
$$
where $\hat{\mathbf{n}}$ is a unit vector perpendicular to the plane containing $\mathbf{a}$ and $\mathbf{b}$, with direction given by the right-hand rule.

**Geometrical meaning:** $|\mathbf{a}\times\mathbf{b}|=|\mathbf{a}||\mathbf{b}|\sin\theta$ is exactly the area of the parallelogram formed with $\mathbf{a}$ and $\mathbf{b}$ as adjacent sides. So the cross product represents, in magnitude, the area of the parallelogram spanned by the two vectors, and in direction, the normal to the plane of the two vectors. Consequently $\tfrac12|\mathbf{a}\times\mathbf{b}|$ gives the area of the triangle formed by $\mathbf{a}$ and $\mathbf{b}$.

![Geometric interpretation of the cross product as the area of a parallelogram](assets/vector-cross-product.svg)

### 3. Identity: $\mathbf{i}\times(\mathbf{a}\times\mathbf{i})+\mathbf{j}\times(\mathbf{a}\times\mathbf{j})+\mathbf{k}\times(\mathbf{a}\times\mathbf{k})=2\mathbf{a}$

> **Source:** `Math-II-Vector-16-24.pdf`, pages 3–5.

**Question.** For any vector $\mathbf{a}$, prove that
$$
\mathbf{i}\times(\mathbf{a}\times\mathbf{i})+\mathbf{j}\times(\mathbf{a}\times\mathbf{j})+\mathbf{k}\times(\mathbf{a}\times\mathbf{k}) = 2\mathbf{a}.
$$

**Proof.** Let $\mathbf{a}=a_1\mathbf{i}+a_2\mathbf{j}+a_3\mathbf{k}$. We know
$$
\mathbf{i}\times\mathbf{i}=0,\quad \mathbf{j}\times\mathbf{i}=-\mathbf{k},\quad \mathbf{k}\times\mathbf{i}=\mathbf{j},\quad \mathbf{j}\times\mathbf{k}=\mathbf{i}.
$$

**Step 1 — compute $\mathbf{a}\times\mathbf{i}$:**
$$
\mathbf{a}\times\mathbf{i} = (a_1\mathbf{i}+a_2\mathbf{j}+a_3\mathbf{k})\times\mathbf{i} = a_1(\mathbf{i}\times\mathbf{i})+a_2(\mathbf{j}\times\mathbf{i})+a_3(\mathbf{k}\times\mathbf{i}) = -a_2\mathbf{k}+a_3\mathbf{j}
$$

**Step 2 — compute $\mathbf{i}\times(\mathbf{a}\times\mathbf{i})$:**
$$
\mathbf{i}\times(\mathbf{a}\times\mathbf{i}) = \mathbf{i}\times(a_3\mathbf{j}-a_2\mathbf{k}) = a_3(\mathbf{i}\times\mathbf{j})-a_2(\mathbf{i}\times\mathbf{k}) = a_3\mathbf{k}-a_2(-\mathbf{j}) = a_2\mathbf{j}+a_3\mathbf{k}\qquad\text{(i)}
$$

**Compute $\mathbf{a}\times\mathbf{j}$:**
$$
\mathbf{a}\times\mathbf{j} = (a_1\mathbf{i}+a_2\mathbf{j}+a_3\mathbf{k})\times\mathbf{j} = a_1(\mathbf{i}\times\mathbf{j})+a_2(\mathbf{j}\times\mathbf{j})+a_3(\mathbf{k}\times\mathbf{j}) = a_1\mathbf{k}-a_3\mathbf{i}
$$
Then
$$
\mathbf{j}\times(\mathbf{a}\times\mathbf{j}) = \mathbf{j}\times(a_1\mathbf{k}-a_3\mathbf{i}) = a_1(\mathbf{j}\times\mathbf{k})-a_3(\mathbf{j}\times\mathbf{i}) = a_1\mathbf{i}-a_3(-\mathbf{k}) = a_1\mathbf{i}+a_3\mathbf{k}\qquad\text{(ii)}
$$

**Compute $\mathbf{a}\times\mathbf{k}$ and $\mathbf{k}\times(\mathbf{a}\times\mathbf{k})$:**
$$
\mathbf{a}\times\mathbf{k} = (a_1\mathbf{i}+a_2\mathbf{j}+a_3\mathbf{k})\times\mathbf{k} = a_1(\mathbf{i}\times\mathbf{k})+a_2(\mathbf{j}\times\mathbf{k})+a_3(\mathbf{k}\times\mathbf{k}) = -a_1\mathbf{j}+a_2\mathbf{i}
$$
$$
\mathbf{k}\times(\mathbf{a}\times\mathbf{k}) = \mathbf{k}\times(-a_1\mathbf{j}+a_2\mathbf{i}) = -a_1(\mathbf{k}\times\mathbf{j})+a_2(\mathbf{k}\times\mathbf{i}) = a_1\mathbf{i}+a_2\mathbf{j}\qquad\text{(iii)}
$$

**Given:**
$$
\mathbf{i}\times(\mathbf{a}\times\mathbf{i})+\mathbf{j}\times(\mathbf{a}\times\mathbf{j})+\mathbf{k}\times(\mathbf{a}\times\mathbf{k}) = 2\mathbf{a}
$$
Putting equations (i), (ii), (iii) together:
$$
= a_2\mathbf{j}+a_3\mathbf{k}+a_1\mathbf{i}+a_3\mathbf{k}+a_1\mathbf{i}+a_2\mathbf{j} = 2a_1\mathbf{i}+2a_2\mathbf{j}+2a_3\mathbf{k}
$$

> **Source note:** Combining the three boxed intermediate results (i)–(iii) by direct addition gives $2a_1\mathbf{i}+2a_2\mathbf{j}+2a_3\mathbf{k}$ as shown above, which correctly equals $2\mathbf{a}$; this matches the conclusion the source itself reaches.

$$
= 2(a_1\mathbf{i}+a_2\mathbf{j}+a_3\mathbf{k}) = 2\mathbf{a}
$$
$$
\boxed{\mathbf{i}\times(\mathbf{a}\times\mathbf{i})+\mathbf{j}\times(\mathbf{a}\times\mathbf{j})+\mathbf{k}\times(\mathbf{a}\times\mathbf{k}) = 2\mathbf{a}}\quad\text{(proved)}
$$

### 4. Identity: $[\mathbf{a}+\mathbf{b},\,\mathbf{b}+\mathbf{c},\,\mathbf{c}+\mathbf{a}] = 2[\mathbf{a},\mathbf{b},\mathbf{c}]$

> **Source:** `Math-II-Vector-16-24.pdf`, pages 6–7.

The scalar triple product $[\mathbf{a},\mathbf{b},\mathbf{c}]$ used throughout this section equals the (signed) volume of the parallelepiped with edges $\mathbf{a},\mathbf{b},\mathbf{c}$:

![Scalar triple product as the volume of a parallelepiped](assets/scalar-triple-product.svg)

**Question.** Prove that $[\mathbf{a}+\mathbf{b},\,\mathbf{b}+\mathbf{c},\,\mathbf{c}+\mathbf{a}] = 2[\mathbf{a},\mathbf{b},\mathbf{c}]$.

**Proof.** Recall $[\mathbf{x},\mathbf{y},\mathbf{z}]=\mathbf{x}\cdot(\mathbf{y}\times\mathbf{z})$ is the scalar triple product, and it vanishes if any two vectors repeat, and is unchanged under cyclic permutation:
$$
[\mathbf{a},\mathbf{b},\mathbf{c}] = [\mathbf{b},\mathbf{c},\mathbf{a}] = [\mathbf{c},\mathbf{a},\mathbf{b}].
$$

Given: $[\mathbf{a}+\mathbf{b},\ \mathbf{b}+\mathbf{c},\ \mathbf{c}+\mathbf{a}]\stackrel{?}{=}2[\mathbf{a},\mathbf{b},\mathbf{c}]$.

Expand the second and third vectors' cross product:
$$
(\mathbf{b}+\mathbf{c})\times(\mathbf{c}+\mathbf{a}) = \mathbf{b}\times\mathbf{c}+\mathbf{b}\times\mathbf{a}+\mathbf{c}\times\mathbf{c}+\mathbf{c}\times\mathbf{a}
$$
Since $\mathbf{c}\times\mathbf{c}=0$:
$$
= \mathbf{b}\times\mathbf{c}+\mathbf{b}\times\mathbf{a}+\mathbf{c}\times\mathbf{a} = \mathbf{b}\times\mathbf{c}-\mathbf{a}\times\mathbf{b}+\mathbf{c}\times\mathbf{a}\qquad\text{(i)}
$$

Dot with $(\mathbf{a}+\mathbf{b})$:
$$
[\mathbf{a}+\mathbf{b},\mathbf{b}+\mathbf{c},\mathbf{c}+\mathbf{a}] = (\mathbf{a}+\mathbf{b})\cdot(\mathbf{b}\times\mathbf{c}-\mathbf{a}\times\mathbf{b}+\mathbf{c}\times\mathbf{a})
$$
$$
= \mathbf{a}\cdot(\mathbf{b}\times\mathbf{c})-\mathbf{a}\cdot(\mathbf{a}\times\mathbf{b})+\mathbf{a}\cdot(\mathbf{c}\times\mathbf{a})+\mathbf{b}\cdot(\mathbf{b}\times\mathbf{c})-\mathbf{b}\cdot(\mathbf{a}\times\mathbf{b})+\mathbf{b}\cdot(\mathbf{c}\times\mathbf{a})
$$

Eliminate the terms with a repeated vector:
$$
\mathbf{a}\cdot(\mathbf{a}\times\mathbf{b})=0,\quad \mathbf{a}\cdot(\mathbf{c}\times\mathbf{a})=0,\quad \mathbf{b}\cdot(\mathbf{b}\times\mathbf{c})=0,\quad \mathbf{b}\cdot(\mathbf{a}\times\mathbf{b})=0
$$

Remaining:
$$
[\mathbf{a}+\mathbf{b},\mathbf{b}+\mathbf{c},\mathbf{c}+\mathbf{a}] = \mathbf{a}\cdot(\mathbf{b}\times\mathbf{c})+\mathbf{b}\cdot(\mathbf{c}\times\mathbf{a}) = [\mathbf{a},\mathbf{b},\mathbf{c}]+[\mathbf{b},\mathbf{c},\mathbf{a}]
$$
Using the cyclic property $[\mathbf{b},\mathbf{c},\mathbf{a}]=[\mathbf{a},\mathbf{b},\mathbf{c}]$:
$$
[\mathbf{a}+\mathbf{b},\mathbf{b}+\mathbf{c},\mathbf{c}+\mathbf{a}] = [\mathbf{a},\mathbf{b},\mathbf{c}]+[\mathbf{a},\mathbf{b},\mathbf{c}]
$$
$$
\boxed{[\mathbf{a}+\mathbf{b},\,\mathbf{b}+\mathbf{c},\,\mathbf{c}+\mathbf{a}] = 2[\mathbf{a},\mathbf{b},\mathbf{c}]}\quad\text{(proved)}
$$

### 5. Vector Triple Product (BAC–CAB Rule)

> **Source:** `Math-II-Vector-16-24.pdf`, pages 7–10.

**Question.** If $\mathbf{a},\mathbf{b},\mathbf{c}$ are three vectors, prove that
$$
\mathbf{a}\times(\mathbf{b}\times\mathbf{c}) = (\mathbf{a}\cdot\mathbf{c})\mathbf{b}-(\mathbf{a}\cdot\mathbf{b})\mathbf{c}.
$$
*(Vector triple product / BAC–CAB rule.)*

**Proof.** Choose the coordinate axes as follows: the $x$-axis along the line of action of $\mathbf{a}$; the $y$-axis in the plane passing through, parallel to $\mathbf{b}$; and the $z$-axis perpendicular to the plane containing $\mathbf{a}$ and $\mathbf{b}$. Then we have
$$
\mathbf{a}=a_1\hat{\mathbf{i}},\qquad \mathbf{b}=b_1\hat{\mathbf{i}}+b_2\hat{\mathbf{j}},\qquad \mathbf{c}=c_1\hat{\mathbf{i}}+c_2\hat{\mathbf{j}}+c_3\hat{\mathbf{k}}.
$$

Using the cyclic property, $\mathbf{b}\times\mathbf{c}$:
$$
\mathbf{b}\times\mathbf{c} = \begin{vmatrix}\hat{\mathbf{i}} & \hat{\mathbf{j}} & \hat{\mathbf{k}}\\ b_1 & b_2 & 0\\ c_1 & c_2 & c_3\end{vmatrix} = \hat{\mathbf{i}}(b_2c_3-0)-\hat{\mathbf{j}}(b_1c_3-0)+\hat{\mathbf{k}}(b_1c_2-b_2c_1)
$$
$$
= \hat{\mathbf{i}}(b_2c_3)-\hat{\mathbf{j}}(b_1c_3)+\hat{\mathbf{k}}(b_1c_2-b_2c_1)
$$

Now,
$$
\mathbf{a}\times(\mathbf{b}\times\mathbf{c}) = \begin{vmatrix}\hat{\mathbf{i}} & \hat{\mathbf{j}} & \hat{\mathbf{k}}\\ a_1 & 0 & 0\\ b_2c_3 & -b_1c_3 & b_1c_2-b_2c_1\end{vmatrix}
$$
$$
= \hat{\mathbf{i}}(0-0)-\hat{\mathbf{j}}\left[a_1(b_1c_2-b_2c_1)-0\right]+\hat{\mathbf{k}}\left[a_1(-b_1c_3)-0\right]
$$
$$
= (a_1b_2c_1-a_1b_1c_2)\hat{\mathbf{j}}-a_1b_1c_3\hat{\mathbf{k}}
$$

Compare with $(\mathbf{a}\cdot\mathbf{c})\mathbf{b}-(\mathbf{a}\cdot\mathbf{b})\mathbf{c}$:
$$
(\mathbf{a}\cdot\mathbf{c})\mathbf{b}-(\mathbf{a}\cdot\mathbf{b})\mathbf{c} = a_1c_1(b_1\hat{\mathbf{i}}+b_2\hat{\mathbf{j}})-a_1b_1(c_1\hat{\mathbf{i}}+c_2\hat{\mathbf{j}}+c_3\hat{\mathbf{k}})
$$
$$
= a_1b_1c_1\hat{\mathbf{i}}+a_1b_2c_1\hat{\mathbf{j}}-a_1b_1c_1\hat{\mathbf{i}}-a_1b_1c_2\hat{\mathbf{j}}-a_1b_1c_3\hat{\mathbf{k}}
$$
$$
= (a_1b_2c_1-a_1b_1c_2)\hat{\mathbf{j}}-a_1b_1c_3\hat{\mathbf{k}}
$$

Both expressions match, so
$$
\boxed{\mathbf{a}\times(\mathbf{b}\times\mathbf{c}) = (\mathbf{a}\cdot\mathbf{c})\mathbf{b}-(\mathbf{a}\cdot\mathbf{b})\mathbf{c}}\quad\text{(proved)}
$$

### 6. Identity: $(\mathbf{a}\times\mathbf{b})\times(\mathbf{c}\times\mathbf{d})$

> **Source:** `Math-II-Vector-16-24.pdf`, pages 10–12.

**Question.** Prove that $(\mathbf{a}\times\mathbf{b})\times(\mathbf{c}\times\mathbf{d}) = [\mathbf{a},\mathbf{c},\mathbf{d}]\mathbf{b}-[\mathbf{b},\mathbf{c},\mathbf{d}]\mathbf{a} = [\mathbf{a},\mathbf{b},\mathbf{d}]\mathbf{c}-[\mathbf{a},\mathbf{b},\mathbf{c}]\mathbf{d}$.

**Proof.** Let $\mathbf{u}=\mathbf{a}\times\mathbf{b}$ and $\mathbf{v}=\mathbf{c}\times\mathbf{d}$. Then
$$
(\mathbf{a}\times\mathbf{b})\times(\mathbf{c}\times\mathbf{d}) = \mathbf{u}\times(\mathbf{c}\times\mathbf{d})
$$
Using the BAC–CAB rule $\mathbf{x}\times(\mathbf{y}\times\mathbf{z}) = (\mathbf{x}\cdot\mathbf{z})\mathbf{y}-(\mathbf{x}\cdot\mathbf{y})\mathbf{z}$:
$$
= (\mathbf{u}\cdot\mathbf{d})\mathbf{c}-(\mathbf{u}\cdot\mathbf{c})\mathbf{d} = [(\mathbf{a}\times\mathbf{b})\cdot\mathbf{d}]\mathbf{c}-[(\mathbf{a}\times\mathbf{b})\cdot\mathbf{c}]\mathbf{d}
$$
$$
= [\mathbf{a},\mathbf{b},\mathbf{d}]\mathbf{c}-[\mathbf{a},\mathbf{b},\mathbf{c}]\mathbf{d}\qquad\left[\because \mathbf{a}\cdot(\mathbf{b}\times\mathbf{c})=[\mathbf{a},\mathbf{b},\mathbf{c}]\right]
$$

By the same route, viewing the product as $-\mathbf{v}\times(\mathbf{a}\times\mathbf{b})$:
$$
(\mathbf{a}\times\mathbf{b})\times(\mathbf{c}\times\mathbf{d}) = (\mathbf{a}\times\mathbf{b})\times\mathbf{v} = -\mathbf{v}\times(\mathbf{a}\times\mathbf{b})\qquad[\because \mathbf{x}\times\mathbf{y}=-\mathbf{y}\times\mathbf{x}]
$$
$$
= -\left[(\mathbf{v}\cdot\mathbf{b})\mathbf{a}-(\mathbf{v}\cdot\mathbf{a})\mathbf{b}\right] = (\mathbf{v}\cdot\mathbf{a})\mathbf{b}-(\mathbf{v}\cdot\mathbf{b})\mathbf{a}
$$
$$
= [(\mathbf{c}\times\mathbf{d})\cdot\mathbf{a}]\mathbf{b}-[(\mathbf{c}\times\mathbf{d})\cdot\mathbf{b}]\mathbf{a} = [\mathbf{c},\mathbf{d},\mathbf{a}]\mathbf{b}-[\mathbf{c},\mathbf{d},\mathbf{b}]\mathbf{a}
$$

Using the cyclic property $[\mathbf{c},\mathbf{d},\mathbf{a}]=[\mathbf{a},\mathbf{c},\mathbf{d}]$ and $[\mathbf{c},\mathbf{d},\mathbf{b}]=[\mathbf{b},\mathbf{c},\mathbf{d}]$:
$$
= [\mathbf{a},\mathbf{c},\mathbf{d}]\mathbf{b}-[\mathbf{b},\mathbf{c},\mathbf{d}]\mathbf{a}
$$

Both expressions represent the same vector $(\mathbf{a}\times\mathbf{b})\times(\mathbf{c}\times\mathbf{d})$; therefore
$$
\boxed{(\mathbf{a}\times\mathbf{b})\times(\mathbf{c}\times\mathbf{d}) = [\mathbf{a},\mathbf{c},\mathbf{d}]\mathbf{b}-[\mathbf{b},\mathbf{c},\mathbf{d}]\mathbf{a} = [\mathbf{a},\mathbf{b},\mathbf{d}]\mathbf{c}-[\mathbf{a},\mathbf{b},\mathbf{c}]\mathbf{d}}\quad\text{(proved)}
$$

### 7. Triangle Identity and the Sine Rule

> **Source:** `Math-II-Vector-16-24.pdf`, pages 13–14.

**Question.** In a triangle $ABC$, if $\vec{\mathbf{a}}+\vec{\mathbf{b}}+\vec{\mathbf{c}}=\vec{0}$, then show that $\mathbf{a}\times\mathbf{b}=\mathbf{b}\times\mathbf{c}=\mathbf{c}\times\mathbf{a}$, and hence show that $\dfrac{\sin A}{a}=\dfrac{\sin B}{b}=\dfrac{\sin C}{c}$.

**1st part.**

By the triangle law of vectors, $\vec{\mathbf{a}}+\vec{\mathbf{b}}+\vec{\mathbf{c}}=\vec{0}$.

Taking the cross product by $\vec{\mathbf{a}}$:
$$
\vec{\mathbf{a}}\times(\vec{\mathbf{a}}+\vec{\mathbf{b}}+\vec{\mathbf{c}}) = \vec{\mathbf{a}}\times\vec{0} = \vec{0}
$$
$$
\Rightarrow \vec{\mathbf{a}}\times\vec{\mathbf{a}}+\vec{\mathbf{a}}\times\vec{\mathbf{b}}+\vec{\mathbf{a}}\times\vec{\mathbf{c}} = 0
$$
$$
\Rightarrow \vec{\mathbf{a}}\times\vec{\mathbf{b}}+\vec{\mathbf{a}}\times\vec{\mathbf{c}} = 0 \Rightarrow \vec{\mathbf{a}}\times\vec{\mathbf{b}} = -\vec{\mathbf{a}}\times\vec{\mathbf{c}} \Rightarrow \mathbf{a}\times\mathbf{b} = \mathbf{c}\times\mathbf{a}
$$
Similarly, $\mathbf{a}\times\mathbf{b}=\mathbf{b}\times\mathbf{c}$.
$$
\boxed{\mathbf{a}\times\mathbf{b} = \mathbf{b}\times\mathbf{c} = \mathbf{c}\times\mathbf{a}}\quad\text{(proved)}
$$

**2nd part.**

We know that
$$
ab\sin(\pi-C) = bc\sin(\pi-A) = ca\sin(\pi-B)
$$
$$
\Rightarrow ab\sin C = bc\sin A = ca\sin B
$$
$$
\Rightarrow \frac{ab\sin C}{abc} = \frac{bc\sin A}{abc} = \frac{ca\sin B}{abc}
$$
$$
\boxed{\frac{\sin A}{a} = \frac{\sin B}{b} = \frac{\sin C}{c}}\quad\text{(proved)}
$$

### 8. Area of a Parallelogram Given Its Diagonals

> **Source:** `Math-II-Vector-16-24.pdf`, page 15.

**Question.** Find the area of the parallelogram whose diagonals are $3\mathbf{i}+\mathbf{j}-2\mathbf{k}$ and $\mathbf{i}-3\mathbf{j}+4\mathbf{k}$.

If $\mathbf{d}_1,\mathbf{d}_2$ are the diagonals of a parallelogram, its area $=\tfrac12|\mathbf{d}_1\times\mathbf{d}_2|$.

Let $\mathbf{d}_1=3\mathbf{i}+\mathbf{j}+2\mathbf{k},\ \mathbf{d}_2=\mathbf{i}-3\mathbf{j}+4\mathbf{k}$.

> **Source note:** The problem statement gives the first diagonal as $3\mathbf{i}+\mathbf{j}-2\mathbf{k}$, but the worked solution uses $\mathbf{d}_1=3\mathbf{i}+\mathbf{j}+2\mathbf{k}$ (with a $+2\mathbf{k}$ rather than $-2\mathbf{k}$). The computation below follows the source's own worked value of $\mathbf{d}_1$, as that is what the determinant and final answer are based on.

$$
\mathbf{d}_1\times\mathbf{d}_2 = \begin{vmatrix}\mathbf{i} & \mathbf{j} & \mathbf{k}\\ 3 & 1 & 2\\ 1 & -3 & 4\end{vmatrix} = \mathbf{i}(4-(-6))-\mathbf{j}(12-2)+\mathbf{k}(-9-1)
$$
$$
= \mathbf{i}(10)-\mathbf{j}(10)+\mathbf{k}(-10)
$$

> **Source note:** The handwritten computation shows the result as $\mathbf{i}\cdot2-2\mathbf{i}-14\mathbf{j}-10\mathbf{k}$, simplifying in the source to $-2\mathbf{i}-14\mathbf{j}-10\mathbf{k}$; the individual cofactor arithmetic is not fully legible. The magnitude used downstream is $|\mathbf{d}_1\times\mathbf{d}_2|=\sqrt{4+196+100}=\sqrt{300}=10\sqrt{3}$, which is preserved exactly as computed in the source below.

$$
|\mathbf{d}_1\times\mathbf{d}_2| = \sqrt{4+196+100} = \sqrt{300} = 10\sqrt{3}
$$

Now the area is $\tfrac12|\mathbf{d}_1\times\mathbf{d}_2|$:
$$
= \frac{1}{2}\times 10\sqrt{3}
$$
$$
\boxed{\text{Area} = 5\sqrt{3}\ \text{square units}}
$$

### 9. Finding a Scalar for Coplanar Vectors

> **Source:** `Math-II-Vector-16-24.pdf`, page 16.

**Question.** Find the scalar $\lambda$ so that the vectors $2\mathbf{i}-\mathbf{j}+\mathbf{k}$, $\mathbf{i}+2\mathbf{j}-3\mathbf{k}$, and $4\mathbf{i}-\mathbf{j}+\lambda\mathbf{k}$ are coplanar.

Three vectors are coplanar if and only if their scalar triple product is zero, i.e. the determinant formed by their components is zero.

Let $\mathbf{A}=2\mathbf{i}-\mathbf{j}+\mathbf{k},\ \mathbf{B}=\mathbf{i}+2\mathbf{j}-3\mathbf{k},\ \mathbf{C}=4\mathbf{i}-\mathbf{j}+\lambda\mathbf{k}$. So
$$
\begin{vmatrix} 2 & -1 & 1\\ 1 & 2 & -3\\ 4 & -1 & \lambda\end{vmatrix} = 0
$$

Expanding along the first row:
$$
2(2\lambda-3)+1(\lambda+12)+1(-1-8) = 0
$$
$$
4\lambda-6+\lambda+12-9 = 0
$$
$$
5\lambda-3 = 0
$$
$$
\boxed{\lambda = \frac{3}{5}}
$$

### 10. Gram Determinant Identity: $[\mathbf{a},\mathbf{b},\mathbf{c}]^2$

> **Source:** `Math-II-Vector-16-24.pdf`, pages 17–18.

**Question.** Prove that
$$
[\mathbf{a},\mathbf{b},\mathbf{c}]^2 = \begin{vmatrix} \mathbf{a}\cdot\mathbf{a} & \mathbf{a}\cdot\mathbf{b} & \mathbf{a}\cdot\mathbf{c}\\ \mathbf{b}\cdot\mathbf{a} & \mathbf{b}\cdot\mathbf{b} & \mathbf{b}\cdot\mathbf{c}\\ \mathbf{c}\cdot\mathbf{a} & \mathbf{c}\cdot\mathbf{b} & \mathbf{c}\cdot\mathbf{c}\end{vmatrix}.
$$

**Proof.** Given
$$
[\mathbf{a},\mathbf{b},\mathbf{c}]^2 = \begin{vmatrix} \mathbf{a}\cdot\mathbf{a} & \mathbf{a}\cdot\mathbf{b} & \mathbf{a}\cdot\mathbf{c}\\ \mathbf{b}\cdot\mathbf{a} & \mathbf{b}\cdot\mathbf{b} & \mathbf{b}\cdot\mathbf{c}\\ \mathbf{c}\cdot\mathbf{a} & \mathbf{c}\cdot\mathbf{b} & \mathbf{c}\cdot\mathbf{c}\end{vmatrix}
$$

Write $\mathbf{a}=(a_1,a_2,a_3),\ \mathbf{b}=(b_1,b_2,b_3),\ \mathbf{c}=(c_1,c_2,c_3)$. Then
$$
[\mathbf{a},\mathbf{b},\mathbf{c}]^2 = [\mathbf{a},\mathbf{b},\mathbf{c}]\cdot[\mathbf{a},\mathbf{b},\mathbf{c}] = \begin{vmatrix}a_1&a_2&a_3\\b_1&b_2&b_3\\c_1&c_2&c_3\end{vmatrix}\begin{vmatrix}a_1&a_2&a_3\\b_1&b_2&b_3\\c_1&c_2&c_3\end{vmatrix}
$$

Multiplying the two determinants (row by row, i.e. matrix $M M^T$):
$$
= \begin{vmatrix}
a_1a_1+a_2a_2+a_3a_3 & a_1b_1+a_2b_2+a_3b_3 & a_1c_1+a_2c_2+a_3c_3\\
b_1a_1+b_2a_2+b_3a_3 & b_1b_1+b_2b_2+b_3b_3 & b_1c_1+b_2c_2+b_3c_3\\
c_1a_1+c_2a_2+c_3a_3 & c_1b_1+c_2b_2+c_3b_3 & c_1c_1+c_2c_2+c_3c_3
\end{vmatrix}
$$
$$
= \begin{vmatrix}
\mathbf{a}\cdot\mathbf{a} & \mathbf{a}\cdot\mathbf{b} & \mathbf{a}\cdot\mathbf{c}\\
\mathbf{b}\cdot\mathbf{a} & \mathbf{b}\cdot\mathbf{b} & \mathbf{b}\cdot\mathbf{c}\\
\mathbf{c}\cdot\mathbf{a} & \mathbf{c}\cdot\mathbf{b} & \mathbf{c}\cdot\mathbf{c}
\end{vmatrix}
$$
$$
\boxed{[\mathbf{a},\mathbf{b},\mathbf{c}]^2 = \begin{vmatrix}\mathbf{a}\cdot\mathbf{a} & \mathbf{a}\cdot\mathbf{b} & \mathbf{a}\cdot\mathbf{c}\\ \mathbf{b}\cdot\mathbf{a} & \mathbf{b}\cdot\mathbf{b} & \mathbf{b}\cdot\mathbf{c}\\ \mathbf{c}\cdot\mathbf{a} & \mathbf{c}\cdot\mathbf{b} & \mathbf{c}\cdot\mathbf{c}\end{vmatrix}}\quad\text{(proved)}
$$

### 11. Jacobi Identity: $\mathbf{a}\times(\mathbf{b}\times\mathbf{c})+\mathbf{b}\times(\mathbf{c}\times\mathbf{a})+\mathbf{c}\times(\mathbf{a}\times\mathbf{b})=0$

> **Source:** `Math-II-Vector-16-24.pdf`, pages 18–20.

**Question.** Prove that $\mathbf{a}\times(\mathbf{b}\times\mathbf{c})+\mathbf{b}\times(\mathbf{c}\times\mathbf{a})+\mathbf{c}\times(\mathbf{a}\times\mathbf{b})=0$.

This is called the Jacobi identity for the vector (cross) product. Use the vector triple product (BAC–CAB) rule on each term:
$$
\mathbf{x}\times(\mathbf{y}\times\mathbf{z}) = (\mathbf{x}\cdot\mathbf{z})\mathbf{y}-(\mathbf{x}\cdot\mathbf{y})\mathbf{z}
$$

Expand each of the three terms:
$$
\mathbf{a}\times(\mathbf{b}\times\mathbf{c}) = (\mathbf{a}\cdot\mathbf{c})\mathbf{b}-(\mathbf{a}\cdot\mathbf{b})\mathbf{c}
$$
$$
\mathbf{b}\times(\mathbf{c}\times\mathbf{a}) = (\mathbf{b}\cdot\mathbf{a})\mathbf{c}-(\mathbf{b}\cdot\mathbf{c})\mathbf{a}
$$
$$
\mathbf{c}\times(\mathbf{a}\times\mathbf{b}) = (\mathbf{c}\cdot\mathbf{b})\mathbf{a}-(\mathbf{c}\cdot\mathbf{a})\mathbf{b}
$$

Add all three and collect terms by $\mathbf{a},\mathbf{b},\mathbf{c}$:
$$
\text{Sum} = \left[(\mathbf{a}\cdot\mathbf{c})\mathbf{b}-(\mathbf{a}\cdot\mathbf{b})\mathbf{c}\right]+\left[(\mathbf{b}\cdot\mathbf{a})\mathbf{c}-(\mathbf{b}\cdot\mathbf{c})\mathbf{a}\right]+\left[(\mathbf{c}\cdot\mathbf{b})\mathbf{a}-(\mathbf{c}\cdot\mathbf{a})\mathbf{b}\right]
$$

Coefficient of $\mathbf{a}$: $-(\mathbf{b}\cdot\mathbf{c})+(\mathbf{c}\cdot\mathbf{b}) = 0\quad[\because \mathbf{b}\cdot\mathbf{c}=\mathbf{c}\cdot\mathbf{b}]$

Coefficient of $\mathbf{b}$: $(\mathbf{a}\cdot\mathbf{c})-(\mathbf{c}\cdot\mathbf{a}) = 0\quad[\because \mathbf{a}\cdot\mathbf{c}=\mathbf{c}\cdot\mathbf{a}]$

Coefficient of $\mathbf{c}$: $-(\mathbf{a}\cdot\mathbf{b})+(\mathbf{b}\cdot\mathbf{a}) = 0\quad[\because \mathbf{a}\cdot\mathbf{b}=\mathbf{b}\cdot\mathbf{a}]$

Since every coefficient is zero:
$$
\boxed{\mathbf{a}\times(\mathbf{b}\times\mathbf{c})+\mathbf{b}\times(\mathbf{c}\times\mathbf{a})+\mathbf{c}\times(\mathbf{a}\times\mathbf{b})=0}\quad\text{(proved)}
$$

### 12. Unit Vector Perpendicular to a Plane

> **Source:** `Math-II-Vector-16-24.pdf`, page 21.

**Question.** Determine a unit vector perpendicular to the plane of $\vec{\mathbf{A}}=2\hat{\mathbf{i}}-6\hat{\mathbf{j}}-3\hat{\mathbf{k}}$ and $\vec{\mathbf{B}}=4\hat{\mathbf{i}}+3\hat{\mathbf{j}}-\hat{\mathbf{k}}$.

Let $\vec{\mathbf{c}}=c_1\hat{\mathbf{i}}+c_2\hat{\mathbf{j}}+c_3\hat{\mathbf{k}}$ be perpendicular to the plane of $\vec{\mathbf{A}}$ and $\vec{\mathbf{B}}$.

$$
\vec{\mathbf{c}}\cdot\vec{\mathbf{A}} = 2c_1-6c_2-3c_3 = 0\qquad\text{(i)}
$$
$$
\vec{\mathbf{c}}\cdot\vec{\mathbf{B}} = 4c_1+3c_2-c_3 = 0\qquad\text{(ii)}
$$

From (i) and (ii), we get
$$
c_1=\frac{1}{2}c_3,\qquad c_2=-\frac{1}{3}c_3
$$
$$
\therefore \vec{\mathbf{c}} = \frac{1}{2}c_3\hat{\mathbf{i}}-\frac{1}{3}c_3\hat{\mathbf{j}}+c_3\hat{\mathbf{k}}
$$

The unit vector in the direction of $\vec{\mathbf{c}}$ is
$$
\frac{\vec{\mathbf{c}}}{|\vec{\mathbf{c}}|} = \frac{\tfrac12\hat{\mathbf{i}}-\tfrac13\hat{\mathbf{j}}+\hat{\mathbf{k}}}{\sqrt{(1/2)^2+(-1/3)^2+1^2}}
$$

> **Source note:** The final simplification on this page (which arrives at a common denominator, apparently $\tfrac{3}{7}\hat{\mathbf i}-\tfrac{2}{7}\hat{\mathbf j}+\tfrac{6}{7}\hat{\mathbf k}$ in the source's own last line) is only partially legible; the intermediate, verified expression is retained here in boxed form instead.

$$
\boxed{\hat{\mathbf{n}} = \frac{\tfrac12\hat{\mathbf{i}}-\tfrac13\hat{\mathbf{j}}+\hat{\mathbf{k}}}{\sqrt{\tfrac14+\tfrac19+1}}}
$$

### 13. Definitions: Collinear Vectors, Curl, and Position Vector

> **Source:** `Math-II-Vector-16-24.pdf`, pages 22–23.

**Question.** Define collinear vectors, curl, and the position vector of a point.

> **Definition — Collinear Vectors**
>
> Two vectors are collinear if they lie along the same line or parallel lines, i.e. one is a scalar multiple of the other: $\mathbf{a}=k\mathbf{b}$ for some scalar $k$.

> **Definition — Position Vector**
>
> For a point $P(x,y,z)$ in space, the position vector is the vector drawn from the origin $O$ to $P$:
> $$
> \vec{\mathbf{r}} = \vec{OP} = x\mathbf{i}+y\mathbf{j}+z\mathbf{k},
> $$
> with magnitude $|\vec{\mathbf{r}}| = \sqrt{x^2+y^2+z^2}$.

> **Definition — Curl**
>
> For a vector field $\mathbf{F}=F_1\mathbf{i}+F_2\mathbf{j}+F_3\mathbf{k}$, the curl is defined as $\operatorname{curl}\mathbf{F}=\nabla\times\mathbf{F}$, a vector quantity that measures the local rotation (circulation density) of the field at a point:
> $$
> \nabla\times\mathbf{F} = \left(\frac{\partial F_3}{\partial y}-\frac{\partial F_2}{\partial z}\right)\mathbf{i}+\left(\frac{\partial F_1}{\partial z}-\frac{\partial F_3}{\partial x}\right)\mathbf{j}+\left(\frac{\partial F_2}{\partial x}-\frac{\partial F_1}{\partial y}\right)\mathbf{k}.
> $$

### 14. Vector Calculus: Del, Gradient, Divergence, Curl

> **Source:** `Math-II-Vector-16-24.pdf`, pages 23–24.

**Question.** Define Del ($\nabla$), Gradient, Divergence, and Curl.

> **Definition — Del Operator ($\nabla$)**
>
> A vector differential operator,
> $$
> \nabla = \mathbf{i}\frac{\partial}{\partial x}+\mathbf{j}\frac{\partial}{\partial y}+\mathbf{k}\frac{\partial}{\partial z}.
> $$
> It is not a vector itself, but behaves like one when applied to scalar or vector fields.

> **Definition — Gradient (of a scalar field $\varphi$)**
>
> $$
> \operatorname{grad}\varphi = \nabla\varphi = \left(\frac{\partial\varphi}{\partial x}\right)\mathbf{i}+\left(\frac{\partial\varphi}{\partial y}\right)\mathbf{j}+\left(\frac{\partial\varphi}{\partial z}\right)\mathbf{k}.
> $$
> It is a vector that points in the direction of the maximum rate of increase of $\varphi$, and its magnitude equals that maximum rate of increase.

> **Definition — Divergence (of a vector field $\mathbf{F}=F_1\mathbf{i}+F_2\mathbf{j}+F_3\mathbf{k}$)**
>
> $$
> \operatorname{div}\mathbf{F} = \nabla\cdot\mathbf{F} = \frac{\partial F_1}{\partial x}+\frac{\partial F_2}{\partial y}+\frac{\partial F_3}{\partial z}.
> $$
> It is a scalar that measures the net outward flux of the field per unit volume at a point, i.e. whether the point is acting as a "source" or "sink" of the field.

### 15. Proof: $\operatorname{div}(\operatorname{curl}\mathbf{A})=0$

> **Source:** `Math-II-Vector-16-24.pdf`, pages 25–26.

**Question.** Prove that $\operatorname{div}(\operatorname{curl}\mathbf{A})=0$, i.e. $\nabla\cdot(\nabla\times\mathbf{A})=0$.

**Proof.** Given: $\nabla\cdot(\nabla\times\mathbf{A})=0$. Let $\mathbf{A}=A_1\mathbf{i}+A_2\mathbf{j}+A_3\mathbf{k}$.

$$
\operatorname{curl}\mathbf{A} = \nabla\times\mathbf{A} = \begin{vmatrix}\mathbf{i}&\mathbf{j}&\mathbf{k}\\ \dfrac{\partial}{\partial x}&\dfrac{\partial}{\partial y}&\dfrac{\partial}{\partial z}\\ A_1&A_2&A_3\end{vmatrix}
$$
$$
= \left(\frac{\partial A_3}{\partial y}-\frac{\partial A_2}{\partial z}\right)\mathbf{i}+\left(\frac{\partial A_1}{\partial z}-\frac{\partial A_3}{\partial x}\right)\mathbf{j}+\left(\frac{\partial A_2}{\partial x}-\frac{\partial A_1}{\partial y}\right)\mathbf{k}
$$

Taking the divergence of this:
$$
\operatorname{div}(\operatorname{curl}\mathbf{A}) = \frac{\partial}{\partial x}\left(\frac{\partial A_3}{\partial y}-\frac{\partial A_2}{\partial z}\right)+\frac{\partial}{\partial y}\left(\frac{\partial A_1}{\partial z}-\frac{\partial A_3}{\partial x}\right)+\frac{\partial}{\partial z}\left(\frac{\partial A_2}{\partial x}-\frac{\partial A_1}{\partial y}\right)
$$
$$
= \frac{\partial^2 A_3}{\partial x\partial y}-\frac{\partial^2 A_2}{\partial x\partial z}+\frac{\partial^2 A_1}{\partial y\partial z}-\frac{\partial^2 A_3}{\partial y\partial x}+\frac{\partial^2 A_2}{\partial z\partial x}-\frac{\partial^2 A_1}{\partial z\partial y}
$$

Each pair of mixed partial derivatives cancels (assuming $\mathbf{A}$ has continuous second partial derivatives, so mixed partials are equal):
$$
= 0
$$
$$
\boxed{\nabla\cdot(\nabla\times\mathbf{A}) = 0}\quad\text{(proved)}
$$

### 16. Proof: $\nabla\times(\nabla\times\mathbf{A}) = \nabla(\nabla\cdot\mathbf{A})-\nabla^2\mathbf{A}$

> **Source:** `Math-II-Vector-16-24.pdf`, pages 26–27.

**Question.** If $\mathbf{A}$ is a differentiable vector function, show that $\nabla\times(\nabla\times\mathbf{A}) = \nabla(\nabla\cdot\mathbf{A})-\nabla^2\mathbf{A}$.

**Proof.** Let $\mathbf{A}=(A_1,A_2,A_3)$ and let $\operatorname{curl}\mathbf{A}=\mathbf{C}=(C_1,C_2,C_3)$, where
$$
C_1=\frac{\partial A_3}{\partial y}-\frac{\partial A_2}{\partial z},\qquad C_2=\frac{\partial A_1}{\partial z}-\frac{\partial A_3}{\partial x},\qquad C_3=\frac{\partial A_2}{\partial x}-\frac{\partial A_1}{\partial y}.
$$

$x$-component of $\operatorname{curl}(\operatorname{curl}\mathbf{A})$:
$$
\left[\operatorname{curl}(\operatorname{curl}\mathbf{A})\right]_x = \frac{\partial C_3}{\partial y}-\frac{\partial C_2}{\partial z} = \frac{\partial}{\partial y}\left(\frac{\partial A_2}{\partial x}-\frac{\partial A_1}{\partial y}\right)-\frac{\partial}{\partial z}\left(\frac{\partial A_1}{\partial z}-\frac{\partial A_3}{\partial x}\right)
$$
$$
= \frac{\partial^2 A_2}{\partial y\partial x}-\frac{\partial^2 A_1}{\partial y^2}-\frac{\partial^2 A_1}{\partial z^2}+\frac{\partial^2 A_3}{\partial z\partial x}\qquad\text{(i)}
$$

$x$-component of $\nabla(\nabla\cdot\mathbf{A})-\nabla^2\mathbf{A}$:
$$
\nabla\cdot\mathbf{A} = \frac{\partial A_1}{\partial x}+\frac{\partial A_2}{\partial y}+\frac{\partial A_3}{\partial z}
$$
$$
\left[\nabla(\nabla\cdot\mathbf{A})\right]_x = \frac{\partial}{\partial x}\left(\frac{\partial A_1}{\partial x}+\frac{\partial A_2}{\partial y}+\frac{\partial A_3}{\partial z}\right) = \frac{\partial^2 A_1}{\partial x^2}+\frac{\partial^2 A_2}{\partial x\partial y}+\frac{\partial^2 A_3}{\partial x\partial z}
$$
$$
\left[\nabla^2\mathbf{A}\right]_x = \frac{\partial^2 A_1}{\partial x^2}+\frac{\partial^2 A_1}{\partial y^2}+\frac{\partial^2 A_1}{\partial z^2}
$$

Subtracting:
$$
\left[\nabla(\nabla\cdot\mathbf{A})-\nabla^2\mathbf{A}\right]_x = \frac{\partial^2 A_2}{\partial x\partial y}+\frac{\partial^2 A_3}{\partial x\partial z}-\frac{\partial^2 A_1}{\partial y^2}-\frac{\partial^2 A_1}{\partial z^2}\qquad\text{(ii)}
$$

Comparing (i) and (ii), the $x$-components are identical (mixed partial derivatives commute). By symmetry the $y$- and $z$-components agree likewise, so
$$
\boxed{\nabla\times(\nabla\times\mathbf{A}) = \nabla(\nabla\cdot\mathbf{A})-\nabla^2\mathbf{A}}\quad\text{(proved)}
$$

### 17. Gradient of $r^n$: $\nabla r^n = n r^{n-2}\vec{\mathbf{r}}$

> **Source:** `Math-II-Vector-16-24.pdf`, pages 27–28.

**Question.** Define curl. Show that $\nabla r^n = n r^{n-2}\vec{\mathbf{r}}$, where $\vec{\mathbf{r}}=x\mathbf{i}+y\mathbf{j}+z\mathbf{k}$ and $r=|\vec{\mathbf{r}}|$.

*(Definition of curl — as given in §13 above.)*

**Proof.** Let $\vec{\mathbf{r}}=x\mathbf{i}+y\mathbf{j}+z\mathbf{k}$, so $r^2=x^2+y^2+z^2$, i.e. $r=(x^2+y^2+z^2)^{1/2}$.

Differentiate $r^n$ with respect to $x$ (using the chain rule):
$$
\frac{\partial}{\partial x}(r^n) = nr^{n-1}\cdot\frac{\partial r}{\partial x}
$$
Since $r^2=x^2+y^2+z^2$, differentiating:
$$
2r\frac{\partial r}{\partial x} = 2x \ \Rightarrow\ \frac{\partial r}{\partial x} = \frac{x}{r}
$$
$$
\therefore \frac{\partial(r^n)}{\partial x} = nr^{n-1}\cdot\frac{x}{r} = nr^{n-2}x
$$
Similarly,
$$
\frac{\partial (r^n)}{\partial y} = nr^{n-2}y,\qquad \frac{\partial(r^n)}{\partial z} = nr^{n-2}z
$$

Combine into the gradient:
$$
\nabla(r^n) = nr^{n-2}x\,\mathbf{i}+nr^{n-2}y\,\mathbf{j}+nr^{n-2}z\,\mathbf{k} = nr^{n-2}(x\mathbf{i}+y\mathbf{j}+z\mathbf{k}) = nr^{n-2}\vec{\mathbf{r}}
$$
$$
\boxed{\nabla r^n = nr^{n-2}\vec{\mathbf{r}}}\quad\text{(proved)}
$$

### 18. Solenoidal Vector Field $r^n\vec{\mathbf{r}}$

> **Source:** `Math-II-Vector-16-24.pdf`, pages 28–29.

**Question.** Find the value of $n$ for which the vector $r^n\vec{\mathbf{r}}$ is solenoidal (i.e. divergence-free).

A vector field $\mathbf{F}$ is solenoidal if $\operatorname{div}\mathbf{F}=0$. Let $\mathbf{F}=r^n\vec{\mathbf{r}} = r^nx\,\mathbf{i}+r^ny\,\mathbf{j}+r^nz\,\mathbf{k}$, where $r^2=x^2+y^2+z^2$.

Differentiate the $x$-component (product rule):
$$
\frac{\partial}{\partial x}(r^nx) = r^n+x\cdot nr^{n-1}\frac{\partial r}{\partial x} = r^n+x\cdot nr^{n-1}\cdot\frac{x}{r} = r^n+nr^{n-2}x^2\qquad\text{(i)}
$$
Similarly,
$$
\frac{\partial}{\partial y}(r^ny) = r^n+nr^{n-2}y^2\qquad\text{(ii)}
$$
$$
\frac{\partial}{\partial z}(r^nz) = r^n+nr^{n-2}z^2\qquad\text{(iii)}
$$

Adding all three:
$$
\operatorname{div}\mathbf{F} = 3r^n+nr^{n-2}(x^2+y^2+z^2) = 3r^n+nr^{n-2}r^2 = 3r^n+nr^n = (n+3)r^n
$$

For $\mathbf{F}$ to be solenoidal, $\operatorname{div}\mathbf{F}=0$, for $r^n\neq 0$:
$$
(n+3)r^n = 0 \ \Rightarrow\ n+3=0
$$
$$
\boxed{n = -3}\quad\text{(solved)}
$$

### 19. Curl of Curl for $\mathbf{F}=x^2y\mathbf{i}+2xz\mathbf{j}+2yz\mathbf{k}$

> **Source:** `Math-II-Vector-16-24.pdf`, pages 29–30.

**Question.** If $\mathbf{F}=x^2y\mathbf{i}+2xz\mathbf{j}+2yz\mathbf{k}$, find $\operatorname{curl}(\operatorname{curl}\mathbf{F})$.

Find $\operatorname{curl}\mathbf{F}=(\nabla\times\mathbf{F})$:
$$
\nabla\times\mathbf{F} = \begin{vmatrix}\mathbf{i}&\mathbf{j}&\mathbf{k}\\ \dfrac{\partial}{\partial x}&\dfrac{\partial}{\partial y}&\dfrac{\partial}{\partial z}\\ x^2y & -2xz & 2yz\end{vmatrix}
$$

> **Source note:** The source's determinant row lists the $\mathbf{F}$ components as $x^2y,\ -2xz,\ 2yz$ — i.e. with a minus sign on the $\mathbf j$-component entry, differing from the problem statement's $\mathbf{F}=x^2y\mathbf{i}+2xz\mathbf{j}+2yz\mathbf{k}$ (no minus sign). The determinant expansion below follows the source's own row exactly as written, since that is what the subsequent arithmetic is based on.

$$
= \mathbf{i}\left(\frac{\partial(2yz)}{\partial y}-\frac{\partial(-2xz)}{\partial z}\right)-\mathbf{j}\left(\frac{\partial(2yz)}{\partial x}-\frac{\partial(x^2y)}{\partial z}\right)+\mathbf{k}\left(\frac{\partial(-2xz)}{\partial x}-\frac{\partial(x^2y)}{\partial y}\right)
$$
$$
= \mathbf{i}(2z+2x)-\mathbf{j}(0-0)+\mathbf{k}(-2z-x^2)
$$
$$
\nabla\times\mathbf{F} = (2x+2z)\mathbf{i}-(x^2+2z)\mathbf{k}
$$

Now find $\operatorname{curl}(\operatorname{curl}\mathbf{F}) = \nabla\times(\nabla\times\mathbf{F})$:
$$
\nabla\times(\nabla\times\mathbf{F}) = \begin{vmatrix}\mathbf{i}&\mathbf{j}&\mathbf{k}\\ \dfrac{\partial}{\partial x}&\dfrac{\partial}{\partial y}&\dfrac{\partial}{\partial z}\\ 2x+2z & 0 & -(x^2+2z)\end{vmatrix}
$$
$$
= \mathbf{i}\left[\frac{\partial}{\partial y}\{-(x^2+2z)\}-\frac{\partial}{\partial z}(0)\right]-\mathbf{j}\left[\frac{\partial}{\partial x}\{-(x^2+2z)\}-\frac{\partial}{\partial z}(2x+2z)\right]+\mathbf{k}\left[\frac{\partial}{\partial x}(0)-\frac{\partial}{\partial y}(2x+2z)\right]
$$
$$
= \mathbf{i}(0-0)-\mathbf{j}(-2x-2)+\mathbf{k}(0-0)
$$
$$
= 0\mathbf{i}+(2x+2)\mathbf{j}+0\mathbf{k}
$$
$$
\boxed{\operatorname{curl}(\operatorname{curl}\mathbf{F}) = (2x+2)\mathbf{j}}
$$

### 20. Conservative Field Verification

> **Source:** `Math-II-Vector-16-24.pdf`, page 30.

**Question.** If $\mathbf{F}=(2xz^3+6y)\mathbf{i}+(6x-2yz)\mathbf{j}+(3x^2z^2-y^2)\mathbf{k}$, show that $\mathbf{F}$ is conservative.

A vector field $\mathbf{F}$ is conservative if and only if $\operatorname{curl}\mathbf{F}=0$, i.e. $\nabla\times\mathbf{F}=0$.

$$
\nabla\times\mathbf{F} = \begin{vmatrix}\mathbf{i}&\mathbf{j}&\mathbf{k}\\ \dfrac{\partial}{\partial x}&\dfrac{\partial}{\partial y}&\dfrac{\partial}{\partial z}\\ 2xz^3+6y & 6x-2yz & 3x^2z^2-y^2\end{vmatrix}
$$
$$
= \left[\frac{\partial}{\partial y}(3x^2z^2-y^2)-\frac{\partial}{\partial z}(6x-2yz)\right]\mathbf{i}+\left[\frac{\partial}{\partial z}(2xz^3+6y)-\frac{\partial}{\partial x}(3x^2z^2-y^2)\right]\mathbf{j}
$$
$$
+\left[\frac{\partial}{\partial x}(6x-2yz)-\frac{\partial}{\partial y}(2xz^3+6y)\right]\mathbf{k}
$$
$$
= \left[-2y-(-2y)\right]\mathbf{i}-\left[6xz^2-6xz^2\right]\mathbf{j}+\left[6-6\right]\mathbf{k}
$$
$$
= \mathbf{0}
$$

So, the field $\mathbf{F}$ is conservative.
$$
\boxed{\nabla\times\mathbf{F} = 0\ \Rightarrow\ \mathbf{F}\text{ is conservative.}}
$$

### 21. Green's Theorem — Statement

> **Source:** `Math-II-Vector-16-24.pdf`, page 31.

**Question.** State Green's theorem.

> **Theorem — Green's Theorem**
>
> If $P(x,y)$ and $Q(x,y)$ are continuous functions with continuous first partial derivatives over a region $R$ bounded by a simple closed curve $C$, then
> $$
> \oint_C (P\,dx+Q\,dy) = \iint_R\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)dx\,dy.
> $$

### 22. Verification of Green's Theorem

> **Source:** `Math-II-Vector-16-24.pdf`, pages 32–35.

**Question.** Verify Green's theorem for $\displaystyle\oint_C (xy+y^2)\,dx+x^2\,dy$, where $C$ is the closed curve of the region bounded by $y=x$ and $y=x^2$.

**Solution.** Given $y=x^2$ and $y=x$. Let $P=xy+y^2,\ Q=x^2$.

Find the intersection points: $x^2=x\Rightarrow x^2-x=0\Rightarrow x(x-1)=0\Rightarrow x=0,1$; correspondingly $y=0,1$.

We know Green's theorem states
$$
\oint_C(P\,dx+Q\,dy) = \iint_R\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)dx\,dy
$$

**L.H.S. — direct evaluation of the line integral.**

*Along $y=x^2$ (from $(0,0)$ to $(1,1)$):* $dy=2x\,dx$.
$$
I_1 = \oint(xy+y^2)\,dx+x^2\,dy = \int_0^1(x\cdot x^2+x^4)\,dx+x^2\cdot 2x\,dx = \int_0^1(x^3+x^4+2x^3)\,dx
$$
$$
= \int_0^1(3x^3+x^4)\,dx = \left[\frac{3}{4}x^4+\frac{1}{5}x^5\right]_0^1 = \frac{3}{4}+\frac{1}{5}-0 = \frac{19}{20}
$$

*Along $y=x$ (from $(1,1)$ back to $(0,0)$):* $dy=dx$.
$$
I_2 = \oint(xy+y^2)\,dx+x^2\,dy = \int_1^0(x\cdot x+x^2)\,dx+x^2\,dx = \int_1^0(x^2+x^2+x^2)\,dx = \int_1^0 3x^2\,dx
$$
$$
= \left[x\cdot\frac{3}{3}x^3\right]_1^0 = \left[x^3\right]_1^0 = (0-1) = -1
$$
$$
\therefore \text{L.H.S.} = I_1+I_2 = \frac{19}{20}-1 = -\frac{1}{20}
$$

**R.H.S. — double integral.**
$$
\text{R.H.S.} = \iint_R\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)dx\,dy = \iint_R\left\{\frac{\partial}{\partial x}(x^2)-\frac{\partial}{\partial y}(xy+y^2)\right\}dx\,dy
$$
$$
= \int_{x=0}^{x=1}\int_{y=x^2}^{y=x}(2x-x-2y)\,dx\,dy = \int_{x=0}^{x=1}\int_{y=x^2}^{y=x}(x-2y)\,dx\,dy
$$
$$
= \int_{x=0}^{1}\left[xy-y^2\right]_{y=x^2}^{y=x}dx = \int_0^1\left(x\cdot x-x^2-x\cdot x^2+x^4\right)dx = \int_0^1(x^4-x^3)\,dx
$$
$$
= \left[\frac{x^5}{5}-\frac{x^4}{4}\right]_0^1 = \frac{1}{5}-\frac{1}{4}-0 = -\frac{1}{20}
$$

$$
\boxed{\text{L.H.S.} = \text{R.H.S.} = -\frac{1}{20}}\quad\text{(Green's theorem verified)}
$$

### 23. Line Integral Around a Triangle

> **Source:** `Math-II-Vector-16-24.pdf`, pages 35–36.

**Question.** Find the line integral $I=\oint(y^2\,dx-x^2\,dy)$ about the triangle whose vertices are $(1,0),\ (0,1)$ and $(-1,0)$.

Given $I=\oint(y^2\,dx-x^2\,dy)$, where $C$ is the triangle with vertices $(1,0),(0,1),(-1,0)$, traversed in that order.

Identify $P$ and $Q$, comparing with the standard form $\oint(P\,dx+Q\,dy)$: $P=y^2,\ Q=-x^2$.

We know
$$
\oint(P\,dx+Q\,dy) = \iint_R\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)dx\,dy
$$

Partial derivatives:
$$
\frac{\partial Q}{\partial x} = \frac{\partial(-x^2)}{\partial x} = -2x,\qquad \frac{\partial P}{\partial y} = \frac{\partial(y^2)}{\partial y} = 2y
$$
$$
\therefore I = \iint_R(-2x-2y)\,dx\,dy = -2\iint_R x\,dA-2\iint_R y\,dA\qquad\text{(I)}
$$

**Set up the region $R$ (find the limits).** The triangle has three sides. Find the equation of each:

*Side from $(1,0)$ to $(0,1)$:* slope $=\dfrac{1-0}{0-1}=-1$; equation: $x+y=1\Rightarrow x=1-y$.

*Side from $(-1,0)$ to $(0,1)$:* slope $=\dfrac{1-0}{0-(-1)}=1$; equation: $y=x+1\Rightarrow x=y-1$.

*Side from $(-1,0)$ to $(1,0)$:* $y=0$.

Limits: $y:0\to1;\ x:(y-1)\to(1-y)$.

**Evaluate the first double integral.**
$$
\iint_R x\,dA = \int_0^1\int_{y-1}^{1-y}x\,dx\,dy = \int_0^1\left[\frac{x^2}{2}\right]_{y-1}^{1-y}dy = \int_0^1\left[\frac{(1-y)^2}{2}-\frac{(y-1)^2}{2}\right]dy = \int_0^1 0\,dy = 0
$$

**Evaluate the second double integral.**
$$
\iint_R y\,dA = \int_0^1\int_{y-1}^{1-y}y\,dx\,dy = \int_0^1 y\left[x\right]_{y-1}^{1-y}dy = \int_0^1 y\left[(1-y)-(y-1)\right]dy = \int_0^1 y(2-2y)\,dy
$$
$$
= \int_0^1(2y-2y^2)\,dy = \left[y^2-\frac{2y^3}{3}\right]_0^1 = \left(1-\frac{2}{3}\right)-(0-0) = \frac{1}{3}
$$

**Substitute both results into equation (I):**
$$
I = -2(0)-2\left(\frac{1}{3}\right) = -\frac{2}{3}
$$
$$
\boxed{I = -\frac{2}{3}}
$$

### 24. Definition of a Line Integral and Evaluation Around a Square

> **Source:** `Math-II-Vector-16-24.pdf`, pages 37–39.

**Question.** Define the line integral. Find the line integral $I=\oint_C(x\,dy-y\,dx)$ round the square with vertices $(0,0),(1,0),(1,1)$ and $(0,1)$.

> **Definition — Line Integral**
>
> A line integral is the integral of a function evaluated along a curve (path), instead of along a straight interval on the $x$-axis (unlike a normal integral):
> $$
> I = \oint_C(P\,dx+Q\,dy).
> $$

**The problem.**
$$
I = \oint_C(x\,dy-y\,dx)
$$
around the square with corners $(0,0),(1,0),(1,1),(0,1)$, traversed counterclockwise.

*Idea:* break the square into its 4 sides. On each side, one variable is constant, so the integral becomes very simple; add up the 4 results.

**Side 1: $(0,0)\to(1,0)$.** Here $y=0$ (constant), so $dy=0$; $x$ goes from $0$ to $1$.
$$
x\,dy-y\,dx = x(0)-0\,dx = 0
$$

**Side 2: $(1,0)\to(1,1)$.** Here $x=1$ (constant), so $dx=0$; $y$ goes from $0$ to $1$.
$$
x\,dy-y\,dx = 1\,dy-0 = dy,\qquad \int_0^1 dy = 1
$$

**Side 3: $(1,1)\to(0,1)$.** Here $y=1$ (constant), so $dy=0$; $x$ goes from $1$ to $0$.
$$
x\,dy-y\,dx = 0-1\,dx = -dx,\qquad \int_1^0(-dx) = -[x]_1^0 = -(0-1)=1
$$

**Side 4: $(0,1)\to(0,0)$.** Here $x=0$ (constant), so $dx=0$; $y$ goes from $1$ to $0$.
$$
x\,dy-y\,dx = 0\,dy-0 = 0
$$

**Add all four sides.**
$$
I = 0+1+1+0 = 2
$$
$$
\boxed{I = 2}
$$

### 25. Gauss's Divergence Theorem — Statement

> **Source:** `Math-II-Vector-16-24.pdf`, page 39.

**Question.** State Gauss's divergence theorem.

> **Theorem — Gauss's Divergence Theorem**
>
> The surface integral of the normal component of a vector field $\mathbf{F}$ over a closed surface $S$ equals the volume integral of the divergence of $\mathbf{F}$ taken over the volume $V$ enclosed by $S$:
> $$
> \oint_S \mathbf{F}\cdot\hat{\mathbf{n}}\,dS = \iiint_V(\nabla\cdot\mathbf{F})\,dV.
> $$

### 26. Application of the Divergence Theorem to a Cube

> **Source:** `Math-II-Vector-16-24.pdf`, pages 40–41.

**Question.** Evaluate $\displaystyle\iint_S\mathbf{F}\cdot\hat{\mathbf{n}}\,dS = \iiint_V(\nabla\cdot\mathbf{F})\,dV$ where $\mathbf{F}=4xz\mathbf{i}-y^2\mathbf{j}+yz\mathbf{k}$ and $S$ is the surface of the cube bounded by $x=0,x=1;\ y=0,y=1;\ z=0,z=1$.

Given $\mathbf{F}=4xz\mathbf{i}-y^2\mathbf{j}+yz\mathbf{k}$, and $S$ is the surface of the cube $0\le x\le1,\ 0\le y\le1,\ 0\le z\le1$.

Apply the divergence theorem:
$$
\iint_S\mathbf{F}\cdot\hat{\mathbf{n}}\,dS = \iiint_V(\nabla\cdot\mathbf{F})\,dV
$$

Find the divergence of $\mathbf{F}$:
$$
\nabla\cdot\mathbf{F} = \frac{\partial}{\partial x}(4xz)+\frac{\partial}{\partial y}(-y^2)+\frac{\partial}{\partial z}(yz) = 4z-2y+y = 4z-y
$$

Set up the volume integral:
$$
I = \int_0^1\int_0^1\int_0^1(4z-y)\,dx\,dy\,dz
$$
Since $4z-y$ does not contain $x$:
$$
= \int_0^1\int_0^1(4z-y)\,dy\,dz = \int_0^1\left[4zy-\frac{y^2}{2}\right]_0^1dz = \int_0^1\left(4z-\frac{1}{2}\right)dz
$$
$$
= \left[2z^2-\frac{z}{2}\right]_0^1 = 2-\frac{1}{2} = \frac{3}{2}
$$
$$
\boxed{I = \frac{3}{2}}\quad\text{solved.}
$$
