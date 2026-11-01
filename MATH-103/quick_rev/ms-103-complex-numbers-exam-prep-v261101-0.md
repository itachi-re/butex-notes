# Complex Numbers — Exam Prep

**Source:** `Complex number solutions by Adnan (Ctec 19).pdf`  
**Purpose:** exam-ready rewrite of the supplied 17-page solution set.

---

## 1. Triangle inequality

**Question.** If $z_1, z_2$ are complex numbers, prove that

$$
\lvert z_1+z_2\rvert \le \lvert z_1\rvert+\lvert z_2\rvert .
$$

**Proof.** Let $z_1=a+ib$ and $z_2=c+id$. Then

$$
\lvert z_1+z_2\rvert^2=(a+c)^2+(b+d)^2=\lvert z_1\rvert^2+\lvert z_2\rvert^2+2(ac+bd).
$$

By Cauchy–Schwarz,

$$
ac+bd\le\sqrt{a^2+b^2}\,\sqrt{c^2+d^2}=\lvert z_1\rvert\lvert z_2\rvert .
$$

Hence

$$
\lvert z_1+z_2\rvert^2\le\left(\lvert z_1\rvert+\lvert z_2\rvert\right)^2 .
$$

Taking positive square roots:

$$
\boxed{\lvert z_1+z_2\rvert\le\lvert z_1\rvert+\lvert z_2\rvert}
$$

---

## 2. Reverse triangle inequality

**Question.** Prove

$$
\boxed{\lvert z_1-z_2\rvert\ge\big\lvert\,\lvert z_1\rvert-\lvert z_2\rvert\,\big\rvert}
$$

**Proof.** From the triangle inequality,

$$
\lvert z_1\rvert=\lvert (z_1-z_2)+z_2\rvert\le\lvert z_1-z_2\rvert+\lvert z_2\rvert ,
$$

so

$$
\lvert z_1\rvert-\lvert z_2\rvert\le\lvert z_1-z_2\rvert .
$$

Interchanging $z_1$ and $z_2$,

$$
\lvert z_2\rvert-\lvert z_1\rvert\le\lvert z_1-z_2\rvert .
$$

Together these give

$$
\boxed{\big\lvert\,\lvert z_1\rvert-\lvert z_2\rvert\,\big\rvert\le\lvert z_1-z_2\rvert}
$$

---

## 3. Modulus of the quotient of conjugates

**Question.** If $z\neq 0$, prove

$$
\left\lvert\frac{z}{\bar z}\right\rvert=1 .
$$

**Proof.** Let $z=x+iy$, so $\bar z=x-iy$. Then

$$
\left\lvert\frac{z}{\bar z}\right\rvert=\frac{\lvert z\rvert}{\lvert\bar z\rvert}.
$$

But $\lvert\bar z\rvert=\sqrt{x^2+y^2}=\lvert z\rvert$. Therefore

$$
\boxed{\left\lvert\frac{z}{\bar z}\right\rvert=1}
$$

---

## 4. De Moivre's theorem

**Statement.** For any real $\theta$ and integer $n$,

$$
\boxed{(\cos\theta+i\sin\theta)^n=\cos n\theta+i\sin n\theta}
$$

**Proof for positive integer $n$ (induction).**

- *Base case* $n=1$: obvious.
- *Inductive step:* assume $(\cos\theta+i\sin\theta)^n=\cos n\theta+i\sin n\theta$. Multiply by $\cos\theta+i\sin\theta$:

$$
(\cos n\theta+i\sin n\theta)(\cos\theta+i\sin\theta)
=\cos(n+1)\theta+i\sin(n+1)\theta ,
$$

using the angle-addition formulas. So the result holds for $n+1$, and by induction for every positive integer.

**Zero and negative $n$.** For $n=0$ both sides equal $1$. For $n=-m$ with $m>0$:

$$
(\cos\theta+i\sin\theta)^{-m}=\frac{1}{\cos m\theta+i\sin m\theta}
=\cos m\theta-i\sin m\theta=\cos(-m\theta)+i\sin(-m\theta).
$$

---

