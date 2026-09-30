# Laplace Transform — Practice Problems with Solutions

Work through these **in order**. Each section builds on the last. Don't skip to ODEs before Sections 1–3 feel automatic.

---

## Section 1 — Basic Transforms from the Definition

Use $\mathcal{L}\{f(t)\} = \int_0^\infty e^{-st}f(t)\,dt$ directly. No table allowed here — the point is to build the muscle memory.

### Problem 1.1
Find $\mathcal{L}\{5\}$ from the definition.

**Solution:**

$$\mathcal{L}\{5\} = \int_0^\infty 5e^{-st}\,dt = 5\left[-\frac{e^{-st}}{s}\right]_0^\infty = 5\left(0 - \left(-\frac{1}{s}\right)\right) = \frac{5}{s}$$

### Problem 1.2
Find $\mathcal{L}\{t\}$ from the definition (integration by parts).

**Solution:**

Let $u = t$, $dv = e^{-st}dt \Rightarrow du = dt$, $v = -\frac{e^{-st}}{s}$

$$\int_0^\infty te^{-st}dt = \left[-\frac{te^{-st}}{s}\right]_0^\infty + \frac{1}{s}\int_0^\infty e^{-st}dt = 0 + \frac{1}{s}\cdot\frac{1}{s} = \frac{1}{s^2}$$

### Problem 1.3
Find $\mathcal{L}\{e^{3t}\}$ from the definition. State the convergence condition on $s$.

**Solution:**

$$\int_0^\infty e^{-st}e^{3t}dt = \int_0^\infty e^{-(s-3)t}dt = \left[-\frac{e^{-(s-3)t}}{s-3}\right]_0^\infty$$

Converges only if $s - 3 > 0$, i.e. $s > 3$. Then the result is $\dfrac{1}{s-3}$.

### Problem 1.4
Find $\mathcal{L}\{t^2\}$ from the definition.

**Solution:**

Integrate by parts with $u = t^2$, $dv = e^{-st}dt$:

$$\int_0^\infty t^2 e^{-st}dt = \left[-\frac{t^2e^{-st}}{s}\right]_0^\infty + \frac{2}{s}\int_0^\infty te^{-st}dt = 0 + \frac{2}{s}\cdot\frac{1}{s^2} = \frac{2}{s^3}$$

---

## Section 2 — Linearity

Use $\mathcal{L}\{af(t) + bg(t)\} = aF(s) + bG(s)$ and the results you just derived (plus $\mathcal{L}\{e^{at}\} = \frac{1}{s-a}$).

### Problem 2.1
Find $\mathcal{L}\{4 - 2t\}$.

**Solution:**

$$4\cdot\frac{1}{s} - 2\cdot\frac{1}{s^2} = \frac{4}{s} - \frac{2}{s^2}$$

### Problem 2.2
Find $\mathcal{L}\{3e^{2t} - 5\}$.

**Solution:**

$$3\cdot\frac{1}{s-2} - 5\cdot\frac{1}{s} = \frac{3}{s-2} - \frac{5}{s}$$

### Problem 2.3
Find $\mathcal{L}\{6t^2 + 4e^{-t} - 7\}$.

**Solution:**

$$6\cdot\frac{2}{s^3} + 4\cdot\frac{1}{s+1} - 7\cdot\frac{1}{s} = \frac{12}{s^3} + \frac{4}{s+1} - \frac{7}{s}$$

---

## Section 3 — $t^n$, Sine, and Cosine

You'll need these two derived/standard results:

$$\mathcal{L}\{t^n\} = \frac{n!}{s^{n+1}} \qquad \mathcal{L}\{\sin(at)\} = \frac{a}{s^2+a^2} \qquad \mathcal{L}\{\cos(at)\} = \frac{s}{s^2+a^2}$$

### Problem 3.1
Find $\mathcal{L}\{t^4\}$.

**Solution:**

$$\frac{4!}{s^5} = \frac{24}{s^5}$$

