# Scalar Potential and Divergence: Exam-Style Problems

Ten problems on each topic, with full solutions. Solutions are collapsed; click to expand.

## Quick Reference

| Concept | Formula |
|---|---|
| Gradient | $\nabla\phi = \left(\frac{\partial\phi}{\partial x},\frac{\partial\phi}{\partial y},\frac{\partial\phi}{\partial z}\right)$ |
| Divergence | $\nabla\cdot\mathbf F = \frac{\partial F_x}{\partial x}+\frac{\partial F_y}{\partial y}+\frac{\partial F_z}{\partial z}$ |
| Curl test for a potential | $\mathbf F=\nabla\phi \iff \nabla\times\mathbf F=\mathbf 0$ (simply connected domain) |
| Path independence | $\int_A^B \mathbf F\cdot d\mathbf r=\phi(B)-\phi(A)$ |
| Directional derivative | $D_{\hat u}\phi=\nabla\phi\cdot\hat u$ ($\hat u$ a unit vector) |
| Divergence theorem | $\oiint_S \mathbf F\cdot\hat n\,dS=\iiint_V \nabla\cdot\mathbf F\,dV$ |
| Product rule | $\nabla\cdot(\phi\mathbf F)=\nabla\phi\cdot\mathbf F+\phi\,\nabla\cdot\mathbf F$ |
| Laplacian | $\nabla^2\phi=\nabla\cdot(\nabla\phi)$ |

**Cylindrical** $(\rho,\varphi,z)$:
$\nabla\cdot\mathbf F=\frac1\rho\frac{\partial(\rho F_\rho)}{\partial\rho}+\frac1\rho\frac{\partial F_\varphi}{\partial\varphi}+\frac{\partial F_z}{\partial z}$

**Spherical** $(r,\theta,\varphi)$:
$\nabla\cdot\mathbf F=\frac1{r^2}\frac{\partial(r^2F_r)}{\partial r}+\frac1{r\sin\theta}\frac{\partial(\sin\theta\,F_\theta)}{\partial\theta}+\frac1{r\sin\theta}\frac{\partial F_\varphi}{\partial\varphi}$

---

# Part A: Scalar Potential

## A1. Finding a potential

Show that $\mathbf F=(2xy+z^3,\;x^2,\;3xz^2)$ is conservative and find a scalar potential $\phi$.

<details>
<summary>Solution</summary>

Curl components:

- $(\nabla\times\mathbf F)_x=\partial_yF_z-\partial_zF_y=0-0=0$
- $(\nabla\times\mathbf F)_y=\partial_zF_x-\partial_xF_z=3z^2-3z^2=0$
- $(\nabla\times\mathbf F)_z=\partial_xF_y-\partial_yF_x=2x-2x=0$

So $\nabla\times\mathbf F=\mathbf 0$ on $\mathbb R^3$, and $\mathbf F$ is conservative.

Integrate $\partial_x\phi=2xy+z^3$: $\phi=x^2y+xz^3+g(y,z)$.

$\partial_y\phi=x^2+g_y=x^2\Rightarrow g_y=0$, so $g=g(z)$.

$\partial_z\phi=3xz^2+g'(z)=3xz^2\Rightarrow g'=0$.

$$\boxed{\phi=x^2y+xz^3+C}$$

</details>

## A2. Testing for a potential

Decide whether $\mathbf F=(x^2y,\;xy^2,\;z)$ has a scalar potential.

<details>
<summary>Solution</summary>

Check the $z$-component of the curl:

$$(\nabla\times\mathbf F)_z=\partial_x(xy^2)-\partial_y(x^2y)=y^2-x^2\neq0.$$

The curl is nonzero, so **no scalar potential exists**. The field is not conservative.

</details>

## A3. Potential of a trigonometric-exponential field

Find $\phi$ for $\mathbf F=(e^x\cos y,\;-e^x\sin y,\;2z)$.

<details>
<summary>Solution</summary>

Curl: $\partial_yF_x=-e^x\sin y=\partial_xF_y$, and all $z$-derivatives of $F_x,F_y$ and $x,y$-derivatives of $F_z$ vanish. So $\nabla\times\mathbf F=\mathbf 0$.

$\phi=\int e^x\cos y\,dx=e^x\cos y+g(y,z)$.

$\partial_y\phi=-e^x\sin y+g_y=-e^x\sin y\Rightarrow g_y=0$.