## 5. Product and quotient in polar form

Let

$$
z_1=r_1(\cos\theta_1+i\sin\theta_1),\qquad z_2=r_2(\cos\theta_2+i\sin\theta_2).
$$

### (a) Product

$$
z_1z_2=r_1r_2\big[(\cos\theta_1\cos\theta_2-\sin\theta_1\sin\theta_2)+i(\sin\theta_1\cos\theta_2+\cos\theta_1\sin\theta_2)\big].
$$

Using the angle-addition formulas:

$$
\boxed{z_1z_2=r_1r_2\big[\cos(\theta_1+\theta_2)+i\sin(\theta_1+\theta_2)\big]}
$$

### (b) Quotient

$$
\frac{z_1}{z_2}=\frac{r_1}{r_2}\cdot\frac{\cos\theta_1+i\sin\theta_1}{\cos\theta_2+i\sin\theta_2}.
$$

Multiply numerator and denominator by $\cos\theta_2-i\sin\theta_2$. The denominator becomes $\cos^2\theta_2+\sin^2\theta_2=1$, and the numerator becomes $\cos(\theta_1-\theta_2)+i\sin(\theta_1-\theta_2)$. Hence

$$
\boxed{\frac{z_1}{z_2}=\frac{r_1}{r_2}\big[\cos(\theta_1-\theta_2)+i\sin(\theta_1-\theta_2)\big]}
$$

---

## 6. Euler's formula

**Question.** Prove Euler's formula.

**Proof.** From the exponential series

$$
e^x=1+x+\frac{x^2}{2!}+\frac{x^3}{3!}+\cdots
$$

put $x=i\theta$:

$$
e^{i\theta}=1+i\theta-\frac{\theta^2}{2!}-i\frac{\theta^3}{3!}+\frac{\theta^4}{4!}+\cdots
$$

Separate real and imaginary parts:

$$
e^{i\theta}=\left(1-\frac{\theta^2}{2!}+\frac{\theta^4}{4!}-\cdots\right)+i\left(\theta-\frac{\theta^3}{3!}+\frac{\theta^5}{5!}-\cdots\right).
$$

These are the series for $\cos\theta$ and $\sin\theta$, so

$$
\boxed{e^{i\theta}=\cos\theta+i\sin\theta}
$$

Replacing $\theta$ by $-\theta$ and adding or subtracting:

$$
\boxed{\cos\theta=\frac{e^{i\theta}+e^{-i\theta}}{2}},\qquad
\boxed{\sin\theta=\frac{e^{i\theta}-e^{-i\theta}}{2i}}
$$

---

## 7. Trigonometric identities from De Moivre / Euler

### $\sin 3\theta$

Expand $(\cos\theta+i\sin\theta)^3$ and compare with $\cos3\theta+i\sin3\theta$. The imaginary part gives

$$
\sin3\theta=3\cos^2\theta\sin\theta-\sin^3\theta=3\sin\theta(1-\sin^2\theta)-\sin^3\theta ,
$$

so

$$
\boxed{\sin3\theta=3\sin\theta-4\sin^3\theta}
$$

### $\cos 2\theta$

The real part of $(\cos\theta+i\sin\theta)^2$ gives

$$
\boxed{\cos2\theta=\cos^2\theta-\sin^2\theta}
$$

and, using $\sin^2\theta+\cos^2\theta=1$,

$$
\boxed{\cos2\theta=2\cos^2\theta-1=1-2\sin^2\theta}
$$

---

## 8. Cauchy–Riemann equations (Cartesian form)

Let $f(z)=u(x,y)+iv(x,y)$ be differentiable at $z_0$. Approaching along the real direction gives $f'(z_0)=u_x+iv_x$; approaching along the imaginary direction gives $f'(z_0)=v_y-iu_y$. Equating the two:

$$
\boxed{\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}},\qquad
\boxed{\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}}
$$

These are the **Cauchy–Riemann (C-R) equations**. They are *necessary* for differentiability.

---

## 9. Cauchy–Riemann equations (polar form)

