# Laplace Transform — Solved Question Bank

## Basic / Direct Laplace Transforms

## Q1. Exponential Function

**Answer:**

By definition,

$$
\mathcal{L}\{e^{at}\}=\int_0^\infty e^{-st}e^{at}\,dt=\int_0^\infty e^{-(s-a)t}\,dt=\left[\frac{-e^{-(s-a)t}}{s-a}\right]_0^\infty=\frac{1}{s-a},\qquad s>a.
$$

$$
\boxed{\mathcal{L}\{e^{at}\}=\dfrac{1}{s-a}}
$$

---

## Q2. Negative Exponential Function

**Answer:**

Replacing $a$ by $-a$ in the previous result,

$$
\mathcal{L}\{e^{-at}\}=\int_0^\infty e^{-st}e^{-at}\,dt=\int_0^\infty e^{-(s+a)t}\,dt=\frac{1}{s+a},\qquad s>-a.
$$

$$
\boxed{\mathcal{L}\{e^{-at}\}=\dfrac{1}{s+a}}
$$

---

## Q3. Sine Function

**Answer:**

Using $\sin at=\dfrac{e^{iat}-e^{-iat}}{2i}$ and the exponential transform,

$$
\mathcal{L}\{\sin at\}=\frac{1}{2i}\left(\frac{1}{s-ia}-\frac{1}{s+ia}\right)=\frac{1}{2i}\cdot\frac{2ia}{s^2+a^2}=\frac{a}{s^2+a^2}.
$$

$$
\boxed{\mathcal{L}\{\sin at\}=\dfrac{a}{s^2+a^2}}
$$

---

## Q4. Hyperbolic Cosine

**Answer:**

Using $\cosh at=\dfrac{e^{at}+e^{-at}}{2}$,

$$
\mathcal{L}\{\cosh at\}=\frac{1}{2}\left(\frac{1}{s-a}+\frac{1}{s+a}\right)=\frac{1}{2}\cdot\frac{2s}{s^2-a^2}=\frac{s}{s^2-a^2},\qquad s>|a|.
$$

$$
\boxed{\mathcal{L}\{\cosh at\}=\dfrac{s}{s^2-a^2}}
$$

---

## Q5. Function $t$

**Answer:**

By definition, integrating by parts with $u=t,\ dv=e^{-st}dt$:

$$
\mathcal{L}\{t\}=\int_0^\infty te^{-st}\,dt=\left[-\frac{t}{s}e^{-st}\right]_0^\infty+\frac{1}{s}\int_0^\infty e^{-st}\,dt=0+\frac{1}{s}\cdot\frac{1}{s}=\frac{1}{s^2}.
$$

$$
\boxed{\mathcal{L}\{t\}=\dfrac{1}{s^2}}
$$

---

## Q6. Power Function

**Answer:**

By definition,

$$
\mathcal{L}\{t^n\}=\int_0^\infty t^n e^{-st}\,dt.
$$

Let $u=st$, so $t=u/s,\ dt=du/s$:

$$
\mathcal{L}\{t^n\}=\int_0^\infty \left(\frac{u}{s}\right)^n e^{-u}\frac{du}{s}=\frac{1}{s^{n+1}}\int_0^\infty u^n e^{-u}\,du=\frac{n!}{s^{n+1}}\qquad (n=0,1,2,\dots)
$$

since $\int_0^\infty u^n e^{-u}du=\Gamma(n+1)=n!$.

$$
\boxed{\mathcal{L}\{t^n\}=\dfrac{n!}{s^{n+1}}}
$$

---

## Q7. Hyperbolic Sine

**Answer:**

Using $\sinh t=\dfrac{e^{t}-e^{-t}}{2}$,

$$
\mathcal{L}\{\sinh t\}=\frac{1}{2}\left(\frac{1}{s-1}-\frac{1}{s+1}\right)=\frac{1}{2}\cdot\frac{2}{s^2-1}=\frac{1}{s^2-1},\qquad s>1.
$$