$\partial_z\phi=g_z=2z\Rightarrow g=z^2$.

$$\boxed{\phi=e^x\cos y+z^2+C}$$

</details>

## A4. Line integral by potential

Using the field of A1, evaluate $\displaystyle\int_C\mathbf F\cdot d\mathbf r$ along any curve $C$ from $(0,0,0)$ to $(1,2,1)$.

<details>
<summary>Solution</summary>

Because $\mathbf F=\nabla\phi$, the integral depends only on the endpoints:

$$\int_C\mathbf F\cdot d\mathbf r=\phi(1,2,1)-\phi(0,0,0).$$

$\phi(1,2,1)=1^2\cdot2+1\cdot1^3=3$ and $\phi(0,0,0)=0$.

$$\boxed{3}$$

</details>

## A5. Inverse-square field

Find a scalar potential for $\mathbf F=\dfrac{\mathbf r}{r^3}$ on $\mathbb R^3\setminus\{0\}$, where $r=|\mathbf r|$.

<details>
<summary>Solution</summary>

For a radial function, $\nabla f(r)=f'(r)\,\hat{\mathbf r}=f'(r)\,\mathbf r/r$.

We need $f'(r)/r=1/r^3$, so $f'(r)=1/r^2$ and $f(r)=-1/r$.

Check: $\nabla(-1/r)=\mathbf r/r^3$. ✓

$$\boxed{\phi=-\frac1r+C}$$

</details>

## A6. Determining constants

Find the constants $a,b$ for which $\mathbf F=(axy+z^3,\;x^2+bz,\;3xz^2+y)$ is conservative, then find $\phi$.

<details>
<summary>Solution</summary>

Conditions from the mixed partial derivatives:

- $\partial_yF_x=\partial_xF_y$: $ax=2x\Rightarrow a=2$
- $\partial_zF_x=\partial_xF_z$: $3z^2=3z^2$ ✓
- $\partial_zF_y=\partial_yF_z$: $b=1$

So $a=2,\ b=1$. Then $\partial_x\phi=2xy+z^3\Rightarrow\phi=x^2y+xz^3+g(y,z)$.

$\partial_y\phi=x^2+g_y=x^2+z\Rightarrow g=yz+h(z)$.

$\partial_z\phi=3xz^2+y+h'(z)=3xz^2+y\Rightarrow h'=0$.

$$\boxed{a=2,\ b=1,\quad \phi=x^2y+xz^3+yz+C}$$

</details>

## A7. Directional derivative of a potential

Let $\phi=x^2y+yz$. Find the rate of change of $\phi$ at $P(1,2,-1)$ in the direction of $\mathbf v=(2,-1,2)$, and the maximum rate of change at $P$.

<details>
<summary>Solution</summary>

$\nabla\phi=(2xy,\;x^2+z,\;y)$. At $P$: $\nabla\phi=(4,\,0,\,2)$.

Unit vector: $|\mathbf v|=\sqrt{4+1+4}=3$, so $\hat u=\tfrac13(2,-1,2)$.

$$D_{\hat u}\phi=\tfrac13(8+0+4)=\boxed{4}$$

Maximum rate is $|\nabla\phi|=\sqrt{16+0+4}=\boxed{2\sqrt5}$, attained along $\nabla\phi$.

</details>

## A8. Equipotential surface and tangent plane

For $\phi=x^2y+yz$, find the unit normal and the tangent plane at $P(1,2,-1)$ to the equipotential surface through $P$.

<details>
<summary>Solution</summary>

$\phi(P)=2-2=0$, so the surface is $x^2y+yz=0$.

The gradient is normal to level surfaces: $\nabla\phi(P)=(4,0,2)$, so

$$\hat n=\frac{(4,0,2)}{\sqrt{20}}=\boxed{\frac{1}{\sqrt5}(2,0,1)}.$$

Tangent plane: $4(x-1)+0(y-2)+2(z+1)=0$, that is

$$\boxed{2x+z=1}.$$

Check with $P$: $2(1)+(-1)=1$ ✓

</details>

## A9. A non-conservative field

Let $\mathbf F=(-y,\;x,\;0)$. Compute $\oint_C\mathbf F\cdot d\mathbf r$ around the unit circle $x^2+y^2=1,\ z=0$, counterclockwise. What does the result say about a potential?