For $z=re^{i\theta}$ and $f(z)=u(r,\theta)+iv(r,\theta)$:

$$
\boxed{\frac{\partial u}{\partial r}=\frac{1}{r}\frac{\partial v}{\partial\theta}},\qquad
\boxed{\frac{\partial v}{\partial r}=-\frac{1}{r}\frac{\partial u}{\partial\theta}}
$$

---

## 10. Differentiable ⇒ continuous

**Question.** Prove that if $f$ is differentiable at $z_0$, then $f$ is continuous at $z_0$.

**Proof.** By definition,

$$
f'(z_0)=\lim_{z\to z_0}\frac{f(z)-f(z_0)}{z-z_0}.
$$

Write

$$
f(z)-f(z_0)=\frac{f(z)-f(z_0)}{z-z_0}\,(z-z_0).
$$

Taking the limit as $z\to z_0$:

$$
\lim_{z\to z_0}\big[f(z)-f(z_0)\big]=f'(z_0)\cdot 0=0 ,
$$

so $\lim_{z\to z_0}f(z)=f(z_0)$. Therefore

$$
\boxed{f\text{ differentiable at }z_0\ \Longrightarrow\ f\text{ continuous at }z_0}
$$

---

## 11. Continuous everywhere but nowhere analytic

**Question.** Show that $f(z)=xy+iy$ is continuous everywhere but not analytic anywhere.

**Solution.** Here $u=xy$ and $v=y$. Both are continuous everywhere, so $f$ is continuous everywhere.

The partial derivatives are

$$
u_x=y,\quad u_y=x,\quad v_x=0,\quad v_y=1 .
$$

C-R requires

$$
u_x=v_y\Rightarrow y=1,\qquad u_y=-v_x\Rightarrow x=0 .
$$

These hold only at the single point $(0,1)$, not in any neighbourhood. Analyticity needs differentiability in a whole neighbourhood, so

$$
\boxed{f(z)=xy+iy\ \text{is continuous everywhere but nowhere analytic.}}
$$

---

## 12. C-R equations satisfied on a set with no interior

**Question.** Show that $f(z)=x^2+iy^3$ is not analytic anywhere, although the C-R equations hold at the origin.

**Solution.** Here $u=x^2$ and $v=y^3$, so

$$
u_x=2x,\quad u_y=0,\quad v_x=0,\quad v_y=3y^2 .
$$

C-R requires

$$
2x=3y^2\qquad\text{and}\qquad 0=-0 .
$$

The second equation always holds. The first holds only on the parabola $2x=3y^2$, which contains no open disc, so $f$ is not analytic at any point.

At the origin, $u_x=v_y=0$ and $u_y=-v_x=0$, so C-R holds at $(0,0)$ — but that alone does **not** give analyticity.

$$
\boxed{\text{C-R at a point (or on a curve) is not sufficient for analyticity.}}
$$

---

## 13. Continuous, C-R holds, but not differentiable at the origin

Consider

$$
f(z)=
\begin{cases}
\dfrac{(x^3-3xy^2)+i(y^3-3x^2y)}{x^2+y^2}, & (x,y)\neq(0,0),\\[6pt]
0, & (x,y)=(0,0).
\end{cases}
$$

Note that $x^3-3xy^2=\operatorname{Re}(z^3)$ and $y^3-3x^2y=-\operatorname{Im}(z^3)$, so for $z\ne0$

$$
f(z)=\frac{\overline{z^3}}{\lvert z\rvert^2}=\frac{\bar z^{\,2}}{z}.
$$

**Continuity at $0$.** $\lvert f(z)\rvert=\lvert z\rvert\to0$, so $f$ is continuous at the origin.

**Partial derivatives at $0$** (straight from the definition):

$$
u(x,0)=x\Rightarrow u_x(0,0)=1,\qquad v(0,y)=y\Rightarrow v_y(0,0)=1,
$$

$$
u(0,y)=0\Rightarrow u_y(0,0)=0,\qquad v(x,0)=0\Rightarrow v_x(0,0)=0 .
$$

So $u_x=v_y$ and $u_y=-v_x$: **the C-R equations hold at the origin.**