$$
\boxed{\mathcal{L}\{\sinh t\}=\dfrac{1}{s^2-1}}
$$

---

## Q8. Hyperbolic-Sine Identity (Proof)

**Statement**

$$
\mathcal{L}\{\sinh at\}=\frac{a}{s^2-a^2}.
$$

**Proof**

1. By definition, $\sinh at=\dfrac{e^{at}-e^{-at}}{2}$.
2. Apply linearity of the Laplace transform:
$$
\mathcal{L}\{\sinh at\}=\frac{1}{2}\Big(\mathcal{L}\{e^{at}\}-\mathcal{L}\{e^{-at}\}\Big)=\frac{1}{2}\left(\frac{1}{s-a}-\frac{1}{s+a}\right).
$$
3. Combine the fractions over a common denominator:
$$
\frac{1}{2}\cdot\frac{(s+a)-(s-a)}{(s-a)(s+a)}=\frac{1}{2}\cdot\frac{2a}{s^2-a^2}.
$$
4. Simplify:
$$
\mathcal{L}\{\sinh at\}=\frac{a}{s^2-a^2},\qquad s>|a|.
$$

$$
\boxed{\mathcal{L}\{\sinh at\}=\dfrac{a}{s^2-a^2}}
$$

---

## Q9. Cosine Function

**Answer:**

Using $\cos at=\dfrac{e^{iat}+e^{-iat}}{2}$,

$$
\mathcal{L}\{\cos at\}=\frac{1}{2}\left(\frac{1}{s-ia}+\frac{1}{s+ia}\right)=\frac{1}{2}\cdot\frac{2s}{s^2+a^2}=\frac{s}{s^2+a^2}.
$$

$$
\boxed{\mathcal{L}\{\cos at\}=\dfrac{s}{s^2+a^2}}
$$

---

## Laplace Transform Properties

## Q10. Laplace Transform of Derivatives

**Statement**

If $\mathcal{L}\{f(t)\}=F(s)$, then