<details>
<summary>Solution</summary>

Parametrize $\mathbf r=(\cos t,\sin t,0)$, $0\le t\le2\pi$, so $d\mathbf r=(-\sin t,\cos t,0)\,dt$ and $\mathbf F=(-\sin t,\cos t,0)$.

$$\oint_C\mathbf F\cdot d\mathbf r=\int_0^{2\pi}(\sin^2t+\cos^2t)\,dt=\boxed{2\pi}.$$

A conservative field has zero circulation on every closed loop. Since this is nonzero, **no scalar potential exists**. Consistently, $\nabla\times\mathbf F=(0,0,2)\neq\mathbf 0$.

</details>

## A10. Electrostatic potential

A 2D potential is $V(x,y)=x^2-y^2$ (volts). (a) Find $\mathbf E=-\nabla V$. (b) Show $V$ satisfies Laplace's equation. (c) Find the work done by the field on a charge $q$ moved from $(0,0)$ to $(1,1)$.

<details>
<summary>Solution</summary>

(a) $\mathbf E=-\nabla V=\boxed{(-2x,\;2y)}$.

(b) $\nabla^2V=\partial_x^2V+\partial_y^2V=2-2=0$ ✓. Since $\nabla\cdot\mathbf E=-\nabla^2V=0$, there is no charge density in the region.

(c) $W=q\int\mathbf E\cdot d\mathbf r=-q\,[V(1,1)-V(0,0)]=-q\,(0-0)=\boxed{0}$.

</details>

---

# Part B: Divergence

## B1. Computing a divergence

Compute $\nabla\cdot\mathbf F$ for $\mathbf F=(x^2y,\;y^2z,\;z^2x)$ and evaluate it at $(1,1,1)$.

<details>
<summary>Solution</summary>

$$\nabla\cdot\mathbf F=2xy+2yz+2zx.$$

At $(1,1,1)$: $2+2+2=\boxed{6}$.

</details>

## B2. Position field and inverse-square field

Compute the divergence of (a) $\mathbf r=(x,y,z)$ and (b) $\mathbf r/r^3$ for $r\neq0$.

<details>
<summary>Solution</summary>

(a) $\nabla\cdot\mathbf r=1+1+1=\boxed{3}$.

(b) Use $\nabla\cdot(\phi\mathbf F)=\nabla\phi\cdot\mathbf F+\phi\nabla\cdot\mathbf F$ with $\phi=r^{-3}$, $\mathbf F=\mathbf r$:

$\nabla(r^{-3})=-3r^{-5}\mathbf r$, so

$$\nabla\cdot\frac{\mathbf r}{r^3}=-3r^{-5}(\mathbf r\cdot\mathbf r)+r^{-3}\cdot3=-\frac3{r^3}+\frac3{r^3}=\boxed{0}.$$

The inverse-square field is source-free everywhere except at the origin.

</details>

## B3. Solenoidal condition

Find $a$ such that $\mathbf F=(ax+y,\;2y-z^2,\;3z+xy)$ is solenoidal ($\nabla\cdot\mathbf F=0$).

<details>
<summary>Solution</summary>

$\nabla\cdot\mathbf F=a+2+3=a+5=0\Rightarrow\boxed{a=-5}$.

</details>

## B4. Flux through a sphere

Use the divergence theorem to find the outward flux of $\mathbf F=(x,y,z)$ through the sphere of radius $R$ centered at the origin. Verify with a direct surface computation.

<details>
<summary>Solution</summary>

Divergence theorem: $\nabla\cdot\mathbf F=3$, so

$$\Phi=\iiint_V3\,dV=3\cdot\tfrac43\pi R^3=\boxed{4\pi R^3}.$$

Direct: on the sphere $\hat n=\mathbf r/R$, so $\mathbf F\cdot\hat n=R$. Then $\Phi=R\cdot4\pi R^2=4\pi R^3$ ✓.

</details>

## B5. Flux of a cubic field

Find the outward flux of $\mathbf F=(x^3,\;y^3,\;z^3)$ through the unit sphere $x^2+y^2+z^2=1$.

<details>
<summary>Solution</summary>

$\nabla\cdot\mathbf F=3(x^2+y^2+z^2)=3r^2$.

$$\Phi=\iiint_{r\le1}3r^2\,dV=\int_0^1 3r^2\,(4\pi r^2)\,dr=12\pi\cdot\frac15=\boxed{\frac{12\pi}{5}}.$$