**Not differentiable.** The difference quotient is

$$
\frac{f(h)-f(0)}{h}=\frac{\bar h^{\,2}}{h^2}=e^{-4i\theta}\qquad(h=\rho e^{i\theta}),
$$

which depends on the direction of approach:

- along the $x$-axis ($\theta=0$) and the $y$-axis ($\theta=\pi/2$) the limit is $1$;
- along the line $y=x$ ($\theta=\pi/4$) the limit is $-1$.

So the limit does not exist:

$$
\boxed{f'(0)\ \text{does not exist}}
$$

**Exam lesson.** Continuity + existence of partial derivatives + C-R at a point still does **not** guarantee differentiability. (C-R plus *continuous* partial derivatives would.)

---

## 14. Winding number

**Definition.** The winding number of a closed curve $C$ about a point $a$ (not on $C$) is

$$
\boxed{n(C,a)=\frac{1}{2\pi i}\oint_C\frac{dz}{z-a}}
$$

It counts how many times $C$ winds around $a$, with orientation:

- counterclockwise once: $n=1$
- clockwise once: $n=-1$
- no encirclement: $n=0$

---

## 15. Properties of the winding number

For a closed curve $C$:

1. If $a$ and $b$ lie in the same connected component of the complement of $C$, then $n(C,a)=n(C,b)$.
2. Reversing orientation changes the sign:

$$
\boxed{n(-C,a)=-n(C,a)}
$$

3. The winding number is additive under concatenation of curves.

---

## 16. Cauchy's theorem

**Statement.** If $f(z)$ is analytic in a simply connected domain $D$, then for every closed contour $C$ in $D$,

$$
\boxed{\oint_C f(z)\,dz=0}
$$

**Proof using Green's theorem** (assuming $f'$ is continuous; Goursat's argument removes this assumption).

Write $f=u+iv$ and $dz=dx+i\,dy$. Then

$$
f(z)\,dz=(u+iv)(dx+i\,dy)=(u\,dx-v\,dy)+i\,(v\,dx+u\,dy),
$$

so

$$
\oint_C f(z)\,dz=\oint_C(u\,dx-v\,dy)+i\oint_C(v\,dx+u\,dy).
$$

By Green's theorem, with $R$ the region enclosed by $C$,

$$
\oint_C(u\,dx-v\,dy)=\iint_R(-v_x-u_y)\,dA,\qquad
\oint_C(v\,dx+u\,dy)=\iint_R(u_x-v_y)\,dA .
$$

By the C-R equations $u_x=v_y$ and $u_y=-v_x$, both integrands vanish, so

$$
\boxed{\oint_C f(z)\,dz=0}
$$

---

## 17. Cauchy's integral formula

**Statement.** If $f(z)$ is analytic inside and on a simple closed contour $C$ (positively oriented), and $a$ lies inside $C$, then

$$
\boxed{f(a)=\frac{1}{2\pi i}\oint_C\frac{f(z)}{z-a}\,dz}
$$

Equivalently,

$$
\boxed{\oint_C\frac{f(z)}{z-a}\,dz=2\pi i\,f(a)}
$$

---

## 18. Cauchy's integral formula for derivatives

For $n\ge0$,

$$
\boxed{f^{(n)}(a)=\frac{n!}{2\pi i}\oint_C\frac{f(z)}{(z-a)^{n+1}}\,dz}
$$

Thus

$$
\boxed{\oint_C\frac{f(z)}{(z-a)^{n+1}}\,dz=\frac{2\pi i}{n!}\,f^{(n)}(a)}
$$

---

## 19. Example: derivative form

**Question.** Evaluate $\displaystyle\oint_C\frac{z}{(z-a)^2}\,dz$, where $a$ lies inside $C$.

**Solution.** Take $f(z)=z$ and $n=1$:

$$
\oint_C\frac{f(z)}{(z-a)^2}\,dz=2\pi i\,f'(a).
$$

Since $f'(z)=1$,

$$
\boxed{\oint_C\frac{z}{(z-a)^2}\,dz=2\pi i}
$$

---

## 20. Example: integral formula

**Question.** Evaluate $\displaystyle\oint_C\frac{e^z}{z+1}\,dz$, where $z=-1$ lies inside $C$.

**Solution.** Take $f(z)=e^z$ and $a=-1$. By Cauchy's integral formula,

$$
\oint_C\frac{e^z}{z+1}\,dz=2\pi i\,e^{-1},
$$

so

$$
\boxed{\oint_C\frac{e^z}{z+1}\,dz=\frac{2\pi i}{e}}
$$

---

## 21. Morera's theorem

**Statement.** If $f$ is continuous in a domain $D$ and

$$
\oint_C f(z)\,dz=0
$$

for every closed contour $C$ in $D$, then $f$ is analytic in $D$.

**Proof idea.** Because every closed-contour integral vanishes, the integral is path-independent, so we may define

$$
F(z)=\int_{z_0}^{z}f(\zeta)\,d\zeta .
$$

For $h\to0$,

$$
\frac{F(z+h)-F(z)}{h}=\frac{1}{h}\int_z^{z+h}f(\zeta)\,d\zeta .
$$

By continuity of $f$, the right side tends to $f(z)$, so $F'(z)=f(z)$. Hence $F$ is analytic. The derivative of an analytic function is analytic (Cauchy's integral formula for derivatives), so $f=F'$ is analytic.

