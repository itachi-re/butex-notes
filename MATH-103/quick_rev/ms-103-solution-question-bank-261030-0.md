# Math-II Question Bank: Exam-Style Solutions (Part 0 of 3)

Solutions to the Question Bank (Minarul Sir's class notes), split by chapter so GitHub can render every equation.

**Complex Variable** · [Vector Calculus](ms-103-solution-question-bank-261030-1.md) · [Laplace Transform](ms-103-solution-question-bank-261030-2.md) · [Ordinary Differential Equations](ms-103-solution-question-bank-261030-3.md)

> **Notes on the source questions**
> - Ch1 T1 Q3 is read as $`\left(\dfrac{2+i}{3-i}\right)^2`$ (the exponent was detached in the PDF; this reading gives a clean answer).
> - Ch1 T3 Q3 is read as $`\sin^3\theta`$ (the "3" is a power on the left side).

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

**Complex Variable** · [Vector Calculus](ms-103-solution-question-bank-261030-1.md) · [Laplace Transform](ms-103-solution-question-bank-261030-2.md) · [Ordinary Differential Equations](ms-103-solution-question-bank-261030-3.md)
