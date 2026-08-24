# Laplace Transform

*Reconstructed from handwritten lecture notes (pp. 51–84). Source-derived material is presented as in the notes; corrections to apparent handwriting/algebra slips are explicitly marked; anything not confidently recoverable from the source is marked **uncertain**.*

---

## 1. Definition of Laplace Transform

**Definition.** Let $F(t)$ be a function of $t$, defined for all $t > 0$. The Laplace transform of $F(t)$, denoted $\mathcal{L}\{F(t)\}$ or $f(s)$, is defined by

$$
\mathcal{L}\{F(t)\} = f(s) = \int_0^\infty e^{-st} F(t)\, dt
$$

where $s$ is a parameter (real or complex), chosen so the integral converges.

*Source: PDF 1, p. 51.*

**The Gamma function** (used repeatedly below):

$$
\Gamma(n) = \int_0^\infty e^{-t} t^{n-1}\, dt, \qquad \Gamma(n+1) = n!
$$

with the special value $\Gamma\!\left(\tfrac12\right) = \sqrt{\pi}$.

---

## 2. Laplace Transforms of Elementary Functions

*Source: PDF 1, pp. 51–54.*

### (i) $F(t) = 1$

$$
\mathcal{L}\{1\} = \int_0^\infty e^{-st}\,dt = \lim_{P\to\infty}\left[-\frac{e^{-st}}{s}\right]_0^P = \frac{1}{s}, \qquad s>0
$$

### (ii) $F(t) = t$

Using the substitution $st = y$ ($dt = dy/s$):

$$
\mathcal{L}\{t\} = \int_0^\infty e^{-st} t\,dt = \frac{1}{s^2}\int_0^\infty e^{-y} y\,dy = \frac{\Gamma(2)}{s^2} = \frac{1}{s^2}
$$

### (iii) $F(t) = t^n$

With the same substitution $st = y$:

$$
\mathcal{L}\{t^n\} = \int_0^\infty e^{-st}t^n\,dt = \frac{1}{s^{n+1}}\int_0^\infty e^{-y}y^n\,dy = \frac{\Gamma(n+1)}{s^{n+1}} = \frac{n!}{s^{n+1}}
$$

(valid for integer $n \ge 0$; the Gamma-function form extends this to non-integer $n > -1$.)

### (iv) $F(t) = e^{at}$

$$
\mathcal{L}\{e^{at}\} = \int_0^\infty e^{-(s-a)t}\,dt = \frac{1}{s-a}, \qquad s>a
$$

### (v) $F(t) = e^{-at}$

$$
\mathcal{L}\{e^{-at}\} = \int_0^\infty e^{-(s+a)t}\,dt = \frac{1}{s+a}, \qquad s>-a
$$

### (vi) $F(t) = \sin at$ (derivation by repeated integration by parts)

Let $I = \int e^{-st}\sin at\, dt$. Integrating by parts twice and solving for $I$:

$$
I\left(\frac{s^2+a^2}{a^2}\right) = -\frac{1}{a^2}\left[s\,e^{-st}\sin at + a\,e^{-st}\cos at\right]
\;\Rightarrow\;
I = \frac{-1}{a^2+s^2}\left[s\,e^{-st}\sin at + a\,e^{-st}\cos at\right]
$$

Evaluating from $0$ to $\infty$:

$$
\mathcal{L}\{\sin at\} = \int_0^\infty e^{-st}\sin at\,dt = \frac{a}{s^2+a^2}
$$

### (vii) $F(t) = \cos at$

By the same method (integration by parts):

$$
\mathcal{L}\{\cos at\} = \frac{s}{s^2+a^2}
$$

### (viii) $F(t) = \sinh at$

Using $\sinh at = \dfrac{e^{at}-e^{-at}}{2}$ and linearity:

$$
\mathcal{L}\{\sinh at\} = \frac12\left(\frac{1}{s-a}-\frac{1}{s+a}\right) = \frac{a}{s^2-a^2}, \qquad s>|a|
$$

### (ix) $F(t) = \cosh at$

Using $\cosh at = \dfrac{e^{at}+e^{-at}}{2}$:

$$
\mathcal{L}\{\cosh at\} = \frac12\left(\frac{1}{s-a}+\frac{1}{s+a}\right) = \frac{s}{s^2-a^2}, \qquad s>|a|
$$

### (x) $F(t) = t\sin at$

Derived (see §3.2 below, via multiplication by $t$) or directly by parts using $\mathcal L\{\sin at\}$:

$$
\mathcal{L}\{t\sin at\} = \frac{2as}{(a^2+s^2)^2}
$$

### (xi) $F(t) = t\cos at$

$$
\mathcal{L}\{t\cos at\} = \frac{s^2-a^2}{(a^2+s^2)^2}
$$

### Piecewise-defined function

**Worked problem** (*Source: PDF 1, pp. 55–56*):

$$
F(t) = \begin{cases} t, & 0<t<2 \\ 3, & t>2 \end{cases}
$$

$$
\mathcal{L}\{F(t)\} = \int_0^2 e^{-st}t\,dt + \int_2^\infty e^{-st}\cdot 3\,dt
$$

Using $\int e^{-st}t\,dt = -\dfrac{te^{-st}}{s} - \dfrac{e^{-st}}{s^2}$ (by parts):

$$
\mathcal{L}\{F(t)\} = \left[-\frac{te^{-st}}{s}-\frac{e^{-st}}{s^2}\right]_0^2 + \left[-\frac{3e^{-st}}{s}\right]_2^\infty
= \frac{1}{s^2} - \frac{2e^{-2s}}{s} - \frac{e^{-2s}}{s^2} + \frac{3e^{-2s}}{s}
$$

$$
\boxed{\mathcal{L}\{F(t)\} = \frac{1}{s^2} + \frac{e^{-2s}}{s} - \frac{e^{-2s}}{s^2}}
$$