</details>

## B6. Flux out of a cube

Let $\mathbf F=(xy,\;yz,\;zx)$ and let $S$ be the surface of the cube $[0,1]^3$. Find the outward flux.

<details>
<summary>Solution</summary>

$\nabla\cdot\mathbf F=y+z+x$.

$$\Phi=\int_0^1\!\!\int_0^1\!\!\int_0^1(x+y+z)\,dx\,dy\,dz=\tfrac12+\tfrac12+\tfrac12=\boxed{\tfrac32}.$$

</details>

## B7. Product rule

Let $\phi=x^2+y^2+z^2$ and $\mathbf F=(x,y,z)$. Compute $\nabla\cdot(\phi\mathbf F)$ using the product rule and verify by direct differentiation.

<details>
<summary>Solution</summary>

Product rule: $\nabla\phi=2\mathbf r$, so

$$\nabla\cdot(\phi\mathbf F)=2\mathbf r\cdot\mathbf r+r^2\cdot3=2r^2+3r^2=\boxed{5r^2}.$$

Direct: $\phi\mathbf F=(x^3+xy^2+xz^2,\ \dots)$, and $\partial_x(x^3+xy^2+xz^2)=3x^2+y^2+z^2$. Summing the three components gives $5(x^2+y^2+z^2)=5r^2$ ✓.

</details>

## B8. Laplacian of a power of $r$

Show that $\nabla^2 r^n=n(n+1)\,r^{n-2}$ and find all $n$ for which $r^n$ is harmonic away from the origin.

<details>
<summary>Solution</summary>

$\nabla r^n=n\,r^{n-2}\,\mathbf r$. Then

$$\nabla\cdot(n\,r^{n-2}\mathbf r)=n\left[\nabla(r^{n-2})\cdot\mathbf r+r^{n-2}\cdot3\right]=n\left[(n-2)r^{n-2}+3r^{n-2}\right]=n(n+1)\,r^{n-2}.$$

Harmonic when $n(n+1)=0$:

$$\boxed{n=0\ \text{or}\ n=-1}$$

$n=-1$ is the Coulomb/Newton potential $1/r$.

</details>

## B9. Cylindrical coordinates

Compute $\nabla\cdot\mathbf F$ for $\mathbf F=\rho^2\,\hat{\boldsymbol\rho}+z\,\hat{\mathbf z}$ in cylindrical coordinates.

<details>
<summary>Solution</summary>

$$\nabla\cdot\mathbf F=\frac1\rho\frac{\partial}{\partial\rho}(\rho\cdot\rho^2)+\frac{\partial z}{\partial z}=\frac1\rho\cdot3\rho^2+1=\boxed{3\rho+1}.$$

</details>

## B10. Spherical coordinates

Compute $\nabla\cdot\mathbf F$ for $\mathbf F=r^2\,\hat{\mathbf r}+\dfrac{\sin\theta}{r}\,\hat{\boldsymbol\theta}$.

<details>
<summary>Solution</summary>

Radial part: $\dfrac1{r^2}\dfrac{\partial}{\partial r}(r^2\cdot r^2)=\dfrac{4r^3}{r^2}=4r$.

Polar part: $\dfrac1{r\sin\theta}\dfrac{\partial}{\partial\theta}\!\left(\sin\theta\cdot\dfrac{\sin\theta}{r}\right)=\dfrac1{r\sin\theta}\cdot\dfrac{2\sin\theta\cos\theta}{r}=\dfrac{2\cos\theta}{r^2}$.

$$\boxed{\nabla\cdot\mathbf F=4r+\frac{2\cos\theta}{r^2}}$$

</details>

---

## Common Exam Pitfalls

1. Always check $\nabla\times\mathbf F=\mathbf 0$ before hunting for a potential, and mention the domain (simply connected).
2. Convert to a **unit** vector before computing a directional derivative.
3. In curvilinear coordinates the divergence has extra factors ($\rho$, $r^2$, $\sin\theta$); the Cartesian formula does not apply.
4. Divergence theorem requires a closed surface, outward normal, and a field that is smooth inside. It fails for $\mathbf r/r^3$ if the origin is enclosed (there the flux is $4\pi$ despite $\nabla\cdot\mathbf F=0$ elsewhere).
5. A potential is defined only up to an additive constant.
