# Math-II Question Bank: Exam-Style Solutions

Chapter-wise and topic-wise solutions to the Question Bank (Minarul Sir's class notes).

**Chapters**

1. [Complex Variable](#chapter-1-complex-variable)
2. [Vector Calculus](#chapter-2-vector-calculus)
3. [Laplace Transform](#chapter-3-laplace-transform)
4. [Ordinary Differential Equations](#chapter-4-ordinary-differential-equations-ode)

> **Notes on the source questions**
> - Ch1 T1 Q3 is read as $`\left(\dfrac{2+i}{3-i}\right)^2`$ (the exponent was detached in the PDF; this reading gives a clean answer).
> - Ch1 T3 Q3 is read as $`\sin^3\theta`$ (the "3" is a power on the left side).
> - Ch2 T4 Q8 has no field or curve given in the PDF, so the method and a model example are shown.
> - Ch4 T2 Q8(ii) is solved exactly as printed, $`\dfrac{dy}{dx}=\dfrac{y}{x}+x\sin\dfrac{y}{x}`$.

---

# Chapter 1: Complex Variable

## Topic 1: Definition (Complex Number, Modulus, Argument, Conjugate)

### Q1. Define complex number system, modulus, argument and conjugate.

- **Complex number:** a number $`z = x + iy`$ where $`x, y \in \mathbb{R}`$ and $`i^2 = -1`$. $`x = \mathrm{Re}(z)`$, $`y = \mathrm{Im}(z)`$. The set of all such numbers is $`\mathbb{C}`$, and it is a field under the usual addition and multiplication.
- **Modulus:** $`|z| = \sqrt{x^2 + y^2}`$, the distance of $`z`$ from the origin in the Argand plane.
- **Argument:** the angle $`\theta`$ that the line from $`O`$ to $`z`$ makes with the positive real axis, so that $`\cos\theta = x/|z|`$, $`\sin\theta = y/|z|`$. It is determined up to $`2k\pi`$: $`\arg z = \theta + 2k\pi`$, $`k \in \mathbb{Z}`$.
- **Conjugate:** $`\bar z = x - iy`$. Properties: $`z\bar z = |z|^2`$, $`\overline{z_1 z_2} = \bar z_1 \bar z_2`$, $`\mathrm{Re} z = \dfrac{z+\bar z}{2}`$, $`\mathrm{Im} z = \dfrac{z-\bar z}{2i}`$.

### Q2. Define principal argument.

The value of $`\arg z`$ lying in the interval $`-\pi < \theta \le \pi`$ is called the **principal argument**, written $`\mathrm{Arg} z`$. Hence $`\arg z = \mathrm{Arg} z + 2k\pi`$.

### Q3. Put $`\left(\dfrac{2+i}{3-i}\right)^2`$ into polar form.

```math
\frac{2+i}{3-i} = \frac{(2+i)(3+i)}{(3-i)(3+i)} = \frac{6 + 2i + 3i + i^2}{10} = \frac{5+5i}{10} = \frac{1+i}{2}
```

```math
\left(\frac{1+i}{2}\right)^2 = \frac{1 + 2i + i^2}{4} = \frac{2i}{4} = \frac{i}{2}
```

Here $`x = 0`$, $`y = \tfrac12`$, so $`r = \tfrac12`$ and $`\theta = \tfrac{\pi}{2}`$.

**Answer:**

```math
\frac{1}{2}\left(\cos\frac{\pi}{2} + i\sin\frac{\pi}{2}\right) = \frac12 e^{i\pi/2}
```

### Q4. (Homework) Find the modulus and argument of $`\dfrac{1+2i}{1-(1-2i)}`$.

Denominator: $`1 - (1 - 2i) = 2i`$.

```math
\frac{1+2i}{2i} = \frac{(1+2i)(-i)}{2} = \frac{-i - 2i^2}{2} = \frac{2 - i}{2} = 1 - \frac{i}{2}
```

```math
|z| = \sqrt{1 + \tfrac14} = \frac{\sqrt5}{2}
```

```math
\arg z = \tan^{-1}\!\left(\frac{-1/2}{1}\right) = -\tan^{-1}\frac12 \approx -26.57^\circ \quad (\text{4th quadrant})
```

**Answer:**

```math
|z| = \frac{\sqrt5}{2},\qquad \mathrm{Arg} z = -\tan^{-1}\tfrac12
```

---

## Topic 2: Triangle Inequality & Related Proofs

### Q1. Prove $`|z_1 + z_2| \le |z_1| + |z_2|`$.

```math
|z_1 + z_2|^2 = (z_1 + z_2)(\bar z_1 + \bar z_2) = |z_1|^2 + |z_2|^2 + z_1\bar z_2 + \bar z_1 z_2
```

```math
= |z_1|^2 + |z_2|^2 + 2\mathrm{Re}(z_1 \bar z_2)
```

Since $`\mathrm{Re}(w) \le |w|`$,

```math
2\mathrm{Re}(z_1\bar z_2) \le 2|z_1\bar z_2| = 2|z_1||z_2|
```

```math
\Rightarrow |z_1 + z_2|^2 \le |z_1|^2 + |z_2|^2 + 2|z_1||z_2| = (|z_1| + |z_2|)^2
```

Taking positive square roots, $`|z_1 + z_2| \le |z_1| + |z_2|`$. $`\blacksquare`$

### Q2. Prove $`|z_1 - z_2| \ge \big||z_1| - |z_2|\big|`$.

Write $`z_1 = (z_1 - z_2) + z_2`$. By the triangle inequality,

```math
|z_1| \le |z_1 - z_2| + |z_2| \;\Rightarrow\; |z_1| - |z_2| \le |z_1 - z_2| \quad (1)
```

Interchanging $`z_1`$ and $`z_2`$ (note $`|z_2 - z_1| = |z_1 - z_2|`$):

```math
|z_2| - |z_1| \le |z_1 - z_2| \quad (2)
```

From (1) and (2), $`\pm\big(|z_1| - |z_2|\big) \le |z_1 - z_2|`$, i.e.

```math
\big||z_1| - |z_2|\big| \le |z_1 - z_2|. \qquad \blacksquare
```

### Q3. Prove $`|z|\sqrt2 \ge |\mathrm{Re} z| + |\mathrm{Im} z|`$.

Let $`z = x + iy`$. We must show $`\sqrt2\sqrt{x^2+y^2} \ge |x| + |y|`$. Both sides are non-negative, so square:

```math
2(x^2 + y^2) \ge (|x| + |y|)^2 = x^2 + y^2 + 2|x||y|
```

```math
\iff x^2 + y^2 - 2|x||y| \ge 0 \iff (|x| - |y|)^2 \ge 0,
```

which is always true. $`\blacksquare`$

### Q4. Prove $`\arg(z_1 z_2) = \arg z_1 + \arg z_2`$.

Let $`z_1 = r_1(\cos\theta_1 + i\sin\theta_1)`$ and $`z_2 = r_2(\cos\theta_2 + i\sin\theta_2)`$. Then

```math
z_1 z_2 = r_1 r_2\big[(\cos\theta_1\cos\theta_2 - \sin\theta_1\sin\theta_2) + i(\sin\theta_1\cos\theta_2 + \cos\theta_1\sin\theta_2)\big]
```

```math
= r_1 r_2\big[\cos(\theta_1 + \theta_2) + i\sin(\theta_1 + \theta_2)\big]
```

So $`|z_1 z_2| = r_1 r_2`$ and an argument of $`z_1z_2`$ is $`\theta_1 + \theta_2`$. Hence

```math
\arg(z_1 z_2) = \arg z_1 + \arg z_2 \quad (\text{as sets, i.e. up to } 2k\pi). \qquad \blacksquare
```

---

## Topic 3: Euler's & De Moivre's Theorem

### Q1. State and prove Euler's formula $`e^{i\theta} = \cos\theta + i\sin\theta`$.

**Statement:** For every real $`\theta`$, $`e^{i\theta} = \cos\theta + i\sin\theta`$.

**Proof** (Maclaurin series). 

```math
e^{x} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots
```

Put $`x = i\theta`$ and use $`i^2 = -1,\ i^3 = -i,\ i^4 = 1,\dots`$

```math
e^{i\theta} = \left(1 - \frac{\theta^2}{2!} + \frac{\theta^4}{4!} - \cdots\right) + i\left(\theta - \frac{\theta^3}{3!} + \frac{\theta^5}{5!} - \cdots\right)
```

The brackets are the Maclaurin series of $`\cos\theta`$ and $`\sin\theta`$. Hence $`e^{i\theta} = \cos\theta + i\sin\theta`$. $`\blacksquare`$

### Q2. State and prove De Moivre's theorem.

**Statement:** For any integer $`n`$, $`(\cos\theta + i\sin\theta)^n = \cos n\theta + i\sin n\theta`$.

**Proof.**

*Case 1: $`n \ge 0`$ (induction).* For $`n = 0, 1`$ it is trivial. Assume true for $`n = k`$:

```math
(\cos\theta + i\sin\theta)^{k+1} = (\cos k\theta + i\sin k\theta)(\cos\theta + i\sin\theta)
```

```math
= \cos(k\theta + \theta) + i\sin(k\theta + \theta) = \cos(k+1)\theta + i\sin(k+1)\theta.
```

So true for $`k+1`$, hence for all $`n \ge 0`$.

*Case 2: $`n = -m`$, $`m > 0`$.*

```math
(\cos\theta + i\sin\theta)^{-m} = \frac{1}{\cos m\theta + i\sin m\theta} = \frac{\cos m\theta - i\sin m\theta}{\cos^2 m\theta + \sin^2 m\theta}
```

```math
= \cos m\theta - i\sin m\theta = \cos(-m\theta) + i\sin(-m\theta) = \cos n\theta + i\sin n\theta. \qquad \blacksquare
```

### Q3. Prove $`\sin^3\theta = \tfrac34\sin\theta - \tfrac14\sin 3\theta`$.

Using $`\sin\theta = \dfrac{e^{i\theta} - e^{-i\theta}}{2i}`$:

```math
\sin^3\theta = \frac{(e^{i\theta} - e^{-i\theta})^3}{(2i)^3} = \frac{e^{3i\theta} - 3e^{i\theta} + 3e^{-i\theta} - e^{-3i\theta}}{-8i}
```

```math
= \frac{(e^{3i\theta} - e^{-3i\theta}) - 3(e^{i\theta} - e^{-i\theta})}{-8i} = \frac{2i\sin3\theta - 6i\sin\theta}{-8i}
```

```math
= \frac{3\sin\theta - \sin3\theta}{4} = \frac34\sin\theta - \frac14\sin3\theta. \qquad \blacksquare
```

### Q4. (Homework)

**(i) Find all values of $`(\sqrt3 + i)^{1/5}`$.**

$`r = \sqrt{3 + 1} = 2`$, $`\ \theta = \tan^{-1}\dfrac{1}{\sqrt3} = \dfrac{\pi}{6}`$.

```math
\sqrt3 + i = 2\left[\cos\left(2k\pi + \frac{\pi}{6}\right) + i\sin\left(2k\pi + \frac{\pi}{6}\right)\right]
```

By De Moivre's theorem,

```math
(\sqrt3 + i)^{1/5} = 2^{1/5}\left[\cos\frac{(12k+1)\pi}{30} + i\sin\frac{(12k+1)\pi}{30}\right],\quad k = 0,1,2,3,4.
```

The five values are at angles $`\dfrac{\pi}{30},\ \dfrac{13\pi}{30},\ \dfrac{25\pi}{30},\ \dfrac{37\pi}{30},\ \dfrac{49\pi}{30}`$, each with modulus $`2^{1/5}`$.

**(ii) Solve $`x^8 + x^5 - x^3 - 1 = 0`$.**

```math
x^5(x^3 + 1) - (x^3 + 1) = (x^3 + 1)(x^5 - 1) = 0
```

*From $`x^3 = -1 = \cos\pi + i\sin\pi`$:*

```math
x = \cos\frac{(2k+1)\pi}{3} + i\sin\frac{(2k+1)\pi}{3},\ k = 0,1,2 \;\Rightarrow\; x = \frac12 + \frac{\sqrt3}{2}i,\ -1,\ \frac12 - \frac{\sqrt3}{2}i
```

*From $`x^5 = 1 = \cos 0 + i\sin 0`$:*

```math
x = \cos\frac{2k\pi}{5} + i\sin\frac{2k\pi}{5},\quad k = 0,1,2,3,4
```

**Answer:**

```math
\text{8 roots in all: the 3 cube roots of } -1 \text{ and the 5 fifth roots of unity.}
```

### Q5. Find all values of $`(1+i)^{1/8}`$.

$`r = \sqrt2`$, $`\theta = \dfrac{\pi}{4}`$, so $`1 + i = \sqrt2\left[\cos\left(2k\pi + \dfrac{\pi}{4}\right) + i\sin\left(2k\pi + \dfrac{\pi}{4}\right)\right]`$.

```math
(1+i)^{1/8} = (\sqrt2)^{1/8}\left[\cos\frac{1}{8}\left(2k\pi + \frac\pi4\right) + i\sin\frac{1}{8}\left(2k\pi + \frac\pi4\right)\right]
```

**Answer:**

```math
(1+i)^{1/8} = 2^{1/16}\left[\cos\frac{(8k+1)\pi}{32} + i\sin\frac{(8k+1)\pi}{32}\right],\quad k = 0,1,\dots,7
```

### Q6. Solve $`x^7 + x^4 + x^3 + 1 = 0`$.

```math
x^4(x^3 + 1) + (x^3 + 1) = (x^3 + 1)(x^4 + 1) = 0
```

*$`x^3 = -1`$:* $`x = \cos\dfrac{(2k+1)\pi}{3} + i\sin\dfrac{(2k+1)\pi}{3}`$, $`k = 0,1,2`$, i.e. $`\dfrac12 \pm \dfrac{\sqrt3}{2}i,\ -1`$.

*$`x^4 = -1`$:* $`x = \cos\dfrac{(2k+1)\pi}{4} + i\sin\dfrac{(2k+1)\pi}{4}`$, $`k = 0,1,2,3`$, i.e.

```math
x = \frac{\pm1 \pm i}{\sqrt2}
```

**Answer:**

```math
\text{7 roots: } \tfrac12\pm\tfrac{\sqrt3}{2}i,\ -1,\ \tfrac{\pm1\pm i}{\sqrt2}
```

---

## Topic 4: Cauchy's Formulas & Related Math

### Q1. State and prove the Cauchy–Goursat theorem.

**Statement:** If $`f(z)`$ is analytic at all points inside and on a simple closed contour $`C`$, then $`\displaystyle\oint_C f(z)\,dz = 0`$.

**Proof** (assuming $`f'`$ is continuous; Goursat showed this assumption is unnecessary). Let $`f = u + iv`$, $`dz = dx + i\,dy`$.

```math
\oint_C f\,dz = \oint_C (u\,dx - v\,dy) + i\oint_C (v\,dx + u\,dy)
```

By Green's theorem on the region $`R`$ enclosed by $`C`$:

```math
\oint_C (u\,dx - v\,dy) = \iint_R\left(-\frac{\partial v}{\partial x} - \frac{\partial u}{\partial y}\right)dx\,dy,\qquad \oint_C (v\,dx + u\,dy) = \iint_R\left(\frac{\partial u}{\partial x} - \frac{\partial v}{\partial y}\right)dx\,dy
```

$`f`$ is analytic, so the Cauchy–Riemann equations hold: $`u_x = v_y`$, $`u_y = -v_x`$. Both integrands vanish, so $`\oint_C f\,dz = 0`$. $`\blacksquare`$

### Q2. State and prove Cauchy's integral formula.

**Statement:** If $`f`$ is analytic inside and on a simple closed curve $`C`$ and $`z_0`$ is any point inside $`C`$, then

```math
f(z_0) = \frac{1}{2\pi i}\oint_C \frac{f(z)}{z - z_0}\,dz.
```

**Proof.** $`\dfrac{f(z)}{z - z_0}`$ is analytic in the region between $`C`$ and a small circle $`\gamma: |z - z_0| = \varepsilon`$ lying inside $`C`$. By Cauchy–Goursat for this doubly connected region,

```math
\oint_C \frac{f(z)}{z - z_0}dz = \oint_\gamma \frac{f(z)}{z - z_0}dz = f(z_0)\oint_\gamma\frac{dz}{z - z_0} + \oint_\gamma\frac{f(z) - f(z_0)}{z - z_0}dz.
```

On $`\gamma`$, put $`z - z_0 = \varepsilon e^{i\theta}`$, $`dz = i\varepsilon e^{i\theta}d\theta`$: $`\displaystyle\oint_\gamma\frac{dz}{z - z_0} = \int_0^{2\pi} i\,d\theta = 2\pi i`$.

Since $`f`$ is continuous at $`z_0`$, for any $`\eta > 0`$ choose $`\varepsilon`$ so that $`|f(z) - f(z_0)| < \eta`$ on $`\gamma`$. Then

```math
\left|\oint_\gamma\frac{f(z) - f(z_0)}{z - z_0}dz\right| \le \frac{\eta}{\varepsilon}\cdot 2\pi\varepsilon = 2\pi\eta.
```

The left side does not depend on $`\varepsilon`$, and $`\eta`$ is arbitrary, so it equals $`0`$. Hence $`\oint_C \dfrac{f(z)}{z - z_0}dz = 2\pi i f(z_0)`$. $`\blacksquare`$

### Q3. Evaluate $`\displaystyle\oint_C\frac{dz}{z - a}`$, (i) $`a`$ outside $`C`$, (ii) $`a`$ inside $`C`$.

**(i) $`a`$ outside $`C`$:** $`\dfrac{1}{z - a}`$ is analytic inside and on $`C`$. By Cauchy–Goursat,

```math
\oint_C\frac{dz}{z - a} = 0.
```

**(ii) $`a`$ inside $`C`$:** Take $`f(z) = 1`$ in Cauchy's integral formula:

```math
\oint_C\frac{dz}{z - a} = 2\pi i\cdot f(a) = 2\pi i.
```

### Q4. (Homework) Evaluate $`\displaystyle\oint_C\frac{dz}{(z - a)^n}`$, $`a`$ inside $`C`$.

Deform $`C`$ to the circle $`|z - a| = \varepsilon`$: $`z - a = \varepsilon e^{i\theta}`$, $`dz = i\varepsilon e^{i\theta}d\theta`$.

```math
\oint_C\frac{dz}{(z-a)^n} = \int_0^{2\pi}\frac{i\varepsilon e^{i\theta}}{\varepsilon^n e^{in\theta}}d\theta = i\varepsilon^{1-n}\int_0^{2\pi}e^{i(1-n)\theta}d\theta
```

- If $`n = 1`$: the integral is $`i\cdot 2\pi = 2\pi i`$.
- If $`n \ne 1`$ (integer): $`\displaystyle\int_0^{2\pi}e^{i(1-n)\theta}d\theta = \left[\frac{e^{i(1-n)\theta}}{i(1-n)}\right]_0^{2\pi} = 0`$.

**Answer:**

```math
\oint_C\frac{dz}{(z-a)^n} = \begin{cases}2\pi i, & n = 1\\ 0, & n \ne 1\end{cases}
```

### Q5. Evaluate $`\displaystyle\oint_C\frac{z^3 + 1}{(z-2)^2}dz`$, $`C`$ enclosing $`z = 2`$.

Use the derivative form of Cauchy's formula: $`\displaystyle\oint_C\frac{f(z)}{(z-z_0)^2}dz = 2\pi i\,f'(z_0)`$.

Here $`f(z) = z^3 + 1`$, $`f'(z) = 3z^2`$, $`f'(2) = 12`$.

**Answer:**

```math
\oint_C\frac{z^3+1}{(z-2)^2}dz = 2\pi i\cdot 12 = 24\pi i
```

---

## Topic 5: Harmonic Conjugate & Related Math

### Q1. Show $`f(z) = |z|^2`$ is differentiable only at the origin.

$`f = x^2 + y^2`$, so $`u = x^2 + y^2`$, $`v = 0`$.

```math
u_x = 2x,\quad u_y = 2y,\quad v_x = v_y = 0
```

C–R equations: $`u_x = v_y \Rightarrow 2x = 0`$; $`u_y = -v_x \Rightarrow 2y = 0`$. They hold only at $`(0,0)`$. The partial derivatives are continuous everywhere, so by the sufficient condition $`f`$ is differentiable at $`z = 0`$ and nowhere else. Hence $`f`$ is differentiable only at the origin (and is analytic nowhere, since no neighbourhood of $`0`$ exists in which it is differentiable). $`\blacksquare`$

### Q2. Derive the Cauchy–Riemann equations.

**Cartesian form.** Let $`f(z) = u(x,y) + iv(x,y)`$ be differentiable at $`z = x + iy`$:

```math
f'(z) = \lim_{\Delta z\to0}\frac{f(z+\Delta z) - f(z)}{\Delta z}
```

The limit must be the same along every path.

*Path 1:* $`\Delta z = \Delta x`$ (horizontal, $`\Delta y = 0`$):

```math
f'(z) = \lim_{\Delta x\to0}\left[\frac{u(x+\Delta x,y) - u(x,y)}{\Delta x} + i\frac{v(x+\Delta x,y) - v(x,y)}{\Delta x}\right] = u_x + iv_x
```

*Path 2:* $`\Delta z = i\Delta y`$ (vertical, $`\Delta x = 0`$):

```math
f'(z) = \lim_{\Delta y\to0}\left[\frac{u(x,y+\Delta y) - u(x,y)}{i\Delta y} + i\frac{v(x,y+\Delta y) - v(x,y)}{i\Delta y}\right] = -iu_y + v_y
```

Equating real and imaginary parts:

**Answer:**

```math
u_x = v_y,\qquad u_y = -v_x
```

**Polar form.** Let $`z = re^{i\theta}`$ and $`f = u(r,\theta) + iv(r,\theta)`$. By the chain rule,

```math
\frac{\partial f}{\partial r} = f'(z)\frac{\partial z}{\partial r} = f'(z)e^{i\theta},\qquad \frac{\partial f}{\partial\theta} = f'(z)\,ire^{i\theta}
```

Eliminating $`f'(z)`$:

```math
\frac{\partial f}{\partial\theta} = ir\frac{\partial f}{\partial r}\;\Rightarrow\; u_\theta + iv_\theta = ir(u_r + iv_r) = -rv_r + iru_r
```

Equating real and imaginary parts:

**Answer:**

```math
\frac{\partial u}{\partial r} = \frac1r\frac{\partial v}{\partial\theta},\qquad \frac{\partial u}{\partial\theta} = -r\frac{\partial v}{\partial r}
```

### Q3. Show $`f(z) = \sinh z`$ is analytic.

```math
\sinh(x + iy) = \sinh x\cos y + i\cosh x\sin y
```

$`u = \sinh x\cos y`$, $`v = \cosh x\sin y`$.

```math
u_x = \cosh x\cos y = v_y,\qquad u_y = -\sinh x\sin y = -v_x \;(\text{since } v_x = \sinh x\sin y)
```

The C–R equations hold at every point and the partials are continuous everywhere. Hence $`\sinh z`$ is analytic everywhere (entire). $`\blacksquare`$

### Q4. $`u = \sin x\cosh y`$: show $`u`$ is harmonic; find the harmonic conjugate.

```math
u_x = \cos x\cosh y,\quad u_{xx} = -\sin x\cosh y,\quad u_y = \sin x\sinh y,\quad u_{yy} = \sin x\cosh y
```

$`u_{xx} + u_{yy} = 0`$, so $`u`$ is harmonic.

For the conjugate $`v`$: $`v_y = u_x = \cos x\cosh y`$

```math
v = \cos x\sinh y + \phi(x)
```

```math
v_x = -\sin x\sinh y + \phi'(x) = -u_y = -\sin x\sinh y \;\Rightarrow\; \phi' = 0
```

**Answer:**

```math
v = \cos x\sinh y + c\qquad(\text{here } f(z) = \sin z + ic)
```

### Q5. $`u = x^3 - 3xy^2`$: show harmonic; find the conjugate.

```math
u_x = 3x^2 - 3y^2,\ u_{xx} = 6x;\qquad u_y = -6xy,\ u_{yy} = -6x
```

$`u_{xx} + u_{yy} = 0`$, so $`u`$ is harmonic.

```math
v_y = u_x = 3x^2 - 3y^2 \Rightarrow v = 3x^2y - y^3 + \phi(x)
```

```math
v_x = 6xy + \phi' = -u_y = 6xy \Rightarrow \phi' = 0
```

**Answer:**

```math
v = 3x^2y - y^3 + c\qquad(f(z) = z^3 + ic)
```

### Q6. (Homework)

**(i) $`u = 2x(1 - y) = 2x - 2xy`$**

$`u_x = 2 - 2y`$, $`u_{xx} = 0`$; $`u_y = -2x`$, $`u_{yy} = 0`$. So $`u_{xx} + u_{yy} = 0`$: harmonic.

```math
v_y = u_x = 2 - 2y \Rightarrow v = 2y - y^2 + \phi(x),\qquad v_x = \phi' = -u_y = 2x \Rightarrow \phi = x^2
```

**Answer:**

```math
v = x^2 - y^2 + 2y + c\qquad (f(z) = 2z + iz^2 + ic)
```

**(ii) $`u = e^{-y}\cos x`$**

$`u_x = -e^{-y}\sin x`$, $`u_{xx} = -e^{-y}\cos x`$; $`u_y = -e^{-y}\cos x`$, $`u_{yy} = e^{-y}\cos x`$. Sum is $`0`$: harmonic.

```math
v_y = u_x = -e^{-y}\sin x \Rightarrow v = e^{-y}\sin x + \phi(x)
```

```math
v_x = e^{-y}\cos x + \phi' = -u_y = e^{-y}\cos x \Rightarrow \phi' = 0
```

**Answer:**

```math
v = e^{-y}\sin x + c\qquad (f(z) = e^{iz} + ic)
```

---

## Topic 6: Residue Theorem / Residue Definition

### Q1. Define residue, residue at a simple pole, and residue at a pole of order $`m`$.

If $`f`$ has an isolated singularity at $`z_0`$, its Laurent expansion is

```math
f(z) = \sum_{n=-\infty}^{\infty}a_n(z - z_0)^n.
```

- **Residue:** the coefficient $`a_{-1}`$ of $`(z - z_0)^{-1}`$. Written $`\mathrm{Res}(f, z_0)`$. Equivalently $`\mathrm{Res}(f,z_0) = \dfrac{1}{2\pi i}\oint_C f(z)\,dz`$ for a small circle $`C`$ around $`z_0`$.
- **Simple pole ($`m = 1`$):**
```math
\mathrm{Res}(f, z_0) = \lim_{z\to z_0}(z - z_0)f(z).
```
If $`f = \dfrac{p(z)}{q(z)}`$ with $`q(z_0) = 0`$, $`q'(z_0)\neq0`$, then $`\mathrm{Res} = \dfrac{p(z_0)}{q'(z_0)}`$.
- **Pole of order $`m`$:**
```math
\mathrm{Res}(f, z_0) = \frac{1}{(m-1)!}\lim_{z\to z_0}\frac{d^{m-1}}{dz^{m-1}}\Big[(z - z_0)^m f(z)\Big].
```

### Q2. State and prove Cauchy's residue theorem.

**Statement:** If $`f`$ is analytic inside and on a simple closed contour $`C`$ except for finitely many isolated singularities $`z_1, \dots, z_n`$ inside $`C`$, then

```math
\oint_C f(z)\,dz = 2\pi i\sum_{k=1}^{n}\mathrm{Res}(f, z_k).
```

**Proof.** Enclose each $`z_k`$ in a small circle $`C_k`$, all lying inside $`C`$ and not overlapping. $`f`$ is analytic in the region between $`C`$ and the $`C_k`$'s, so by Cauchy–Goursat for multiply connected regions

```math
\oint_C f\,dz = \sum_{k=1}^n\oint_{C_k}f\,dz.
```

Around $`z_k`$, $`f(z) = \sum a_m^{(k)}(z - z_k)^m`$ converges uniformly on $`C_k`$, so we integrate term by term. By Topic 4 Q4, $`\oint_{C_k}(z - z_k)^m dz = 0`$ for $`m \ne -1`$ and $`= 2\pi i`$ for $`m = -1`$. Hence $`\oint_{C_k}f\,dz = 2\pi i\,a_{-1}^{(k)} = 2\pi i\mathrm{Res}(f,z_k)`$. Summing over $`k`$ gives the theorem. $`\blacksquare`$

### Q3. Residues of $`f(z) = \dfrac{4 - 3z}{z(z-1)^2}`$ at $`z = 0`$ and $`z = 1`$.

**At $`z = 0`$ (simple pole):**

```math
\mathrm{Res}(f,0) = \lim_{z\to0}z\cdot f(z) = \lim_{z\to0}\frac{4 - 3z}{(z-1)^2} = 4
```

**At $`z = 1`$ (pole of order 2):**

```math
\mathrm{Res}(f,1) = \frac{1}{1!}\lim_{z\to1}\frac{d}{dz}\left[(z-1)^2f(z)\right] = \lim_{z\to1}\frac{d}{dz}\left(\frac{4 - 3z}{z}\right)
```

```math
\frac{d}{dz}\left(\frac4z - 3\right) = -\frac{4}{z^2}\;\Rightarrow\;\mathrm{Res}(f,1) = -4
```

**Answer:**

```math
\mathrm{Res}(f,0) = 4,\qquad \mathrm{Res}(f,1) = -4
```

### Q4. Show $`\displaystyle\oint_C\frac{e^{tz}}{z^2+1}dz = 2\pi i\sin t`$, $`C: |z| = 3`$, $`t > 0`$.

Poles: $`z^2 + 1 = 0 \Rightarrow z = \pm i`$, both simple and both inside $`|z| = 3`$.

```math
\mathrm{Res}(f, i) = \frac{e^{tz}}{2z}\Big|_{z=i} = \frac{e^{it}}{2i},\qquad \mathrm{Res}(f,-i) = \frac{e^{-it}}{-2i}
```

```math
\text{Sum} = \frac{e^{it} - e^{-it}}{2i} = \sin t
```

By the residue theorem,

```math
\oint_C\frac{e^{tz}}{z^2+1}dz = 2\pi i\sin t. \qquad \blacksquare
```

### Q5. (Homework) Show $`\displaystyle\int_{-\infty}^{\infty}\frac{dx}{x^2 + a^2} = \frac{\pi}{a}`$, $`a > 0`$.

Consider $`\displaystyle\oint_C\frac{dz}{z^2 + a^2}`$ where $`C`$ is the real segment $`[-R, R]`$ closed by the upper semicircle $`\Gamma_R`$: $`|z| = R`$, $`R > a`$.

Inside $`C`$ the only pole is $`z = ia`$ (simple):

```math
\mathrm{Res} = \frac{1}{2z}\Big|_{z = ia} = \frac{1}{2ia}
```

```math
\oint_C = 2\pi i\cdot\frac{1}{2ia} = \frac{\pi}{a}
```

On $`\Gamma_R`$: $`|z^2 + a^2| \ge R^2 - a^2`$, so

```math
\left|\int_{\Gamma_R}\frac{dz}{z^2+a^2}\right| \le \frac{\pi R}{R^2 - a^2}\to0\ \text{ as } R\to\infty.
```

Letting $`R\to\infty`$:

```math
\int_{-\infty}^{\infty}\frac{dx}{x^2+a^2} = \frac{\pi}{a}. \qquad \blacksquare
```

### Q6. (Homework) Show $`\displaystyle\int_0^\infty\frac{dx}{x^4 + 1} = \frac{\pi}{2\sqrt2}`$.

The integrand is even, so $`\displaystyle\int_0^\infty = \frac12\int_{-\infty}^\infty`$. Take the closed contour (real axis + upper semicircle $`\Gamma_R`$).

Poles of $`\dfrac{1}{z^4+1}`$: $`z = e^{i\pi/4},\ e^{3i\pi/4},\ e^{5i\pi/4},\ e^{7i\pi/4}`$. Those in the upper half-plane: $`z_1 = e^{i\pi/4}`$, $`z_2 = e^{3i\pi/4}`$.

At a simple pole, with $`z_k^4 = -1`$:

```math
\mathrm{Res} = \frac{1}{4z_k^3} = \frac{z_k}{4z_k^4} = -\frac{z_k}{4}
```

```math
\mathrm{Res}(z_1) + \mathrm{Res}(z_2) = -\frac14\left(e^{i\pi/4} + e^{3i\pi/4}\right) = -\frac14\cdot\frac{(1+i) + (-1+i)}{\sqrt2} = -\frac{i\sqrt2}{4}
```

```math
\oint_C = 2\pi i\cdot\left(-\frac{i\sqrt2}{4}\right) = \frac{\pi\sqrt2}{2} = \frac{\pi}{\sqrt2}
```

On $`\Gamma_R`$, $`\left|\displaystyle\int_{\Gamma_R}\right| \le \dfrac{\pi R}{R^4 - 1}\to0`$. Therefore $`\displaystyle\int_{-\infty}^\infty\frac{dx}{x^4+1} = \frac{\pi}{\sqrt2}`$ and

```math
\int_0^\infty\frac{dx}{x^4+1} = \frac{\pi}{2\sqrt2}. \qquad \blacksquare
```

---

# Chapter 2: Vector Calculus

## Topic 1: Geometrical Interpretation of Triple Product

### Q1. Explain the geometrical interpretation of $`\bar a\cdot(\bar b\times\bar c)`$.

![Parallelepiped with edges a, b, c](../../assets/triple-product.svg)

Let $`\bar a, \bar b, \bar c`$ be three non-coplanar vectors drawn from a common point $`O`$. They are the edges of a **parallelepiped**.

- The base is the parallelogram formed by $`\bar b`$ and $`\bar c`$. Its area is $`|\bar b\times\bar c|`$, and $`\bar b\times\bar c`$ is normal to the base. Let $`\hat n = \dfrac{\bar b\times\bar c}{|\bar b\times\bar c|}`$.
- The height of the parallelepiped is the length of the projection of $`\bar a`$ on $`\hat n`$: $`h = |\bar a\cdot\hat n|`$.

```math
V = (\text{area of base})\times h = |\bar b\times\bar c|\cdot\frac{|\bar a\cdot(\bar b\times\bar c)|}{|\bar b\times\bar c|} = |\bar a\cdot(\bar b\times\bar c)|
```

So **$`\bar a\cdot(\bar b\times\bar c)`$ is the volume of the parallelepiped** with edges $`\bar a, \bar b, \bar c`$ (positive if $`\bar a,\bar b,\bar c`$ form a right-handed system, negative otherwise).

**Consequences:**
- $`[\bar a\ \bar b\ \bar c] = [\bar b\ \bar c\ \bar a] = [\bar c\ \bar a\ \bar b]`$ (cyclic permutation keeps the same volume).
- $`\bar a,\bar b,\bar c`$ are **coplanar** iff $`\bar a\cdot(\bar b\times\bar c) = 0`$ (volume is zero).
- The volume of the tetrahedron with these edges is $`\tfrac16|[\bar a\ \bar b\ \bar c]|`$.

---

## Topic 2: Solenoidal, Coplanar and Irrotational Vectors

### Q1. (Homework) $`\bar a = 2\hat i - \hat j + \hat k`$, $`\bar b = \hat i + 2\hat j - 3\hat k`$, $`\bar c = 3\hat i + a\hat j + 5\hat k`$. Find $`a`$ if coplanar.

Coplanar $`\iff [\bar a\ \bar b\ \bar c] = 0`$:

```math
\begin{vmatrix}2 & -1 & 1\\ 1 & 2 & -3\\ 3 & a & 5\end{vmatrix} = 2(10 + 3a) + 1(5 + 9) + 1(a - 6) = 28 + 7a = 0
```

**Answer:**

```math
a = -4
```

### Q2. (Homework) Show $`\bar V = (x+3y)\hat i + (y-3z)\hat j + (x-2z)\hat k`$ is solenoidal.

A vector field is solenoidal if $`\nabla\cdot\bar V = 0`$.

```math
\nabla\cdot\bar V = \frac{\partial}{\partial x}(x + 3y) + \frac{\partial}{\partial y}(y - 3z) + \frac{\partial}{\partial z}(x - 2z) = 1 + 1 - 2 = 0
```

Hence $`\bar V`$ is solenoidal. $`\blacksquare`$

### Q3. $`\bar F = (x^2 - y^2 + x)\hat i - (2xy + y)\hat j`$. Is it irrotational? Find the scalar potential.

```math
\nabla\times\bar F = \begin{vmatrix}\hat i & \hat j & \hat k\\ \partial_x & \partial_y & \partial_z\\ x^2 - y^2 + x & -(2xy+y) & 0\end{vmatrix} = \hat k\left[\frac{\partial}{\partial x}(-2xy - y) - \frac{\partial}{\partial y}(x^2 - y^2 + x)\right]
```

```math
= \hat k[-2y + 2y] = \bar 0
```

So $`\bar F`$ is **irrotational**, and $`\bar F = \nabla\phi`$ for some scalar potential $`\phi`$:

```math
\phi_x = x^2 - y^2 + x \Rightarrow \phi = \frac{x^3}{3} - xy^2 + \frac{x^2}{2} + g(y)
```

```math
\phi_y = -2xy + g'(y) = -(2xy + y) \Rightarrow g' = -y \Rightarrow g = -\frac{y^2}{2}
```

**Answer:**

```math
\phi = \frac{x^3}{3} + \frac{x^2}{2} - xy^2 - \frac{y^2}{2} + c
```

### Q4. $`\bar F = (2xz^3 + 6y)\hat i + (6x - 2yz)\hat j + (3x^2z^2 - y^2)\hat k`$. Show $`\bar F`$ is conservative.

$`\bar F`$ is conservative iff $`\nabla\times\bar F = \bar 0`$.

```math
\hat i\text{: } \frac{\partial F_3}{\partial y} - \frac{\partial F_2}{\partial z} = -2y - (-2y) = 0
```

```math
\hat j\text{: } \frac{\partial F_1}{\partial z} - \frac{\partial F_3}{\partial x} = 6xz^2 - 6xz^2 = 0
```

```math
\hat k\text{: } \frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} = 6 - 6 = 0
```

$`\nabla\times\bar F = \bar 0`$ everywhere in $`\mathbb{R}^3`$ (simply connected), so $`\bar F`$ is conservative. $`\blacksquare`$

(Its potential is $`\phi = x^2z^3 + 6xy - y^2z`$.)

---

## Topic 3: Vector Identities

### Q1. Prove $`\bar a\times(\bar b\times\bar c) = \bar b(\bar a\cdot\bar c) - \bar c(\bar a\cdot\bar b)`$.

Let $`\bar a = (a_1,a_2,a_3)`$ etc. $`\bar b\times\bar c = (b_2c_3 - b_3c_2,\ b_3c_1 - b_1c_3,\ b_1c_2 - b_2c_1)`$.

The $`\hat i`$-component of the LHS:

```math
a_2(b_1c_2 - b_2c_1) - a_3(b_3c_1 - b_1c_3) = b_1(a_2c_2 + a_3c_3) - c_1(a_2b_2 + a_3b_3)
```

Adding and subtracting $`a_1b_1c_1`$:

```math
= b_1(a_1c_1 + a_2c_2 + a_3c_3) - c_1(a_1b_1 + a_2b_2 + a_3b_3) = b_1(\bar a\cdot\bar c) - c_1(\bar a\cdot\bar b)
```

This is the $`\hat i`$-component of RHS. The $`\hat j`$ and $`\hat k`$ components follow by cyclic permutation of indices. Hence the identity holds. $`\blacksquare`$

### Q2. Prove $`[\bar A + \bar B,\ \bar B + \bar C,\ \bar C + \bar A] = 2[\bar A\ \bar B\ \bar C]`$.

```math
(\bar B + \bar C)\times(\bar C + \bar A) = \bar B\times\bar C + \bar B\times\bar A + \bar C\times\bar C + \bar C\times\bar A = \bar B\times\bar C + \bar B\times\bar A + \bar C\times\bar A
```

Dot with $`\bar A + \bar B`$:

```math
\bar A\cdot(\bar B\times\bar C) + \underbrace{\bar A\cdot(\bar B\times\bar A)}_{0} + \underbrace{\bar A\cdot(\bar C\times\bar A)}_{0} + \underbrace{\bar B\cdot(\bar B\times\bar C)}_{0} + \underbrace{\bar B\cdot(\bar B\times\bar A)}_{0} + \bar B\cdot(\bar C\times\bar A)
```

(a triple product with a repeated vector is zero.)

```math
= [\bar A\ \bar B\ \bar C] + [\bar B\ \bar C\ \bar A] = 2[\bar A\ \bar B\ \bar C]. \qquad \blacksquare
```

### Q3. Prove $`\hat i\times(\bar a\times\hat i) + \hat j\times(\bar a\times\hat j) + \hat k\times(\bar a\times\hat k) = 2\bar a`$.

By BAC–CAB: $`\hat i\times(\bar a\times\hat i) = \bar a(\hat i\cdot\hat i) - \hat i(\hat i\cdot\bar a) = \bar a - a_1\hat i`$. Similarly for $`\hat j,\hat k`$.

```math
\text{LHS} = 3\bar a - (a_1\hat i + a_2\hat j + a_3\hat k) = 3\bar a - \bar a = 2\bar a. \qquad \blacksquare
```

---

## Topic 4: Line Integral, Surface Integral & Scalar Potential

### Q1. Define line integral, work done, circulation, surface integral, volume integral.

- **Line integral:** for a vector field $`\bar F`$ and curve $`C`$, $`\displaystyle\int_C\bar F\cdot d\bar r = \int_C(F_1dx + F_2dy + F_3dz)`$.
- **Work done:** the work done by a force $`\bar F`$ moving a particle along $`C`$ is $`W = \displaystyle\int_C\bar F\cdot d\bar r`$.
- **Circulation:** the line integral around a closed curve, $`\displaystyle\oint_C\bar F\cdot d\bar r`$.
- **Surface integral (flux):** $`\displaystyle\iint_S\bar F\cdot\hat n\,dS`$, where $`\hat n`$ is the unit normal to the surface $`S`$.
- **Volume integral:** $`\displaystyle\iiint_V\phi\,dV`$ (scalar) or $`\displaystyle\iiint_V\bar F\,dV`$ (vector) over a region $`V`$.

### Q2. Directional derivative of $`\mathrm{div}\bar u`$ at $`(1,2,2)`$ along the outward normal of $`x^2+y^2+z^2 = 9`$, $`\bar u = x^4\hat i + y^4\hat j + z^4\hat k`$.

```math
\mathrm{div}\bar u = 4(x^3 + y^3 + z^3)
```

```math
\nabla(\mathrm{div}\bar u) = 12(x^2\hat i + y^2\hat j + z^2\hat k) \;\Rightarrow\; \text{at }(1,2,2):\ 12\hat i + 48\hat j + 48\hat k
```

The point lies on the sphere ($`1 + 4 + 4 = 9`$). Outward normal: $`\nabla(x^2+y^2+z^2) = 2(x,y,z) = (2,4,4)`$, unit vector $`\hat n = \dfrac{\hat i + 2\hat j + 2\hat k}{3}`$.

**Answer:**

```math
\text{D.D.} = \frac{12 + 96 + 96}{3} = \frac{204}{3} = 68
```

### Q3. (Homework) Find $`\lambda,\mu`$ so that $`\lambda x^2 - \mu yz = (\lambda+2)x`$ and $`4x^2y + z^3 = 4`$ intersect orthogonally at $`(1,-1,2)`$.

The point lies on the second surface: $`4(1)(-1) + 8 = 4`$ ✓. It must lie on the first:

```math
\lambda(1) - \mu(-1)(2) = \lambda + 2 \Rightarrow \lambda + 2\mu = \lambda + 2 \Rightarrow \mu = 1.
```

Normals: $`\phi_1 = \lambda x^2 - \mu yz - (\lambda+2)x`$, $`\ \nabla\phi_1 = (2\lambda x - \lambda - 2,\ -\mu z,\ -\mu y)`$; at the point $`= (\lambda - 2,\ -2\mu,\ \mu) = (\lambda-2,\ -2,\ 1)`$.

$`\phi_2 = 4x^2y + z^3 - 4`$, $`\ \nabla\phi_2 = (8xy,\ 4x^2,\ 3z^2)`$; at the point $`= (-8,\ 4,\ 12)`$.

Orthogonal surfaces: $`\nabla\phi_1\cdot\nabla\phi_2 = 0`$:

```math
-8(\lambda - 2) - 8 + 12 = 0 \Rightarrow 20 - 8\lambda = 0
```

**Answer:**

```math
\lambda = \tfrac52,\qquad \mu = 1
```

### Q4. (Homework) For $`r = (x^2+y^2+z^2)^{1/2}`$, prove $`\nabla r^n = nr^{n-2}\vec r`$.

$`r^2 = x^2 + y^2 + z^2 \Rightarrow 2r\dfrac{\partial r}{\partial x} = 2x \Rightarrow \dfrac{\partial r}{\partial x} = \dfrac xr`$, and similarly for $`y, z`$.

```math
\nabla r^n = \hat i\,nr^{n-1}\frac{\partial r}{\partial x} + \hat j\,nr^{n-1}\frac{\partial r}{\partial y} + \hat k\,nr^{n-1}\frac{\partial r}{\partial z} = nr^{n-1}\cdot\frac{x\hat i + y\hat j + z\hat k}{r} = nr^{n-2}\vec r. \qquad \blacksquare
```

### Q5. (Homework) Scalar potential of $`\bar A = y^2\hat i + 2xy\hat j - z^2\hat k`$.

$`\nabla\times\bar A`$: $`\hat i`$: $`0 - 0 = 0`$; $`\hat j`$: $`0 - 0 = 0`$; $`\hat k`$: $`2y - 2y = 0`$. So $`\bar A = \nabla f`$.

```math
f_x = y^2 \Rightarrow f = xy^2 + g(y,z)
```

```math
f_y = 2xy + g_y = 2xy \Rightarrow g_y = 0 \Rightarrow g = g(z)
```

```math
f_z = g'(z) = -z^2 \Rightarrow g = -\frac{z^3}{3}
```

**Answer:**

```math
f = xy^2 - \frac{z^3}{3} + c
```

### Q6. Evaluate $`\oint_C(x\,dy - y\,dx)`$ around the square $`(0,0),(1,0),(1,1),(0,1)`$ counter-clockwise.

*By Green's theorem* ($`\phi = -y`$, $`\psi = x`$):

```math
\oint_C(x\,dy - y\,dx) = \iint_R\left(\frac{\partial x}{\partial x} - \frac{\partial(-y)}{\partial y}\right)dx\,dy = \iint_R 2\,dx\,dy = 2\times1 = 2
```

*Direct check:*

| Side | Path | Value |
|---|---|---|
| bottom | $`y = 0,\ dy = 0`$ | $`0`$ |
| right | $`x = 1,\ dx = 0`$: $`\int_0^1dy`$ | $`1`$ |
| top | $`y = 1,\ dy = 0`$: $`-\int_1^0dx`$ | $`1`$ |
| left | $`x = 0,\ dx = 0`$ | $`0`$ |

**Answer:**

```math
\oint_C(x\,dy - y\,dx) = 2
```

### Q7. $`\bar F = (\sin y)\hat i + x(1+\cos y)\hat j`$; evaluate the line integral over $`x^2 + y^2 = a^2`$, $`z = 0`$.

$`\bar F\cdot d\bar r = \sin y\,dx + x(1 + \cos y)\,dy`$. By Green's theorem (circle traversed counter-clockwise):

```math
\oint_C = \iint_R\left[\frac{\partial}{\partial x}\big(x(1+\cos y)\big) - \frac{\partial}{\partial y}(\sin y)\right]dx\,dy = \iint_R[(1 + \cos y) - \cos y]\,dx\,dy = \iint_R dx\,dy
```

**Answer:**

```math
\oint_C\bar F\cdot d\bar r = \pi a^2
```

### Q8. (Homework) Compute $`\int_C\bar F\cdot d\bar r`$.

*The field $`\bar F`$ and curve $`C`$ are not given in the question bank; the standard method is shown with a model example.*

**Method.**
1. Parametrise $`C`$: $`x = x(t),\ y = y(t),\ z = z(t)`$, $`t_1\le t\le t_2`$.
2. Substitute: $`\bar F\cdot d\bar r = \bar F\cdot\dfrac{d\bar r}{dt}dt`$.
3. Integrate over $`t`$.
4. If $`\bar F = \nabla\phi`$ (conservative), shortcut: $`\displaystyle\int_C\bar F\cdot d\bar r = \phi(B) - \phi(A)`$.

**Example.** $`\bar F = x^2\hat i + xy\hat j`$ along $`y = x`$ from $`(0,0)`$ to $`(1,1)`$. Here $`y = x`$, $`dy = dx`$:

```math
\int_C(x^2dx + xy\,dy) = \int_0^1(x^2 + x^2)\,dx = \frac23.
```

### Q9. Evaluate $`\iint_S\bar F\cdot\hat n\,dS`$, $`\bar F = 4xz\hat i - y^2\hat j + yz\hat k`$, $`S`$ the closed surface of the unit cube.

By the divergence theorem:

```math
\nabla\cdot\bar F = 4z - 2y + y = 4z - y
```

```math
\iint_S\bar F\cdot\hat n\,dS = \int_0^1\!\!\int_0^1\!\!\int_0^1(4z - y)\,dx\,dy\,dz = 4\cdot\frac12 - \frac12 = \frac32
```

**Answer:**

```math
\iint_S\bar F\cdot\hat n\,dS = \frac32
```

### Q10. (Homework) Evaluate $`\iint_S\bar F\cdot\hat n\,dS`$, $`\bar F = yz\hat i + zx\hat j + xy\hat k`$, $`S`$ the part of $`x^2+y^2+z^2 = a^2`$ in the first octant.

On the sphere, $`\hat n = \dfrac{x\hat i + y\hat j + z\hat k}{a}`$.

```math
\bar F\cdot\hat n = \frac{xyz + xyz + xyz}{a} = \frac{3xyz}{a}
```

Use spherical coordinates: $`x = a\sin\varphi\cos\theta,\ y = a\sin\varphi\sin\theta,\ z = a\cos\varphi`$, $`dS = a^2\sin\varphi\,d\varphi\,d\theta`$, with $`0\le\varphi\le\frac\pi2`$, $`0\le\theta\le\frac\pi2`$.

```math
xyz = a^3\sin^2\varphi\cos\varphi\sin\theta\cos\theta
```

```math
\iint_S\bar F\cdot\hat n\,dS = \frac3a\cdot a^3\cdot a^2\int_0^{\pi/2}\sin^3\varphi\cos\varphi\,d\varphi\int_0^{\pi/2}\sin\theta\cos\theta\,d\theta = 3a^4\cdot\frac14\cdot\frac12
```

**Answer:**

```math
\iint_S\bar F\cdot\hat n\,dS = \frac{3a^4}{8}
```

*(Check: $`\nabla\cdot\bar F = 0`$, so the flux through the three coordinate quarter-discs is $`-\tfrac{3a^4}{8}`$, giving zero for the closed octant.)*

---

## Topic 5: Vector Differential Proofs

### Q1. Prove $`\mathrm{div}(\mathrm{curl}\bar A) = 0`$.

Let $`\bar A = A_1\hat i + A_2\hat j + A_3\hat k`$ with continuous second partial derivatives.

```math
\mathrm{curl}\bar A = \left(\frac{\partial A_3}{\partial y} - \frac{\partial A_2}{\partial z}\right)\hat i + \left(\frac{\partial A_1}{\partial z} - \frac{\partial A_3}{\partial x}\right)\hat j + \left(\frac{\partial A_2}{\partial x} - \frac{\partial A_1}{\partial y}\right)\hat k
```

```math
\nabla\cdot(\nabla\times\bar A) = \frac{\partial^2A_3}{\partial x\partial y} - \frac{\partial^2A_2}{\partial x\partial z} + \frac{\partial^2A_1}{\partial y\partial z} - \frac{\partial^2A_3}{\partial y\partial x} + \frac{\partial^2A_2}{\partial z\partial x} - \frac{\partial^2A_1}{\partial z\partial y}
```

Mixed partials are equal, so every pair cancels:

```math
\nabla\cdot(\nabla\times\bar A) = 0. \qquad \blacksquare
```

### Q2. Prove $`\mathrm{curl}(\mathrm{grad}\phi) = 0`$.

```math
\nabla\phi = \phi_x\hat i + \phi_y\hat j + \phi_z\hat k
```

```math
\nabla\times(\nabla\phi) = \begin{vmatrix}\hat i & \hat j & \hat k\\ \partial_x & \partial_y & \partial_z\\ \phi_x & \phi_y & \phi_z\end{vmatrix} = (\phi_{zy} - \phi_{yz})\hat i + (\phi_{xz} - \phi_{zx})\hat j + (\phi_{yx} - \phi_{xy})\hat k
```

Since $`\phi`$ has continuous second derivatives, $`\phi_{zy} = \phi_{yz}`$ etc. Hence $`\nabla\times(\nabla\phi) = \bar 0`$. $`\blacksquare`$

---

## Topic 6: Green's, Stokes' and Gauss' Theorems

### Q1. State and prove Green's theorem in a plane.

**Statement:** Let $`R`$ be a closed region in the $`xy`$-plane bounded by a simple closed curve $`C`$ (positively oriented), and let $`\phi(x,y)`$, $`\psi(x,y)`$ be continuous with continuous first partial derivatives in $`R`$. Then

```math
\oint_C(\phi\,dx + \psi\,dy) = \iint_R\left(\frac{\partial\psi}{\partial x} - \frac{\partial\phi}{\partial y}\right)dx\,dy.
```

**Proof** (for a region that is simple in both directions).

*Part 1: $`\oint_C\phi\,dx = -\iint_R\dfrac{\partial\phi}{\partial y}dx\,dy`$.* Let $`R`$ be $`a\le x\le b`$, $`y_1(x)\le y\le y_2(x)`$, where $`C_1: y = y_1(x)`$ is the lower curve and $`C_2: y = y_2(x)`$ the upper curve.

```math
\iint_R\frac{\partial\phi}{\partial y}dx\,dy = \int_a^b\big[\phi(x, y_2) - \phi(x, y_1)\big]dx = \int_a^b\phi(x,y_2)\,dx - \int_a^b\phi(x,y_1)\,dx
```

With counter-clockwise orientation, $`C_1`$ is traversed from $`a`$ to $`b`$ and $`C_2`$ from $`b`$ to $`a`$ (the vertical sides contribute nothing to $`\int\phi\,dx`$):

```math
\oint_C\phi\,dx = \int_a^b\phi(x,y_1)\,dx - \int_a^b\phi(x,y_2)\,dx = -\iint_R\frac{\partial\phi}{\partial y}dx\,dy.
```

*Part 2: $`\oint_C\psi\,dy = \iint_R\dfrac{\partial\psi}{\partial x}dx\,dy`$.* Describe $`R`$ as $`c\le y\le d`$, $`x_1(y)\le x\le x_2(y)`$:

```math
\iint_R\frac{\partial\psi}{\partial x}dx\,dy = \int_c^d\big[\psi(x_2,y) - \psi(x_1,y)\big]dy = \oint_C\psi\,dy
```

(the right curve $`x_2`$ is traversed upward, the left curve $`x_1`$ downward).

Adding Part 1 and Part 2 gives Green's theorem. For a general region, divide it into sub-regions of this type; the line integrals along interior cuts cancel. $`\blacksquare`$

### Q2. Use Green's theorem to evaluate $`\oint_C[(\sin y)\hat i + x(1+\cos y)\hat j]\cdot d\bar r`$, $`C: x^2 + y^2 = a^2`$.

Here $`\phi = \sin y`$, $`\psi = x(1 + \cos y)`$.

```math
\frac{\partial\psi}{\partial x} - \frac{\partial\phi}{\partial y} = (1 + \cos y) - \cos y = 1
```

```math
\oint_C = \iint_R 1\,dx\,dy = \text{Area of the circle}
```

**Answer:**

```math
\oint_C\bar F\cdot d\bar r = \pi a^2
```

### Q3. State Gauss' divergence theorem and Stokes' theorem.

**Gauss' divergence theorem:** If $`V`$ is a volume bounded by a closed surface $`S`$ and $`\bar F`$ is a vector field with continuous first partial derivatives in $`V`$, then

```math
\iint_S\bar F\cdot\hat n\,dS = \iiint_V\nabla\cdot\bar F\,dV,
```

where $`\hat n`$ is the outward unit normal to $`S`$. (Flux through a closed surface = integral of the divergence over the enclosed volume.)

**Stokes' theorem:** If $`S`$ is an open surface bounded by a simple closed curve $`C`$ and $`\bar F`$ has continuous first partial derivatives on $`S`$, then

```math
\oint_C\bar F\cdot d\bar r = \iint_S(\nabla\times\bar F)\cdot\hat n\,dS,
```

where $`C`$ is traversed in the positive direction relative to $`\hat n`$ (right-hand rule). (Circulation around $`C`$ = flux of the curl through $`S`$.)

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

# Chapter 4: Ordinary Differential Equations (ODE)

## Topic 1: Definition & Formation of Differential Equations

### Q1. Define differential equation, ODE and PDE with examples.

- **Differential equation (DE):** an equation containing derivatives (or differentials) of one or more dependent variables with respect to one or more independent variables.
- **Ordinary differential equation (ODE):** a DE with derivatives with respect to a **single** independent variable. Example: $`\dfrac{dy}{dx} + 3y = e^x`$.
- **Partial differential equation (PDE):** a DE with partial derivatives with respect to **two or more** independent variables. Example: $`\dfrac{\partial^2u}{\partial x^2} + \dfrac{\partial^2u}{\partial y^2} = 0`$.

### Q2. Define order and degree with examples.

- **Order:** the order of the highest-order derivative present. 
- **Degree:** the power of the highest-order derivative, after the equation has been made free of radicals and fractions in its derivatives.

Examples: $`\dfrac{d^2y}{dx^2} + \left(\dfrac{dy}{dx}\right)^3 = x`$ has order 2 and degree 1. $`\left(\dfrac{d^3y}{dx^3}\right)^2 + \dfrac{dy}{dx} = 0`$ has order 3 and degree 2.

### Q3. (Homework) Give examples.

**(i) Linear, second order, first degree:** $`\dfrac{d^2y}{dx^2} + 3\dfrac{dy}{dx} + 2y = \sin x`$.

**(ii) Non-linear, second order, second degree:** $`\left(\dfrac{d^2y}{dx^2}\right)^2 + \left(\dfrac{dy}{dx}\right)^3 + y = 0`$ (non-linear because of the powers of derivatives).

### Q4. (Homework) Order and degree.

**(i)** $`\dfrac{d^2y}{dx^2} + a^2x = 0`$: **order 2, degree 1.**

**(ii)** $`\left[1 + \left(\dfrac{dy}{dx}\right)^2\right]^{3/2} = \dfrac{d^2y}{dx^2}`$. Squaring to remove the fractional power: $`\left[1 + \left(\dfrac{dy}{dx}\right)^2\right]^3 = \left(\dfrac{d^2y}{dx^2}\right)^2`$. **Order 2, degree 2.**

**(iii)** $`x^2\left(\dfrac{d^2y}{dx^2}\right)^3 + y\left(\dfrac{dy}{dx}\right)^4 + y^4 = 0`$: **order 2, degree 3.**

### Q5. (Homework) Form the differential equation.

**(i) $`y = ae^{3x} + be^x`$.**

```math
y' = 3ae^{3x} + be^x,\qquad y'' = 9ae^{3x} + be^x
```

$`y' - y = 2ae^{3x}`$ and $`y'' - y' = 6ae^{3x} = 3(y' - y)`$. Hence

**Answer:**

```math
\frac{d^2y}{dx^2} - 4\frac{dy}{dx} + 3y = 0
```

**(ii) $`y = e^x(A\cos x + B\sin x)`$.**

Let $`w = e^x(-A\sin x + B\cos x)`$. Then $`y' = y + w`$ and $`w' = w - y`$ (differentiating $`w`$ and collecting terms). So

```math
y'' = y' + w' = y' + w - y = y' + (y' - y) - y = 2y' - 2y
```

**Answer:**

```math
\frac{d^2y}{dx^2} - 2\frac{dy}{dx} + 2y = 0
```

### Q6. General solution vs particular solution.

- **General solution:** a solution containing as many **arbitrary constants** as the order of the equation. It represents a family of curves. Example: $`y = Ce^{x}`$ for $`y' = y`$.
- **Particular solution:** the solution obtained from the general solution by assigning definite values to the arbitrary constants (usually using initial/boundary conditions). Example: $`y = 2e^x`$ for $`y' = y`$, $`y(0) = 2`$.

---

## Topic 2: Separation of Variables & Homogeneous Differential Equations

### Q1. Solve $`x^3\left(x\dfrac{dy}{dx} + y\right) = -\sec(xy)`$, $`y(1) = \dfrac\pi2`$.

Put $`v = xy`$. Then $`\dfrac{dv}{dx} = x\dfrac{dy}{dx} + y`$, so

```math
x^3\frac{dv}{dx} = -\sec v\;\Rightarrow\;\cos v\,dv = -\frac{dx}{x^3}
```

```math
\sin v = \frac{1}{2x^2} + C\;\Rightarrow\;\sin(xy) = \frac1{2x^2} + C
```

At $`x = 1`$, $`y = \dfrac\pi2`$: $`\sin\dfrac\pi2 = 1 = \dfrac12 + C\Rightarrow C = \dfrac12`$.

**Answer:**

```math
\sin(xy) = \frac{1}{2x^2} + \frac12 = \frac{1 + x^2}{2x^2}
```

### Q2. (Homework) Solve $`\dfrac{dy}{dx} = 1 + \tan(y - x)`$.

Put $`v = y - x`$, $`\dfrac{dv}{dx} = \dfrac{dy}{dx} - 1 = \tan v`$:

```math
\cot v\,dv = dx\;\Rightarrow\;\ln|\sin v| = x + \ln C
```

**Answer:**

```math
\sin(y - x) = Ce^x
```

### Q3. Solve $`(2x^2 + 3y^2 - 7)x\,dx - (3x^2 + 2y^2 - 8)y\,dy = 0`$.

Put $`u = x^2`$, $`w = y^2`$: $`x\,dx = \tfrac12du`$, $`y\,dy = \tfrac12dw`$.

```math
(2u + 3w - 7)\,du = (3u + 2w - 8)\,dw
```

Solve $`2u + 3w - 7 = 0`$ and $`3u + 2w - 8 = 0`$: $`u = 2`$, $`w = 1`$. Shift: $`u = X + 2`$, $`w = Y + 1`$:

```math
(2X + 3Y)\,dX = (3X + 2Y)\,dY\quad(\text{homogeneous})
```

Put $`Y = vX`$, $`dY = v\,dX + X\,dv`$:

```math
(2 + 3v)\,dX = (3 + 2v)(v\,dX + X\,dv)\;\Rightarrow\;2(1 - v^2)\,dX = (3 + 2v)X\,dv
```

```math
\frac{dX}{X} = \frac{3 + 2v}{2(1-v)(1+v)}dv = \frac12\left[\frac{5/2}{1-v} + \frac{1/2}{1+v}\right]dv
```

Integrating: $`\ln X = -\tfrac54\ln|1 - v| + \tfrac14\ln|1 + v| + \ln c`$, so

```math
X^4 = c\,\frac{1+v}{(1-v)^5}\;\Rightarrow\;(X - Y)^5 = c(X + Y)
```

Substituting $`X = x^2 - 2`$, $`Y = y^2 - 1`$:

**Answer:**

```math
(x^2 - y^2 - 1)^5 = c\,(x^2 + y^2 - 3)
```

### Q4. (Homework) Solve $`\dfrac{dy}{dx} = (4x + y + 1)^2`$.

Put $`v = 4x + y + 1`$, $`\dfrac{dv}{dx} = 4 + \dfrac{dy}{dx} = 4 + v^2`$:

```math
\frac{dv}{v^2 + 4} = dx\;\Rightarrow\;\frac12\tan^{-1}\frac v2 = x + c
```

**Answer:**

```math
4x + y + 1 = 2\tan(2x + C)
```

### Q5. Define homogeneous differential equation and state its working rules.

A DE $`\dfrac{dy}{dx} = \dfrac{M(x,y)}{N(x,y)}`$ is **homogeneous** if $`M`$ and $`N`$ are homogeneous functions of the same degree $`n`$ (i.e. $`M(\lambda x,\lambda y) = \lambda^nM(x,y)`$), equivalently $`\dfrac{dy}{dx} = f\!\left(\dfrac yx\right)`$.

**Working rules:**
1. Put $`y = vx`$, so $`\dfrac{dy}{dx} = v + x\dfrac{dv}{dx}`$ (if $`N`$ is simpler, put $`x = vy`$).
2. The equation becomes $`x\dfrac{dv}{dx} = f(v) - v`$, in which the variables separate: $`\dfrac{dv}{f(v) - v} = \dfrac{dx}{x}`$.
3. Integrate both sides.
4. Replace $`v`$ by $`\dfrac yx`$ and simplify.

### Q6. Solve $`x(x - y)\,dy + y^2dx = 0`$, $`y(1) = 1`$.

```math
\frac{dy}{dx} = \frac{-y^2}{x(x-y)} = \frac{y^2}{x(y - x)}
```

Put $`y = vx`$: $`v + x\dfrac{dv}{dx} = \dfrac{v^2}{v - 1}`$

```math
x\frac{dv}{dx} = \frac{v^2}{v-1} - v = \frac{v}{v-1}\;\Rightarrow\;\frac{v - 1}{v}dv = \frac{dx}{x}
```

```math
v - \ln v = \ln x + c\;\Rightarrow\;\frac yx - \ln y + \ln x = \ln x + c\;\Rightarrow\;\frac yx - \ln y = c
```

At $`x = 1`$, $`y = 1`$: $`c = 1`$.

**Answer:**

```math
\frac yx - \ln y = 1
```

### Q7. Solve $`x\dfrac{dy}{dx} = y(\log y - \log x + 1)`$.

```math
\frac{dy}{dx} = \frac yx\left(\ln\frac yx + 1\right)
```

Put $`y = vx`$: $`v + x\dfrac{dv}{dx} = v(\ln v + 1)\Rightarrow x\dfrac{dv}{dx} = v\ln v`$

```math
\frac{dv}{v\ln v} = \frac{dx}{x}\;\Rightarrow\;\ln|\ln v| = \ln x + \ln C\;\Rightarrow\;\ln v = Cx
```

**Answer:**

```math
y = x\,e^{Cx}
```

### Q8. (Homework)

**(i) $`(y^2 + 2xy)\,dx = (2x^2 + 3xy)\,dy`$.**

```math
\frac{dy}{dx} = \frac{y^2 + 2xy}{2x^2 + 3xy}
```

Put $`y = vx`$: $`v + x\dfrac{dv}{dx} = \dfrac{v^2 + 2v}{2 + 3v}`$

```math
x\frac{dv}{dx} = \frac{v^2 + 2v - 2v - 3v^2}{2 + 3v} = \frac{-2v^2}{2 + 3v}\;\Rightarrow\;\left(\frac{2}{v^2} + \frac3v\right)dv = -\frac{2\,dx}{x}
```

```math
-\frac2v + 3\ln v = -2\ln x + c\;\Rightarrow\;\ln(v^3x^2) = \frac2v + c
```

With $`v = \dfrac yx`$, $`v^3x^2 = \dfrac{y^3}{x}`$:

**Answer:**

```math
y^3 = Cx\,e^{2x/y}
```

**(ii) $`\dfrac{dy}{dx} = \dfrac yx + x\sin\dfrac yx`$.**

Put $`y = vx`$: $`v + x\dfrac{dv}{dx} = v + x\sin v\Rightarrow\dfrac{dv}{dx} = \sin v`$

```math
\frac{dv}{\sin v} = dx\;\Rightarrow\;\ln\tan\frac v2 = x + \ln C
```

**Answer:**

```math
\tan\frac{y}{2x} = Ce^x
```

---

## Topic 3: Ice Melt & Radiation / Cooling Problems

### Q1. Radium decays at a rate proportional to the amount present. If 5% disappears in 50 years, how much remains after 100 years?

Let $`Q`$ be the amount at time $`t`$ (years), $`Q_0`$ the original amount.

```math
\frac{dQ}{dt} = -kQ\;\Rightarrow\;Q = Q_0e^{-kt}
```

After 50 years, $`95\%`$ remains: $`Q_0e^{-50k} = 0.95\,Q_0\Rightarrow e^{-50k} = 0.95`$.

After 100 years:

```math
Q = Q_0e^{-100k} = Q_0(e^{-50k})^2 = Q_0(0.95)^2 = 0.9025\,Q_0
```

**Answer:**

```math
90.25\%\text{ of the original amount remains.}
```

### Q2. Newton's law of cooling: air at $`25^\circ`$C; body cools from $`100^\circ`$C to $`75^\circ`$C in 1 minute. Temperature after 3 minutes?

```math
\frac{d\theta}{dt} = -k(\theta - 25)\;\Rightarrow\;\theta = 25 + Ce^{-kt}
```

$`\theta(0) = 100\Rightarrow C = 75`$. $`\theta(1) = 75\Rightarrow 50 = 75e^{-k}\Rightarrow e^{-k} = \dfrac23`$.

```math
\theta(3) = 25 + 75\left(\frac23\right)^3 = 25 + \frac{200}{9} = \frac{425}{9}
```

**Answer:**

```math
\theta(3)\approx47.2^\circ\text{C}
```

### Q3. (Homework) Ice melts at a rate proportional to the amount present; half melts in 30 min. How much remains after 2 hours?

```math
\frac{dQ}{dt} = -kQ\;\Rightarrow\;Q = Q_0e^{-kt}
```

At $`t = 30`$ min: $`e^{-30k} = \dfrac12`$. After 2 hours $`= 120`$ min $`= 4\times30`$ min:

```math
Q = Q_0\left(e^{-30k}\right)^4 = Q_0\left(\frac12\right)^4
```

**Answer:**

```math
Q = \frac{Q_0}{16}\ (6.25\%\text{ of the ice remains})
```

---

## Topic 4: Linear Differential Equations

### Q1. Define linear DE and integrating factor.

A **linear first-order DE** has the form

```math
\frac{dy}{dx} + P(x)y = Q(x),
```

where $`y`$ and $`\dfrac{dy}{dx}`$ appear only to the first power and are not multiplied together.

**Integrating factor:** $`\text{I.F.} = e^{\int P\,dx}`$. Multiplying the equation by I.F. makes the left side $`\dfrac{d}{dx}(y\cdot\text{I.F.})`$, so the solution is

```math
y\cdot\text{I.F.} = \int Q\cdot\text{I.F.}\,dx + C.
```

(Similarly for $`\dfrac{dx}{dy} + P(y)x = Q(y)`$, with I.F. $`= e^{\int P\,dy}`$.)

### Q2. Solve $`\dfrac{dy}{dx} + y\tan x = \cos x`$, $`y(0) = 0`$.

$`P = \tan x`$, $`\ \text{I.F.} = e^{\int\tan x\,dx} = e^{\ln\sec x} = \sec x`$.

```math
y\sec x = \int\cos x\sec x\,dx = \int dx = x + C\;\Rightarrow\;y = (x + C)\cos x
```

$`y(0) = 0\Rightarrow C = 0`$.

**Answer:**

```math
y = x\cos x
```

### Q3. Solve $`x\log x\dfrac{dy}{dx} + y = 2\log x`$.

Divide by $`x\ln x`$: $`\dfrac{dy}{dx} + \dfrac{y}{x\ln x} = \dfrac2x`$.

$`\text{I.F.} = e^{\int\frac{dx}{x\ln x}} = e^{\ln\ln x} = \ln x`$.

```math
y\ln x = \int\frac2x\ln x\,dx = (\ln x)^2 + C
```

**Answer:**

```math
y = \ln x + \frac{C}{\ln x}
```

### Q4. (Homework B)

**(i) $`\sec x\dfrac{dy}{dx} = y + \sin x`$.**

```math
\frac{dy}{dx} - y\cos x = \sin x\cos x,\qquad \text{I.F.} = e^{-\int\cos x\,dx} = e^{-\sin x}
```

```math
ye^{-\sin x} = \int\sin x\cos x\,e^{-\sin x}dx
```

Put $`t = \sin x`$: $`\displaystyle\int te^{-t}dt = -te^{-t} - e^{-t} = -e^{-t}(t+1)`$.

```math
ye^{-\sin x} = -e^{-\sin x}(\sin x + 1) + C
```

**Answer:**

```math
y = Ce^{\sin x} - (1 + \sin x)
```

**(ii) $`x\dfrac{dy}{dx} + 2y = x^2\log x`$.**

```math
\frac{dy}{dx} + \frac2xy = x\ln x,\qquad\text{I.F.} = e^{2\ln x} = x^2
```

```math
yx^2 = \int x^3\ln x\,dx = \frac{x^4}{4}\ln x - \frac{x^4}{16} + C
```

**Answer:**

```math
y = \frac{x^2}{4}\ln x - \frac{x^2}{16} + \frac{C}{x^2}
```

### Q5. (Homework A)

**(i) $`x\left(\dfrac{dy}{dx} + y\right) = 1 - y`$.**

```math
x\frac{dy}{dx} + (x+1)y = 1\;\Rightarrow\;\frac{dy}{dx} + \left(1 + \frac1x\right)y = \frac1x
```

$`\text{I.F.} = e^{\int(1 + 1/x)dx} = e^{x + \ln x} = xe^x`$.

```math
y\,xe^x = \int\frac1x\cdot xe^xdx = e^x + C
```

**Answer:**

```math
y = \frac1x + \frac{Ce^{-x}}{x}
```

**(ii) $`(1 + y^2)\,dx = (\tan^{-1}y - x)\,dy`$.**

Treat $`x`$ as the dependent variable:

```math
\frac{dx}{dy} + \frac{x}{1+y^2} = \frac{\tan^{-1}y}{1+y^2},\qquad\text{I.F.} = e^{\tan^{-1}y}
```

```math
xe^{\tan^{-1}y} = \int\frac{\tan^{-1}y}{1+y^2}e^{\tan^{-1}y}dy
```

Put $`t = \tan^{-1}y`$: $`\displaystyle\int te^tdt = (t - 1)e^t + C`$.

**Answer:**

```math
x = \tan^{-1}y - 1 + Ce^{-\tan^{-1}y}
```

---

## Topic 5: Exact Differential Equations

### Q1. Define exact DE and state the condition of exactness.

A DE $`M(x,y)\,dx + N(x,y)\,dy = 0`$ is **exact** if there exists a function $`u(x,y)`$ with $`du = M\,dx + N\,dy`$, i.e. $`M = \dfrac{\partial u}{\partial x}`$, $`N = \dfrac{\partial u}{\partial y}`$.

**Condition:** 

```math
\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}.
```

**Solution:** 

```math
\int M\,dx\ (y\text{ constant}) + \int(\text{terms of }N\text{ not containing }x)\,dy = C.
```

### Q2. Find the primitive of $`(ax + hy + g)\,dx + (hx + by + f)\,dy = 0`$.

$`M = ax + hy + g`$, $`N = hx + by + f`$. $`\dfrac{\partial M}{\partial y} = h = \dfrac{\partial N}{\partial x}`$, so the equation is exact.

```math
\int M\,dx = \frac{ax^2}{2} + hxy + gx;\qquad\text{terms of }N\text{ free of }x:\ by + f\ \Rightarrow\ \int = \frac{by^2}{2} + fy
```

**Answer:**

```math
ax^2 + 2hxy + by^2 + 2gx + 2fy = C
```

### Q3. (Homework B)

**(i) $`[1 + \log(xy)]\,dx + \left(1 + \dfrac xy\right)dy = 0`$.**

$`M = 1 + \ln(xy)`$, $`\ \dfrac{\partial M}{\partial y} = \dfrac1y`$; $`\ N = 1 + \dfrac xy`$, $`\ \dfrac{\partial N}{\partial x} = \dfrac1y`$. Exact.

```math
\int M\,dx = \int(1 + \ln x + \ln y)\,dx = x + (x\ln x - x) + x\ln y = x\ln(xy)
```

Terms of $`N`$ free of $`x`$: $`1`$, giving $`\int1\,dy = y`$.

**Answer:**

```math
x\ln(xy) + y = C
```

**(ii) $`(2xy + e^y)\,dx + (x^2 + xe^y)\,dy = 0`$.**

$`\dfrac{\partial M}{\partial y} = 2x + e^y = \dfrac{\partial N}{\partial x}`$. Exact.

```math
\int M\,dx = x^2y + xe^y;\qquad N\text{ has no term free of }x.
```

**Answer:**

```math
x^2y + xe^y = C
```

---

## Topic 6: Higher Order Linear Differential Equations

### Q1. General form; complementary function and particular integral.

The general linear DE of order $`n`$ with constant coefficients:

```math
a_0\frac{d^ny}{dx^n} + a_1\frac{d^{n-1}y}{dx^{n-1}} + \cdots + a_ny = f(x),\quad\text{i.e. } \phi(D)\,y = f(x),\ D = \frac d{dx}.
```

The complete solution is

```math
y = y_c + y_p.
```

- **Complementary function $`y_c`$:** the general solution of the homogeneous equation $`\phi(D)y = 0`$ (contains $`n`$ arbitrary constants). Found from the auxiliary equation $`\phi(m) = 0`$:
  - distinct real roots $`m_1, m_2`$: $`y_c = c_1e^{m_1x} + c_2e^{m_2x}`$;
  - repeated root $`m`$: $`y_c = (c_1 + c_2x)e^{mx}`$;
  - complex roots $`\alpha\pm i\beta`$: $`y_c = e^{\alpha x}(c_1\cos\beta x + c_2\sin\beta x)`$.
- **Particular integral $`y_p`$:** any particular solution of $`\phi(D)y = f(x)`$, i.e. $`y_p = \dfrac{1}{\phi(D)}f(x)`$ (no arbitrary constants).

### Q2. (Homework) General solutions.

**(i) $`(D^2 - 4D + 13)y = 0`$.** $`m^2 - 4m + 13 = 0\Rightarrow m = \dfrac{4\pm\sqrt{16 - 52}}{2} = 2\pm3i`$.

**Answer:**

```math
y = e^{2x}(c_1\cos3x + c_2\sin3x)
```

**(ii) $`(D^2 - 3D + 2)y = 0`$.** $`(m-1)(m-2) = 0\Rightarrow m = 1, 2`$.

**Answer:**

```math
y = c_1e^{x} + c_2e^{2x}
```

**(iii) $`(D^2 + 6D + 9)y = 0`$.** $`(m+3)^2 = 0\Rightarrow m = -3,-3`$.

**Answer:**

```math
y = (c_1 + c_2x)e^{-3x}
```

**(iv) $`\dfrac{d^2y}{dx^2} - 2\dfrac{dy}{dx} + 2y = 0`$.** $`m^2 - 2m + 2 = 0\Rightarrow m = 1\pm i`$.

**Answer:**

```math
y = e^x(c_1\cos x + c_2\sin x)
```

---

## Topic 7: Undetermined Coefficients & Variation of Parameters

### Q1. (Homework B) Complete primitive.

**(i) $`(D^3 - 3D^2 + 3D - 1)y = xe^x + e^x`$.**

Auxiliary equation: $`m^3 - 3m^2 + 3m - 1 = (m-1)^3 = 0`$, so $`m = 1,1,1`$.

```math
y_c = (c_1 + c_2x + c_3x^2)e^x
```

Particular integral, with $`\phi(D) = (D-1)^3`$ and the shift rule $`\dfrac{1}{\phi(D)}e^{ax}V = e^{ax}\dfrac{1}{\phi(D + a)}V`$:

```math
y_p = \frac{1}{(D-1)^3}e^x(x + 1) = e^x\frac{1}{D^3}(x + 1) = e^x\left(\frac{x^4}{24} + \frac{x^3}{6}\right)
```

**Answer:**

```math
y = e^x\left[c_1 + c_2x + c_3x^2 + \frac{x^3}{6} + \frac{x^4}{24}\right]
```

**(ii) $`\dfrac{d^2y}{dx^2} - 9\dfrac{dy}{dx} + 20y = 20x + \cos5x`$.**

Auxiliary equation: $`m^2 - 9m + 20 = (m-4)(m-5) = 0`$:

```math
y_c = c_1e^{4x} + c_2e^{5x}
```

*P.I. for $`20x`$:*

```math
\frac{1}{20 - 9D + D^2}\,20x = \frac1{20}\left[1 - \frac{9D - D^2}{20}\right]^{-1}20x = \frac{1}{20}\left[1 + \frac{9D}{20}\right]20x = x + \frac{9}{20}
```

*P.I. for $`\cos5x`$:* replace $`D^2\to-25`$:

```math
\frac{1}{(-25) - 9D + 20}\cos5x = \frac{-1}{5 + 9D}\cos5x = \frac{-(5 - 9D)}{25 - 81D^2}\cos5x = \frac{-(5 - 9D)}{25 + 2025}\cos5x
```

```math
= -\frac{5\cos5x + 45\sin5x}{2050} = -\frac{\cos5x + 9\sin5x}{410}
```

**Answer:**

```math
y = c_1e^{4x} + c_2e^{5x} + x + \frac9{20} - \frac{1}{410}\left(\cos5x + 9\sin5x\right)
```

---

*End of question bank solutions.*