*(Simplified from the source's combined fraction $\dfrac{1 + se^{-2s} - e^{-2s}}{s^2}$; algebraically equivalent.)*

---

## 3. Properties of Laplace Transform

*Source: PDF 1, pp. 56–58; PDF 2, pp. 59–65, 68–69.*

### 3.1 Linearity Property

$$
\mathcal{L}\{\lambda_1 F_1(t) + \lambda_2 F_2(t) + \lambda_3 F_3(t) + \cdots\}
= \lambda_1\mathcal{L}\{F_1(t)\} + \lambda_2\mathcal{L}\{F_2(t)\} + \lambda_3\mathcal{L}\{F_3(t)\}+\cdots
$$

where $F_1, F_2, F_3,\dots$ are functions of $t$ and $\lambda_1,\lambda_2,\lambda_3,\dots$ are constants.

**Example 1.** $\mathcal{L}\{3t^2 + 5e^{-2t} + 7\sin 2t\}$

$$
= 3\mathcal{L}\{t^2\} + 5\mathcal{L}\{e^{-2t}\} + 7\mathcal{L}\{\sin 2t\}
= 3\cdot\frac{2!}{s^3} + 5\cdot\frac{1}{s+2} + 7\cdot\frac{2}{s^2+2^2}
= \frac{6}{s^3}+\frac{5}{s+2}+\frac{14}{s^2+4}
$$

**Example 2.** $\mathcal{L}\{(t^4+1)^2\} = \mathcal{L}\{t^8+2t^4+1\} = \dfrac{8!}{s^9}+\dfrac{2\cdot4!}{s^5}+\dfrac1s$

### 3.2 Multiplication by $t^n$ (Derivative of the Transform)

If $\mathcal{L}\{F(t)\} = f(s)$, then

$$
\mathcal{L}\{t^n F(t)\} = (-1)^n \frac{d^n}{ds^n} f(s)
$$

**Example 1.** $\mathcal{L}\{t^2 e^{5t}\}$: with $F(t)=e^{5t}$, $f(s)=\dfrac{1}{s-5}$,

$$
\mathcal{L}\{t^2e^{5t}\} = \frac{d^2}{ds^2}\left[\frac{1}{s-5}\right] = \frac{2}{(s-5)^3}
$$

*(An alternative computation appears in the source ending in $2/(s-3)^3$ — this is an apparent transcription slip; the algebra shown throughout uses $s-5$ consistently, and the correct result is $2/(s-5)^3$, matching the first method.)*

**Example 2.** $\mathcal{L}\{t^2 \sin at\}$: with $f(s) = \dfrac{a}{s^2+a^2}$,

$$
\mathcal{L}\{t^2\sin at\} = \frac{d^2}{ds^2}\left[\frac{a}{s^2+a^2}\right]
= \frac{(a^2+s^2)^2(-2a) - (-2as)\cdot 2(a^2+s^2)\cdot 2s}{(a^2+s^2)^4}
= \frac{8as^2 - 2a(a^2+s^2)}{(a^2+s^2)^3}
$$

**Example 3.** $\mathcal{L}\{t^2\cos at\}$: with $f(s)=\dfrac{s}{a^2+s^2}$,

$$
\mathcal{L}\{t^2\cos at\} = \frac{d^2}{ds^2}\left[\frac{s}{a^2+s^2}\right] = \frac{2s^3-6a^2s}{(a^2+s^2)^3}
$$

**Example 4.** $\mathcal{L}\{\sin 3t\,(t^2-3t+2)\} = \mathcal{L}\{t^2\sin3t\} - 3\mathcal{L}\{t\sin3t\} + 2\mathcal{L}\{\sin3t\}$

$$
= \frac{18s^2-54}{(s^2+9)^3} - \frac{18s}{(s^2+9)^2} + \frac{6}{s^2+9}
$$

**Example 5.** $\displaystyle\int_0^\infty e^{-3t}\,t\sin t\,dt$: with $F(t)=t\sin t$,

$$
\mathcal{L}\{t\sin t\} = -\frac{d}{ds}\left[\frac{1}{s^2+1}\right] = \frac{2s}{(s^2+1)^2}
\quad\Rightarrow\quad
\int_0^\infty e^{-st}t\sin t\,dt = \frac{2s}{(s^2+1)^2}
$$

At $s=3$: $\dfrac{2\cdot3}{(3^2+1)^2}=\dfrac{6}{100}=\dfrac{3}{50}$.

**Example 6.** $\displaystyle\int_0^\infty t^3e^{-t}\sin t\,dt = 0$ (evaluated at $s=1$):

$$
\mathcal{L}\{t^3\sin t\} = -\frac{d^3}{ds^3}\left[\frac{1}{s^2+1}\right] = \frac{(s^2+1)^3(-12s)-(2-6s^2)\,3(s^2+1)^2\cdot 2s}{(s^2+1)^6}
$$

At $s=1$: numerator $=(2)^3(-12) - (2-6)(3)(2)^2(2) = -96-(-96)=0$, so the integral equals $0$.

### 3.3 First Translation (Shifting) Property

If $\mathcal{L}\{F(t)\} = f(s)$, then

$$
\mathcal{L}\{e^{at}F(t)\} = f(s-a), \qquad \mathcal{L}\{e^{-at}F(t)\} = f(s+a)
$$

**Example 1.** $\mathcal{L}\{t^2e^{5t}\} = \dfrac{2}{(s-5)^3}$ (as above, from $f(s)=2/s^3$).

**Example 2.** $\mathcal{L}\{e^{2t}\cos5t\}$: $f(s) = \dfrac{s}{s^2+25}\Rightarrow \mathcal{L}\{e^{2t}\cos5t\} = \dfrac{s-2}{(s-2)^2+25}$

**Example 3.** $\mathcal{L}\{e^{-2t}(3\cos6t - 5\sin5t)\}$:

$$
f(s) = \frac{3s}{s^2+36}-\frac{5\cdot5}{s^2+25} \;\Rightarrow\;
\mathcal{L}\{\cdots\} = \frac{3(s+2)}{(s+2)^2+36} - \frac{5}{(s+2)^2+25}
$$

**Example 4.** $\mathcal{L}\{e^{-t}\sin^2t\}$: using $\sin^2t = \tfrac12(1-\cos2t)$,

$$
f(s) = \frac{1}{2s}-\frac{s}{2(s^2+4)}
\;\Rightarrow\;
\mathcal{L}\{e^{-t}\sin^2t\} = \frac{1}{2(s+1)} - \frac{s+1}{2[(s+1)^2+4]}
$$

### 3.4 Second Translation (Shifting) Property

If $\mathcal{L}\{F(t)\}=f(s)$ and $G(t) = \begin{cases}F(t-a), & t>a\\ 0, & t<a\end{cases}$, then

$$
\mathcal{L}\{G(t)\} = e^{-as}f(s)
$$

**Proof.** $\displaystyle\mathcal L\{G(t)\}=\int_0^a e^{-st}\cdot 0\,dt+\int_a^\infty e^{-st}F(t-a)\,dt$. Substituting $u=t-a$:

$$
= \int_0^\infty e^{-s(u+a)}F(u)\,du = e^{-as}\int_0^\infty e^{-su}F(u)\,du = e^{-as}f(s)
$$

**Example 1.** $F(t) = \begin{cases}\cos\!\left(t-\frac{2\pi}{3}\right), & t>\frac{2\pi}{3}\\ 0, & t<\frac{2\pi}{3}\end{cases}$

With $u=t-\tfrac{2\pi}{3}$: $\mathcal{L}\{F(t)\} = e^{-\frac{2\pi}{3}s}\,\mathcal{L}\{\cos u\} = e^{-\frac{2\pi s}{3}}\cdot\dfrac{s}{s^2+1}$

**Example 2.** $F(t)=\begin{cases}(t-1)^2, & t>1\\0,&t<1\end{cases}$

With $u=t-1$: $\mathcal{L}\{F(t)\} = e^{-s}\displaystyle\int_0^\infty e^{-su}u^2\,du = e^{-s}\cdot\dfrac{2!}{s^3} = \dfrac{2e^{-s}}{s^3}$

### 3.5 Division by $t$

If $\mathcal{L}\{F(t)\}=f(s)$, then

$$
\mathcal{L}\!\left[\frac{F(t)}{t}\right] = \int_s^\infty f(u)\,du
$$

(provided $\lim_{t\to0}\dfrac{F(t)}{t}$ exists.)

**Example 1.** $\mathcal{L}\!\left[\displaystyle\int_0^t \frac{\sin t}{t}dt\right]$: with $F(t)=\sin t$, $f(s)=\dfrac{1}{s^2+1}$,

$$
\mathcal{L}\!\left[\frac{\sin t}{t}\right] = \int_s^\infty \frac{du}{u^2+1} = \tan^{-1}\infty - \tan^{-1}s = \frac{\pi}{2}-\tan^{-1}s = \cot^{-1}s = \tan^{-1}\frac1s
$$

Then using the Laplace-of-integral rule (§3.7):

$$
\mathcal{L}\!\left[\int_0^t\frac{\sin t}{t}\,dt\right] = \frac1s\tan^{-1}\frac1s
$$

**Example 2.** $\mathcal{L}\!\left[\dfrac{e^{-at}-e^{-bt}}{t}\right] = \ln\!\left(\dfrac{s+b}{s+a}\right)$

$$
f(s)=\frac{1}{s+a}-\frac{1}{s+b}
\;\Rightarrow\;
\int_s^\infty\!\left(\frac1{u+a}-\frac1{u+b}\right)du = \big[\ln(u+a)-\ln(u+b)\big]_s^\infty = \ln\!\left(\frac{s+b}{s+a}\right)
$$

**Example 3.** $\mathcal{L}\!\left[\dfrac{\cos at-\cos bt}{t}\right] = \dfrac12\ln\!\left(\dfrac{b^2+s^2}{a^2+s^2}\right)$

**Example 4.** $\displaystyle\int_0^\infty \frac{\sin t}{t}\,dt = \frac{\pi}{2}$ — from Example 1 at $s=0$: $\frac\pi2-\tan^{-1}0=\frac\pi2$.

**Example 5.** $\displaystyle\int_0^\infty \frac{e^{-3t}-e^{-6t}}{t}\,dt = \ln 2$ — from Example 2 at $s=0$: $\ln(6/3)=\ln2$.

**Example 6.** $\displaystyle\int_0^\infty \frac{\cos6t-\cos4t}{t}\,dt = \ln\!\left(\frac23\right)$ — from Example 3 at $s=0$: $\frac12\ln(4^2/6^2)=\ln(2/3)$.

**Example 7.** $\displaystyle\int_0^\infty \frac{e^{-t}\sin t}{t}\,dt = \frac{\pi}{4}$ — with $F(t)=\sin t$, $\mathcal{L}[\sin t/t]=\frac\pi2-\tan^{-1}s$; at $s=1$: $\frac\pi2-\frac\pi4=\frac\pi4$.

### 3.6 Change of Scale Property

If $\mathcal{L}\{F(t)\}=f(s)$, then

$$
\mathcal{L}\{F(at)\} = \frac1a\,f\!\left(\frac{s}{a}\right)
$$

**Example.** $\mathcal{L}\{\sin at\}$: with $F(t)=\sin t$, $f(s)=\dfrac1{s^2+1}$,

$$
\mathcal{L}\{\sin at\} = \frac1a\cdot\frac{1}{(s/a)^2+1} = \frac{a}{s^2+a^2}
$$

(This reproduces the elementary transform of §2(vi) via the scaling rule.)

### 3.7 Laplace Transform of an Integral

If $\mathcal{L}\{F(t)\} = f(s)$, then

$$
\mathcal{L}\!\left[\int_0^t F(u)\,du\right] = \frac{f(s)}{s}
$$

### 3.8 Laplace Transform of Derivatives

If $\mathcal{L}\{F(t)\}=f(s)$, then

$$
\mathcal{L}\{F'(t)\} = s f(s) - F(0)
$$
$$
\mathcal{L}\{F''(t)\} = s^2f(s) - sF(0) - F'(0)
$$
$$
\mathcal{L}\{F'''(t)\} = s^3f(s) - s^2F(0) - sF'(0) - F''(0)
$$
$$
\mathcal{L}\{F^{(n)}(t)\} = s^nf(s) - s^{n-1}F(0) - s^{n-2}F'(0) - \cdots - F^{(n-1)}(0)
$$

**Proof (for $n=1$).**

$$
\mathcal L\{F'(t)\}=\int_0^\infty e^{-st}F'(t)\,dt = \big[e^{-st}F(t)\big]_0^\infty + s\int_0^\infty e^{-st}F(t)\,dt = -F(0)+sf(s)
$$

**Example (deriving $\mathcal{L}\{\sin at\}$ and $\mathcal{L}\{\cos at\}$ from the derivative rule).**

Let $F(t)=\sin at$: $F'(t)=a\cos at$, $F(0)=0$. Then $\mathcal L\{a\cos at\}=s\,\mathcal L\{\sin at\}-0$, giving $\mathcal L\{\cos at\}=\dfrac{s}{a^2+s^2}$ once $\mathcal L\{\sin at\}=\dfrac a{a^2+s^2}$ is known.

Let $F(t)=\cos at$: $F'(t)=-a\sin at$, $F(0)=1$. Then $\mathcal L\{-a\sin at\}=s\,\mathcal L\{\cos at\}-1 \Rightarrow \mathcal L\{\cos at\}=\dfrac1s\big[1-a\,\mathcal L\{\sin at\}\big]=\dfrac{s}{a^2+s^2}$ — consistent with the direct derivation in §2.

### 3.9 Periodic Functions

**Definition.** $F(t)$ is periodic with period $T>0$ if $F(t+T)=F(t)$ for all $t$.

**Formula.**

$$
\mathcal{L}\{F(t)\} = \frac{\displaystyle\int_0^T e^{-st}F(t)\,dt}{1-e^{-sT}}
$$

**Example 1** (*Source: PDF 4, pp. 76–77*). $F(t) = \begin{cases}3t, & 0<t<2\\ 6, & 2<t<4\end{cases}$, with $F(t+4)=F(t)$. Here $T=4$.

$$
\mathcal L\{F(t)\} = \frac{\int_0^2 e^{-st}\,3t\,dt + \int_2^4 e^{-st}\cdot6\,dt}{1-e^{-4s}}
$$

Working through the parts-integration and evaluating the limits:

$$
\boxed{\mathcal{L}\{F(t)\} = \frac{3 - 3e^{-2s} - 6se^{-4s}}{s^2(1-e^{-4s})}}
$$

**Example 2.** $F(t)=t^2$, $0<t<2$, with $F(t+2)=F(t)$. Here $T=2$.

$$
\mathcal L\{F(t)\}=\frac{\int_0^2 e^{-st}t^2\,dt}{1-e^{-2s}}
$$

Integrating by parts (three integrations in succession, or using tabular integration) and evaluating between $0$ and $2$:

$$
\boxed{\mathcal{L}\{F(t)\} = \frac{2-2e^{-2s}-4se^{-2s}-4s^2e^{-2s}}{s^3(1-e^{-2s})}}
$$

*(Rearranged from the source's $\dfrac{-4s^2e^{-2s}-4se^{-2s}-2e^{-2s}+2}{s^3(1-e^{-2s})}$ — same expression, terms reordered.)*

---

## 4. Important Formula Sheet — Direct Laplace Transforms

| $F(t)$ | $\mathcal{L}\{F(t)\}=f(s)$ | Conditions |
|---|---|---|
| $1$ | $\dfrac1s$ | $s>0$ |
| $t$ | $\dfrac1{s^2}$ | $s>0$ |
| $t^n$ ($n$ a non-negative integer) | $\dfrac{n!}{s^{n+1}}$ | $s>0$ |
| $t^n$ ($n$ non-integer, $n>-1$) | $\dfrac{\Gamma(n+1)}{s^{n+1}}$ | $s>0$ |
| $e^{at}$ | $\dfrac1{s-a}$ | $s>a$ |
| $e^{-at}$ | $\dfrac1{s+a}$ | $s>-a$ |
| $\sin at$ | $\dfrac{a}{s^2+a^2}$ | $s>0$ |
| $\cos at$ | $\dfrac{s}{s^2+a^2}$ | $s>0$ |
| $\sinh at$ | $\dfrac{a}{s^2-a^2}$ | $s>|a|$ |
| $\cosh at$ | $\dfrac{s}{s^2-a^2}$ | $s>|a|$ |
| $t\sin at$ | $\dfrac{2as}{(s^2+a^2)^2}$ | $s>0$ |
| $t\cos at$ | $\dfrac{s^2-a^2}{(s^2+a^2)^2}$ | $s>0$ |

---

## 5. Inverse Laplace Transform

*Source: PDF 4, pp. 66–75.*

### 5.1 Definition

If $\mathcal{L}\{F(t)\}=f(s)$, then $F(t)$ is called the **inverse Laplace transform** of $f(s)$:

$$
F(t) = \mathcal{L}^{-1}\{f(s)\}
$$

### 5.2 Standard Inverse-Transform Formulas

$$
\mathcal{L}^{-1}\!\left[\frac{1}{s^{n+1}}\right] = \frac{t^n}{n!} \quad (n \text{ integer})
\qquad\qquad
\mathcal{L}^{-1}\!\left[\frac{1}{s^{n+1}}\right] = \frac{t^n}{\Gamma(n+1)} \quad (n \text{ fractional})
$$

$$
\mathcal{L}^{-1}\!\left[\frac{1}{s-a}\right]=e^{at}
\qquad
\mathcal{L}^{-1}\!\left[\frac{a}{s^2+a^2}\right]=\sin at
\qquad
\mathcal{L}^{-1}\!\left[\frac{s}{s^2+a^2}\right]=\cos at
$$

$$
\mathcal{L}^{-1}\!\left[\frac{a}{s^2-a^2}\right]=\sinh at
\qquad
\mathcal{L}^{-1}\!\left[\frac{s}{s^2-a^2}\right]=\cosh at
$$

Useful Gamma-function identities used with fractional powers: $\Gamma(n+1)=n\,\Gamma(n)$, and $\Gamma\!\left(\tfrac12\right)=\sqrt\pi$.

### 5.3 Properties of Inverse Laplace Transform

**(1) Linearity.**
$$
\mathcal{L}^{-1}\{\lambda_1f_1(s)+\lambda_2f_2(s)\} = \lambda_1\mathcal{L}^{-1}\{f_1(s)\}+\lambda_2\mathcal{L}^{-1}\{f_2(s)\}
$$

**(2) First shifting property.**
$$
\mathcal{L}^{-1}\{f(s-a)\} = e^{at}\,\mathcal{L}^{-1}\{f(s)\}
$$

**(3) Second shifting property.** If $\mathcal{L}^{-1}\{f(s)\}=F(t)$, then
$$
\mathcal{L}^{-1}\{e^{-as}f(s)\} = \begin{cases}F(t-a), & t>a\\ 0, & t<a\end{cases}
$$

**(4) Division by $s$.** If $\mathcal{L}^{-1}\{f(s)\}=F(t)$, then
$$
\mathcal{L}^{-1}\!\left[\frac{f(s)}{s}\right] = \int_0^tF(u)\,du
$$

**(5) Convolution theorem.** If $\mathcal{L}^{-1}\{f(s)\}=F(t)$ and $\mathcal{L}^{-1}\{g(s)\}=G(t)$, then
$$
\mathcal{L}^{-1}\{f(s)g(s)\} = \int_0^t F(u)\,G(t-u)\,du
$$

**(6) Inverse Laplace transform of derivatives.** If $\mathcal{L}^{-1}\{f(s)\}=F(t)$, then
$$
\mathcal{L}^{-1}\{f^{(n)}(s)\} = \mathcal{L}^{-1}\!\left[\frac{d^n}{ds^n}f(s)\right] = (-1)^n t^n F(t)
$$

### 5.4 Worked Examples

**Ex-1.** $\mathcal{L}^{-1}\!\left[\dfrac{5}{s-2}+\dfrac1{s^2+4}\right] = 5e^{2t}+\dfrac12\sin2t$

**Ex-2.** $\mathcal{L}^{-1}\!\left[\dfrac{5s+4}{s^3}-\dfrac{2s-18}{s^2+9}+\dfrac{24-30\sqrt5}{s^4}\right]$

$$
=5t+2t^2-2\cos3t+6\sin3t+4t^3-16\frac{t^{5/2}}{\sqrt\pi}
$$

(using $\mathcal{L}^{-1}[1/s^{7/2}] = t^{5/2}/\Gamma(7/2)$, and $\Gamma(7/2)=\tfrac{5}{2}\cdot\tfrac32\cdot\tfrac12\sqrt\pi$.)

**Ex-3.** $\mathcal{L}^{-1}\!\left[\dfrac{3s-2}{s^{5/2}}-\dfrac{7}{3s+2}\right] = \dfrac{6\sqrt t}{\sqrt\pi} - \dfrac{8t^{3/2}}{3\sqrt\pi} - \dfrac73e^{-2t/3}$

**Ex-4.** $\mathcal{L}^{-1}\!\left[\dfrac{5}{(s+1)^5}\right]$: write $5=5(s+1-1)$... using $\dfrac{1}{(s+1)^4}-\dfrac1{(s+1)^5}$ split:

$$
\mathcal L^{-1}\left[\frac{s+1-1}{(s+1)^5}\right]=e^{-t}\mathcal L^{-1}\!\left[\frac1{s^4}\right]-e^{-t}\mathcal L^{-1}\!\left[\frac1{s^5}\right]=\frac{t^3}{6e^t}-\frac{t^4}{12e^t}
$$

**Ex-5.** $\mathcal{L}^{-1}\!\left[\dfrac{1}{(s-2)^2+4^2}\right] = \dfrac14e^{2t}\sin4t$

**Ex-6.** $\mathcal{L}^{-1}\!\left[\dfrac{5s-6}{s^2+9}-\dfrac{s-15}{s^2-25}\right] = 5\cos3t - 2\sin3t - \cosh5t + 3\sinh5t$

**Ex-7.** $\mathcal{L}^{-1}\!\left[\dfrac{6s-4}{s^2-4s+20}\right]$: complete the square, $s^2-4s+20=(s-2)^2+4^2$, and $6s-4=6(s-2)+8$:

$$
=6e^{2t}\cos4t+2e^{2t}\sin4t
$$

**Ex-8.** $\mathcal{L}^{-1}\!\left[\dfrac{4s+12}{s^2+8s+16}\right]$: $s^2+8s+16=(s+4)^2$, and $4s+12=4(s+4)-4$:

$$
=4e^{-4t}-4e^{-4t}t = 4e^{-4t}(1-t)
$$

**Ex-9.** $\mathcal{L}^{-1}\!\left[\dfrac{3s+7}{s^2-2s-3}\right]$: $s^2-2s-3=(s-1)^2-2^2$, $3s+7=3(s-1)+10$:

$$
=3e^t\cosh2t+5e^t\sinh2t
$$

**Ex-10.** $\mathcal{L}^{-1}\!\left[\dfrac{e^{-5s}}{(s-2)^4}\right]$: first $\mathcal L^{-1}\!\left[\dfrac1{(s-2)^4}\right]=e^{2t}\cdot\dfrac{t^3}{3!}=\dfrac16t^3e^{2t}=F(t)$. Then by second shifting ($a=5$):

$$
\mathcal L^{-1}\!\left[e^{-5s}\cdot\frac1{(s-2)^4}\right]=\begin{cases}\dfrac16(t-5)^3e^{2(t-5)}, & t>5\\ 0, & t<5\end{cases}
$$

**Ex-11.** $\mathcal{L}^{-1}\!\left[\dfrac{e^{-4\pi s/5}}{s^2+25}\right]$: $F(t)=\tfrac15\sin5t$, $a=\tfrac{4\pi}5$:

$$
\mathcal L^{-1}[\cdots] = \begin{cases}\dfrac15\sin5\!\left(t-\dfrac{4\pi}5\right), & t>\dfrac{4\pi}5\\ 0, & t<\dfrac{4\pi}5\end{cases}
$$

**Ex-12.** $\mathcal{L}^{-1}\!\left[\dfrac{(s+1)e^{-\pi s}}{s^2+s+1}\right]$: complete the square, $s^2+s+1=(s+\tfrac12)^2+\tfrac34$:

$$
F(t) = e^{-t/2}\left[\cos\!\left(\frac{\sqrt3}2t\right)+\frac1{\sqrt3}\sin\!\left(\frac{\sqrt3}2t\right)\right]
$$
$$
\mathcal L^{-1}\!\left[e^{-\pi s}\cdot\frac{s+1}{s^2+s+1}\right] = \begin{cases}e^{-\frac12(t-\pi)}\!\left[\cos\dfrac{\sqrt3}2(t-\pi)+\dfrac1{\sqrt3}\sin\dfrac{\sqrt3}2(t-\pi)\right], & t>\pi\\ 0, & t<\pi\end{cases}
$$

**Ex-13 (Partial fractions).** $\mathcal{L}^{-1}\!\left[\dfrac{2s-1}{(s-1)(s-2)}\right]$: writing $\dfrac{2s-1}{(s-1)(s-2)}\equiv\dfrac{A}{s-1}+\dfrac B{s-2}$ gives $A=-1,\ B=3$:

$$
=3e^{2t}-e^t
$$

**Ex-14 (Division by $s$, repeated).** $\mathcal{L}^{-1}\!\left[\dfrac1{s^2(s-1)}\right]$: with $F(t)=e^t$ from $f(s)=1/(s-1)$,

$$
\mathcal L^{-1}\!\left[\frac{f(s)}s\right]=\int_0^te^u\,du = e^t-1
\qquad\Rightarrow\qquad
\mathcal L^{-1}\!\left[\frac{f(s)}{s^2}\right]=\int_0^t(e^u-1)\,du = e^t-t-1
$$

**Ex-15.** $\mathcal{L}^{-1}\!\left[\dfrac1{s^3(s^2+1)}\right]$: with $F(t)=\sin t$ from $f(s)=1/(s^2+1)$, repeated division by $s$:

$$
\mathcal L^{-1}\!\left[\frac{f(s)}s\right]=1-\cos t,\qquad
\mathcal L^{-1}\!\left[\frac{f(s)}{s^2}\right]=t-\sin t,\qquad
\mathcal L^{-1}\!\left[\frac{f(s)}{s^3}\right]=\frac{t^2}2+\cos t-1
$$

**Ex-16.** $\mathcal{L}^{-1}\!\left[\dfrac1{s^2(s^2+4)}\right]$: with $F(t)=\tfrac12\sin2t$,

$$
\mathcal L^{-1}\!\left[\frac{f(s)}s\right]=\frac14-\frac14\cos2t,
\qquad
\mathcal L^{-1}\!\left[\frac1{s^2(s^2+4)}\right]=\frac t4-\frac{\sin2t}8
$$

**Ex-17.** $\mathcal{L}^{-1}\!\left[\ln\!\left(\dfrac{s+2}{s+1}\right)\right] = \dfrac{e^{-t}-e^{-2t}}{t}$

Derivation: let $f(s)=\ln\!\left(\dfrac{s+2}{s+1}\right)$. Then $f'(s)=\dfrac1{s+2}-\dfrac1{s+1}$, so $\mathcal L^{-1}\{f'(s)\}=e^{-2t}-e^{-t}$. Since $\mathcal L^{-1}\{f'(s)\}=-t\,F(t)$,

$$
F(t)=\frac{e^{-2t}-e^{-t}}{-t}=\frac{e^{-t}-e^{-2t}}{t}
$$

**Ex-18.** $\mathcal{L}^{-1}\!\left[\ln\!\left(1+\dfrac1{s^2}\right)\right] = \dfrac{2-2\cos t}{t}$

Derivation: $f'(s)=\dfrac{-2}{s(s^2+1)}=-2\!\left(\dfrac1s-\dfrac{s}{s^2+1}\right)$, so $\mathcal L^{-1}\{f'(s)\}=2\cos t-2=-tF(t)$, giving $F(t)=\dfrac{2-2\cos t}{t}$.

### 5.5 Convolution Theorem — Worked Examples

**Statement.** If $\mathcal{L}^{-1}\{f(s)\}=F(t)$ and $\mathcal{L}^{-1}\{g(s)\}=G(t)$, then

$$
\mathcal{L}^{-1}\{f(s)g(s)\} = (F*G)(t) = \int_0^tF(u)\,G(t-u)\,du
$$

**Ex-19.** $\mathcal{L}^{-1}\!\left[\dfrac1{s-3}\cdot\dfrac1{s-1}\right]$: $F(t)=e^{3t}$, $G(t)=e^t$.

$$
\int_0^t e^{3u}e^{t-u}\,du = e^t\int_0^te^{2u}\,du = e^t\left[\frac{e^{2u}}2\right]_0^t = \frac{e^{3t}-e^t}{2}
$$

**Ex-20.** $\mathcal{L}^{-1}\!\left[\dfrac1{(s+2)^2(s-2)}\right]$: $F(t)=te^{-2t}$, $G(t)=e^{2t}$.

$$
\int_0^t ue^{-2u}e^{2(t-u)}\,du = e^{2t}\int_0^t ue^{-4u}\,du
= \frac{e^{2t}}{16}-\frac{te^{-2t}}4-\frac{e^{-2t}}{16}
$$

**Ex-21.** $\mathcal{L}^{-1}\!\left[\dfrac1{(s+1)(s^2+1)}\right]$: $F(t)=\sin t$, $G(t)=e^{-t}$.

$$
e^{-t}\int_0^t\sin u\,e^u\,du = e^{-t}\cdot\frac12\left[e^u\sin u-e^u\cos u\right]_0^t
= \frac12\sin t-\frac12\cos t+\frac12e^{-t}
$$

**Ex-22.** $\mathcal{L}^{-1}\!\left[\dfrac{s}{(s+1)(s^2+1)}\right]$: $F(t)=\cos t$, $G(t)=e^{-t}$.

$$
e^{-t}\int_0^te^u\cos u\,du = \frac{e^{-t}}2\left[e^u\sin u+e^u\cos u\right]_0^t
= \frac12\sin t+\frac12\cos t-\frac12e^{-t}
$$

**Ex-23.** $\mathcal{L}^{-1}\!\left[\dfrac1{s^2(s-1)}\right]$ (via convolution, cross-checking Ex-14): $F(t)=e^t$, $G(t)=t$.

$$
\int_0^te^u(t-u)\,du = t(e^t-1)-\big[ue^u-e^u\big]_0^t = te^t-t-(te^t-e^t-1) = e^t-t-1
$$

*(Matches Ex-14 exactly — a good internal consistency check.)*

**Ex-24.** $\mathcal{L}^{-1}\!\left[\dfrac2{(s-1)(s^2+4)}\right]$: $F(t)=\sin2t$, $G(t)=e^t$.

$$
e^t\int_0^t\sin2u\,e^{-u}\,du,\qquad \int e^{-u}\sin2u\,du = \frac15e^{-u}\sin2u-\frac25e^{-u}\cos2u
$$

$$
\mathcal L^{-1}\!\left[\frac{2}{(s-1)(s^2+4)}\right] = \frac15\sin2t-\frac25\cos2t+\frac25e^t
$$

**Ex-25.** $\mathcal{L}^{-1}\!\left[\dfrac1{(s-4)^3}\right]$ (first shifting, not convolution): $=e^{4t}\cdot\dfrac{t^2}{2!}=\dfrac{t^2}2e^{4t}$

**Ex-26.** $\mathcal{L}^{-1}\!\left[\dfrac{4s+12}{s^2+8s+16}\right]$ (repeat of Ex-8): $=4e^{-4t}(1-t)$

**Ex-27 (Combined partial fractions with a quadratic factor).** $\mathcal{L}^{-1}\!\left[\dfrac{s-1}{(s+3)(s^2+2s+2)}\right]$

Let $\dfrac{s-1}{(s+3)(s^2+2s+2)}\equiv\dfrac{A}{s+3}+\dfrac{Bs+C}{s^2+2s+2}$. Putting $s=-3$: $A=-\tfrac45$. Comparing coefficients: $B=\tfrac45$, and putting $s=0$: $C=\tfrac15$. Completing the square $s^2+2s+2=(s+1)^2+1$:

$$
\mathcal L^{-1}[\cdots] = -\frac45e^{-3t}+\frac45e^{-t}\cos t-\frac35e^{-t}\sin t
$$

---

## 6. Laplace Transform of Differential Equations

*Source: PDF 5, pp. 80–81.*

**General method.** Apply $\mathcal{L}$ to both sides using $\mathcal{L}\{F'(t)\}=sf(s)-F(0)$, $\mathcal{L}\{F''(t)\}=s^2f(s)-sF(0)-F'(0)$, substitute initial conditions, solve algebraically for $Y(s)=\mathcal{L}\{y(t)\}$, decompose into partial fractions, and take $\mathcal{L}^{-1}$.

### Ex-1

$$
\frac{dy}{dt}+2y = e^t,\qquad y(0)=1
$$

Taking $\mathcal{L}$: $sY(s)-y(0)+2Y(s)=\dfrac1{s-1}$

$$
Y(s)(s+2) = \frac1{s-1}+1 = \frac{s}{s-1}
\;\Rightarrow\;
Y(s) = \frac{s}{(s-1)(s+2)}
$$

Partial fractions: $Y(s)=\dfrac{1}{3(s-1)}+\dfrac{2}{3(s+2)}$ *(reconciled from the source's numerator $1+s-1=s$)*

$$
\boxed{y(t) = \frac13e^t+\frac23e^{-2t}}
$$

### Ex-2

$$
y''-3y'+2y = e^{2t},\qquad y(0)=-3,\ y'(0)=5
$$

Taking $\mathcal{L}$:

$$
s^2Y(s)-sy(0)-y'(0) - 3\big[sY(s)-y(0)\big]+2Y(s) = \frac1{s-2}
$$

Substituting $y(0)=-3,\ y'(0)=5$:

$$
Y(s)(s^2-3s+2) = \frac1{s-2}-3s+14
$$

Since $s^2-3s+2=(s-2)(s-1)$:

$$
Y(s) = \frac{-3s^2+20s-27}{(s-2)^2(s-1)}
$$

Partial fractions $\dfrac{-3s^2+20s-27}{(s-1)(s-2)^2}\equiv\dfrac{A}{s-1}+\dfrac B{s-2}+\dfrac C{(s-2)^2}$: putting $s=1$ gives $A=-10$; putting $s=2$ gives $C=1$; comparing $s^2$-coefficients gives $B=7$.

$$
Y(s) = \frac{-10}{s-1}+\frac{7}{s-2}+\frac1{(s-2)^2}
$$

$$
\boxed{y(t) = -10e^t + 7e^{2t}+te^{2t}}
$$

### Ex-3

$$
y''-9y = e^t,\qquad y(0)=-3,\ y'(0)=5
$$

Taking $\mathcal{L}$: $s^2Y(s)-sy(0)-y'(0)-9Y(s)=\dfrac1{s-1}$

$$
Y(s)(s^2-9) = \frac1{s-1}-3s+5
\;\Rightarrow\;
Y(s) = \frac{-3s^2+8s-4}{(s-1)(s^2-9)} = \frac{-3s^2+8s-4}{(s-1)(s+3)(s-3)}
$$

Partial fractions (evaluating the numerator at $s=1,-3,3$):

$$
Y(s) = -\frac18\cdot\frac1{s-1} - \frac{55}{24}\cdot\frac1{s+3} - \frac7{12}\cdot\frac1{s-3}
$$

$$
\boxed{y(t) = -\frac18e^t - \frac{55}{24}e^{-3t} - \frac7{12}e^{3t}}
$$

### Linear ODE with variable coefficients

**Problem.** $ty'' + (1-2t)y' - 2y = 0,\qquad y(0)=1,\ y'(0)=2$

Taking $\mathcal{L}$ on both sides and using $\mathcal{L}\{tG(t)\}=-\dfrac{d}{ds}\mathcal{L}\{G(t)\}$ on the terms containing $t$:

$$
\mathcal L\{ty''\}+\mathcal L\{y'\}-2\mathcal L\{ty'\}-2\mathcal L\{y\}=0
$$

$$
-\frac{d}{ds}\big[s^2Y-sy(0)-y'(0)\big] + \big[sY-y(0)\big] + 2\frac{d}{ds}\big[sY-y(0)\big] - 2Y = 0
$$

Expanding the derivatives and simplifying (the constant terms cancel):

$$
-s^2\frac{dY}{ds} - sY + 2s\frac{dY}{ds} = 0
\;\Longrightarrow\;
s\frac{dY}{ds} - 2\frac{dY}{ds} + Y = 0
\;\Longrightarrow\;
(s-2)\frac{dY}{ds} + Y = 0
$$

This is a first-order separable ODE in $Y(s)$:

$$
\frac{dY}{Y} = \frac{-ds}{s-2}
\;\Longrightarrow\;
\ln Y = -\ln(s-2) + \ln c
\;\Longrightarrow\;
Y(s) = \frac{c}{s-2}
$$

$$
y(t) = \mathcal{L}^{-1}\!\left[\frac{c}{s-2}\right] = ce^{2t}
$$

Applying $y(0)=1$ gives $c=1$:

$$
\boxed{y(t) = e^{2t}}
$$

---

## 7. Applications to Partial Differential Equations

*Source: PDF 6, pp. 83–84.*

For a function $U(x,t)$, with $\mathcal{L}\{U(x,t)\} = u(x,s)$ (Laplace transform taken with respect to $t$, treating $x$ as a parameter):

$$
\mathcal{L}\!\left[\frac{\partial U}{\partial t}\right] = s\,u(x,s) - U(x,0)
\qquad
\mathcal{L}\!\left[\frac{\partial U}{\partial x}\right] = \frac{du}{dx}
$$

$$
\mathcal{L}\!\left[\frac{\partial^2U}{\partial t^2}\right] = s^2u(x,s) - sU(x,0) - U_t(x,0), \quad U_t=\frac{\partial U}{\partial t}
\qquad
\mathcal{L}\!\left[\frac{\partial^2U}{\partial x^2}\right] = \frac{d^2u}{dx^2}
$$

### Worked problem (heat equation)

$$
\frac{\partial U}{\partial t} = \frac{\partial^2U}{\partial x^2}, \qquad 0<x<1,\ t>0
$$

with $U(x,0) = 3\sin2\pi x$, $\ U(0,t)=0$, $\ U(1,t)=0$.

Taking $\mathcal{L}$ (in $t$) of the PDE:

$$
s\,u(x,s) - U(x,0) = \frac{d^2u}{dx^2}
\;\Longrightarrow\;
\frac{d^2u}{dx^2} - s\,u = -3\sin2\pi x \qquad(\star)
$$

**Auxiliary equation:** $m^2-s=0 \Rightarrow m=\pm\sqrt s$.

**Complementary function:** $u_c = c_1e^{\sqrt s\,x}+c_2e^{-\sqrt s\,x}$

**Particular integral** (undetermined coefficients on the RHS $-3\sin2\pi x$):

$$
u_p = \frac{1}{D^2-s}(-3\sin2\pi x) = \frac{-3\sin2\pi x}{-4\pi^2-s} = \frac{3\sin2\pi x}{s+4\pi^2}
$$

**General solution:**

$$
u(x,s) = c_1e^{\sqrt s\,x}+c_2e^{-\sqrt s\,x} + \frac{3\sin2\pi x}{s+4\pi^2} \qquad(\text{iii})
$$

Transforming the boundary conditions: $u(0,s)=0$ and $u(1,s)=0$. Substituting $x=0$ into (iii):

$$
0 = c_1+c_2 \qquad(\text{iv})
$$

Substituting $x=1$ (noting $\sin2\pi=0$):

$$
0 = c_1e^{\sqrt s}+c_2e^{-\sqrt s} \qquad(\text{v})
$$

Equations (iv) and (v) together force $c_1=c_2=0$. Hence

$$
u(x,s) = \frac{3\sin2\pi x}{s+4\pi^2}
$$

Taking the inverse Laplace transform (in $s$, treating $x$ as a parameter):

$$
U(x,t) = 3\sin2\pi x\cdot\mathcal{L}^{-1}\!\left[\frac1{s+(2\pi)^2}\right]
$$

$$
\boxed{U(x,t) = 3\sin(2\pi x)\,e^{-4\pi^2 t}}
$$

---

## 8. Periodic Functions — Formula Recap

$$
\mathcal{L}\{F(t)\} = \frac{\int_0^T e^{-st}F(t)\,dt}{1-e^{-sT}}, \qquad F(t+T)=F(t)
$$

See §3.9 for the two fully worked examples.

---

## 9. Exam-Oriented Quick Reference

**Core transform pairs to memorize:**

| $F(t)$ | $f(s)$ |
|---|---|
| $1$ | $1/s$ |
| $t^n$ | $n!/s^{n+1}$ |
| $e^{\pm at}$ | $1/(s\mp a)$ |
| $\sin at,\ \cos at$ | $a/(s^2+a^2),\ s/(s^2+a^2)$ |
| $\sinh at,\ \cosh at$ | $a/(s^2-a^2),\ s/(s^2-a^2)$ |

**Common technique patterns from the source notes:**

- **$t^n\times$ trig/exponential** → differentiate $f(s)$ with respect to $s$, $n$ times, with sign $(-1)^n$ (§3.2).
- **$e^{at}\times F(t)$** → shift $s\to s-a$ in $f(s)$ (§3.3). Very often faster than direct integration.
- **Piecewise / delayed functions** (`t > a`) → recognize as $F(t-a)u(t-a)$ and apply the second shifting property, multiplying by $e^{-as}$ (§3.4).
- **$F(t)/t$** → integrate $f(u)$ from $s$ to $\infty$; setting $s=0$ afterward evaluates classic integrals like $\int_0^\infty \frac{\sin t}{t}dt=\frac\pi2$ (§3.5).
- **Denominator is a repeated linear or irreducible quadratic factor with no clean partial fraction** → try **convolution** instead of partial fractions (§5.5).
- **Denominator is a quadratic $s^2+bs+c$** → always **complete the square** first: $s^2+bs+c=(s+b/2)^2+(c-b^2/4)$, then match to shifted $\sin$/$\cos$ or $\sinh$/$\cosh$ forms.
- **Repeated division by $s$** (i.e. dividing by $s, s^2, s^3,\dots$) corresponds to repeated integration of $F(t)$ from $0$ to $t$ — used heavily in Ex-14 to Ex-16.
- **Solving ODEs**: transform → substitute initial conditions immediately → solve the resulting *algebraic* equation for $Y(s)$ → partial fractions → inverse transform. The differential equation becomes algebra.
- **Variable-coefficient ODEs** ($t\,y''$, $t\,y'$ terms) → these become *first-order ODEs in $Y(s)$* after using the $t^nF(t)\leftrightarrow(-1)^n f^{(n)}(s)$ rule; solve that ODE in $s$, then invert.
- **PDEs**: transform in $t$ only, turning the PDE into an ODE in $x$ with $s$ as a parameter; solve using auxiliary equation + particular integral; then apply the (transformed) boundary conditions to fix constants; invert last.

**Typical mistakes to avoid (evident from the source's self-corrections):**

- Keep careful track of the sign when integrating by parts twice to solve for $I$ (as in $\mathcal{L}\{\sin at\}$, $\mathcal{L}\{\cos at\}$) — a sign slip flips the final answer.
- When shifting $s\to s-a$, **substitute consistently everywhere**, including inside already-simplified fractions (the notes contain one likely slip of this kind, corrected in §3.2 Example 1).
- Always double-check partial-fraction constants by re-substituting convenient values of $s$ (e.g. the roots of the denominator), as done throughout §6.
- For periodic functions, correctly identify $T$ from the *stated* recurrence $F(t+T)=F(t)$ before setting up the integral.

---

## Notes on Source Traceability

- **§2 (Elementary transforms):** PDF 1, pp. 51–54.
- **§3.1–3.2 (Linearity, multiplication by $t^n$):** PDF 1, pp. 56–58.
- **§3.3–3.9 (Shifting, division by $t$, scaling, integrals/derivatives, periodic functions):** PDF 2 (pp. 59–65) and PDF 4 (pp. 76–77).
- **§5 (Inverse Laplace transform, all examples):** PDF 4, pp. 66–75.
- **§6 (ODEs via Laplace transform):** PDF 5, pp. 80–81, including the variable-coefficient example, pp. 82–83.
- **§7 (PDE application):** PDF 5–6, pp. 83–84.

One handwritten aside on p. 82 ("Waste of time. You will fail either way.") is a margin note unrelated to the mathematics and has been omitted from the reconstructed notes.