$$
\boxed{\text{Morera's theorem proved.}}
$$

---

## 22. Last-minute formula sheet

### Modulus

$$
\boxed{\lvert z\rvert=\sqrt{x^2+y^2}}\qquad
\boxed{\lvert z_1z_2\rvert=\lvert z_1\rvert\lvert z_2\rvert}
$$

$$
\boxed{\left\lvert\frac{z_1}{z_2}\right\rvert=\frac{\lvert z_1\rvert}{\lvert z_2\rvert}}\qquad
\boxed{\lvert\bar z\rvert=\lvert z\rvert}
$$

### Conjugate

$$
\boxed{\bar z=x-iy}\qquad\boxed{z\bar z=\lvert z\rvert^2}
$$

### Polar form

$$
\boxed{z=r(\cos\theta+i\sin\theta)}
$$

### Euler

$$
\boxed{e^{i\theta}=\cos\theta+i\sin\theta}
$$

### De Moivre

$$
\boxed{(\cos\theta+i\sin\theta)^n=\cos n\theta+i\sin n\theta}
$$

### C-R equations

$$
\boxed{u_x=v_y,\qquad u_y=-v_x}
$$

### Cauchy's theorem

$$
\boxed{\oint_C f(z)\,dz=0}
$$

### Cauchy's integral formula

$$
\boxed{f(a)=\frac{1}{2\pi i}\oint_C\frac{f(z)}{z-a}\,dz}
$$

### Derivative formula

$$
\boxed{f^{(n)}(a)=\frac{n!}{2\pi i}\oint_C\frac{f(z)}{(z-a)^{n+1}}\,dz}
$$

### Winding number

$$
\boxed{n(C,a)=\frac{1}{2\pi i}\oint_C\frac{dz}{z-a}}
$$

---

## 23. Three-hour priority order

### Highest priority

1. De Moivre's theorem
2. Euler's formula
3. Cauchy–Riemann equations
4. Cauchy's theorem
5. Cauchy's integral formula
6. Cauchy's derivative formula

### Then practise

- Triangle inequality
- Reverse triangle inequality
- Polar multiplication/division
- Continuity vs differentiability
- C-R examples

### Final 15-minute memorisation

$$
e^{i\theta}=\cos\theta+i\sin\theta
$$

$$
u_x=v_y,\qquad u_y=-v_x
$$

$$
\oint_C f(z)\,dz=0
$$

$$
\oint_C\frac{f(z)}{z-a}\,dz=2\pi i\,f(a)
$$

$$
\oint_C\frac{f(z)}{(z-a)^{n+1}}\,dz=\frac{2\pi i}{n!}\,f^{(n)}(a)
$$

These five formulas are extremely high-value for a short exam revision.
