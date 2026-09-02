# Mathematics-II (MS 103 / AS 103) — BUTEX B.Sc. Textile Engineering
# Complete Solved Question Bank — 2017–2023

> Source: BUTEX Level-1 Term-II Final Examination papers, Mathematics-II, 2017–2023 (scanned PDF).
> Note: the 2017 paper is coded **AS 103** (Full Marks 105); 2018–2023 are coded **MS 103** (Full Marks 72, except 2018 header shows "Full Marks: 7" — clearly a scan/print artifact of "72").
> Per your instructions, **every** question and sub-question is solved in full, ignoring the original "answer any three" restriction.

---

## 2023

**Full Marks: 72 | Time: 3.0 Hrs.**

### Part A

#### Question 1 `[4+4+4=12]`

##### (a) Define homogeneous differential equation. Solve $(x^2+y^2)\,dx - 2xy\,dy = 0$.

**Definition.** A first-order differential equation $\dfrac{dy}{dx}=f(x,y)$ is called **homogeneous** if $f(x,y)$ is a homogeneous function of degree zero, i.e. $f(tx,ty)=f(x,y)$ for all $t$. Equivalently, $M(x,y)\,dx+N(x,y)\,dy=0$ is homogeneous if $M$ and $N$ are homogeneous functions of the same degree.

**Solution.** Here $M=x^2+y^2,\ N=-2xy$, both degree 2 — homogeneous.

Put $y=vx \Rightarrow dy = v\,dx + x\,dv$.

$$(x^2+v^2x^2)\,dx - 2x(vx)(v\,dx+x\,dv)=0$$
$$x^2(1+v^2)\,dx - 2vx^2(v\,dx+x\,dv)=0$$

Dividing by $x^2$:
$$(1+v^2)\,dx - 2v^2\,dx - 2vx\,dv = 0 \implies (1-v^2)\,dx = 2vx\,dv$$
$$\frac{dx}{x} = \frac{2v}{1-v^2}\,dv$$

Integrating (RHS: let $w=1-v^2,\ dw=-2v\,dv$):
$$\ln|x| = -\ln|1-v^2| + C \implies \ln\big|x(1-v^2)\big| = C$$
$$x(1-v^2) = C_1$$

Substituting back $v=y/x$:
$$x\left(1-\frac{y^2}{x^2}\right)=C_1 \implies x - \frac{y^2}{x} = C_1$$

$$\boxed{x^2 - y^2 = C_1 x}$$

##### (b) Write down the rules for finding the solution of an exact equation.

**Answer.** $M(x,y)\,dx+N(x,y)\,dy=0$ is **exact** iff $\dfrac{\partial M}{\partial y}=\dfrac{\partial N}{\partial x}$.

Rule for solving:
1. Verify $\partial M/\partial y = \partial N/\partial x$.
2. Integrate $M$ with respect to $x$, treating $y$ as constant: $u=\int M\,dx$.
3. Differentiate $u$ w.r.t. $y$ and compare with $N$; find any terms of $N$ **not** containing $x$ — call this $g(y)$.
4. The general solution is
$$\int M\,dx\ \Big|_{y\ \text{const}} \;+\; \int (\text{terms of }N\text{ free of }x)\,dy \;=\; C$$

##### (c) Solve $(1-x^2)\dfrac{dy}{dx} - xy = 1$.

**Solution.** Rewrite as linear in $y$:
$$\frac{dy}{dx} - \frac{x}{1-x^2}y = \frac{1}{1-x^2}$$

$P(x) = -\dfrac{x}{1-x^2}$. Integrating factor:
$$\text{IF} = e^{\int P\,dx} = \exp\left(\int \frac{-x}{1-x^2}dx\right)$$

Let $u=1-x^2,\ du=-2x\,dx$:
$$\int \frac{-x}{1-x^2}dx = \frac12\ln|1-x^2|$$
$$\text{IF} = e^{\frac12\ln(1-x^2)} = \sqrt{1-x^2}$$

General solution: $y\cdot\text{IF} = \displaystyle\int Q\cdot\text{IF}\,dx + C$