### Problem 3.2
Find $\mathcal{L}\{\sin(4t)\}$.

**Solution:**

$$\frac{4}{s^2+16}$$

### Problem 3.3
Find $\mathcal{L}\{3\cos(2t) - t^3\}$.

**Solution:**

$$3\cdot\frac{s}{s^2+4} - \frac{3!}{s^4} = \frac{3s}{s^2+4} - \frac{6}{s^4}$$

### Problem 3.4
Find $\mathcal{L}\{5 + 2\sin(3t) - 4t^2\}$.

**Solution:**

$$\frac{5}{s} + 2\cdot\frac{3}{s^2+9} - 4\cdot\frac{2}{s^3} = \frac{5}{s} + \frac{6}{s^2+9} - \frac{8}{s^3}$$

---

## Section 4 — First Shifting Theorem

$$\mathcal{L}\{e^{at}f(t)\} = F(s-a) \quad \text{(shift } s \to s-a\text{)}$$

### Problem 4.1
Find $\mathcal{L}\{e^{2t}t^3\}$.

**Solution:**

$\mathcal{L}\{t^3\} = \frac{6}{s^4}$. Shift $s \to s-2$:

$$\frac{6}{(s-2)^4}$$

### Problem 4.2
Find $\mathcal{L}\{e^{-3t}\sin(2t)\}$.

**Solution:**

$\mathcal{L}\{\sin 2t\} = \frac{2}{s^2+4}$. Shift $s \to s+3$:

$$\frac{2}{(s+3)^2+4}$$

### Problem 4.3
Find $\mathcal{L}\{e^{5t}\cos(t)\}$.

**Solution:**

$\mathcal{L}\{\cos t\} = \frac{s}{s^2+1}$. Shift $s \to s-5$:

$$\frac{s-5}{(s-5)^2+1}$$

---

## Section 5 — Piecewise Functions

Split the integral at the point(s) where the function's rule changes.

### Problem 5.1
Find $\mathcal{L}\{f(t)\}$ where

$$f(t) = \begin{cases} 3, & 0 \le t < 2 \\ 0, & t \ge 2 \end{cases}$$

**Solution:**

$$\mathcal{L}\{f(t)\} = \int_0^2 3e^{-st}dt = 3\left[-\frac{e^{-st}}{s}\right]_0^2 = \frac{3(1-e^{-2s})}{s}$$

### Problem 5.2
Find $\mathcal{L}\{f(t)\}$ where

$$f(t) = \begin{cases} t, & 0 \le t < 1 \\ 1, & t \ge 1 \end{cases}$$

**Solution:**

Split at $t=1$:

$$\int_0^1 te^{-st}dt + \int_1^\infty e^{-st}dt$$

First integral (by parts):

$$\left[-\frac{te^{-st}}{s}\right]_0^1 + \frac{1}{s}\int_0^1 e^{-st}dt = -\frac{e^{-s}}{s} + \frac{1}{s}\left(\frac{1-e^{-s}}{s}\right)$$

Second integral:

$$\left[-\frac{e^{-st}}{s}\right]_1^\infty = \frac{e^{-s}}{s}$$

Adding, the $-\frac{e^{-s}}{s}$ and $+\frac{e^{-s}}{s}$ cancel, leaving:

$$\frac{1-e^{-s}}{s^2}$$

---

## Section 6 — Inverse Laplace Transform

Match the form to the table; use partial fractions when there's a denominator that factors.

### Problem 6.1
Find $\mathcal{L}^{-1}\{\dfrac{3}{s^2+9}\}$.

**Solution:**

This matches $\frac{a}{s^2+a^2}$ with $a=3$:

$$\sin(3t)$$

### Problem 6.2
Find $\mathcal{L}^{-1}\{\dfrac{5}{s-4}\}$.

**Solution:**

$$5e^{4t}$$

