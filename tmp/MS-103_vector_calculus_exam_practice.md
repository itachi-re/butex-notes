# MS-103: Vector Calculus — Exam-Style Practice (Problems, Proofs, Full Solutions)

GitHub-math formatted. Same style as the model-answer set: **Problem → Method → Working → boxed answer**. All numerical answers have been checked.

## Contents

**Part A — Computational problems**

1. [A1. Directional derivative and maximum rate of change](#a1-directional-derivative-and-maximum-rate-of-change)
2. [A2. Angle between two surfaces](#a2-angle-between-two-surfaces)
3. [A3. Tangent plane and normal line](#a3-tangent-plane-and-normal-line)
4. [A4. Unit vector perpendicular to two vectors](#a4-unit-vector-perpendicular-to-two-vectors)
5. [A5. Shortest distance between skew lines](#a5-shortest-distance-between-skew-lines)
6. [A6. Volume of a tetrahedron](#a6-volume-of-a-tetrahedron)
7. [A7. Area of a triangle in space](#a7-area-of-a-triangle-in-space)
8. [A8. Conservative field, potential and work done](#a8-conservative-field-potential-and-work-done)
9. [A9. Divergence and curl](#a9-divergence-and-curl)
10. [A10. Irrotational field: finding constants and potential](#a10-irrotational-field-finding-constants-and-potential)

**Part B — Proofs**

11. [B1. Lagrange's identity](#b1-lagranges-identity)
12. [B2. Jacobi identity](#b2-jacobi-identity)
13. [B3. Collinearity condition and triangle area](#b3-collinearity-condition-and-triangle-area)
14. [B4. Sine rule by vectors](#b4-sine-rule-by-vectors)
15. [B5. div(curl A) = 0 and curl(grad φ) = 0](#b5-divcurl-a--0-and-curlgrad-φ--0)
16. [B6. Product rules for div and curl](#b6-product-rules-for-div-and-curl)
17. [B7. Results on r and rⁿ](#b7-results-on-r-and-rⁿ)
18. [B8. Geometry by vector methods](#b8-geometry-by-vector-methods)

[Quick revision answers](#quick-revision-answers) · [Exam tips](#exam-tips)

---

# Part A — Computational Problems

## A1. Directional derivative and maximum rate of change

**Problem.** Find the directional derivative of $`\phi = x^2yz + 4xz^2`$ at $`(1,-2,-1)`$ in the direction $`2\mathbf i - \mathbf j - 2\mathbf k`$. Also find the greatest rate of increase of $`\phi`$ at that point.

**Method.** $`D_{\hat{\mathbf u}}\phi = \nabla\phi\cdot\hat{\mathbf u}`$. The maximum rate is $`|\nabla\phi|`$, in the direction of $`\nabla\phi`$.

**Solution.**

```math
\nabla\phi = (2xyz + 4z^2)\mathbf i + x^2z\,\mathbf j + (x^2y + 8xz)\mathbf k
```

At $`(1,-2,-1)`$: $`2(1)(-2)(-1)+4 = 8`$, $`x^2z = -1`$, $`x^2y+8xz = -2-8 = -10`$. So

```math
\nabla\phi = 8\mathbf i - \mathbf j - 10\mathbf k
```

Unit vector: $`\hat{\mathbf u} = \dfrac{2\mathbf i - \mathbf j - 2\mathbf k}{3}`$.

```math
D_{\hat{\mathbf u}}\phi = \frac{16 + 1 + 20}{3} = \boxed{\frac{37}{3}}
```

```math
\text{Maximum rate} = |\nabla\phi| = \sqrt{64+1+100} = \boxed{\sqrt{165}}
```

---

## A2. Angle between two surfaces

**Problem.** Find the angle between the surfaces $`x^2+y^2+z^2 = 9`$ and $`z = x^2+y^2-3`$ at the point $`(2,-1,2)`$.

**Method.** The angle between surfaces is the angle between their normals $`\nabla F_1`$ and $`\nabla F_2`$.

**Solution.** Check the point: $`4+1+4 = 9`$ ✓ and $`4+1-3 = 2`$ ✓.

Let $`F_1 = x^2+y^2+z^2-9`$, $`F_2 = x^2+y^2-z-3`$.

```math
\nabla F_1 = (2x, 2y, 2z)\big|_{(2,-1,2)} = (4,-2,4),
\qquad
\nabla F_2 = (2x, 2y, -1)\big|_{(2,-1,2)} = (4,-2,-1)
```

```math
\nabla F_1\cdot\nabla F_2 = 16 + 4 - 4 = 16,\qquad
|\nabla F_1| = 6,\qquad |\nabla F_2| = \sqrt{21}
```

```math
\cos\theta = \frac{16}{6\sqrt{21}} = \frac{8}{3\sqrt{21}}
\quad\Longrightarrow\quad
\boxed{\theta = \cos^{-1}\!\left(\frac{8}{3\sqrt{21}}\right)}
```

---

## A3. Tangent plane and normal line

**Problem.** Find the equations of the tangent plane and normal line to $`x^2 + 2y^2 + 3z^2 = 21`$ at $`(1,2,2)`$.

**Solution.** Check: $`1 + 8 + 12 = 21`$ ✓.

```math
\nabla F = (2x, 4y, 6z)\big|_{(1,2,2)} = (2, 8, 12) \parallel (1, 4, 6)
```

**Tangent plane:**

```math
1(x-1) + 4(y-2) + 6(z-2) = 0
\;\Longrightarrow\;
\boxed{x + 4y + 6z = 21}
```

**Normal line:**

```math
\boxed{\frac{x-1}{1} = \frac{y-2}{4} = \frac{z-2}{6}}
```

---

## A4. Unit vector perpendicular to two vectors

**Problem.** Find a unit vector perpendicular to both $`\mathbf a = 2\mathbf i - 6\mathbf j - 3\mathbf k`$ and $`\mathbf b = 4\mathbf i + 3\mathbf j - \mathbf k`$.

**Method.** $`\mathbf a\times\mathbf b`$ is perpendicular to both.

```math
\mathbf a\times\mathbf b =
\begin{vmatrix}
\mathbf i & \mathbf j & \mathbf k\\
2 & -6 & -3\\
4 & 3 & -1
\end{vmatrix}
= \mathbf i(6+9) - \mathbf j(-2+12) + \mathbf k(6+24)
= 15\mathbf i - 10\mathbf j + 30\mathbf k
```

Magnitude: $`\sqrt{225+100+900} = 35`$.

```math
\hat{\mathbf n} = \boxed{\frac{3\mathbf i - 2\mathbf j + 6\mathbf k}{7}}
\qquad(\text{or its negative})
```

---

## A5. Shortest distance between skew lines

**Problem.** Find the shortest distance between the lines

```math
\mathbf r = (1,1,0) + t(1,2,1), \qquad \mathbf r = (2,1,-1) + s(2,-1,1)
```

**Formula.** For $`\mathbf r = \mathbf a_1 + t\mathbf b_1`$ and $`\mathbf r = \mathbf a_2 + s\mathbf b_2`$:

```math
d = \frac{\left|(\mathbf a_2 - \mathbf a_1)\cdot(\mathbf b_1\times\mathbf b_2)\right|}{|\mathbf b_1\times\mathbf b_2|}
```

**Solution.**

```math
\mathbf b_1\times\mathbf b_2 =
\begin{vmatrix}
\mathbf i & \mathbf j & \mathbf k\\
1 & 2 & 1\\
2 & -1 & 1
\end{vmatrix}
= \mathbf i(2+1) - \mathbf j(1-2) + \mathbf k(-1-4) = (3, 1, -5)
```

$`|\mathbf b_1\times\mathbf b_2| = \sqrt{35}`$ and $`\mathbf a_2 - \mathbf a_1 = (1,0,-1)`$.

```math
(\mathbf a_2-\mathbf a_1)\cdot(\mathbf b_1\times\mathbf b_2) = 3 + 0 + 5 = 8
\;\Longrightarrow\;
\boxed{d = \frac{8}{\sqrt{35}}}
```

---

## A6. Volume of a tetrahedron

**Problem.** Find the volume of the tetrahedron with vertices $`A(1,1,1)`$, $`B(2,1,3)`$, $`C(3,2,2)`$, $`D(3,3,4)`$.

**Method.** $`V = \dfrac16\left|[\overrightarrow{AB}\;\overrightarrow{AC}\;\overrightarrow{AD}]\right|`$.

**Solution.** $`\overrightarrow{AB} = (1,0,2)`$, $`\overrightarrow{AC} = (2,1,1)`$, $`\overrightarrow{AD} = (2,2,3)`$.

```math
\begin{vmatrix}
1 & 0 & 2\\
2 & 1 & 1\\
2 & 2 & 3
\end{vmatrix}
= 1(3-2) - 0 + 2(4-2) = 1 + 4 = 5
```

```math
\boxed{V = \frac56 \text{ cubic units}}
```

---

## A7. Area of a triangle in space

**Problem.** Find the area of the triangle with vertices $`A(1,1,2)`$, $`B(2,3,5)`$, $`C(1,5,5)`$.

**Method.** $`\text{Area} = \tfrac12\left|\overrightarrow{AB}\times\overrightarrow{AC}\right|`$.

**Solution.** $`\overrightarrow{AB} = (1,2,3)`$, $`\overrightarrow{AC} = (0,4,3)`$.

```math
\overrightarrow{AB}\times\overrightarrow{AC} =
\begin{vmatrix}
\mathbf i & \mathbf j & \mathbf k\\
1 & 2 & 3\\
0 & 4 & 3
\end{vmatrix}
= \mathbf i(6-12) - \mathbf j(3-0) + \mathbf k(4-0) = (-6,-3,4)
```

```math
\boxed{\text{Area} = \frac{\sqrt{36+9+16}}{2} = \frac{\sqrt{61}}{2}}
```

---

## A8. Conservative field, potential and work done

**Problem.** Show that $`\mathbf F = (2xy + z^3)\mathbf i + x^2\mathbf j + 3xz^2\mathbf k`$ is conservative. Find its scalar potential and the work done in moving a particle from $`(1,-2,1)`$ to $`(3,1,4)`$.

**Method.** $`\mathbf F`$ is conservative iff $`\nabla\times\mathbf F = \mathbf 0`$. Then $`\mathbf F = \nabla\phi`$ and $`W = \phi(B) - \phi(A)`$.

**Solution.** With $`P = 2xy+z^3`$, $`Q = x^2`$, $`R = 3xz^2`$:

```math
\frac{\partial R}{\partial y} - \frac{\partial Q}{\partial z} = 0 - 0 = 0,\quad
\frac{\partial P}{\partial z} - \frac{\partial R}{\partial x} = 3z^2 - 3z^2 = 0,\quad
\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} = 2x - 2x = 0
```

So $`\nabla\times\mathbf F = \mathbf 0`$ and $`\mathbf F`$ is conservative.

Find $`\phi`$ by integration:

```math
\phi_x = 2xy + z^3 \Rightarrow \phi = x^2y + xz^3 + g(y,z)
```

```math
\phi_y = x^2 + g_y = x^2 \Rightarrow g_y = 0,\qquad
\phi_z = 3xz^2 + g_z = 3xz^2 \Rightarrow g_z = 0
```

```math
\boxed{\phi = x^2y + xz^3 + C}
```

Work done:

```math
\phi(3,1,4) = 9 + 192 = 201,\qquad \phi(1,-2,1) = -2 + 1 = -1
```

```math
\boxed{W = 201 - (-1) = 202}
```

---

## A9. Divergence and curl

**Problem.** For $`\mathbf F = x^2y\,\mathbf i + y^2z\,\mathbf j + z^2x\,\mathbf k`$, find $`\nabla\cdot\mathbf F`$ and $`\nabla\times\mathbf F`$.

**Solution.**

```math
\nabla\cdot\mathbf F = 2xy + 2yz + 2zx = \boxed{2(xy+yz+zx)}
```

```math
\nabla\times\mathbf F =
\begin{vmatrix}
\mathbf i & \mathbf j & \mathbf k\\
\partial_x & \partial_y & \partial_z\\
x^2y & y^2z & z^2x
\end{vmatrix}
= \mathbf i(0 - y^2) - \mathbf j(z^2 - 0) + \mathbf k(0 - x^2)
```

```math
\boxed{\nabla\times\mathbf F = -(y^2\mathbf i + z^2\mathbf j + x^2\mathbf k)}
```

Since the curl is non-zero, $`\mathbf F`$ is **not** conservative.

---

## A10. Irrotational field: finding constants and potential

**Problem.** Find $`a, b, c`$ such that $`\mathbf F = (x+2y+az)\mathbf i + (bx - 3y - z)\mathbf j + (4x + cy + 2z)\mathbf k`$ is irrotational. Then find $`\phi`$ with $`\mathbf F = \nabla\phi`$.

**Solution.** Setting $`\nabla\times\mathbf F = \mathbf 0`$:

```math
\mathbf i:\; c - (-1) = 0 \Rightarrow c = -1,\qquad
\mathbf j:\; a - 4 = 0 \Rightarrow a = 4,\qquad
\mathbf k:\; b - 2 = 0 \Rightarrow b = 2
```

```math
\boxed{a = 4,\quad b = 2,\quad c = -1}
```

Now $`\mathbf F = (x+2y+4z,\; 2x-3y-z,\; 4x-y+2z)`$.

```math
\phi_x = x + 2y + 4z \Rightarrow \phi = \tfrac{x^2}{2} + 2xy + 4xz + g(y,z)
```

```math
\phi_y = 2x + g_y = 2x - 3y - z \Rightarrow g = -\tfrac{3y^2}{2} - yz + h(z)
```

```math
\phi_z = 4x - y + h'(z) = 4x - y + 2z \Rightarrow h = z^2
```

```math
\boxed{\phi = \frac{x^2}{2} - \frac{3y^2}{2} + z^2 + 2xy + 4xz - yz + C}
```

---

# Part B — Proofs

## B1. Lagrange's identity

**Prove.** $`(\mathbf a\times\mathbf b)\cdot(\mathbf c\times\mathbf d) = (\mathbf a\cdot\mathbf c)(\mathbf b\cdot\mathbf d) - (\mathbf a\cdot\mathbf d)(\mathbf b\cdot\mathbf c)`$. Deduce $`|\mathbf a\times\mathbf b|^2 = |\mathbf a|^2|\mathbf b|^2 - (\mathbf a\cdot\mathbf b)^2`$.

**Proof.** The scalar triple product is unchanged by cyclic interchange of dot and cross, so $`(\mathbf a\times\mathbf b)\cdot\mathbf X = \mathbf a\cdot(\mathbf b\times\mathbf X)`$. Take $`\mathbf X = \mathbf c\times\mathbf d`$:

```math
(\mathbf a\times\mathbf b)\cdot(\mathbf c\times\mathbf d) = \mathbf a\cdot\bigl[\mathbf b\times(\mathbf c\times\mathbf d)\bigr]
```

By the vector triple product, $`\mathbf b\times(\mathbf c\times\mathbf d) = (\mathbf b\cdot\mathbf d)\mathbf c - (\mathbf b\cdot\mathbf c)\mathbf d`$. Hence

```math
= (\mathbf b\cdot\mathbf d)(\mathbf a\cdot\mathbf c) - (\mathbf b\cdot\mathbf c)(\mathbf a\cdot\mathbf d)
\qquad\blacksquare
```

**Deduction.** Put $`\mathbf c = \mathbf a`$, $`\mathbf d = \mathbf b`$:

```math
|\mathbf a\times\mathbf b|^2 = |\mathbf a|^2|\mathbf b|^2 - (\mathbf a\cdot\mathbf b)^2
```

This is the identity $`\sin^2\theta = 1-\cos^2\theta`$ in vector form.

---

## B2. Jacobi identity

**Prove.** $`\mathbf a\times(\mathbf b\times\mathbf c) + \mathbf b\times(\mathbf c\times\mathbf a) + \mathbf c\times(\mathbf a\times\mathbf b) = \mathbf 0`$.

**Proof.** Expand each term using $`\mathbf x\times(\mathbf y\times\mathbf z) = (\mathbf x\cdot\mathbf z)\mathbf y - (\mathbf x\cdot\mathbf y)\mathbf z`$:

```math
\begin{aligned}
\mathbf a\times(\mathbf b\times\mathbf c) &= (\mathbf a\cdot\mathbf c)\mathbf b - (\mathbf a\cdot\mathbf b)\mathbf c\\
\mathbf b\times(\mathbf c\times\mathbf a) &= (\mathbf b\cdot\mathbf a)\mathbf c - (\mathbf b\cdot\mathbf c)\mathbf a\\
\mathbf c\times(\mathbf a\times\mathbf b) &= (\mathbf c\cdot\mathbf b)\mathbf a - (\mathbf c\cdot\mathbf a)\mathbf b
\end{aligned}
```

Adding, the $`\mathbf b`$ terms give $`(\mathbf a\cdot\mathbf c) - (\mathbf c\cdot\mathbf a) = 0`$, the $`\mathbf c`$ terms give $`-(\mathbf a\cdot\mathbf b)+(\mathbf b\cdot\mathbf a) = 0`$, and the $`\mathbf a`$ terms give $`-(\mathbf b\cdot\mathbf c)+(\mathbf c\cdot\mathbf b) = 0`$. So the sum is $`\mathbf 0`$. $`\blacksquare`$

---

## B3. Collinearity condition and triangle area

**Prove.** Points with position vectors $`\mathbf a,\mathbf b,\mathbf c`$ are collinear iff $`\mathbf a\times\mathbf b + \mathbf b\times\mathbf c + \mathbf c\times\mathbf a = \mathbf 0`$. Deduce that the area of triangle $`ABC`$ is $`\tfrac12|\mathbf a\times\mathbf b + \mathbf b\times\mathbf c + \mathbf c\times\mathbf a|`$.

**Proof.** $`A,B,C`$ are collinear iff $`\overrightarrow{AB}\parallel\overrightarrow{AC}`$, i.e. iff $`(\mathbf b-\mathbf a)\times(\mathbf c-\mathbf a) = \mathbf 0`$. Expand:

```math
\begin{aligned}
(\mathbf b-\mathbf a)\times(\mathbf c-\mathbf a)
&= \mathbf b\times\mathbf c - \mathbf b\times\mathbf a - \mathbf a\times\mathbf c + \mathbf a\times\mathbf a\\
&= \mathbf b\times\mathbf c + \mathbf a\times\mathbf b + \mathbf c\times\mathbf a
\end{aligned}
```

using $`\mathbf a\times\mathbf a = \mathbf 0`$ and anticommutativity. This gives the condition. $`\blacksquare`$

**Area.** $`\text{Area} = \tfrac12|\overrightarrow{AB}\times\overrightarrow{AC}|`$ equals the stated expression.

---

## B4. Sine rule by vectors

**Prove.** In triangle $`ABC`$ with sides $`a,b,c`$ opposite angles $`A,B,C`$: $`\dfrac{\sin A}{a} = \dfrac{\sin B}{b} = \dfrac{\sin C}{c}`$.

**Proof.** Represent the sides as vectors $`\mathbf a = \overrightarrow{BC}`$, $`\mathbf b = \overrightarrow{CA}`$, $`\mathbf c = \overrightarrow{AB}`$, so $`\mathbf a+\mathbf b+\mathbf c = \mathbf 0`$.

Substitute $`\mathbf c = -(\mathbf a+\mathbf b)`$:

```math
\mathbf b\times\mathbf c = -\mathbf b\times\mathbf a - \mathbf b\times\mathbf b = \mathbf a\times\mathbf b
```

```math
\mathbf c\times\mathbf a = -\mathbf a\times\mathbf a - \mathbf b\times\mathbf a = \mathbf a\times\mathbf b
```

So $`\mathbf a\times\mathbf b = \mathbf b\times\mathbf c = \mathbf c\times\mathbf a`$. Taking magnitudes, using that the angle between $`\mathbf a,\mathbf b`$ is $`\pi - C`$ (and similarly for the others), so each sine equals $`\sin C,\sin A,\sin B`$ respectively:

```math
ab\sin C = bc\sin A = ca\sin B
```

Dividing through by $`abc`$:

```math
\frac{\sin C}{c} = \frac{\sin A}{a} = \frac{\sin B}{b}
\qquad\blacksquare
```

---

## B5. div(curl A) = 0 and curl(grad φ) = 0

**Prove.** For sufficiently smooth fields (continuous second partial derivatives): (a) $`\nabla\cdot(\nabla\times\mathbf A) = 0`$; (b) $`\nabla\times(\nabla\phi) = \mathbf 0`$.

**Proof of (a).** With $`\mathbf A = (A_1,A_2,A_3)`$:

```math
\nabla\times\mathbf A = \left(\frac{\partial A_3}{\partial y} - \frac{\partial A_2}{\partial z},\;
\frac{\partial A_1}{\partial z} - \frac{\partial A_3}{\partial x},\;
\frac{\partial A_2}{\partial x} - \frac{\partial A_1}{\partial y}\right)
```

```math
\nabla\cdot(\nabla\times\mathbf A) =
\frac{\partial^2A_3}{\partial x\partial y} - \frac{\partial^2A_2}{\partial x\partial z}
+ \frac{\partial^2A_1}{\partial y\partial z} - \frac{\partial^2A_3}{\partial y\partial x}
+ \frac{\partial^2A_2}{\partial z\partial x} - \frac{\partial^2A_1}{\partial z\partial y}
```

Mixed partials are equal, so the six terms cancel in pairs. $`\blacksquare`$

**Proof of (b).** The $`\mathbf i`$-component of $`\nabla\times\nabla\phi`$ is

```math
\frac{\partial}{\partial y}\left(\frac{\partial\phi}{\partial z}\right) - \frac{\partial}{\partial z}\left(\frac{\partial\phi}{\partial y}\right) = 0
```

by equality of mixed partials. The $`\mathbf j`$- and $`\mathbf k`$-components vanish identically. $`\blacksquare`$

---

## B6. Product rules for div and curl

**Prove.** (a) $`\nabla\cdot(\phi\mathbf A) = \phi\,\nabla\cdot\mathbf A + \nabla\phi\cdot\mathbf A`$; (b) $`\nabla\times(\phi\mathbf A) = \phi\,\nabla\times\mathbf A + \nabla\phi\times\mathbf A`$.

**Proof of (a).**

```math
\nabla\cdot(\phi\mathbf A) = \sum \frac{\partial(\phi A_i)}{\partial x_i}
= \sum\left(\phi\frac{\partial A_i}{\partial x_i} + \frac{\partial\phi}{\partial x_i}A_i\right)
= \phi\,\nabla\cdot\mathbf A + \nabla\phi\cdot\mathbf A
\qquad\blacksquare
```

**Proof of (b).** The $`\mathbf i`$-component of $`\nabla\times(\phi\mathbf A)`$ is

```math
\frac{\partial(\phi A_3)}{\partial y} - \frac{\partial(\phi A_2)}{\partial z}
= \phi\left(\frac{\partial A_3}{\partial y} - \frac{\partial A_2}{\partial z}\right)
+ \left(\frac{\partial\phi}{\partial y}A_3 - \frac{\partial\phi}{\partial z}A_2\right)
```

The first bracket is $`\phi(\nabla\times\mathbf A)_x`$. The second is $`(\nabla\phi\times\mathbf A)_x`$. The other components follow cyclically. $`\blacksquare`$

---

## B7. Results on r and rⁿ

Let $`\mathbf r = x\mathbf i + y\mathbf j + z\mathbf k`$ and $`r = |\mathbf r|`$, so $`\dfrac{\partial r}{\partial x} = \dfrac{x}{r}`$ etc.

**(a) Prove** $`\nabla\cdot\mathbf r = 3`$ and $`\nabla\times\mathbf r = \mathbf 0`$.

```math
\nabla\cdot\mathbf r = \frac{\partial x}{\partial x}+\frac{\partial y}{\partial y}+\frac{\partial z}{\partial z} = 3
```

Every curl component has the form $`\partial_y z - \partial_z y = 0`$, so $`\nabla\times\mathbf r = \mathbf 0`$. $`\blacksquare`$

**(b) Prove** $`\nabla r^n = n\,r^{n-2}\,\mathbf r`$.

```math
\frac{\partial r^n}{\partial x} = n r^{n-1}\frac{\partial r}{\partial x} = n r^{n-1}\frac{x}{r} = n r^{n-2}x
```

and similarly for $`y,z`$. $`\blacksquare`$

**(c) Prove** $`\nabla^2 r^n = n(n+1)\,r^{n-2}`$.

```math
\nabla^2 r^n = \nabla\cdot(n r^{n-2}\mathbf r) = n\left[\nabla(r^{n-2})\cdot\mathbf r + r^{n-2}\,\nabla\cdot\mathbf r\right]
```

By (b), $`\nabla(r^{n-2})\cdot\mathbf r = (n-2)r^{n-4}\,\mathbf r\cdot\mathbf r = (n-2)r^{n-2}`$, and $`\nabla\cdot\mathbf r = 3`$:

```math
\nabla^2 r^n = n\bigl[(n-2) + 3\bigr]r^{n-2} = n(n+1)\,r^{n-2}
\qquad\blacksquare
```

**(d) Prove** $`\nabla\cdot\dfrac{\mathbf r}{r^3} = 0`$ for $`r\neq 0`$.

```math
\nabla\cdot\left(r^{-3}\mathbf r\right) = r^{-3}(\nabla\cdot\mathbf r) + \nabla(r^{-3})\cdot\mathbf r
= 3r^{-3} + (-3r^{-5})\,\mathbf r\cdot\mathbf r = 3r^{-3} - 3r^{-3} = 0
\qquad\blacksquare
```

(This is why the inverse-square field has zero divergence away from the source.)

---

## B8. Geometry by vector methods

**(a) The diagonals of a rhombus are perpendicular.**

Let adjacent sides be $`\mathbf a,\mathbf b`$ with $`|\mathbf a| = |\mathbf b|`$. The diagonals are $`\mathbf a+\mathbf b`$ and $`\mathbf a-\mathbf b`$.

```math
(\mathbf a+\mathbf b)\cdot(\mathbf a-\mathbf b) = |\mathbf a|^2 - |\mathbf b|^2 = 0
\qquad\blacksquare
```

**(b) The diagonals of a parallelogram bisect each other.**

Take $`O`$ as one vertex with adjacent sides $`\mathbf a,\mathbf b`$, so the vertices are $`\mathbf 0,\mathbf a,\mathbf a+\mathbf b,\mathbf b`$. The midpoint of the diagonal from $`\mathbf 0`$ to $`\mathbf a+\mathbf b`$ is $`\tfrac12(\mathbf a+\mathbf b)`$. The midpoint of the diagonal from $`\mathbf a`$ to $`\mathbf b`$ is $`\tfrac12(\mathbf a+\mathbf b)`$. They coincide. $`\blacksquare`$

**(c) The angle in a semicircle is a right angle.**

Take the centre as origin, diameter endpoints $`\mathbf a`$ and $`-\mathbf a`$, and any point $`\mathbf p`$ on the circle, so $`|\mathbf p| = |\mathbf a|`$.

```math
(\mathbf p - \mathbf a)\cdot(\mathbf p + \mathbf a) = |\mathbf p|^2 - |\mathbf a|^2 = 0
```

So $`PA\perp PB`$. $`\blacksquare`$

---

# Quick Revision Answers

| Q | Topic | Final answer |
|---:|---|---|
| A1 | Directional derivative at $`(1,-2,-1)`$ | $`\dfrac{37}{3}`$; max rate $`\sqrt{165}`$ |
| A2 | Angle between surfaces | $`\cos^{-1}\dfrac{8}{3\sqrt{21}}`$ |
| A3 | Tangent plane / normal line | $`x+4y+6z=21`$; $`\dfrac{x-1}{1}=\dfrac{y-2}{4}=\dfrac{z-2}{6}`$ |
| A4 | Unit perpendicular vector | $`\dfrac{3\mathbf i-2\mathbf j+6\mathbf k}{7}`$ |
| A5 | Distance between skew lines | $`\dfrac{8}{\sqrt{35}}`$ |
| A6 | Tetrahedron volume | $`\dfrac56`$ |
| A7 | Triangle area | $`\dfrac{\sqrt{61}}{2}`$ |
| A8 | Potential and work | $`\phi = x^2y+xz^3`$; $`W = 202`$ |
| A9 | div and curl | $`2(xy+yz+zx)`$; $`-(y^2\mathbf i+z^2\mathbf j+x^2\mathbf k)`$ |
| A10 | Irrotational constants | $`a=4,\ b=2,\ c=-1`$ |
| B1 | Lagrange identity | $`(\mathbf a\cdot\mathbf c)(\mathbf b\cdot\mathbf d)-(\mathbf a\cdot\mathbf d)(\mathbf b\cdot\mathbf c)`$ |
| B2 | Jacobi identity | Sum of three triple products $`=\mathbf 0`$ |
| B3 | Collinearity | $`\mathbf a\times\mathbf b+\mathbf b\times\mathbf c+\mathbf c\times\mathbf a=\mathbf 0`$ |
| B4 | Sine rule | From $`\mathbf a\times\mathbf b=\mathbf b\times\mathbf c=\mathbf c\times\mathbf a`$ |
| B5 | $`\nabla\cdot(\nabla\times\mathbf A)`$, $`\nabla\times\nabla\phi`$ | Both zero (mixed partials) |
| B6 | Product rules | $`\phi\nabla\cdot\mathbf A+\nabla\phi\cdot\mathbf A`$; $`\phi\nabla\times\mathbf A+\nabla\phi\times\mathbf A`$ |
| B7 | $`\nabla r^n`$, $`\nabla^2r^n`$ | $`nr^{n-2}\mathbf r`$; $`n(n+1)r^{n-2}`$ |
| B8 | Vector geometry | Rhombus, parallelogram, semicircle |

# Exam Tips

- **Normal to a surface:** always use $`\nabla F`$ with $`F(x,y,z) = C`$ moved to one side. Evaluate at the point *before* simplifying.
- **Check the point lies on the surface** first; it often supplies an extra equation for unknown constants (as in Q2 of the homework set).
- **Triple product:** a zero determinant means coplanar; its absolute value is the parallelepiped volume (divide by 6 for a tetrahedron).
- **Proofs:** state the identity you rely on (BAC–CAB, cyclic triple product, equality of mixed partials) by name, since marks are given for the method.
- **Conservative field:** test the curl, then integrate $`\phi_x`$, $`\phi_y`$, $`\phi_z`$ in turn, carrying the unknown function of the remaining variables.