$$y\sqrt{1-x^2} = \int \frac{1}{1-x^2}\cdot\sqrt{1-x^2}\,dx + C = \int \frac{dx}{\sqrt{1-x^2}} + C = \sin^{-1}x + C$$

$$\boxed{y = \dfrac{\sin^{-1}x + C}{\sqrt{1-x^2}}}$$

---

#### Question 2 `[4+4+4=12]`

##### (a) Solve $\dfrac{dy}{dx} = 1 + e^{x-y}$.

**Solution.** Substitute $v = x-y \Rightarrow \dfrac{dv}{dx} = 1-\dfrac{dy}{dx} \Rightarrow \dfrac{dy}{dx}=1-\dfrac{dv}{dx}$.

$$1 - \frac{dv}{dx} = 1 + e^{v} \implies \frac{dv}{dx} = -e^{v}$$
$$e^{-v}\,dv = -dx \implies -e^{-v} = -x + C_1$$
$$e^{-v} = x + C \quad (C=-C_1)$$

Since $v=x-y$: $e^{-(x-y)} = x+C \implies e^{y-x}=x+C$

$$\boxed{y = x + \ln(x+C)}$$

##### (b) Solve $\dfrac{dy}{dx} = \dfrac{y}{x} + \tan\dfrac{y}{x}$.

**Solution.** Homogeneous equation. Put $y=vx \Rightarrow \dfrac{dy}{dx}=v+x\dfrac{dv}{dx}$.

$$v + x\frac{dv}{dx} = v + \tan v \implies x\frac{dv}{dx}=\tan v$$
$$\cot v\,dv = \frac{dx}{x}$$

Integrating: $\ln|\sin v| = \ln|x| + \ln C$

$$\sin v = Cx \implies \boxed{\sin\left(\frac{y}{x}\right) = Cx}$$

##### (c) Solve $\dfrac{d^2y}{dx^2} - 9\dfrac{dy}{dx} + 20y = 20x$.

**Solution.** Auxiliary equation: $m^2-9m+20=0 \Rightarrow (m-4)(m-5)=0 \Rightarrow m=4,5$.

$$y_c = C_1e^{4x}+C_2e^{5x}$$

For particular solution, since RHS is linear in $x$, try $y_p = ax+b$: $y_p'=a,\ y_p''=0$.
$$0 - 9a + 20(ax+b) = 20x$$
$$20ax + (20b-9a) = 20x + 0$$

Matching: $20a=20\Rightarrow a=1$; and $20b-9(1)=0\Rightarrow b=\dfrac{9}{20}$.

$$\boxed{y = C_1e^{4x}+C_2e^{5x} + x + \frac{9}{20}}$$

---

#### Question 3 `[4+4+4=12]`

##### (a) If $\vec a,\vec b,\vec c$ are three vectors, prove $\vec a\times(\vec b\times\vec c) = (\vec a\cdot\vec c)\vec b - (\vec a\cdot\vec b)\vec c$.

**Proof.** Let $\vec a=(a_1,a_2,a_3),\ \vec b=(b_1,b_2,b_3),\ \vec c=(c_1,c_2,c_3)$.

$$\vec b\times\vec c = (b_2c_3-b_3c_2,\ b_3c_1-b_1c_3,\ b_1c_2-b_2c_1)$$

$x$-component of $\vec a\times(\vec b\times\vec c)$:
$$a_2(b_1c_2-b_2c_1) - a_3(b_3c_1-b_1c_3) = b_1(a_2c_2+a_3c_3) - c_1(a_2b_2+a_3b_3)$$

Add and subtract $a_1b_1c_1$:
$$= b_1(a_1c_1+a_2c_2+a_3c_3) - c_1(a_1b_1+a_2b_2+a_3b_3) = b_1(\vec a\cdot\vec c) - c_1(\vec a\cdot\vec b)$$

By identical computation, the $y$- and $z$-components give $b_2(\vec a\cdot\vec c)-c_2(\vec a\cdot\vec b)$ and $b_3(\vec a\cdot\vec c)-c_3(\vec a\cdot\vec b)$.

$$\therefore \vec a\times(\vec b\times\vec c) = (\vec a\cdot\vec c)\vec b - (\vec a\cdot\vec b)\vec c \qquad \blacksquare$$