### Problem 6.3
Find $\mathcal{L}^{-1}\{\dfrac{2}{s^2(s+1)}\}$ using partial fractions.

**Solution:**

Write $\dfrac{2}{s^2(s+1)} = \dfrac{A}{s} + \dfrac{B}{s^2} + \dfrac{C}{s+1}$

Multiply through: $2 = As(s+1) + B(s+1) + Cs^2$

- $s=0$: $2 = B \Rightarrow B = 2$
- $s=-1$: $2 = C \Rightarrow C = 2$
- Compare $s^2$ coefficients: $0 = A + C \Rightarrow A = -2$

So: $\dfrac{-2}{s} + \dfrac{2}{s^2} + \dfrac{2}{s+1}$

Inverting each term:

$$-2 + 2t + 2e^{-t}$$

---

## Section 7 — Solving ODEs with Laplace Transforms

Take $\mathcal{L}$ of both sides, plug in initial conditions, solve algebraically for $Y(s)$, then invert.

Key rules you need:

$$\mathcal{L}\{y'\} = sY(s) - y(0) \qquad \mathcal{L}\{y''\} = s^2Y(s) - sy(0) - y'(0)$$

### Problem 7.1
Solve $y' + 3y = 0$, $y(0) = 2$.

**Solution:**

Transform: $sY - 2 + 3Y = 0 \Rightarrow Y(s+3) = 2 \Rightarrow Y = \dfrac{2}{s+3}$

Invert:

$$y(t) = 2e^{-3t}$$

### Problem 7.2
Solve $y'' - y = 0$, $y(0)=0$, $y'(0)=1$.

**Solution:**

Transform: $s^2Y - s(0) - 1 - Y = 0 \Rightarrow Y(s^2-1) = 1 \Rightarrow Y = \dfrac{1}{s^2-1}$

Partial fractions: $\dfrac{1}{s^2-1} = \dfrac{1}{2}\cdot\dfrac{1}{s-1} - \dfrac{1}{2}\cdot\dfrac{1}{s+1}$

Invert:

$$y(t) = \frac{1}{2}e^t - \frac{1}{2}e^{-t}$$

(That's $\sinh t$, if you recognize it.)

### Problem 7.3
Solve $y'' + 4y = 0$, $y(0)=1$, $y'(0)=0$.

**Solution:**

Transform: $s^2Y - s(1) - 0 + 4Y = 0 \Rightarrow Y(s^2+4) = s \Rightarrow Y = \dfrac{s}{s^2+4}$

This matches $\mathcal{L}\{\cos(at)\} = \dfrac{s}{s^2+a^2}$ with $a=2$:

$$y(t) = \cos(2t)$$

### Problem 7.4 (harder — combines everything)
Solve $y'' + 3y' + 2y = 0$, $y(0)=1$, $y'(0)=0$.

**Solution:**

Transform: $\left[s^2Y - s - 0\right] + 3\left[sY - 1\right] + 2Y = 0$

$$Y(s^2+3s+2) - s - 3 = 0 \Rightarrow Y = \frac{s+3}{s^2+3s+2} = \frac{s+3}{(s+1)(s+2)}$$

Partial fractions: $\dfrac{s+3}{(s+1)(s+2)} = \dfrac{A}{s+1}+\dfrac{B}{s+2}$

- $s=-1$: $2 = A(1) \Rightarrow A = 2$
- $s=-2$: $1 = B(-1) \Rightarrow B = -1$

$$Y = \frac{2}{s+1} - \frac{1}{s+2}$$

Invert:

$$y(t) = 2e^{-t} - e^{-2t}$$

---

## How to use this set

1. Cover the solutions and attempt each problem yourself first — even Section 1, even though it feels repetitive. That repetition is what makes the table stop feeling arbitrary.
2. If you get a problem wrong, find *which step* broke (setting up the integral, the algebra, or the table lookup) rather than just re-reading the solution.
3. Once Sections 1–4 are solid, Sections 6–7 should feel like assembly, not new material.