$$
\mathcal{L}\{f'(t)\}=sF(s)-f(0),
$$
$$
\mathcal{L}\{f''(t)\}=s^2F(s)-sf(0)-f'(0),
$$
$$
\mathcal{L}\{f'''(t)\}=s^3F(s)-s^2f(0)-sf'(0)-f''(0).
$$

**Proof (first derivative, by definition)**

$$
\mathcal{L}\{f'(t)\}=\int_0^\infty e^{-st}f'(t)\,dt.
$$

Integrate by parts with $u=e^{-st},\ dv=f'(t)dt$, so $du=-se^{-st}dt,\ v=f(t)$:

$$
\mathcal{L}\{f'(t)\}=\Big[e^{-st}f(t)\Big]_0^\infty+s\int_0^\infty e^{-st}f(t)\,dt=-f(0)+sF(s)
$$

(assuming $e^{-st}f(t)\to0$ as $t\to\infty$). Hence $\mathcal{L}\{f'(t)\}=sF(s)-f(0)$.

**Proof (third derivative, by repeated application)**

Apply the first-derivative rule to $g=f'$, then to $h=f''$:

$$
\mathcal{L}\{f''(t)\}=s\,\mathcal{L}\{f'(t)\}-f'(0)=s\big(sF(s)-f(0)\big)-f'(0)=s^2F(s)-sf(0)-f'(0).
$$

$$
\mathcal{L}\{f'''(t)\}=s\,\mathcal{L}\{f''(t)\}-f''(0)=s\big(s^2F(s)-sf(0)-f'(0)\big)-f''(0)
$$

$$
\boxed{\mathcal{L}\{f'''(t)\}=s^3F(s)-s^2f(0)-sf'(0)-f''(0)}
$$

---

## Q11. First Translation (Shifting) Property (Proof)

**Statement**

If $\mathcal{L}\{F(t)\}=f(s)$, then $\mathcal{L}\{e^{at}F(t)\}=f(s-a)$.

**Proof**

1. By definition,
$$
\mathcal{L}\{e^{at}F(t)\}=\int_0^\infty e^{-st}e^{at}F(t)\,dt.
$$
2. Combine the exponentials:
$$
=\int_0^\infty e^{-(s-a)t}F(t)\,dt.
$$
3. This is exactly the Laplace transform of $F(t)$ evaluated at $(s-a)$ instead of $s$:
$$
=f(s-a).
$$

$$
\boxed{\mathcal{L}\{e^{at}F(t)\}=f(s-a)}
$$

---

## Q12. Application of the First Shifting Property

**Answer:**

Here $F(t)=\sin 4t$, with $f(s)=\mathcal{L}\{\sin 4t\}=\dfrac{4}{s^2+16}$, and $a=-2$.

By the first shifting property, $\mathcal{L}\{e^{-2t}\sin 4t\}=f(s-(-2))=f(s+2)$:

$$
\mathcal{L}\{e^{-2t}\sin 4t\}=\frac{4}{(s+2)^2+16}.
$$

$$
\boxed{\mathcal{L}\{e^{-2t}\sin 4t\}=\dfrac{4}{(s+2)^2+16}}
$$

---

## Q13. Second Translation (Shifting) Property (Proof)

**Statement**

If $\mathcal{L}\{F(t)\}=f(s)$ and

$$
g(t)=\begin{cases}F(t-a), & t>a\\ 0, & t<a\end{cases}
$$

then $\mathcal{L}\{g(t)\}=e^{-as}f(s)$.

**Proof**

1. By definition and since $g(t)=0$ for $t<a$:
$$
\mathcal{L}\{g(t)\}=\int_0^\infty e^{-st}g(t)\,dt=\int_a^\infty e^{-st}F(t-a)\,dt.
$$
2. Substitute $\tau=t-a$, so $t=\tau+a,\ dt=d\tau$, and the lower limit becomes $\tau=0$:
$$
=\int_0^\infty e^{-s(\tau+a)}F(\tau)\,d\tau=e^{-as}\int_0^\infty e^{-s\tau}F(\tau)\,d\tau.
$$
3. The remaining integral is exactly $f(s)$:
$$
=e^{-as}f(s).
$$

$$
\boxed{\mathcal{L}\{g(t)\}=e^{-as}f(s)}
$$

---

## Q14. Change-of-Scale Property (Proof)

**Statement**

If $\mathcal{L}\{F(t)\}=f(s)$, then

$$
\mathcal{L}\{F(at)\}=\frac{1}{a}f\!\left(\frac{s}{a}\right).
$$

**Proof**

1. By definition,
$$
\mathcal{L}\{F(at)\}=\int_0^\infty e^{-st}F(at)\,dt.
$$
2. Substitute $u=at$ (with $a>0$), so $t=u/a,\ dt=du/a$:
$$
=\int_0^\infty e^{-su/a}F(u)\,\frac{du}{a}=\frac{1}{a}\int_0^\infty e^{-(s/a)u}F(u)\,du.
$$
3. The remaining integral is $f$ evaluated at $s/a$:
$$
=\frac{1}{a}f\!\left(\frac{s}{a}\right).
$$

$$
\boxed{\mathcal{L}\{F(at)\}=\dfrac{1}{a}f\!\left(\dfrac{s}{a}\right)}
$$

---

## Q15. Application of the First Shifting Property

**Answer:**

Here $F(t)=\cos 2t$, with $f(s)=\mathcal{L}\{\cos 2t\}=\dfrac{s}{s^2+4}$, and $a=1$.

By the first shifting property, $\mathcal{L}\{e^{t}\cos 2t\}=f(s-1)$:

$$
\mathcal{L}\{e^t\cos 2t\}=\frac{s-1}{(s-1)^2+4}.
$$

$$
\boxed{\mathcal{L}\{e^t\cos 2t\}=\dfrac{s-1}{(s-1)^2+4}}
$$

---

## Differential Equations Using Laplace Transform

## Q16. First-Order Differential Equation

**Given**

$$
\frac{dy}{dt}-y=e^{3t}
$$

**Initial Condition**

$$
y(0)=2
$$

**Taking Laplace Transform**

$$
sY(s)-y(0)-Y(s)=\frac{1}{s-3}
$$

**Solve for $Y(s)$**

$$
(s-1)Y(s)=2+\frac{1}{s-3}=\frac{2(s-3)+1}{s-3}=\frac{2s-5}{s-3}
$$

$$
Y(s)=\frac{2s-5}{(s-3)(s-1)}
$$

**Partial Fractions**

$$
\frac{2s-5}{(s-3)(s-1)}=\frac{A}{s-3}+\frac{B}{s-1}
$$

$2s-5=A(s-1)+B(s-3)$. At $s=3$: $1=2A\Rightarrow A=\tfrac12$. At $s=1$: $-3=-2B\Rightarrow B=\tfrac32$.

$$
Y(s)=\frac{1/2}{s-3}+\frac{3/2}{s-1}
$$

**Taking Inverse Laplace Transform**

$$
y(t)=\frac{1}{2}e^{3t}+\frac{3}{2}e^{t}
$$

(Check: $y(0)=\tfrac12+\tfrac32=2$ ✓)

$$
\boxed{y(t)=\dfrac{1}{2}e^{3t}+\dfrac{3}{2}e^{t}}
$$

---

## Q17. Second-Order Boundary-Value Problem

**Given**

$$
y''(t)+9y(t)=\cos 2t
$$

**Boundary Conditions**

$$
y(0)=1,\qquad y\!\left(\frac{\pi}{2}\right)=-1
$$

Since $y'(0)$ is not given directly, introduce it as an unknown constant $c=y'(0)$.

**Taking Laplace Transform**

$$
s^2Y(s)-s\,y(0)-y'(0)+9Y(s)=\frac{s}{s^2+4}
$$

$$
(s^2+9)Y(s)=s+c+\frac{s}{s^2+4}
$$

**Solve for $Y(s)$**

$$
Y(s)=\frac{s}{s^2+9}+\frac{c}{s^2+9}+\frac{s}{(s^2+4)(s^2+9)}
$$

**Partial Fractions**

For the last term, since it is odd in $s$, write $\dfrac{s}{(s^2+4)(s^2+9)}=\dfrac{As}{s^2+4}+\dfrac{Cs}{s^2+9}$. Clearing denominators and matching coefficients of $s^2+9,\ s^2+4$ gives $A=\tfrac15,\ C=-\tfrac15$, so

$$
\frac{s}{(s^2+4)(s^2+9)}=\frac{1}{5}\cdot\frac{s}{s^2+4}-\frac{1}{5}\cdot\frac{s}{s^2+9}.
$$

Substituting back:

$$
Y(s)=\left(1-\frac15\right)\frac{s}{s^2+9}+\frac{c}{s^2+9}+\frac{1}{5}\cdot\frac{s}{s^2+4}=\frac{4}{5}\cdot\frac{s}{s^2+9}+\frac{c}{s^2+9}+\frac{1}{5}\cdot\frac{s}{s^2+4}
$$

**Taking Inverse Laplace Transform**

$$
y(t)=\frac{4}{5}\cos 3t+\frac{c}{3}\sin 3t+\frac{1}{5}\cos 2t
$$

Check at $t=0$: $y(0)=\tfrac45+0+\tfrac15=1$ ✓ (consistent with the given condition regardless of $c$).

**Determine $c$ from the boundary condition**

At $t=\pi/2$: $\cos\!\big(\tfrac{3\pi}{2}\big)=0,\ \sin\!\big(\tfrac{3\pi}{2}\big)=-1,\ \cos(\pi)=-1$. So

$$
y\!\left(\frac{\pi}{2}\right)=\frac{4}{5}(0)+\frac{c}{3}(-1)+\frac{1}{5}(-1)=-\frac{c}{3}-\frac{1}{5}=-1
$$

$$
-\frac{c}{3}=-1+\frac15=-\frac45\ \Longrightarrow\ c=\frac{12}{5}
$$

**Substitute back**

$$
\frac{c}{3}=\frac{4}{5}
$$

$$
\boxed{y(t)=\dfrac{4}{5}\cos 3t+\dfrac{4}{5}\sin 3t+\dfrac{1}{5}\cos 2t}
$$

---

## Q18. Second-Order Initial-Value Problem

**Given**

$$
y''(t)+9y(t)=\cos 2t
$$

**Initial Conditions**

$$
y(0)=0,\qquad y'(0)=1
$$

**Taking Laplace Transform**

$$
s^2Y(s)-0-1+9Y(s)=\frac{s}{s^2+4}
$$

**Solve for $Y(s)$**

$$
(s^2+9)Y(s)=1+\frac{s}{s^2+4}
$$

$$
Y(s)=\frac{1}{s^2+9}+\frac{s}{(s^2+4)(s^2+9)}
$$

**Partial Fractions**

Using the decomposition established in Q17,

$$
\frac{s}{(s^2+4)(s^2+9)}=\frac{1}{5}\cdot\frac{s}{s^2+4}-\frac{1}{5}\cdot\frac{s}{s^2+9}
$$

$$
Y(s)=\frac{1}{s^2+9}+\frac{1}{5}\cdot\frac{s}{s^2+4}-\frac{1}{5}\cdot\frac{s}{s^2+9}
$$

**Taking Inverse Laplace Transform**

$$
y(t)=\frac{1}{3}\sin 3t+\frac{1}{5}\cos 2t-\frac{1}{5}\cos 3t
$$

Check: $y(0)=0+\tfrac15-\tfrac15=0$ ✓. $y'(t)=\cos3t-\tfrac25\sin2t+\tfrac35\sin3t$, so $y'(0)=1$ ✓.

$$
\boxed{y(t)=\dfrac{1}{3}\sin 3t+\dfrac{1}{5}\cos 2t-\dfrac{1}{5}\cos 3t}
$$

---

## Q19. First-Order Differential Equation

**Given**

$$
\frac{dy}{dt}+y=2\sin t
$$

**Initial Condition**

$$
y(0)=-1
$$

**Taking Laplace Transform**

$$
sY(s)-y(0)+Y(s)=\frac{2}{s^2+1}
$$

**Solve for $Y(s)$**

$$
(s+1)Y(s)=-1+\frac{2}{s^2+1}=\frac{-(s^2+1)+2}{s^2+1}=\frac{1-s^2}{s^2+1}
$$

**Simplification**

Factor $1-s^2=-(s-1)(s+1)$:

$$
Y(s)=\frac{-(s-1)(s+1)}{(s+1)(s^2+1)}=\frac{-(s-1)}{s^2+1}=\frac{1-s}{s^2+1}=\frac{1}{s^2+1}-\frac{s}{s^2+1}
$$

**Taking Inverse Laplace Transform**

$$
y(t)=\sin t-\cos t
$$

Check: $y(0)=0-1=-1$ ✓. $y'=\cos t+\sin t$, and $y'+y=\cos t+\sin t+\sin t-\cos t=2\sin t$ ✓.

$$
\boxed{y(t)=\sin t-\cos t}
$$

---

## Q20. Homogeneous Second-Order Differential Equation

**Given**

$$
\frac{d^2y}{dt^2}-2\frac{dy}{dt}-8y=0
$$

**Initial Conditions**

$$
y(0)=3,\qquad y'(0)=6
$$

**Taking Laplace Transform**

$$
\big(s^2Y(s)-3s-6\big)-2\big(sY(s)-3\big)-8Y(s)=0
$$

$$
s^2Y-3s-6-2sY+6-8Y=0
$$

**Solve for $Y(s)$**

$$
(s^2-2s-8)Y(s)=3s
$$

$$
Y(s)=\frac{3s}{(s-4)(s+2)}
$$

**Partial Fractions**

$$
\frac{3s}{(s-4)(s+2)}=\frac{A}{s-4}+\frac{B}{s+2}
$$

$3s=A(s+2)+B(s-4)$. At $s=4$: $12=6A\Rightarrow A=2$. At $s=-2$: $-6=-6B\Rightarrow B=1$.

$$
Y(s)=\frac{2}{s-4}+\frac{1}{s+2}
$$

**Taking Inverse Laplace Transform**

$$
y(t)=2e^{4t}+e^{-2t}
$$

Check: $y(0)=2+1=3$ ✓. $y'=8e^{4t}-2e^{-2t}$, so $y'(0)=8-2=6$ ✓.

$$
\boxed{y(t)=2e^{4t}+e^{-2t}}
$$

---

## Inverse Laplace Transforms

## Q21. Inverse Laplace Transform — Repeated Factor

**Answer:**

The denominator factors as a perfect square:

$$
s^2+8s+16=(s+4)^2
$$

Write the numerator in terms of $(s+4)$:

$$
4s+12=4(s+4)-4
$$

So

$$
\frac{4s+12}{(s+4)^2}=\frac{4(s+4)}{(s+4)^2}-\frac{4}{(s+4)^2}=\frac{4}{s+4}-\frac{4}{(s+4)^2}
$$

Using $\mathcal{L}^{-1}\{1/(s-a)\}=e^{at}$ and $\mathcal{L}^{-1}\{1/(s-a)^2\}=te^{at}$ (here $a=-4$):

$$
f(t)=4e^{-4t}-4te^{-4t}
$$

$$
\boxed{f(t)=4e^{-4t}(1-t)}
$$

---

## Q22. Inverse Laplace Transform — Quadratic Factors

**Answer:**

Complete the square in each quadratic factor using $u=s+1$:

$$
s^2+2s+2=(s+1)^2+1=u^2+1,\qquad s^2+2s+5=(s+1)^2+4=u^2+4
$$

$$
s^2+2s+3=(s+1)^2+2=u^2+2
$$

So the expression becomes

$$
\frac{u^2+2}{(u^2+1)(u^2+4)}
$$

**Partial fraction decomposition (in $u^2$)**

$$
\frac{u^2+2}{(u^2+1)(u^2+4)}=\frac{A}{u^2+1}+\frac{B}{u^2+4}
$$

$u^2+2=A(u^2+4)+B(u^2+1)$. Matching coefficients: $A+B=1$ and $4A+B=2$, so $A=\tfrac13,\ B=\tfrac23$:

$$
\frac{u^2+2}{(u^2+1)(u^2+4)}=\frac{1/3}{u^2+1}+\frac{2/3}{u^2+4}
$$

**Inverse Laplace transform**

Since this is expressed in $u=s+1$, the first shifting property applies (multiplying the inverse in the un-shifted variable by $e^{-t}$):

$$
\mathcal{L}^{-1}\!\left\{\frac{1}{u^2+1}\right\}=e^{-t}\sin t,\qquad \mathcal{L}^{-1}\!\left\{\frac{1}{u^2+4}\right\}=e^{-t}\cdot\frac{1}{2}\sin 2t
$$

$$
f(t)=\frac{1}{3}e^{-t}\sin t+\frac{2}{3}\cdot\frac{1}{2}e^{-t}\sin 2t=\frac{1}{3}e^{-t}\sin t+\frac{1}{3}e^{-t}\sin 2t
$$

$$
\boxed{f(t)=\dfrac{1}{3}e^{-t}\big(\sin t+\sin 2t\big)}
$$

---

## Q23. Inverse Laplace Transform — Repeated Linear Factor

**Answer:**

Set up the partial fraction decomposition (independently, without relying on the handwritten working):

$$
\frac{5s^2-15s-12}{(s+1)(s-2)^3}=\frac{A}{s+1}+\frac{B}{s-2}+\frac{C}{(s-2)^2}+\frac{D}{(s-2)^3}
$$

Multiplying both sides by $(s+1)(s-2)^3$:

$$
5s^2-15s-12=A(s-2)^3+B(s+1)(s-2)^2+C(s+1)(s-2)+D(s+1)
$$

**Find $A$** (set $s=-1$):
$$
5(1)-15(-1)-12=8=A(-3)^3=-27A\ \Rightarrow\ A=-\frac{8}{27}
$$

**Find $D$** (set $s=2$):
$$
5(4)-15(2)-12=-22=D(3)\ \Rightarrow\ D=-\frac{22}{3}
$$

**Find $B$ and $C$** by expanding and matching coefficients of $s^3,\ s^2,\ s,\ 1$:

$$
A(s-2)^3=A(s^3-6s^2+12s-8)
$$
$$
B(s+1)(s-2)^2=B(s^3-3s^2+4)
$$
$$
C(s+1)(s-2)=C(s^2-s-2)
$$
$$
D(s+1)=Ds+D
$$

Coefficient of $s^3$: $A+B=0\ \Rightarrow\ B=-A=\dfrac{8}{27}$

Coefficient of $s^2$: $-6A-3B+C=5\ \Rightarrow\ C=5+6A+3B=5-\dfrac{48}{27}+\dfrac{24}{27}=5-\dfrac{24}{27}=\dfrac{37}{9}$

(Verification with the coefficient of $s^1$: $12A-C+D=12\!\left(-\tfrac{8}{27}\right)-\tfrac{37}{9}-\tfrac{22}{3}=-\tfrac{32}{9}-\tfrac{37}{9}-\tfrac{66}{9}=-\tfrac{135}{9}=-15$ ✓, matching the required $-15$.
Constant term: $-8A+4B-2C+D=\tfrac{64}{27}+\tfrac{32}{27}-\tfrac{74}{9}-\tfrac{22}{3}=\tfrac{32}{9}-\tfrac{74}{9}-\tfrac{66}{9}=-12$ ✓.)

So:

$$
A=-\frac{8}{27},\quad B=\frac{8}{27},\quad C=\frac{37}{9},\quad D=-\frac{22}{3}
$$

$$
\frac{5s^2-15s-12}{(s+1)(s-2)^3}=\frac{-8/27}{s+1}+\frac{8/27}{s-2}+\frac{37/9}{(s-2)^2}+\frac{-22/3}{(s-2)^3}
$$

**Inverse Laplace transform**

Using $\mathcal{L}^{-1}\{1/(s-a)^n\}=\dfrac{t^{n-1}}{(n-1)!}e^{at}$:

$$
\mathcal{L}^{-1}\{1/(s+1)\}=e^{-t},\quad \mathcal{L}^{-1}\{1/(s-2)\}=e^{2t},\quad \mathcal{L}^{-1}\{1/(s-2)^2\}=te^{2t},\quad \mathcal{L}^{-1}\{1/(s-2)^3\}=\frac{t^2}{2}e^{2t}
$$

$$
f(t)=-\frac{8}{27}e^{-t}+\frac{8}{27}e^{2t}+\frac{37}{9}te^{2t}-\frac{22}{3}\cdot\frac{t^2}{2}e^{2t}
$$

$$
\boxed{f(t)=\dfrac{8}{27}e^{2t}-\dfrac{8}{27}e^{-t}+\dfrac{37}{9}te^{2t}-\dfrac{11}{3}t^2e^{2t}}
$$