##### (b) Determine constants $a,b$ such that $\vec A=(2xy+3yz)\hat\imath+(x^2+axz-4z^2)\hat\jmath-(3xy+byz)\hat k$ is conservative.

**Solution.** A vector field is conservative iff $\text{curl}\,\vec A = \vec 0$, i.e. $\nabla\times\vec A=0$.

With $P=2xy+3yz,\ Q=x^2+axz-4z^2,\ R=-(3xy+byz)$:

$$\text{curl}\,\vec A = \left(\frac{\partial R}{\partial y}-\frac{\partial Q}{\partial z}\right)\hat\imath + \left(\frac{\partial P}{\partial z}-\frac{\partial R}{\partial x}\right)\hat\jmath + \left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)\hat k$$

**$\hat\imath$-component:** $\dfrac{\partial R}{\partial y}=-3x-bz,\ \dfrac{\partial Q}{\partial z}=ax-8z$
$$-3x-bz-(ax-8z) = -(3+a)x+(8-b)z = 0 \ \forall x,z \implies a=-3,\ b=8$$

**$\hat k$-component:** $\dfrac{\partial Q}{\partial x}=2x+az,\ \dfrac{\partial P}{\partial y}=2x+3z$
$$(2x+az)-(2x+3z) = (a-3)z = 0 \implies a=3$$

> **[Scanned text unclear]** — the $\hat\imath$-component gives $a=-3$ while the $\hat k$-component gives $a=3$, and the $\hat\jmath$-component ($\partial P/\partial z-\partial R/\partial x = 3y-(-3y)=6y$) cannot vanish for any choice of $a,b$ at all. This is inconsistent, and almost certainly reflects a misprint/OCR error in one coefficient of the original question (a common issue in these scanned past papers). Taking the two internally-consistent conditions that do **not** conflict with each other's *coefficient of $z$* (the $\hat\imath$-component, which is the standard form this problem takes in textbooks), the intended answer is most likely:
> $$\boxed{a=-3,\quad b=8}$$
> If your source paper differs in the $\hat\jmath$-term (e.g. it may read $(x^2+axz+4z^2)$ or the $y$-terms in $P,R$ differ), please check against your own copy — I'm happy to redo this with a corrected transcription.

##### (c) Find the value of $n$ for which the vector $r^n\vec r$ is solenoidal.

**Solution.** Let $\vec r = x\hat\imath+y\hat\jmath+z\hat k,\ r=|\vec r|$. A field is **solenoidal** if its divergence is zero.

Using $\nabla\cdot(\phi\vec F) = \phi\,\nabla\cdot\vec F + \vec F\cdot\nabla\phi$, with $\phi=r^n,\ \vec F=\vec r$:

$$\nabla\cdot\vec r = 3, \qquad \nabla(r^n) = nr^{n-1}\hat r = nr^{n-2}\vec r$$

$$\nabla\cdot(r^n\vec r) = r^n(3) + \vec r\cdot(nr^{n-2}\vec r) = 3r^n + nr^{n-2}\,r^2 = 3r^n+nr^n = (n+3)r^n$$

Setting this to zero for all $r$:
$$\boxed{n=-3}$$

---

#### Question 4 `[4+(2+2)+4=12]`

##### (a) For any vector $\vec a$, prove $\hat\imath\times(\vec a\times\hat\imath)+\hat\jmath\times(\vec a\times\hat\jmath)+\hat k\times(\vec a\times\hat k)=2\vec a$.

**Proof.** Using the triple-product identity $\vec u\times(\vec v\times\vec w)=(\vec u\cdot\vec w)\vec v-(\vec u\cdot\vec v)\vec w$:

$$\hat\imath\times(\vec a\times\hat\imath) = (\hat\imath\cdot\hat\imath)\vec a - (\hat\imath\cdot\vec a)\hat\imath = \vec a - a_x\hat\imath$$
$$\hat\jmath\times(\vec a\times\hat\jmath) = \vec a - a_y\hat\jmath$$
$$\hat k\times(\vec a\times\hat k) = \vec a - a_z\hat k$$

Summing:
$$3\vec a - (a_x\hat\imath+a_y\hat\jmath+a_z\hat k) = 3\vec a - \vec a = 2\vec a \qquad\blacksquare$$

