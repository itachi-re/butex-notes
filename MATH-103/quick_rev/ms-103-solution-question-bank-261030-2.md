# Math-II Question Bank: Exam-Style Solutions (Part 2 of 3)

Solutions to the Question Bank (Minarul Sir's class notes), split by chapter so GitHub can render every equation.

[Complex Variable](ms-103-solution-question-bank-261030-0.md) · [Vector Calculus](ms-103-solution-question-bank-261030-1.md) · **Laplace Transform** · [Ordinary Differential Equations](ms-103-solution-question-bank-261030-3.md)

---

# Chapter 3: Laplace Transform

**Definition used throughout:** $`\mathcal L\{f(t)\} = F(s) = \displaystyle\int_0^\infty e^{-st}f(t)\,dt`$.

## Topic 1: Convolution Theorem

### Q1. State and prove the convolution theorem.

**Statement:** If $`\mathcal L\{f(t)\} = F(s)`$ and $`\mathcal L\{g(t)\} = G(s)`$, then

```math
\mathcal L\{(f\ast g)(t)\} = F(s)G(s),\qquad (f\ast g)(t) = \int_0^tf(\tau)g(t-\tau)\,d\tau.
```

**Proof.**

```math
F(s)G(s) = \int_0^\infty e^{-s\tau}f(\tau)\,d\tau\int_0^\infty e^{-sv}g(v)\,dv = \int_0^\infty\!\!\int_0^\infty e^{-s(\tau+v)}f(\tau)g(v)\,dv\,d\tau
```

Put $`v = t - \tau`$ (for fixed $`\tau`$), so $`t`$ runs from $`\tau`$ to $`\infty`$:

```math
F(s)G(s) = \int_0^\infty\!\!\int_\tau^\infty e^{-st}f(\tau)g(t-\tau)\,dt\,d\tau
```

The region of integration is $`0\le\tau\le t<\infty`$. Interchanging the order:

```math
F(s)G(s) = \int_0^\infty e^{-st}\left[\int_0^tf(\tau)g(t-\tau)\,d\tau\right]dt = \mathcal L\{(f\ast g)(t)\}. \qquad \blacksquare
```

---

## Topic 2: Subject-Related Applications

### Q1. Yarn tension: $`T' + 4T = 20`$, $`T(0) = 2`$.

Taking Laplace transforms, with $`\bar T(s) = \mathcal L\{T\}`$:

```math
s\bar T - 2 + 4\bar T = \frac{20}{s}\;\Rightarrow\;\bar T(s+4) = \frac{2s + 20}{s}\;\Rightarrow\;\bar T = \frac{2s+20}{s(s+4)}
```

Partial fractions: $`\dfrac{2s+20}{s(s+4)} = \dfrac As + \dfrac B{s+4}`$. At $`s = 0`$: $`A = 5`$. At $`s = -4`$: $`B = \dfrac{12}{-4} = -3`$.

**Answer:**

```math
\bar T = \frac5s - \frac3{s+4}\;\Rightarrow\;T(t) = 5 - 3e^{-4t}
```

Check: $`T(0) = 2`$ ✓. As $`t\to\infty`$, $`T\to5`$ (steady-state tension).

### Q2. Dryer temperature: $`y' + 2y = 2u(t)`$, $`y(0) = 0`$, unit-step input.

$`\mathcal L\{u(t)\} = \dfrac1s`$:

```math
sY + 2Y = \frac2s\;\Rightarrow\;Y = \frac{2}{s(s+2)} = \frac1s - \frac1{s+2}
```

**Answer:**

```math
y(t) = 1 - e^{-2t}
```

The output rises exponentially to the steady value $`1`$ with time constant $`\tfrac12`$.

### Q3. Roller/drive vibration: $`x'' + 4x' + 5x = 0`$, $`x(0) = 1`$, $`x'(0) = 0`$.

```math
[s^2X - s\cdot1 - 0] + 4[sX - 1] + 5X = 0\;\Rightarrow\;X(s^2 + 4s + 5) = s + 4
```

```math
X = \frac{s+4}{(s+2)^2 + 1} = \frac{(s+2)}{(s+2)^2+1} + \frac{2}{(s+2)^2+1}
```

By the first shifting property:

**Answer:**

```math
x(t) = e^{-2t}(\cos t + 2\sin t)
```

(A decaying oscillation: under-damped response.)

### Q4. Yarn position: $`X(s) = \dfrac{5}{s(s+2)}`$. Find $`x(t)`$ and interpret.

**Answer:**

```math
\frac{5}{s(s+2)} = \frac52\left(\frac1s - \frac1{s+2}\right)\;\Rightarrow\;x(t) = \frac52\left(1 - e^{-2t}\right)
```

**Interpretation:** The yarn position starts at $`x(0) = 0`$ and approaches the steady value $`\dfrac52`$ exponentially, with time constant $`\tau = \dfrac12`$ (about $`95\%`$ of the final value is reached by $`t\approx1.5`$). Final value theorem check: $`\lim_{s\to0}sX(s) = \dfrac52`$ ✓. The long-time response is the constant offset $`x_\infty = 2.5`$.

---

## Topic 3: Fundamental Proofs

### Q1. $`\mathcal L\{e^{at}\} = \dfrac1{s-a}`$, $`s > a`$.

```math
\mathcal L\{e^{at}\} = \int_0^\infty e^{-st}e^{at}dt = \int_0^\infty e^{-(s-a)t}dt = \left[\frac{e^{-(s-a)t}}{-(s-a)}\right]_0^\infty = \frac{1}{s-a}\quad(s > a). \qquad\blacksquare
```

### Q2 & Q3. $`\mathcal L\{\sin at\} = \dfrac{a}{s^2+a^2}`$ and $`\mathcal L\{\cos at\} = \dfrac{s}{s^2+a^2}`$.

Using Q1 with $`a\to ia`$ and Euler's formula, for $`s > 0`$:

```math
\mathcal L\{\cos at + i\sin at\} = \mathcal L\{e^{iat}\} = \frac{1}{s - ia} = \frac{s + ia}{s^2 + a^2} = \frac{s}{s^2+a^2} + i\frac{a}{s^2+a^2}
```

Equating real and imaginary parts (the Laplace transform of a real function is real):

```math
\mathcal L\{\cos at\} = \frac{s}{s^2+a^2},\qquad \mathcal L\{\sin at\} = \frac{a}{s^2+a^2}. \qquad\blacksquare
```

### Q4 & Q5. $`\mathcal L\{\sinh at\} = \dfrac a{s^2-a^2}`$ and $`\mathcal L\{\cosh at\} = \dfrac s{s^2-a^2}`$, $`s > |a|`$.

$`\sinh at = \dfrac{e^{at} - e^{-at}}{2}`$, $`\ \cosh at = \dfrac{e^{at}+e^{-at}}{2}`$. By linearity and Q1:

```math
\mathcal L\{\sinh at\} = \frac12\left[\frac1{s-a} - \frac1{s+a}\right] = \frac12\cdot\frac{2a}{s^2-a^2} = \frac{a}{s^2-a^2}
```

```math
\mathcal L\{\cosh at\} = \frac12\left[\frac1{s-a} + \frac1{s+a}\right] = \frac12\cdot\frac{2s}{s^2-a^2} = \frac{s}{s^2-a^2}. \qquad\blacksquare
```

### Q6. $`\mathcal L\{t^n\} = \dfrac{n!}{s^{n+1}}`$ ($`n`$ a non-negative integer, $`s > 0`$).

Let $`I_n = \displaystyle\int_0^\infty t^ne^{-st}dt`$. Integrating by parts:

```math
I_n = \left[-\frac{t^ne^{-st}}{s}\right]_0^\infty + \frac ns\int_0^\infty t^{n-1}e^{-st}dt = \frac ns I_{n-1}\quad(n\ge1)
```

(the boundary term vanishes). Also $`I_0 = \dfrac1s`$ (Q7). Then

```math
I_n = \frac ns\cdot\frac{n-1}{s}\cdots\frac1s\cdot I_0 = \frac{n!}{s^{n}}\cdot\frac1s = \frac{n!}{s^{n+1}}. \qquad\blacksquare
```

### Q7. $`\mathcal L\{1\} = \dfrac1s`$.

```math
\mathcal L\{1\} = \int_0^\infty e^{-st}dt = \left[-\frac{e^{-st}}{s}\right]_0^\infty = \frac1s\quad(s > 0). \qquad\blacksquare
```

---

## Topic 4: Winding Process & Fabric Tension Models

### Q1. $`T(t) = 4 + 2e^{-3t} + 5\sin2t`$. Find $`\mathcal L\{T(t)\}`$.

```math
\mathcal L\{T\} = \frac4s + \frac{2}{s+3} + \frac{5\cdot2}{s^2+4}
```

**Answer:**

```math
\mathcal L\{T(t)\} = \frac4s + \frac2{s+3} + \frac{10}{s^2+4}
```

### Q2. $`T(t) = 4e^{5t} + 6t^3 - 3\cos4t + 4\sin5t`$.

```math
\mathcal L\{T\} = \frac{4}{s-5} + 6\cdot\frac{3!}{s^4} - 3\cdot\frac{s}{s^2+16} + 4\cdot\frac{5}{s^2+25}
```

**Answer:**

```math
\mathcal L\{T(t)\} = \frac4{s-5} + \frac{36}{s^4} - \frac{3s}{s^2+16} + \frac{20}{s^2+25}
```

---

## Topic 5: Inverse Laplace Transforms

### Q1. $`\mathcal L^{-1}\left\{\dfrac{5}{s(s+2)}\right\}`$

**Answer:**

```math
\frac{5}{s(s+2)} = \frac{5}{2}\left(\frac1s - \frac1{s+2}\right)\;\Rightarrow\;\frac52\left(1 - e^{-2t}\right)
```

### Q2. (Homework i) $`\mathcal L^{-1}\left\{\dfrac{12}{s(s+3)}\right\}`$

**Answer:**

```math
\frac{12}{s(s+3)} = 4\left(\frac1s - \frac1{s+3}\right)\;\Rightarrow\;4\left(1 - e^{-3t}\right)
```

### Q3. (Homework ii) $`\mathcal L^{-1}\left\{\dfrac{2s+6}{s^2+6s+8}\right\}`$

$`s^2 + 6s + 8 = (s+2)(s+4)`$. Let $`\dfrac{2s+6}{(s+2)(s+4)} = \dfrac A{s+2} + \dfrac B{s+4}`$.

$`2s + 6 = A(s+4) + B(s+2)`$. At $`s = -2`$: $`2 = 2A`$, $`A = 1`$. At $`s = -4`$: $`-2 = -2B`$, $`B = 1`$.

**Answer:**

```math
e^{-2t} + e^{-4t}
```

---

## Topic 6: Operational Properties Proofs

### Q1. First shifting: if $`\mathcal L\{f(t)\} = F(s)`$, then $`\mathcal L\{e^{at}f(t)\} = F(s-a)`$.

```math
\mathcal L\{e^{at}f(t)\} = \int_0^\infty e^{-st}e^{at}f(t)\,dt = \int_0^\infty e^{-(s-a)t}f(t)\,dt = F(s-a). \qquad\blacksquare
```

### Q2. Second shifting: $`\mathcal L\{u(t-a)f(t-a)\} = e^{-as}F(s)`$.

$`u(t-a) = 0`$ for $`t < a`$ and $`1`$ for $`t \ge a`$.

```math
\mathcal L\{u(t-a)f(t-a)\} = \int_a^\infty e^{-st}f(t-a)\,dt
```

Put $`\tau = t - a`$, $`dt = d\tau`$:

```math
= \int_0^\infty e^{-s(\tau+a)}f(\tau)\,d\tau = e^{-as}\int_0^\infty e^{-s\tau}f(\tau)\,d\tau = e^{-as}F(s). \qquad\blacksquare
```

### Q3. Prove $`\mathcal L\left\{\displaystyle\int_0^tf(u)\,du\right\} = \dfrac{F(s)}s`$.

Let $`g(t) = \displaystyle\int_0^tf(u)\,du`$. Then $`g'(t) = f(t)`$ and $`g(0) = 0`$. Taking Laplace transforms of $`g' = f`$:

```math
s\,\mathcal L\{g\} - g(0) = F(s)\;\Rightarrow\;\mathcal L\{g\} = \frac{F(s)}{s}. \qquad\blacksquare
```

### Q4. Prove $`\mathcal L\{t^nf(t)\} = (-1)^n\dfrac{d^nF}{ds^n}`$.

$`F(s) = \displaystyle\int_0^\infty e^{-st}f(t)\,dt`$. Differentiating under the integral sign:

```math
\frac{dF}{ds} = \int_0^\infty(-t)e^{-st}f(t)\,dt = -\mathcal L\{tf(t)\}\;\Rightarrow\;\mathcal L\{tf(t)\} = -\frac{dF}{ds}
```

This is the case $`n = 1`$. Assume $`\mathcal L\{t^kf(t)\} = (-1)^kF^{(k)}(s)`$. Differentiating both sides with respect to $`s`$:

```math
\int_0^\infty(-t)\,t^kf(t)e^{-st}dt = (-1)^kF^{(k+1)}(s)\;\Rightarrow\;\mathcal L\{t^{k+1}f(t)\} = (-1)^{k+1}F^{(k+1)}(s).
```

By induction the result holds for all $`n`$. $`\blacksquare`$

---

## Topic 7: Product Transformations

### Q1. Evaluate $`\mathcal L\{t^2\cos at\}`$.

$`\mathcal L\{\cos at\} = \dfrac{s}{s^2+a^2} = F(s)`$. By $`\mathcal L\{t^2f\} = F''(s)`$:

```math
F'(s) = \frac{(s^2+a^2) - 2s^2}{(s^2+a^2)^2} = \frac{a^2 - s^2}{(s^2+a^2)^2}
```

```math
F''(s) = \frac{-2s(s^2+a^2) - 4s(a^2 - s^2)}{(s^2+a^2)^3} = \frac{2s^3 - 6a^2s}{(s^2+a^2)^3}
```

**Answer:**

```math
\mathcal L\{t^2\cos at\} = \frac{2s(s^2 - 3a^2)}{(s^2+a^2)^3}
```

### Q2. Evaluate $`\mathcal L\{t^3e^t\}`$.

$`\mathcal L\{t^3\} = \dfrac{3!}{s^4} = \dfrac6{s^4}`$. By the first shifting property ($`s\to s-1`$):

**Answer:**

```math
\mathcal L\{t^3e^t\} = \frac{6}{(s-1)^4}
```

---

## Topic 8: Solving Differential Equations by Laplace Transform

### Q1. $`x'' + 4x' + 5x = 0`$, $`x(0) = 1`$, $`x'(0) = 0`$.

```math
s^2X - s + 4(sX - 1) + 5X = 0\;\Rightarrow\;X = \frac{s+4}{s^2+4s+5} = \frac{s+2}{(s+2)^2+1} + \frac{2}{(s+2)^2+1}
```

**Answer:**

```math
x(t) = e^{-2t}(\cos t + 2\sin t)
```

### Q2. (Homework i) $`y' + 5y = 10`$, $`y(0) = 1`$.

```math
sY - 1 + 5Y = \frac{10}{s}\;\Rightarrow\;Y = \frac{s + 10}{s(s+5)} = \frac2s - \frac1{s+5}
```

(from $`s + 10 = A(s+5) + Bs`$: $`s=0\Rightarrow A = 2`$; $`s = -5\Rightarrow B = -1`$)

**Answer:**

```math
y(t) = 2 - e^{-5t}
```

Check: $`y(0) = 1`$ ✓.

### Q3. (Homework ii) $`y'' + 2y' + y = 0`$, $`y(0) = 0`$, $`y'(0) = 2`$.

```math
s^2Y - 0 - 2 + 2sY + Y = 0\;\Rightarrow\;Y(s+1)^2 = 2\;\Rightarrow\;Y = \frac{2}{(s+1)^2}
```

Since $`\mathcal L^{-1}\{1/s^2\} = t`$, the first shifting property gives:

**Answer:**

```math
y(t) = 2te^{-t}
```

---

[Complex Variable](ms-103-solution-question-bank-261030-0.md) · [Vector Calculus](ms-103-solution-question-bank-261030-1.md) · **Laplace Transform** · [Ordinary Differential Equations](ms-103-solution-question-bank-261030-3.md)
