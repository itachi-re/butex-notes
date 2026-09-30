# MS-103: Vector Calculus & Laplace Transform — Model Answers

Clean, mathematically ordered Markdown transcription of the handwritten solutions in the supplied homework PDF.

> **Source note:** The problems and methods below are based on the supplied 18-page handwritten solution set. The material has been reordered by mathematical dependency, notation has been normalized for GitHub-Flavored Markdown, and arithmetic/algebraic slips visible in the handwriting have been corrected where the intended calculation is unambiguous.

## Contents

### Part I — Vector Calculus

1. [Directional derivative along the normal to a surface](#q1-directional-derivative-along-the-normal-to-a-surface)
2. [Orthogonal surfaces: finding two constants](#q2-orthogonal-surfaces-finding-two-constants)
3. [Volume of a parallelepiped](#q3-volume-of-a-parallelepiped)
4. [Condition for coplanarity](#q4-condition-for-coplanarity)
5. [Vector triple-product identity](#q5-vector-triple-product-identity)
6. [Area of a parallelogram](#q6-area-of-a-parallelogram)

### Part II — Laplace Transform

7. [Laplace transform of an integral involving \(\sin u/u\)](#q7-laplace-transform-of-an-integral-involving-sin-u-u)
8. [Multiplication by \(t^n\) in the Laplace domain](#q8-multiplication-by-tn-in-the-laplace-domain)
9. [Transform of \(t^2\cos at\)](#q9-transform-of-t2cos-at)
10. [Transform of \(t^3e^t\)](#q10-transform-of-t3et)
11. [Inverse transform and long-time response](#q11-inverse-transform-and-long-time-response)
12. [Two inverse Laplace transforms](#q12-two-inverse-laplace-transforms)
13. [First-order IVP: \(y'+5y=10\)](#q13-first-order-ivp-y5y10)
14. [First-order IVP with \(u(t)=t\)](#q14-first-order-ivp-with-ut-t)
15. [First-order IVP with \(u(t)=e^t\)](#q15-first-order-ivp-with-ut-et)
16. [Second-order homogeneous IVP](#q16-second-order-homogeneous-ivp)
17. [Second-order IVP: \(y''+y=\sin 3t\)](#q17-second-order-ivp-yy-sin-3t)
18. [Resonant IVP: \(y''+25y=10\cos 5t\)](#q18-resonant-ivp-y25y10cos-5t)
19. [Forced IVP: \(y''-4y'+4y=64\sin 2t\)](#q19-forced-ivp-y-4y4y64sin-2t)

---

# Part I — Vector Calculus

## Q1. Directional derivative along the normal to a surface

**Problem.** Find the rate of change of

$$
\phi=xyz
$$

in the direction normal to the surface

$$
x^2y+y^2x+yz^2=8
$$

at the point \((1,1,1)\).

### Definition: directional derivative

The directional derivative of a scalar field \(\phi\) at a point in the direction of the unit vector \(\hat{\mathbf u}\) is

$$
D_{\hat{\mathbf u}}\phi=\nabla\phi\cdot\hat{\mathbf u}.
$$

A normal direction to a surface \(F(x,y,z)=C\) is given by \(\nabla F\).

### Solution

For

$$
\phi=xyz,
$$

we have

$$
\nabla\phi
=
\mathbf i\,yz+\mathbf j\,xz+\mathbf k\,xy.
$$

At \((1,1,1)\),

$$
\nabla\phi\big|_{(1,1,1)}
=
\mathbf i+\mathbf j+\mathbf k.
$$

Now define

$$
F(x,y,z)=x^2y+y^2x+yz^2-8.
$$

Then

$$
\nabla F
=
\mathbf i(2xy+y^2)
+\mathbf j(x^2+2xy+z^2)
+\mathbf k(2yz).
$$

At \((1,1,1)\),

$$
\nabla F\big|_{(1,1,1)}
=
3\mathbf i+4\mathbf j+2\mathbf k.
$$

Hence a unit normal is

$$
\hat{\mathbf n}
=
\frac{3\mathbf i+4\mathbf j+2\mathbf k}
{\sqrt{3^2+4^2+2^2}}
=
\frac{3\mathbf i+4\mathbf j+2\mathbf k}{\sqrt{29}}.
$$

Therefore,

$$
D_{\hat{\mathbf n}}\phi
=
(\mathbf i+\mathbf j+\mathbf k)
\cdot
\frac{3\mathbf i+4\mathbf j+2\mathbf k}{\sqrt{29}}
$$

$$
\boxed{
D_{\hat{\mathbf n}}\phi=\frac{9}{\sqrt{29}}
}
$$

So the required rate of change is

$$
\boxed{\frac{9}{\sqrt{29}}}.
$$

---

## Q2. Orthogonal surfaces: finding two constants

**Problem.** Find \(\lambda\) and \(\mu\) such that the surfaces

$$
\lambda x^2-\mu yz=(\lambda+2)x
$$

and

$$
4x^2y+z^3=4
$$

intersect orthogonally at the point \((1,-1,2)\).

### Definition: orthogonal intersection of surfaces

Two surfaces intersect orthogonally at a point when their normal vectors at that point are perpendicular. Thus,

$$
\nabla F_1\cdot\nabla F_2=0.
$$

### Solution

Write the first surface as

$$
F_1(x,y,z)
=
\lambda x^2-\mu yz-(\lambda+2)x=0.
$$

Its normal is

$$
\nabla F_1
=
\mathbf i\bigl(2\lambda x-(\lambda+2)\bigr)
-\mu z\,\mathbf j
-\mu y\,\mathbf k.
$$

At \((1,-1,2)\),

$$
\mathbf n_1
=
(\lambda-2)\mathbf i-2\mu\mathbf j+\mu\mathbf k.
$$

For the second surface, let

$$
F_2(x,y,z)=4x^2y+z^3-4=0.
$$

Then

$$
\nabla F_2
=
8xy\,\mathbf i+4x^2\,\mathbf j+3z^2\,\mathbf k.
$$

At \((1,-1,2)\),

$$
\mathbf n_2
=
-8\mathbf i+4\mathbf j+12\mathbf k.
$$

Since the surfaces are orthogonal,

$$
\mathbf n_1\cdot\mathbf n_2=0.
$$

Therefore,

$$
(\lambda-2)(-8)+(-2\mu)(4)+\mu(12)=0.
$$

So

$$
-8(\lambda-2)-8\mu+12\mu=0,
$$

$$
-8\lambda+16+4\mu=0,
$$

$$
2\lambda-\mu=4.
(1)
$$

The point \((1,-1,2)\) lies on the first surface, so

$$
\lambda(1)^2-\mu(-1)(2)
=
(\lambda+2)(1).
$$

Hence,

$$
\lambda+2\mu=\lambda+2,
$$

$$
\mu=1.
(2)
$$

Putting \(\mu=1\) into (1),

$$
2\lambda-1=4,
$$

$$
\boxed{\lambda=\frac52}.
$$

Thus,

$$
\boxed{\lambda=\frac52,\qquad \mu=1}.
$$

---

## Q3. Volume of a parallelepiped

**Problem.** Find the volume of the parallelepiped whose three coterminal edges are

$$
\mathbf a=3\mathbf i+7\mathbf j+5\mathbf k,
$$

$$
\mathbf b=-3\mathbf i+7\mathbf j-3\mathbf k,
$$

and

$$
\mathbf c=7\mathbf i-5\mathbf j-3\mathbf k.
$$

### Definition: scalar triple product

The scalar triple product is

$$
[\mathbf a\,\mathbf b\,\mathbf c]
=
\mathbf a\cdot(\mathbf b\times\mathbf c).
$$

Its absolute value gives the volume of the parallelepiped:

$$
V=\left|\mathbf a\cdot(\mathbf b\times\mathbf c)\right|.
$$

### Solution

$$
V
=
\left|
\begin{vmatrix}
3&7&5\\
-3&7&-3\\
7&-5&-3
\end{vmatrix}
\right|.
$$

Expanding along the first row,

$$
\begin{aligned}
V
&=
\left|
3
\begin{vmatrix}
7&-3\\
-5&-3
\end{vmatrix}
-
7
\begin{vmatrix}
-3&-3\\
7&-3
\end{vmatrix}
+
5
\begin{vmatrix}
-3&7\\
7&-5
\end{vmatrix}
\right| \\
&=
\left|
3(-21-15)-7(9+21)+5(15-49)
\right| \\
&=
|-108-210-170| \\
&=
|-488|.
\end{aligned}
$$

Therefore,

$$
\boxed{V=488\text{ cubic units}}.
$$

---

## Q4. Condition for coplanarity

**Problem.** Find the constant \(a\) such that the vectors

$$
\mathbf a_1=2\mathbf i-\mathbf j+\mathbf k,
$$

$$
\mathbf a_2=\mathbf i+2\mathbf j-3\mathbf k,
$$

and

$$
\mathbf a_3=3\mathbf i+a\mathbf j+5\mathbf k
$$

are coplanar.

### Theorem: coplanarity test

Three vectors are coplanar if and only if their scalar triple product is zero:

$$
\mathbf a_1\cdot(\mathbf a_2\times\mathbf a_3)=0.
$$

### Solution

Thus,

$$
\begin{vmatrix}
2&-1&1\\
1&2&-3\\
3&a&5
\end{vmatrix}
=0.
$$

Expanding,

$$
2(10+3a)+(5+9)+(a-6)=0.
$$

Hence,

$$
20+6a+14+a-6=0,
$$

$$
7a+28=0,
$$

$$
\boxed{a=-4}.
$$

---

## Q5. Vector triple-product identity

**Problem.** Prove

$$
\mathbf a\times(\mathbf b\times\mathbf c)
=
(\mathbf a\cdot\mathbf c)\mathbf b
-
(\mathbf a\cdot\mathbf b)\mathbf c.
$$

### Theorem: BAC-CAB identity

For any three vectors \(\mathbf a,\mathbf b,\mathbf c\),

$$
\boxed{
\mathbf a\times(\mathbf b\times\mathbf c)
=
(\mathbf a\cdot\mathbf c)\mathbf b
-
(\mathbf a\cdot\mathbf b)\mathbf c
}.
$$

### Proof

Let

$$
\mathbf a=a_1\mathbf i+a_2\mathbf j+a_3\mathbf k,
$$

$$
\mathbf b=b_1\mathbf i+b_2\mathbf j+b_3\mathbf k,
$$

and

$$
\mathbf c=c_1\mathbf i+c_2\mathbf j+c_3\mathbf k.
$$

First,

$$
\mathbf b\times\mathbf c
=
(b_2c_3-b_3c_2)\mathbf i
+
(b_3c_1-b_1c_3)\mathbf j
+
(b_1c_2-b_2c_1)\mathbf k.
$$

Now compute the \(\mathbf i\)-component of \(\mathbf a\times(\mathbf b\times\mathbf c)\):

$$
a_2(b_1c_2-b_2c_1)
-
a_3(b_3c_1-b_1c_3).
$$

Rearranging,

$$
=
b_1(a_2c_2+a_3c_3)
-
c_1(a_2b_2+a_3b_3).
$$

Adding and subtracting the missing first-coordinate terms,

$$
=
b_1(a_1c_1+a_2c_2+a_3c_3)
-
c_1(a_1b_1+a_2b_2+a_3b_3).
$$

Therefore,

$$
=
b_1(\mathbf a\cdot\mathbf c)
-
c_1(\mathbf a\cdot\mathbf b).
$$

Similarly, the \(\mathbf j\)- and \(\mathbf k\)-components are

$$
b_2(\mathbf a\cdot\mathbf c)
-
c_2(\mathbf a\cdot\mathbf b)
$$

and

$$
b_3(\mathbf a\cdot\mathbf c)
-
c_3(\mathbf a\cdot\mathbf b).
$$

Hence,

$$
\boxed{
\mathbf a\times(\mathbf b\times\mathbf c)
=
(\mathbf a\cdot\mathbf c)\mathbf b
-
(\mathbf a\cdot\mathbf b)\mathbf c
}.
$$

---

## Q6. Area of a parallelogram

**Problem.** Find the area of the parallelogram whose adjacent sides are

$$
\mathbf a=\mathbf i-2\mathbf j+3\mathbf k
$$

and

$$
\mathbf b=2\mathbf i+\mathbf j-4\mathbf k.
$$

### Definition: area from a cross product

The area of the parallelogram generated by \(\mathbf a\) and \(\mathbf b\) is

$$
A=|\mathbf a\times\mathbf b|.
$$

### Solution

$$
\mathbf a\times\mathbf b
=
\begin{vmatrix}
\mathbf i&\mathbf j&\mathbf k\\
1&-2&3\\
2&1&-4
\end{vmatrix}.
$$

Therefore,

$$
\mathbf a\times\mathbf b
=
\mathbf i(8+3)
-\mathbf j(-4-6)
+\mathbf k(1+4).
$$

Thus,

$$
\mathbf a\times\mathbf b
=
11\mathbf i+10\mathbf j+5\mathbf k.
$$

Hence,

$$
A
=
\sqrt{11^2+10^2+5^2}
=
\sqrt{121+100+25}
=
\sqrt{246}.
$$

So the mathematically correct area is

$$
\boxed{\sqrt{246}}.
$$

> **Note:** The handwritten solution gives \(5\sqrt6\), but that does not follow from the stated vectors. For the vectors \(\mathbf i-2\mathbf j+3\mathbf k\) and \(2\mathbf i+\mathbf j-4\mathbf k\), the cross product is \(11\mathbf i+10\mathbf j+5\mathbf k\), so the area is \(\sqrt{246}\).

---

# Part II — Laplace Transform

## Q7. Laplace transform of an integral involving \(\sin u/u\)

**Problem.** Prove that

$$
\mathcal L\left\{
\int_0^t\frac{\sin u}{u}\,du
\right\}
=
\frac{1}{s}\tan^{-1}\left(\frac1s\right).
$$

### Useful result

For \(a>0\),

$$
\mathcal L\left\{\frac{\sin at}{t}\right\}
=
\tan^{-1}\left(\frac{a}{s}\right).
$$

For \(a=1\),

$$
\mathcal L\left\{\frac{\sin t}{t}\right\}
=
\tan^{-1}\left(\frac1s\right).
$$

### Proof

Let

$$
f(t)=\frac{\sin t}{t}.
$$

Then

$$
\mathcal L\{f(t)\}
=
\tan^{-1}\left(\frac1s\right).
$$

Now define

$$
g(t)=\int_0^t\frac{\sin u}{u}\,du.
$$

By the fundamental theorem of calculus,

$$
g'(t)=\frac{\sin t}{t},
\qquad
g(0)=0.
$$

Taking Laplace transforms,

$$
\mathcal L\{g'(t)\}
=
sG(s)-g(0)
=
sG(s).
$$

But \(g'(t)=f(t)\), so

$$
sG(s)
=
\mathcal L\{f(t)\}
=
\tan^{-1}\left(\frac1s\right).
$$

Therefore,

$$
\boxed{
G(s)
=
\mathcal L\left\{
\int_0^t\frac{\sin u}{u}\,du
\right\}
=
\frac1s\tan^{-1}\left(\frac1s\right)
}.
$$

---

## Q8. Multiplication by \(t^n\) in the Laplace domain

**Problem.** Prove the property

$$
\mathcal L\{t^n f(t)\}
=
(-1)^n\frac{d^nF(s)}{ds^n},
$$

where

$$
F(s)=\mathcal L\{f(t)\}.
$$

### Theorem

If

$$
F(s)=\mathcal L\{f(t)\},
$$

then, under the usual conditions that permit differentiation under the integral sign,

$$
\boxed{
\mathcal L\{t^n f(t)\}
=
(-1)^nF^{(n)}(s)
}.
$$

### Proof

By definition,

$$
F(s)
=
\int_0^\infty e^{-st}f(t)\,dt.
$$

Differentiate with respect to \(s\):

$$
\frac{dF}{ds}
=
\int_0^\infty(-t)e^{-st}f(t)\,dt.
$$

Hence,

$$
\frac{dF}{ds}
=
-\mathcal L\{tf(t)\}.
$$

Therefore,

$$
\mathcal L\{tf(t)\}
=
-\frac{dF}{ds}.
$$

Differentiating again,

$$
\mathcal L\{t^2f(t)\}
=
\frac{d^2F}{ds^2}.
$$

Continuing this process gives

$$
\boxed{
\mathcal L\{t^nf(t)\}
=
(-1)^n\frac{d^nF}{ds^n}
}.
$$

---

## Q9. Transform of \(t^2\cos at\)

**Problem.** Evaluate

$$
\mathcal L\{t^2\cos at\}.
$$

We know

$$
\mathcal L\{\cos at\}
=
\frac{s}{s^2+a^2}.
$$

Using Q8 with \(n=2\),

$$
\mathcal L\{t^2\cos at\}
=
\frac{d^2}{ds^2}
\left(
\frac{s}{s^2+a^2}
\right).
$$

First derivative:

$$
\frac{d}{ds}
\left(
\frac{s}{s^2+a^2}
\right)
=
\frac{a^2-s^2}{(s^2+a^2)^2}.
$$

Differentiating once more,

$$
\frac{d^2}{ds^2}
\left(
\frac{s}{s^2+a^2}
\right)
=
\frac{2s(s^2-3a^2)}{(s^2+a^2)^3}.
$$

Therefore,

$$
\boxed{
\mathcal L\{t^2\cos at\}
=
\frac{2s(s^2-3a^2)}
{(s^2+a^2)^3}
}.
$$

---

## Q10. Transform of \(t^3e^t\)

**Problem.** Evaluate

$$
\mathcal L\{t^3e^t\}.
$$

We know

$$
\mathcal L\{e^t\}
=
\frac1{s-1}.
$$

Using Q8 with \(n=3\),

$$
\mathcal L\{t^3e^t\}
=
-\frac{d^3}{ds^3}
\left(
\frac1{s-1}
\right).
$$

Since

$$
\frac{d^3}{ds^3}
\left(
\frac1{s-1}
\right)
=
-\frac{6}{(s-1)^4},
$$

we obtain

$$
\boxed{
\mathcal L\{t^3e^t\}
=
\frac{6}{(s-1)^4}
}.
$$

---

## Q11. Inverse transform and long-time response

**Problem.** The Laplace-domain position response is

$$
X(s)=\frac{5}{s(s+2)}.
$$

Find \(x(t)\) and interpret the long-time response.

### Solution

Using partial fractions,

$$
\frac{5}{s(s+2)}
=
\frac52
\left(
\frac1s-\frac1{s+2}
\right).
$$

Taking inverse Laplace transforms,

$$
x(t)
=
\frac52
\left(
1-e^{-2t}
\right).
$$

Hence,

$$
\boxed{
x(t)=\frac52(1-e^{-2t})
}.
$$

For the long-time response,

$$
\lim_{t\to\infty}x(t)
=
\frac52.
$$

Therefore,

$$
\boxed{
\text{Long-time response}=\frac52
}.
$$

The transient term \(-\frac52e^{-2t}\) decays to zero as \(t\to\infty\).

---

## Q12. Two inverse Laplace transforms

### Q12(i)

**Problem.** Find

$$
\mathcal L^{-1}
\left\{
\frac{12}{s(s+3)}
\right\}.
$$

Using partial fractions,

$$
\frac{12}{s(s+3)}
=
4\left(
\frac1s-\frac1{s+3}
\right).
$$

Therefore,

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{12}{s(s+3)}
\right\}
=
4(1-e^{-3t})
}.
$$

### Q12(ii)

**Problem.** Find

$$
\mathcal L^{-1}
\left\{
\frac{2s+6}{s^2+6s+8}
\right\}.
$$

Factor the denominator:

$$
s^2+6s+8=(s+2)(s+4).
$$

Hence,

$$
\frac{2s+6}{(s+2)(s+4)}
=
\frac1{s+2}+\frac1{s+4}.
$$

Therefore,

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{2s+6}{s^2+6s+8}
\right\}
=
e^{-2t}+e^{-4t}
}.
$$

---

## Q13. First-order IVP: \(y'+5y=10\)

**Problem.** Solve

$$
y'+5y=10,
\qquad
y(0)=1
$$

using Laplace transforms.

### Solution

Let

$$
Y(s)=\mathcal L\{y(t)\}.
$$

Taking Laplace transforms,

$$
sY(s)-y(0)+5Y(s)=\frac{10}{s}.
$$

Using \(y(0)=1\),

$$
sY(s)-1+5Y(s)=\frac{10}{s}.
$$

Therefore,

$$
(s+5)Y(s)
=
1+\frac{10}{s}
=
\frac{s+10}{s}.
$$

Thus,

$$
Y(s)
=
\frac{s+10}{s(s+5)}
=
\frac2s-\frac1{s+5}.
$$

Taking the inverse transform,

$$
\boxed{
y(t)=2-e^{-5t}
}.
$$

Check:

$$
y(0)=2-1=1.
$$

---

## Q14. First-order IVP with \(u(t)=t\)

**Problem.** Given

$$
y'+2y=2u(t),
\qquad
u(t)=t,
\qquad
y(0)=0,
$$

solve for \(y(t)\).

### Solution

Since \(u(t)=t\),

$$
y'+2y=2t.
$$

Taking Laplace transforms,

$$
sY(s)-y(0)+2Y(s)
=
\frac{2}{s^2}.
$$

With \(y(0)=0\),

$$
(s+2)Y(s)
=
\frac{2}{s^2}.
$$

Thus,

$$
Y(s)
=
\frac{2}{s^2(s+2)}.
$$

Partial fractions give

$$
\frac{2}{s^2(s+2)}
=
-\frac1{2s}
+\frac1{s^2}
+\frac1{2(s+2)}.
$$

Hence,

$$
y(t)
=
-\frac12+t+\frac12e^{-2t}.
$$

Therefore,

$$
\boxed{
y(t)=t-\frac12+\frac12e^{-2t}
}.
$$

---

## Q15. First-order IVP with \(u(t)=e^t\)

**Problem.** Given

$$
y'+2y=2u(t),
\qquad
u(t)=e^t,
\qquad
y(0)=0,
$$

solve for \(y(t)\).

### Solution

Since

$$
\mathcal L\{e^t\}=\frac1{s-1},
$$

we have

$$
sY(s)-y(0)+2Y(s)
=
\frac{2}{s-1}.
$$

Using \(y(0)=0\),

$$
(s+2)Y(s)
=
\frac{2}{s-1}.
$$

Therefore,

$$
Y(s)
=
\frac{2}{(s-1)(s+2)}
=
\frac23\frac1{s-1}
-
\frac23\frac1{s+2}.
$$

Taking the inverse transform,

$$
\boxed{
y(t)=\frac23e^t-\frac23e^{-2t}
}.
$$

---

## Q16. Second-order homogeneous IVP

**Problem.** Solve

$$
y''+2y'+y=0,
$$

with

$$
y(0)=0,
\qquad
y'(0)=2.
$$

### Solution

Taking Laplace transforms,

$$
\mathcal L\{y''\}
=
s^2Y(s)-sy(0)-y'(0),
$$

and

$$
\mathcal L\{y'\}
=
sY(s)-y(0).
$$

Therefore,

$$
s^2Y(s)-sy(0)-y'(0)
+
2[sY(s)-y(0)]
+
Y(s)
=
0.
$$

Using \(y(0)=0\) and \(y'(0)=2\),

$$
s^2Y(s)-2+2sY(s)+Y(s)=0.
$$

Hence,

$$
(s^2+2s+1)Y(s)=2.
$$

Thus,

$$
Y(s)
=
\frac{2}{(s+1)^2}.
$$

Since

$$
\mathcal L^{-1}
\left\{
\frac1{(s+1)^2}
\right\}
=
te^{-t},
$$

we obtain

$$
\boxed{
y(t)=2te^{-t}
}.
$$

---

## Q17. Second-order IVP: \(y''+y=\sin 3t\)

**Problem.** Solve

$$
y''+y=\sin 3t,
$$

with the zero initial conditions used in the handwritten solution,

$$
y(0)=0,
\qquad
y'(0)=0.
$$

### Solution

Taking Laplace transforms,

$$
s^2Y(s)-sy(0)-y'(0)+Y(s)
=
\frac3{s^2+9}.
$$

Using the initial conditions,

$$
(s^2+1)Y(s)
=
\frac3{s^2+9}.
$$

Therefore,

$$
Y(s)
=
\frac3{(s^2+1)(s^2+9)}.
$$

Use

$$
\frac3{(s^2+1)(s^2+9)}
=
\frac38
\left(
\frac1{s^2+1}
-
\frac1{s^2+9}
\right).
$$

Thus,

$$
y(t)
=
\frac38\sin t
-
\frac38\cdot\frac13\sin3t.
$$

Therefore,

$$
\boxed{
y(t)=\frac38\sin t-\frac18\sin3t
}.
$$

---

## Q18. Resonant IVP: \(y''+25y=10\cos 5t\)

**Problem.** Solve

$$
y''+25y=10\cos5t,
$$

with

$$
y(0)=2,
\qquad
y'(0)=0.
$$

### Solution

Taking Laplace transforms,

$$
s^2Y(s)-sy(0)-y'(0)+25Y(s)
=
\frac{10s}{s^2+25}.
$$

Using the initial conditions,

$$
(s^2+25)Y(s)
=
2s+\frac{10s}{s^2+25}.
$$

Hence,

$$
Y(s)
=
\frac{2s}{s^2+25}
+
\frac{10s}{(s^2+25)^2}.
$$

Now,

$$
\mathcal L^{-1}
\left\{
\frac{2s}{s^2+25}
\right\}
=
2\cos5t.
$$

Also,

$$
\mathcal L
\{t\sin at\}
=
\frac{2as}{(s^2+a^2)^2}.
$$

With \(a=5\),

$$
\mathcal L^{-1}
\left\{
\frac{10s}{(s^2+25)^2}
\right\}
=
t\sin5t.
$$

Therefore,

$$
\boxed{
y(t)=2\cos5t+t\sin5t
}.
$$

This is a resonant response because the forcing frequency \(5\) equals the natural frequency.

---

## Q19. Forced IVP: \(y''-4y'+4y=64\sin 2t\)

**Problem.** Solve

$$
y''-4y'+4y=64\sin2t,
$$

with

$$
y(0)=0,
\qquad
y'(0)=1.
$$

### Solution

Taking Laplace transforms,

$$
s^2Y(s)-sy(0)-y'(0)
-
4[sY(s)-y(0)]
+
4Y(s)
=
\frac{128}{s^2+4}.
$$

Using \(y(0)=0\) and \(y'(0)=1\),

$$
(s^2-4s+4)Y(s)-1
=
\frac{128}{s^2+4}.
$$

Therefore,

$$
(s-2)^2Y(s)
=
1+\frac{128}{s^2+4}.
$$

Hence,

$$
Y(s)
=
\frac1{(s-2)^2}
+
\frac{128}{(s-2)^2(s^2+4)}.
$$

The required partial-fraction decomposition is

$$
\frac{128}{(s-2)^2(s^2+4)}
=
-\frac8{s-2}
+
\frac{16}{(s-2)^2}
+
\frac{8s}{s^2+4}.
$$

Therefore,

$$
Y(s)
=
-\frac8{s-2}
+
\frac{17}{(s-2)^2}
+
\frac{8s}{s^2+4}.
$$

Taking inverse Laplace transforms,

$$
\boxed{
y(t)
=
-8e^{2t}
+
17te^{2t}
+
8\cos2t
}.
$$

### Check

At \(t=0\),

$$
y(0)=-8+8=0.
$$

Differentiating,

$$
y'(t)
=
-16e^{2t}
+
17e^{2t}
+
34te^{2t}
-
16\sin2t,
$$

so

$$
y'(0)=-16+17=1.
$$

Thus the initial conditions are satisfied.

---

# Quick Revision Summary

| Q | Topic | Final answer |
|---:|---|---|
| 1 | Directional derivative along surface normal | \(\dfrac{9}{\sqrt{29}}\) |
| 2 | Orthogonal surfaces | \(\lambda=\dfrac52,\ \mu=1\) |
| 3 | Parallelepiped volume | \(488\) cubic units |
| 4 | Coplanarity constant | \(a=-4\) |
| 5 | BAC-CAB identity | \(\mathbf a\times(\mathbf b\times\mathbf c)=(\mathbf a\cdot\mathbf c)\mathbf b-(\mathbf a\cdot\mathbf b)\mathbf c\) |
| 6 | Parallelogram area | \(\sqrt{246}\) |
| 7 | Laplace transform of \(\int_0^t\sin u/u\,du\) | \(\dfrac1s\tan^{-1}\left(\dfrac1s\right)\) |
| 8 | Multiplication by \(t^n\) | \(\mathcal L\{t^nf(t)\}=(-1)^nF^{(n)}(s)\) |
| 9 | \(\mathcal L\{t^2\cos at\}\) | \(\dfrac{2s(s^2-3a^2)}{(s^2+a^2)^3}\) |
| 10 | \(\mathcal L\{t^3e^t\}\) | \(\dfrac6{(s-1)^4}\) |
| 11 | Position response | \(x(t)=\dfrac52(1-e^{-2t})\), limit \(=\dfrac52\) |
| 12(i) | Inverse Laplace | \(4(1-e^{-3t})\) |
| 12(ii) | Inverse Laplace | \(e^{-2t}+e^{-4t}\) |
| 13 | \(y'+5y=10,\ y(0)=1\) | \(2-e^{-5t}\) |
| 14 | \(y'+2y=2t,\ y(0)=0\) | \(t-\dfrac12+\dfrac12e^{-2t}\) |
| 15 | \(y'+2y=2e^t,\ y(0)=0\) | \(\dfrac23(e^t-e^{-2t})\) |
| 16 | \(y''+2y'+y=0\) | \(2te^{-t}\) |
| 17 | \(y''+y=\sin3t\) | \(\dfrac38\sin t-\dfrac18\sin3t\) |
| 18 | \(y''+25y=10\cos5t\) | \(2\cos5t+t\sin5t\) |
| 19 | \(y''-4y'+4y=64\sin2t\) | \(-8e^{2t}+17te^{2t}+8\cos2t\) |

## Key Formulas

### Vector calculus

**Gradient**

$$
\nabla\phi
=
\mathbf i\frac{\partial\phi}{\partial x}
+
\mathbf j\frac{\partial\phi}{\partial y}
+
\mathbf k\frac{\partial\phi}{\partial z}.
$$

**Divergence**

$$
\nabla\cdot\mathbf A
=
\frac{\partial A_1}{\partial x}
+
\frac{\partial A_2}{\partial y}
+
\frac{\partial A_3}{\partial z}.
$$

**Directional derivative**

$$
D_{\hat{\mathbf u}}\phi
=
\nabla\phi\cdot\hat{\mathbf u}.
$$

**Surface normal**

For \(F(x,y,z)=C\),

$$
\mathbf n\parallel\nabla F.
$$

**Scalar triple product**

$$
\mathbf a\cdot(\mathbf b\times\mathbf c).
$$

**Parallelepiped volume**

$$
V
=
\left|\mathbf a\cdot(\mathbf b\times\mathbf c)\right|.
$$

**BAC-CAB**

$$
\mathbf a\times(\mathbf b\times\mathbf c)
=
(\mathbf a\cdot\mathbf c)\mathbf b
-
(\mathbf a\cdot\mathbf b)\mathbf c.
$$

**Parallelogram area**

$$
A=|\mathbf a\times\mathbf b|.
$$

### Laplace transform

**Definition**

$$
\mathcal L\{f(t)\}
=
\int_0^\infty e^{-st}f(t)\,dt.
$$

**Multiplication by \(t^n\)**

$$
\mathcal L\{t^nf(t)\}
=
(-1)^n\frac{d^nF(s)}{ds^n}.
$$

**First derivative**

$$
\mathcal L\{f'(t)\}
=
sF(s)-f(0).
$$

**Second derivative**

$$
\mathcal L\{f''(t)\}
=
s^2F(s)-sf(0)-f'(0).
$$

**Third derivative**

$$
\mathcal L\{f'''(t)\}
=
s^3F(s)-s^2f(0)-sf'(0)-f''(0).
$$

**First shifting property**

If

$$
\mathcal L\{f(t)\}=F(s),
$$

then

$$
\mathcal L\{e^{at}f(t)\}
=
F(s-a).
$$

**Basic transforms**

$$
\mathcal L\{1\}=\frac1s,
\qquad
\mathcal L\{t^n\}=\frac{n!}{s^{n+1}},
$$

$$
\mathcal L\{\cos at\}
=
\frac{s}{s^2+a^2},
\qquad
\mathcal L\{\sin at\}
=
\frac{a}{s^2+a^2},
$$

$$
\mathcal L\{e^{at}\}
=
\frac1{s-a}.
$$