##### (b) Define Gradient and divergence. Prove $\text{div curl}\,\vec A=0$.

**Gradient.** For a scalar field $\phi(x,y,z)$, $\text{grad}\,\phi=\nabla\phi=\dfrac{\partial\phi}{\partial x}\hat\imath+\dfrac{\partial\phi}{\partial y}\hat\jmath+\dfrac{\partial\phi}{\partial z}\hat k$ — a vector field pointing in the direction of steepest increase of $\phi$, with magnitude equal to that rate of increase.

**Divergence.** For a vector field $\vec A=A_1\hat\imath+A_2\hat\jmath+A_3\hat k$, $\text{div}\,\vec A=\nabla\cdot\vec A=\dfrac{\partial A_1}{\partial x}+\dfrac{\partial A_2}{\partial y}+\dfrac{\partial A_3}{\partial z}$ — a scalar measuring the net outward flux per unit volume (source/sink strength) at a point.

**Proof that $\nabla\cdot(\nabla\times\vec A)=0$:**
$$\nabla\times\vec A = \left(\frac{\partial A_3}{\partial y}-\frac{\partial A_2}{\partial z}\right)\hat\imath+\left(\frac{\partial A_1}{\partial z}-\frac{\partial A_3}{\partial x}\right)\hat\jmath+\left(\frac{\partial A_2}{\partial x}-\frac{\partial A_1}{\partial y}\right)\hat k$$

$$\nabla\cdot(\nabla\times\vec A) = \frac{\partial^2A_3}{\partial x\partial y}-\frac{\partial^2A_2}{\partial x\partial z}+\frac{\partial^2A_1}{\partial y\partial z}-\frac{\partial^2A_3}{\partial y\partial x}+\frac{\partial^2A_2}{\partial z\partial x}-\frac{\partial^2A_1}{\partial z\partial y}$$

By equality of mixed partial derivatives (assuming $A_i$ have continuous second partials), each pair of terms cancels:
$$\frac{\partial^2A_3}{\partial x\partial y}=\frac{\partial^2A_3}{\partial y\partial x},\quad \frac{\partial^2A_2}{\partial x\partial z}=\frac{\partial^2A_2}{\partial z\partial x},\quad \frac{\partial^2A_1}{\partial y\partial z}=\frac{\partial^2A_1}{\partial z\partial y}$$

$$\therefore \nabla\cdot(\nabla\times\vec A) = 0 \qquad\blacksquare$$

##### (c) If $\vec A$ is a differentiable vector function, show $\nabla\times(\nabla\times\vec A)=\nabla(\nabla\cdot\vec A)-\nabla^2\vec A$.

**Proof (suffix notation).** Using the Levi-Civita symbol $\varepsilon_{ijk}$ and Einstein summation, $(\nabla\times\vec A)_i=\varepsilon_{ijk}\partial_jA_k$.

$$[\nabla\times(\nabla\times\vec A)]_i = \varepsilon_{ijk}\partial_j(\varepsilon_{klm}\partial_lA_m) = \varepsilon_{ijk}\varepsilon_{klm}\,\partial_j\partial_lA_m$$

Using the identity $\varepsilon_{kij}\varepsilon_{klm}=\delta_{il}\delta_{jm}-\delta_{im}\delta_{jl}$ (and $\varepsilon_{ijk}=\varepsilon_{kij}$):

$$= (\delta_{il}\delta_{jm}-\delta_{im}\delta_{jl})\,\partial_j\partial_lA_m = \partial_m\partial_iA_m - \partial_j\partial_jA_i = \partial_i(\partial_mA_m) - \nabla^2A_i$$

$$= [\nabla(\nabla\cdot\vec A)]_i - [\nabla^2\vec A]_i$$

Since this holds for each component $i=1,2,3$:

$$\boxed{\nabla\times(\nabla\times\vec A) = \nabla(\nabla\cdot\vec A) - \nabla^2\vec A} \qquad\blacksquare$$

---

### Part B

#### Question 5 `[4+4+4=12]`

##### (a) If $z_1,z_2$ are two complex variables, prove $|z_1-z_2|\ge|z_1|-|z_2|$.

**Proof.** By the triangle inequality, $|z_1| = |(z_1-z_2)+z_2| \le |z_1-z_2|+|z_2|$.

Rearranging: $|z_1|-|z_2| \le |z_1-z_2|$, i.e.

$$\boxed{|z_1-z_2|\ge |z_1|-|z_2|} \qquad\blacksquare$$

##### (b) Define analytic function and show that $f(z)=ze^z$ is analytic.

**Definition.** A function $f(z)$ is **analytic** at a point $z_0$ if it is complex-differentiable at $z_0$ **and** at every point in some neighbourhood of $z_0$ (equivalently, if it satisfies the Cauchy–Riemann equations with continuous partial derivatives throughout an open set containing $z_0$).

**Showing $f(z)=ze^z$ is analytic.** Both $g(z)=z$ and $h(z)=e^z$ are entire functions (analytic at every point of $\mathbb C$ — $z$ is a polynomial, and $e^z$ satisfies CR equations everywhere since $u=e^x\cos y,\ v=e^x\sin y$ give $u_x=e^x\cos y=v_y$ and $u_y=-e^x\sin y=-v_x$ for all $x,y$).

The product of two entire functions is entire (sum/product rules for differentiability carry over to the complex case exactly as in real calculus). Hence $f(z)=z\cdot e^z$ is analytic everywhere, with
$$f'(z) = e^z + ze^z = (1+z)e^z \qquad\blacksquare$$

##### (c) The real part of an analytic function $f(z)$ is given by $e^{-y}\cos x$. Find the imaginary part.

**Solution.** Let $u(x,y)=e^{-y}\cos x$; find harmonic conjugate $v$ using CR equations $u_x=v_y,\ u_y=-v_x$.

$$u_x = -e^{-y}\sin x = v_y$$

Integrate w.r.t. $y$:
$$v = e^{-y}\sin x + \phi(x)$$

Now $u_y=-e^{-y}\cos x$, and CR requires $u_y=-v_x$:
$$v_x = e^{-y}\cos x$$

From $v=e^{-y}\sin x+\phi(x)$: $v_x = e^{-y}\cos x + \phi'(x)$. Comparing, $\phi'(x)=0\Rightarrow \phi(x)=C$.

$$\boxed{v(x,y) = e^{-y}\sin x + C}$$

(and $f(z)=e^{-y}\cos x+i(e^{-y}\sin x+C)=ie^{iz}+iC$, i.e. essentially $f(z)=ie^{iz}$ up to a constant.)

---

#### Question 6 `[4+4+4+? ]` *(4d unmarked in source — treated at same depth as (a)-(c))*

##### (a) Find the Laplace Transform of $4e^{5t}+6t^3-3\cos4t+4\sin5t$.

**Formulas used:** $\mathcal L\{e^{at}\}=\dfrac{1}{s-a}$, $\mathcal L\{t^n\}=\dfrac{n!}{s^{n+1}}$, $\mathcal L\{\cos at\}=\dfrac{s}{s^2+a^2}$, $\mathcal L\{\sin at\}=\dfrac{a}{s^2+a^2}$.

$$\mathcal L\{4e^{5t}\} = \frac{4}{s-5},\qquad \mathcal L\{6t^3\}=6\cdot\frac{3!}{s^4}=\frac{36}{s^4}$$
$$\mathcal L\{-3\cos4t\} = \frac{-3s}{s^2+16},\qquad \mathcal L\{4\sin5t\}=\frac{20}{s^2+25}$$

$$\boxed{\mathcal L\{4e^{5t}+6t^3-3\cos4t+4\sin5t\} = \frac{4}{s-5}+\frac{36}{s^4}-\frac{3s}{s^2+16}+\frac{20}{s^2+25}}$$

##### (b) State and prove the first translation (shifting) property.

**Statement.** If $\mathcal L\{f(t)\}=F(s)$, then $\mathcal L\{e^{at}f(t)\}=F(s-a)$.

**Proof.**
$$\mathcal L\{e^{at}f(t)\} = \int_0^\infty e^{-st}\,e^{at}f(t)\,dt = \int_0^\infty e^{-(s-a)t}f(t)\,dt = F(s-a) \qquad\blacksquare$$

##### (c) If $9f\,L\{F(t)\}=f(s)$ *(i.e. $\mathcal L\{F(t)\}=f(s)$)*, show $L\{F'''(t)\}=s^3f(s)-s^2F(0)-sF'(0)-F''(0)$.

**Proof.** Recall the basic derivative-transform rule $\mathcal L\{F'(t)\}=sf(s)-F(0)$, applied repeatedly:

$$\mathcal L\{F''(t)\} = s\,\mathcal L\{F'(t)\}-F'(0) = s[sf(s)-F(0)]-F'(0) = s^2f(s)-sF(0)-F'(0)$$

$$\mathcal L\{F'''(t)\} = s\,\mathcal L\{F''(t)\}-F''(0) = s[s^2f(s)-sF(0)-F'(0)]-F''(0)$$

$$\boxed{\mathcal L\{F'''(t)\} = s^3f(s)-s^2F(0)-sF'(0)-F''(0)} \qquad\blacksquare$$

##### (d) Evaluate $L^{-1}\left\{\dfrac{s+2}{s^2-4s+13}\right\}$.

**Solution.** Complete the square: $s^2-4s+13=(s-2)^2+9$. Write $s+2=(s-2)+4$.

$$\mathcal L^{-1}\left\{\frac{(s-2)+4}{(s-2)^2+9}\right\} = \mathcal L^{-1}\left\{\frac{s-2}{(s-2)^2+9}\right\} + 4\,\mathcal L^{-1}\left\{\frac{1}{(s-2)^2+9}\right\}$$

By the shifting property ($\mathcal L^{-1}\{F(s-a)\}=e^{at}f(t)$):
$$\mathcal L^{-1}\left\{\frac{s-2}{(s-2)^2+9}\right\} = e^{2t}\cos3t,\qquad \mathcal L^{-1}\left\{\frac{1}{(s-2)^2+9}\right\}=\frac13e^{2t}\sin3t$$

$$\boxed{\mathcal L^{-1}\left\{\frac{s+2}{s^2-4s+13}\right\} = e^{2t}\left(\cos3t+\frac43\sin3t\right)}$$

---

#### Question 7 `[2+3+3+4=12]`

##### (a) State and prove the Cauchy–Riemann equations (necessary condition).

**Statement.** If $f(z)=u(x,y)+iv(x,y)$ is differentiable at $z_0=x_0+iy_0$, then at that point
$$\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}, \qquad \frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}$$

**Proof.** $f'(z_0)=\displaystyle\lim_{\Delta z\to0}\frac{f(z_0+\Delta z)-f(z_0)}{\Delta z}$ must exist independently of the path of $\Delta z\to 0$.

**Along the real axis** ($\Delta z=\Delta x$):
$$f'(z_0)=\lim_{\Delta x\to0}\frac{u(x_0+\Delta x,y_0)-u(x_0,y_0)}{\Delta x}+i\frac{v(x_0+\Delta x,y_0)-v(x_0,y_0)}{\Delta x} = u_x+iv_x$$

**Along the imaginary axis** ($\Delta z=i\Delta y$):
$$f'(z_0)=\lim_{\Delta y\to0}\frac{u(x_0,y_0+\Delta y)-u(x_0,y_0)}{i\Delta y}+i\frac{v(x_0,y_0+\Delta y)-v(x_0,y_0)}{i\Delta y} = \frac{1}{i}u_y+v_y = v_y-iu_y$$

Since both must be equal:
$$u_x+iv_x = v_y-iu_y$$

Equating real and imaginary parts: $u_x=v_y$ and $v_x=-u_y$ (i.e. $u_y=-v_x$). $\blacksquare$

##### (b) Show that $f(z)=x^2+iy^3$ is not analytic anywhere but the Cauchy–Riemann equations are satisfied at the origin.

**Solution.** $u=x^2,\ v=y^3$.
$$u_x=2x,\ v_y=3y^2 \implies \text{CR1: } 2x=3y^2$$
$$u_y=0,\ v_x=0 \implies \text{CR2: } 0=-0 \ \checkmark\ (\text{always holds})$$

CR1 ($2x=3y^2$) holds only on a specific curve in the plane, **not** throughout any open neighbourhood. Since analyticity requires the CR equations (with continuous partials) to hold in a full neighbourhood of a point, $f$ is not analytic anywhere — it may be merely *differentiable* at isolated points lying on that curve.

**At the origin** $(0,0)$: CR1 gives $2(0)=3(0)^2 \Rightarrow 0=0$ ✓, and CR2 holds trivially. So the CR equations **are** satisfied at the origin — yet since they fail immediately off that single curve, $f$ is not analytic at the origin (or anywhere else). $\blacksquare$

##### (c) Show that $\displaystyle\oint_c \frac{e^{tz}}{z^2+1}\,dz = 2\pi i\sin t$, where $c$ is the circle $|z|=3$ and $t>0$.

**Solution.** Poles of $\dfrac{e^{tz}}{z^2+1}=\dfrac{e^{tz}}{(z-i)(z+i)}$ are at $z=i,-i$, both simple poles lying inside $|z|=3$.

By the residue theorem:
$$\oint_c \frac{e^{tz}}{z^2+1}\,dz = 2\pi i\left[\text{Res}_{z=i}+\text{Res}_{z=-i}\right]$$

$$\text{Res}_{z=i} = \lim_{z\to i}(z-i)\frac{e^{tz}}{(z-i)(z+i)} = \frac{e^{it}}{2i}$$
$$\text{Res}_{z=-i} = \lim_{z\to -i}(z+i)\frac{e^{tz}}{(z-i)(z+i)} = \frac{e^{-it}}{-2i}$$

$$\text{Sum} = \frac{e^{it}}{2i}-\frac{e^{-it}}{2i} = \frac{e^{it}-e^{-it}}{2i} = \sin t \quad(\text{Euler's formula})$$

$$\therefore \oint_c\frac{e^{tz}}{z^2+1}\,dz = 2\pi i\sin t \qquad\blacksquare$$

---

#### Question 8 `[4+4+5=12]`

##### (a) Evaluate $L^{-1}\left\{\dfrac{s^2+2s+3}{(s^2+2s+2)(s^2+2s+5)}\right\}$.

**Solution.** Complete the square with $u=s+1$: $s^2+2s+2=u^2+1,\ s^2+2s+5=u^2+4,\ s^2+2s+3=u^2+2$.

$$\frac{u^2+2}{(u^2+1)(u^2+4)} = \frac{A}{u^2+1}+\frac{B}{u^2+4}$$
$$u^2+2 = A(u^2+4)+B(u^2+1)$$

Matching coefficients: $A+B=1$ and $4A+B=2 \Rightarrow 3A=1\Rightarrow A=\dfrac13,\ B=\dfrac23$.

$$\frac{s^2+2s+3}{(s^2+2s+2)(s^2+2s+5)} = \frac{1/3}{(s+1)^2+1}+\frac{2/3}{(s+1)^2+4}$$

Apply shifting ($u=s+1 \leftrightarrow$ multiply inverse by $e^{-t}$):
$$\mathcal L^{-1}\left\{\frac{1}{(s+1)^2+1}\right\}=e^{-t}\sin t,\qquad \mathcal L^{-1}\left\{\frac{1}{(s+1)^2+4}\right\}=\frac12e^{-t}\sin2t$$

$$\boxed{L^{-1}\left\{\cdots\right\} = \frac13e^{-t}\sin t + \frac13e^{-t}\sin2t = \frac{e^{-t}}{3}\left(\sin t+\sin2t\right)}$$

##### (b) Find $L\{t^2\cos at\}$ and $L\{t^3e^t\}$.

**$L\{t^2\cos at\}$:** using $\mathcal L\{t^nf(t)\}=(-1)^n\dfrac{d^n}{ds^n}F(s)$ with $F(s)=\mathcal L\{\cos at\}=\dfrac{s}{s^2+a^2}$.

$$\frac{d}{ds}\left(\frac{s}{s^2+a^2}\right) = \frac{(s^2+a^2)-s(2s)}{(s^2+a^2)^2} = \frac{a^2-s^2}{(s^2+a^2)^2}$$
$$\mathcal L\{t\cos at\} = -\frac{a^2-s^2}{(s^2+a^2)^2} = \frac{s^2-a^2}{(s^2+a^2)^2}$$

Differentiate again:
$$\frac{d}{ds}\left[\frac{s^2-a^2}{(s^2+a^2)^2}\right] = \frac{2s(s^2+a^2)^2 - (s^2-a^2)\cdot2(s^2+a^2)(2s)}{(s^2+a^2)^4} = \frac{2s(s^2+a^2)-4s(s^2-a^2)}{(s^2+a^2)^3}$$
$$= \frac{2s^3+2sa^2-4s^3+4sa^2}{(s^2+a^2)^3} = \frac{-2s^3+6sa^2}{(s^2+a^2)^3} = \frac{2s(3a^2-s^2)}{(s^2+a^2)^3}$$

$$\mathcal L\{t^2\cos at\} = (-1)^2\cdot\left(-\frac{2s(3a^2-s^2)}{(s^2+a^2)^3}\right)... $$

Being careful with signs: $\mathcal L\{t^2f(t)\}=+\dfrac{d^2}{ds^2}F(s)$, and $\dfrac{d^2}{ds^2}F(s)=\dfrac{d}{ds}\left[\dfrac{s^2-a^2}{(s^2+a^2)^2}\right]=\dfrac{2s(3a^2-s^2)}{(s^2+a^2)^3}$ (computed above, note: this *is* the second derivative, so no extra sign flip needed since $(-1)^2=1$; but the first derivative already carried a $-1$ from $n=1$, which was applied. Re-deriving cleanly):

$$F(s)=\frac{s}{s^2+a^2},\quad F'(s)=\frac{a^2-s^2}{(s^2+a^2)^2},\quad F''(s)=\frac{2s(s^2-3a^2)}{(s^2+a^2)^3}$$

$$\mathcal L\{t^2\cos at\} = F''(s) = \boxed{\frac{2s(s^2-3a^2)}{(s^2+a^2)^3}}$$

**$L\{t^3e^t\}$:** using $\mathcal L\{t^ne^{at}\}=\dfrac{n!}{(s-a)^{n+1}}$ with $n=3,\ a=1$:

$$\boxed{L\{t^3e^t\} = \frac{3!}{(s-1)^4} = \frac{6}{(s-1)^4}}$$

##### (c) Solve $Y''(t)+9Y(t)=\cos2t;\quad Y(0)=1,\ Y\!\left(\dfrac{\pi}{2}\right)=-1$.

**Solution.** Take Laplace transform of both sides, with $\mathcal L\{Y(t)\}=y(s)$ and unknown $Y'(0)=A$:

$$s^2y(s)-sY(0)-Y'(0)+9y(s) = \frac{s}{s^2+4}$$
$$(s^2+9)y(s) = \frac{s}{s^2+4}+s+A$$
$$y(s) = \frac{s}{(s^2+4)(s^2+9)} + \frac{s}{s^2+9} + \frac{A}{s^2+9}$$

Partial fractions: $\dfrac{1}{(s^2+4)(s^2+9)}=\dfrac15\left(\dfrac{1}{s^2+4}-\dfrac{1}{s^2+9}\right)$, so
$$\frac{s}{(s^2+4)(s^2+9)} = \frac15\left(\frac{s}{s^2+4}-\frac{s}{s^2+9}\right)$$

$$y(s) = \frac15\cdot\frac{s}{s^2+4} + \frac45\cdot\frac{s}{s^2+9} + \frac{A}{s^2+9}$$

Inverse transform:
$$Y(t) = \frac15\cos2t + \frac45\cos3t + \frac{A}{3}\sin3t$$

Apply $Y(0)=1$: $\dfrac15+\dfrac45+0=1$ ✓ (automatically satisfied, confirms setup).

Apply $Y(\pi/2)=-1$: $\cos\pi=-1,\ \cos\frac{3\pi}{2}=0,\ \sin\frac{3\pi}{2}=-1$
$$\frac15(-1)+\frac45(0)+\frac{A}{3}(-1) = -1 \implies -\frac15-\frac{A}{3}=-1 \implies \frac{A}{3}=\frac45 \implies A=\frac{12}{5}$$

$$\boxed{Y(t) = \frac15\cos2t + \frac45\cos3t + \frac45\sin3t}$$

---
