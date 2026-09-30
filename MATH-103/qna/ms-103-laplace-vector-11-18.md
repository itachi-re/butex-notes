# Mathematics-II: Solutions (2011–2018)

Worked solutions for the **Vector / Vector Calculus** and **Laplace Transform** questions of the Mathematics-II question bank. The bank has papers for 2011–2013 and 2015–2018 (no 2014).

**Notation:** $\hat i,\hat j,\hat k$ are unit vectors, $\vec r=x\hat i+y\hat j+z\hat k$, $r=|\vec r|$.

## Notes on questions with printing problems

| Question | Issue | How it is handled |
|---|---|---|
| 2011 Q7(c) | Wording is muddled ("rotational or solenoidal") | Both curl and divergence are computed and the field is classified |
| 2015 Q7(b) | Uses $\oint$ but $C$ is an open arc | Evaluated as an ordinary line integral along the arc |
| 2016 Q3(c)(i) | "$\phi=r^3\vec r$" is a vector, so it has no gradient in the usual sense | Solved as $\phi=r^3$ (scalar); $\nabla(r^3\vec r)$ is also given |
| 2017 Q4(c) | Asks for $\vec F$ but defines $\vec A$; plane constant is 10 | Uses $\vec A$ and the plane $2x+3y+6z=10$ as printed; $\hat n$ points away from the origin |
| 2017 Q7(a) | "$F=3$ for $t\ge2$" contradicts periodicity $F(t+2)=F(t)$ | Solved as periodic with $F=t^2$ on $(0,2)$; the non-periodic reading is also given |
| 2018 Q7(b) | The printed value $3/25$ is wrong for $\sin t$; the true value is $4/25$ | Both shown: $\sin t$ gives $4/25$, and $\cos t$ gives the printed $3/25$ |

---

# Part 1: Vector / Vector Calculus

## 2011

### Q6(a)

**Prove:** $\nabla\times(\nabla\times\vec A)=-\nabla^2\vec A+\nabla(\nabla\cdot\vec A)$.

Use index notation with $\varepsilon_{ijk}\varepsilon_{klm}=\delta_{il}\delta_{jm}-\delta_{im}\delta_{jl}$:

$$[\nabla\times(\nabla\times\vec A)]_i=\varepsilon_{ijk}\partial_j\varepsilon_{klm}\partial_lA_m=(\delta_{il}\delta_{jm}-\delta_{im}\delta_{jl})\,\partial_j\partial_lA_m$$

$$=\partial_j\partial_iA_j-\partial_j\partial_jA_i=\partial_i(\nabla\cdot\vec A)-\nabla^2A_i.$$

Hence $\nabla\times(\nabla\times\vec A)=\nabla(\nabla\cdot\vec A)-\nabla^2\vec A$. $\blacksquare$

### Q6(b)

Volume $=|\vec a\cdot(\vec b\times\vec c)|$.

$$\vec b\times\vec c=\begin{vmatrix}\hat i&\hat j&\hat k\\1&2&-1\\3&-1&2\end{vmatrix}=(4-1)\hat i-(2+3)\hat j+(-1-6)\hat k=3\hat i-5\hat j-7\hat k$$

$$\vec a\cdot(\vec b\times\vec c)=2(3)+(-3)(-5)+4(-7)=6+15-28=-7$$

$$\boxed{\text{Volume}=7\ \text{cubic units}}$$

### Q7(a)

The line through the points with position vectors $\vec a$ and $\vec b$ has direction $\vec b-\vec a$:

$$\boxed{\vec r=\vec a+t(\vec b-\vec a)}\quad\text{or equivalently}\quad\vec r=(1-t)\vec a+t\vec b,\ t\in\mathbb R.$$

### Q7(b)

The **divergence** of $\vec F=F_1\hat i+F_2\hat j+F_3\hat k$ is the scalar

$$\nabla\cdot\vec F=\frac{\partial F_1}{\partial x}+\frac{\partial F_2}{\partial y}+\frac{\partial F_3}{\partial z}=\lim_{\Delta V\to0}\frac1{\Delta V}\oint_S\vec F\cdot\hat n\,dS,$$

the net outward flux per unit volume at a point. It is positive at sources and negative at sinks.

### Q7(c)

$\vec F=(6xy+z^3)\hat i+(3x^2-z)\hat j+(3xz^2-y)\hat k$.

**Curl:**
- $\hat i$: $\partial_yF_3-\partial_zF_2=-1-(-1)=0$
- $\hat j$: $\partial_zF_1-\partial_xF_3=3z^2-3z^2=0$
- $\hat k$: $\partial_xF_2-\partial_yF_1=6x-6x=0$

So $\nabla\times\vec F=\vec 0$.

**Divergence:** $\nabla\cdot\vec F=6y+0+6xz\neq0$.

$$\boxed{\text{The field is irrotational (curl }=\vec 0\text{), not rotational, and not solenoidal (div}\neq0).}$$

---

## 2012

### Q5(a)

$\vec{AB}=(1,-4,-1)$, $\vec{AC}=(-2,-1,1)$.

$$\vec{AB}\times\vec{AC}=\begin{vmatrix}\hat i&\hat j&\hat k\\1&-4&-1\\-2&-1&1\end{vmatrix}=(-4-1)\hat i-(1-2)\hat j+(-1-8)\hat k=(-5,1,-9)$$

$$|\vec{AB}\times\vec{AC}|=\sqrt{25+1+81}=\sqrt{107}$$

$$\boxed{\text{Area}=\tfrac12\sqrt{107}\ \text{sq. units}}$$

### Q5(b)

**Prove:** $[\vec a\,\vec b\,\vec c]^2=\det(\text{Gram matrix})$.

Let $M$ be the $3\times3$ matrix whose rows are the components of $\vec a,\vec b,\vec c$. Then $[\vec a\,\vec b\,\vec c]=\det M$, and the $(i,j)$ entry of $MM^{T}$ is the dot product of row $i$ with row $j$:

$$MM^T=\begin{pmatrix}\vec a\cdot\vec a&\vec a\cdot\vec b&\vec a\cdot\vec c\\\vec b\cdot\vec a&\vec b\cdot\vec b&\vec b\cdot\vec c\\\vec c\cdot\vec a&\vec c\cdot\vec b&\vec c\cdot\vec c\end{pmatrix}.$$

Since $\det(MM^T)=\det M\cdot\det M^T=(\det M)^2$, we get $[\vec a\,\vec b\,\vec c]^2$ equal to the given determinant. $\blacksquare$

### Q5(c)

Write $\vec a=a_1\hat i+a_2\hat j+a_3\hat k$. Then $\vec a\cdot\hat i=a_1$, $\vec a\cdot\hat j=a_2$, $\vec a\cdot\hat k=a_3$, so

$$(\vec a\cdot\hat i)\hat i+(\vec a\cdot\hat j)\hat j+(\vec a\cdot\hat k)\hat k=a_1\hat i+a_2\hat j+a_3\hat k=\vec a.\ \blacksquare$$

### Q6(c)

Divergence: see 2011 Q7(b).

### Q7(a)

**Vector integration.** If $\vec V(t)=V_1(t)\hat i+V_2(t)\hat j+V_3(t)\hat k$, then

$$\int\vec V\,dt=\hat i\!\int V_1dt+\hat j\!\int V_2dt+\hat k\!\int V_3dt,$$

that is, each component is integrated separately. Equivalently, $\int\vec V\,dt=\vec U(t)+\vec c$ where $d\vec U/dt=\vec V$ and $\vec c$ is a constant vector. A definite integral integrates each component between the limits.

### Q7(b)

Three vectors are coplanar when their scalar triple product is zero:

$$\begin{vmatrix}\alpha&3&4\\1&2&-1\\3&-1&2\end{vmatrix}=\alpha(4-1)-3(2+3)+4(-1-6)=3\alpha-43=0$$

$$\boxed{\alpha=\tfrac{43}{3}}$$

### Q7(c)

$\vec V(t)=(t-t^2)\hat i+2t^3\hat j-3\hat k$.

- $\int_1^2(t-t^2)dt=\left[\frac{t^2}2-\frac{t^3}3\right]_1^2=\left(2-\frac83\right)-\left(\frac12-\frac13\right)=-\frac23-\frac16=-\frac56$
- $\int_1^22t^3dt=\left[\frac{t^4}2\right]_1^2=8-\frac12=\frac{15}2$
- $\int_1^2(-3)dt=-3$

$$\boxed{\int_1^2\vec V\,dt=-\tfrac56\hat i+\tfrac{15}2\hat j-3\hat k}$$

---

## 2013

### Q3(c)

The **curl** of $\vec F$ is

$$\nabla\times\vec F=\begin{vmatrix}\hat i&\hat j&\hat k\\\partial_x&\partial_y&\partial_z\\F_1&F_2&F_3\end{vmatrix}
=(\partial_yF_3-\partial_zF_2)\hat i+(\partial_zF_1-\partial_xF_3)\hat j+(\partial_xF_2-\partial_yF_1)\hat k.$$

It measures local rotation: $(\nabla\times\vec F)\cdot\hat n=\lim_{\Delta S\to0}\frac1{\Delta S}\oint\vec F\cdot d\vec r$. A field with zero curl is irrotational.

### Q3(d)

$\phi\vec A=(xy^2z)(xz,\,-xy^2,\,yz)=(x^2y^2z^2,\ -x^2y^4z,\ xy^3z^2)$.

| Component | $\partial_z$ | $\partial_x\partial_z$ | At $(2,-1,1)$ |
|---|---|---|---|
| $x^2y^2z^2$ | $2x^2y^2z$ | $4xy^2z$ | $8$ |
| $-x^2y^4z$ | $-x^2y^4$ | $-2xy^4$ | $-4$ |
| $xy^3z^2$ | $2xy^3z$ | $2y^3z$ | $-2$ |

$$\boxed{\frac{\partial^2(\phi\vec A)}{\partial x\,\partial z}\Big|_{(2,-1,1)}=8\hat i-4\hat j-2\hat k}$$

### Q4(a)

For differentiable scalar $\phi(t)$ and vectors $\vec A(t),\vec B(t)$:

- $\dfrac{d}{dt}(\vec A\pm\vec B)=\dfrac{d\vec A}{dt}\pm\dfrac{d\vec B}{dt}$
- $\dfrac{d}{dt}(\phi\vec A)=\phi\dfrac{d\vec A}{dt}+\dfrac{d\phi}{dt}\vec A$
- $\dfrac{d}{dt}(\vec A\cdot\vec B)=\vec A\cdot\dfrac{d\vec B}{dt}+\dfrac{d\vec A}{dt}\cdot\vec B$
- $\dfrac{d}{dt}(\vec A\times\vec B)=\vec A\times\dfrac{d\vec B}{dt}+\dfrac{d\vec A}{dt}\times\vec B$ (order matters)
- For $\vec A=A_1\hat i+A_2\hat j+A_3\hat k$: $\dfrac{d\vec A}{dt}=\dfrac{dA_1}{dt}\hat i+\dfrac{dA_2}{dt}\hat j+\dfrac{dA_3}{dt}\hat k$

### Q4(c)

$\nabla\cdot\vec F=\frac13(3x^2+3y^2+3z^2)=x^2+y^2+z^2$. By symmetry of the tetrahedron $x+y+z\le a$,

$$\iiint_V(x^2+y^2+z^2)\,dv=3\iiint_Vx^2\,dv.$$

At fixed $x$ the cross-section is a triangle $y+z\le a-x$ of area $\frac12(a-x)^2$:

$$\iiint_Vx^2\,dv=\frac12\int_0^ax^2(a-x)^2dx=\frac12\cdot\frac{a^5}{30}=\frac{a^5}{60}$$

(using $\int_0^ax^2(a-x)^2dx=a^5\,\frac{2!\,2!}{5!}=\frac{a^5}{30}$).

$$\boxed{\iiint_V(\nabla\cdot\vec F)\,dv=\frac{a^5}{20}}$$

### Q7(a)

Let $A(-1,3,2)$, $B(-4,2,-2)$, $C(p,p,\mu)$. Collinear means $\vec{AC}=k\,\vec{AB}$ with

$\vec{AB}=(-3,-1,-4)$, $\vec{AC}=(p+1,\,p-3,\,\mu-2)$.

$$p+1=-3k,\qquad p-3=-k,\qquad \mu-2=-4k.$$

Subtracting the first two: $4=-2k\Rightarrow k=-2$. Then $p-3=2\Rightarrow p=5$ (check: $p+1=6=-3k$ ✓) and $\mu-2=8\Rightarrow\mu=10$.

$$\boxed{p=5,\quad\mu=10}$$

### Q7(b)

**Prove:** $\vec a\times(\vec b\times\vec c)=(\vec a\cdot\vec c)\vec b-(\vec a\cdot\vec b)\vec c$.

Compare $x$-components (the others follow cyclically):

$$[\vec a\times(\vec b\times\vec c)]_x=a_y(b_xc_y-b_yc_x)-a_z(b_zc_x-b_xc_z)$$

$$=b_x(a_yc_y+a_zc_z)-c_x(a_yb_y+a_zb_z).$$

Add and subtract $a_xb_xc_x$:

$$=b_x(a_xc_x+a_yc_y+a_zc_z)-c_x(a_xb_x+a_yb_y+a_zb_z)=b_x(\vec a\cdot\vec c)-c_x(\vec a\cdot\vec b).\ \blacksquare$$

### Q7(c)

Write the columns of coefficients as vectors $\vec A=(a_1,a_2,a_3)$, $\vec B=(b_1,b_2,b_3)$, $\vec C=(c_1,c_2,c_3)$, $\vec D=(d_1,d_2,d_3)$. The system is

$$x\vec A+y\vec B+z\vec C=\vec D.$$

Dot with $\vec B\times\vec C$. Since $\vec B\cdot(\vec B\times\vec C)=\vec C\cdot(\vec B\times\vec C)=0$,

$$x\,[\vec A\,\vec B\,\vec C]=[\vec D\,\vec B\,\vec C].$$

Likewise dotting with $\vec C\times\vec A$ and $\vec A\times\vec B$ gives $y[\vec A\vec B\vec C]=[\vec D\,\vec C\,\vec A]=[\vec A\,\vec D\,\vec C]$ and $z[\vec A\vec B\vec C]=[\vec A\,\vec B\,\vec D]$. If $\Delta=[\vec A\,\vec B\,\vec C]\ne0$:

$$x=\frac{\begin{vmatrix}d_1&b_1&c_1\\d_2&b_2&c_2\\d_3&b_3&c_3\end{vmatrix}}{\Delta},\quad
y=\frac{\begin{vmatrix}a_1&d_1&c_1\\a_2&d_2&c_2\\a_3&d_3&c_3\end{vmatrix}}{\Delta},\quad
z=\frac{\begin{vmatrix}a_1&b_1&d_1\\a_2&b_2&d_2\\a_3&b_3&d_3\end{vmatrix}}{\Delta},$$

with $\Delta=\begin{vmatrix}a_1&b_1&c_1\\a_2&b_2&c_2\\a_3&b_3&c_3\end{vmatrix}$. This is Cramer's rule. $\blacksquare$

### Q8(a)

**Dot product:** $\vec a\cdot\vec b=|\vec a||\vec b|\cos\theta=a_1b_1+a_2b_2+a_3b_3$, a scalar.
*Geometry:* it equals $|\vec b|$ times the projection of $\vec a$ on $\vec b$. It is zero exactly when the vectors are perpendicular, and it gives the work $\vec F\cdot\vec d$.

**Cross product:** $\vec a\times\vec b=|\vec a||\vec b|\sin\theta\,\hat n$, a vector perpendicular to both (right-hand rule).
*Geometry:* $|\vec a\times\vec b|$ is the area of the parallelogram with sides $\vec a,\vec b$ (and $\tfrac12|\vec a\times\vec b|$ the area of the triangle). It is zero exactly when the vectors are parallel.

### Q8(b)

Let $\vec p=(2,-1,1)$, $\vec q=(1,-3,-5)$, $\vec s=(3,-4,-4)$.

- $\vec p+\vec q=(3,-4,-4)=\vec s$, so the three vectors form a closed triangle (they are its sides).
- $\vec p\cdot\vec q=2+3-5=0$, so $\vec p\perp\vec q$.
- Check: $|\vec p|^2+|\vec q|^2=6+35=41=|\vec s|^2$ ✓.

The vectors form the sides of a **right-angled triangle**, with the right angle between $\vec p$ and $\vec q$. $\blacksquare$

### Q8(c)

Sum: $(\hat i-\hat j+2\hat k)+(3\hat i+2\hat j+\hat k)=4\hat i+\hat j+3\hat k$.

Perpendicular: $(2,1,-m)\cdot(4,1,3)=8+1-3m=0$.

$$\boxed{m=3}$$

---

## 2015

### Q5(a)

**Prove:** $(\vec A\times\vec B)\times\vec C=(\vec A\cdot\vec C)\vec B-(\vec B\cdot\vec C)\vec A$.

$$(\vec A\times\vec B)\times\vec C=-\vec C\times(\vec A\times\vec B)=-\left[(\vec C\cdot\vec B)\vec A-(\vec C\cdot\vec A)\vec B\right]=(\vec A\cdot\vec C)\vec B-(\vec B\cdot\vec C)\vec A,$$

using $\vec a\times(\vec b\times\vec c)=(\vec a\cdot\vec c)\vec b-(\vec a\cdot\vec b)\vec c$ (proved in 2013 Q7(b)). $\blacksquare$

### Q5(b)

Use $\nabla\cdot(\phi\vec F)=\nabla\phi\cdot\vec F+\phi\,\nabla\cdot\vec F$ with $\phi=r^{-2}$ and $\vec F=\vec r$. Since $\nabla r^n=nr^{n-2}\vec r$, we have $\nabla r^{-2}=-2r^{-4}\vec r$:

$$\nabla\cdot\frac{\vec r}{r^2}=-2r^{-4}(\vec r\cdot\vec r)+r^{-2}(3)=-2r^{-2}+3r^{-2}$$

$$\boxed{\nabla\cdot\left(\frac{\vec r}{r^2}\right)=\frac1{r^2}}$$

### Q5(c)

Let $f=2xz^2-3xy-4x-7$. At $(1,-1,2)$: $f=8+3-4-7=0$ ✓.

$\nabla f=(2z^2-3y-4,\ -3x,\ 4xz)\Big|_{(1,-1,2)}=(7,\,-3,\,8)$.

Tangent plane: $7(x-1)-3(y+1)+8(z-2)=0$

$$\boxed{7x-3y+8z=26}$$

### Q6(a)

$\nabla F=(2xyz+4z^2,\ x^2z,\ x^2y+8xz)$. At $(1,-2,-1)$:

$$\nabla F=(4+4,\,-1,\,-2-8)=(8,-1,-10).$$

Direction $(2,-1,-2)$ has length $3$, so $\hat u=\frac13(2,-1,-2)$:

$$D_{\hat u}F=\frac{16+1+20}3=\boxed{\frac{37}3}$$

### Q6(b)

**(i) $\nabla\times(\nabla\phi)=\vec 0$.** With $\nabla\phi=(\phi_x,\phi_y,\phi_z)$:

$$\nabla\times\nabla\phi=(\phi_{zy}-\phi_{yz})\hat i+(\phi_{xz}-\phi_{zx})\hat j+(\phi_{yx}-\phi_{xy})\hat k=\vec 0,$$

because mixed partial derivatives are equal for $\phi\in C^2$.

**(ii) $\nabla\cdot(\nabla\times\vec A)=0$.**

$$\nabla\cdot(\nabla\times\vec A)=\partial_x(\partial_yA_3-\partial_zA_2)+\partial_y(\partial_zA_1-\partial_xA_3)+\partial_z(\partial_xA_2-\partial_yA_1)$$

$$=(A_{3,xy}-A_{3,yx})+(A_{2,zx}-A_{2,xz})+(A_{1,yz}-A_{1,zy})=0.\ \blacksquare$$

### Q6(c)

Line 1: $P_1=(2,-1,3)$, $\vec d_1=(3,1,-4)$. Line 2: $P_2=(5,1,-4)$, $\vec d_2=(1,-2,3)$.

$$\vec d_1\times\vec d_2=\begin{vmatrix}\hat i&\hat j&\hat k\\3&1&-4\\1&-2&3\end{vmatrix}=(3-8)\hat i-(9+4)\hat j+(-6-1)\hat k=(-5,-13,-7)$$

$|\vec d_1\times\vec d_2|=\sqrt{25+169+49}=\sqrt{243}=9\sqrt3$, and $\vec{P_1P_2}=(3,2,-7)$:

$$\vec{P_1P_2}\cdot(\vec d_1\times\vec d_2)=-15-26+49=8$$

$$\boxed{d=\frac{8}{9\sqrt3}=\frac{8\sqrt3}{27}\approx0.513}$$

### Q7(a)

$\vec F=y\hat i+(x-2xz)\hat j-xy\hat k$ on $x=t,\ y=2t,\ z=t^3$; $(0,0,0)\to(2,4,8)$ is $t:0\to2$.

$dx=dt,\ dy=2dt,\ dz=3t^2dt$.

$$\vec F\cdot d\vec r=y\,dx+(x-2xz)\,dy-xy\,dz=2t+(t-2t^4)(2)-(2t^2)(3t^2)=4t-10t^4$$

$$W=\int_0^2(4t-10t^4)\,dt=\left[2t^2-2t^5\right]_0^2=8-64=\boxed{-56}$$

### Q7(b)

$C$: $x=\cos t,\ y=\sin t,\ 0\le t\le\pi/2$ (a quarter arc from $(1,0)$ to $(0,1)$).

$dx=-\sin t\,dt$, $dy=\cos t\,dt$:

$$\int_0^{\pi/2}\left[-2\cos t\sin^2t+\cos t\right]dt=\left[-\tfrac23\sin^3t+\sin t\right]_0^{\pi/2}=-\tfrac23+1$$

$$\boxed{\tfrac13}$$

*Check:* the field is conservative ($\partial_y(2xy)=\partial_x(x^2+y^2)=2x$) with $\phi=x^2y+\frac{y^3}3$, and $\phi(0,1)-\phi(1,0)=\frac13$ ✓.

### Q7(c)

Green's theorem with $P=x^2y$, $Q=x$: $\partial_xQ-\partial_yP=1-x^2$.

The triangle $(0,0),(1,0),(1,2)$ is $0\le x\le1,\ 0\le y\le2x$:

$$\oint_C=\int_0^1\!\!\int_0^{2x}(1-x^2)\,dy\,dx=\int_0^1(2x-2x^3)\,dx=1-\tfrac12=\boxed{\tfrac12}$$

---

## 2016

### Q3(a)

**Show:** $\vec A\times(\vec B\times\vec C)=\vec B(\vec A\cdot\vec C)-\vec C(\vec A\cdot\vec B)$.

Compare $x$-components:

$$[\vec A\times(\vec B\times\vec C)]_x=A_y(B_xC_y-B_yC_x)-A_z(B_zC_x-B_xC_z)$$

$$=B_x(A_yC_y+A_zC_z)-C_x(A_yB_y+A_zB_z)$$

Adding and subtracting $A_xB_xC_x$ gives $B_x(\vec A\cdot\vec C)-C_x(\vec A\cdot\vec B)$. The $y$- and $z$-components follow cyclically. $\blacksquare$

### Q3(b)

**Prove:** $(\vec A\times\vec B)\times(\vec C\times\vec D)=\vec C\,(\vec A\cdot\vec B\times\vec D)-\vec D\,(\vec A\times\vec B\cdot\vec C)$.

Put $\vec X=\vec A\times\vec B$. By the triple product expansion,

$$\vec X\times(\vec C\times\vec D)=\vec C(\vec X\cdot\vec D)-\vec D(\vec X\cdot\vec C).$$

Now $\vec X\cdot\vec D=(\vec A\times\vec B)\cdot\vec D=\vec A\cdot(\vec B\times\vec D)$, and $\vec X\cdot\vec C=(\vec A\times\vec B)\cdot\vec C$, giving the result. $\blacksquare$

### Q3(c)

Use $\nabla r^n=nr^{n-2}\vec r$.

**(i)** Taking $\phi=r^3$ (see note at the top):

$$\boxed{\nabla r^3=3r\,\vec r}$$

If the intended quantity really is the vector field $r^3\vec r$, its gradient is the tensor $\nabla(r^3\vec r)=r^3\,I+3r\,\vec r\otimes\vec r$, and its divergence is $\nabla\cdot(r^3\vec r)=3r\,r^2+3r^3=6r^3$.

**(ii)**

$$\boxed{\nabla\!\left(\frac1r\right)=-\frac{\vec r}{r^3}}$$

### Q4(a)

$\vec A=(4xy-3x^2z^2)\hat i+2y^2\hat j-yz^3\hat k$, path $(0,0,0)\to(0,1,0)\to(0,1,1)\to(1,1,1)$.

- **Segment 1** ($x=0,z=0$, $y:0\to1$): $\int2y^2dy=\frac23$
- **Segment 2** ($x=0,y=1$, $z:0\to1$): $\int-yz^3dz=-\int_0^1z^3dz=-\frac14$
- **Segment 3** ($y=1,z=1$, $x:0\to1$): $\int(4x-3x^2)dx=2-1=1$

$$\int_C\vec A\cdot d\vec r=\frac23-\frac14+1=\boxed{\frac{17}{12}}$$

### Q4(b)

$\vec F=3x^2\hat i+(2xz-y)\hat j+z\hat k$ on $x=2t^2,\ y=t+1,\ z=t^3$; $t:0\to1$ takes $(0,1,0)$ to $(2,2,1)$.

$dx=4t\,dt,\ dy=dt,\ dz=3t^2dt$.

- $3x^2dx=12t^4\cdot4t\,dt=48t^5dt$
- $(2xz-y)dy=(4t^5-t-1)dt$
- $z\,dz=3t^5dt$

$$W=\int_0^1(55t^5-t-1)\,dt=\frac{55}6-\frac12-1=\boxed{\frac{23}3}$$

### Q4(c)

**Green's theorem.** If $C$ is a positively oriented (counterclockwise), piecewise smooth, simple closed curve bounding a region $R$, and $P,Q$ have continuous first partial derivatives on $R$, then

$$\oint_C(P\,dx+Q\,dy)=\iint_R\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)dA.$$

**Evaluation.** $P=3x^2-5y^2$, $Q=7y^2-4xy$: $\partial_xQ-\partial_yP=-4y+10y=6y$.

The region between $y=x^2$ (below) and $y=x$ (above), $0\le x\le1$:

$$\iint6y\,dA=\int_0^1\!\!\left[3y^2\right]_{x^2}^{x}dx=3\int_0^1(x^2-x^4)dx=3\left(\tfrac13-\tfrac15\right)=\boxed{\tfrac25}$$

---

## 2017

### Q3(a)

$\phi=4xz^3-3x^2y^2z$; $\nabla\phi=(4z^3-6xy^2z,\ -6x^2yz,\ 12xz^2-3x^2y^2)$.

At $(2,-1,2)$: $\nabla\phi=(32-24,\ 48,\ 96-12)=(8,48,84)$.

Direction $(2,-3,6)$ has length $7$:

$$D_{\hat u}\phi=\frac{16-144+504}7=\boxed{\frac{376}7}$$

**Tangent plane.** $\phi(2,-1,2)=64-24=40$ ✓, so the point lies on $\phi=40$:

$$8(x-2)+48(y+1)+84(z-2)=0\ \Longrightarrow\ \boxed{2x+12y+21z=34}$$

### Q3(b)

$\vec A=(y^2\cos x+z^3)\hat i+(2y\sin x-4)\hat j+(3xz^2+2)\hat k$.

**Curl:**
- $\hat i$: $\partial_yA_3-\partial_zA_2=0-0=0$
- $\hat j$: $\partial_zA_1-\partial_xA_3=3z^2-3z^2=0$
- $\hat k$: $\partial_xA_2-\partial_yA_1=2y\cos x-2y\cos x=0$

$\nabla\times\vec A=\vec0$, so $\vec A$ is conservative. $\blacksquare$

**Potential.**
$\phi=\int(y^2\cos x+z^3)dx=y^2\sin x+xz^3+g(y,z)$.
$\phi_y=2y\sin x+g_y=2y\sin x-4\Rightarrow g=-4y+h(z)$.
$\phi_z=3xz^2+h'(z)=3xz^2+2\Rightarrow h=2z$.

$$\boxed{\phi=y^2\sin x+xz^3-4y+2z+C}$$

### Q3(c)

**Green's theorem:** see 2016 Q4(c).

$P=xy+x^2$, $Q=xy^2$. The region is bounded by $y=x$ (lower) and $y^2=x$, i.e. $y=\sqrt x$ (upper), $0\le x\le1$. Counterclockwise: along $y=x$ from $(0,0)$ to $(1,1)$, then back along $y=\sqrt x$.

**Line integral.**

- $C_1$: $y=x$, $dy=dx$: $\int_0^1(x^2+x^2+x^3)dx=\frac23+\frac14=\frac{11}{12}$
- $C_2$: $y=\sqrt x$, $x:1\to0$, $dy=\frac{dx}{2\sqrt x}$. Here $P=x^{3/2}+x^2$ and $Q=x\cdot x=x^2$, so the integrand is $x^{3/2}+x^2+\frac12x^{3/2}=\frac32x^{3/2}+x^2$:
$$\int_1^0\left(\tfrac32x^{3/2}+x^2\right)dx=-\left(\tfrac35+\tfrac13\right)=-\tfrac{14}{15}$$

Total: $\frac{11}{12}-\frac{14}{15}=-\frac1{60}$.

**Double integral.** $\partial_xQ-\partial_yP=y^2-x$:

$$\int_0^1\!\!\int_x^{\sqrt x}(y^2-x)\,dy\,dx=\int_0^1\left[-\tfrac23x^{3/2}-\tfrac13x^3+x^2\right]dx=-\tfrac4{15}-\tfrac1{12}+\tfrac13=-\tfrac1{60}.$$

Both sides equal $-\dfrac1{60}$, so **Green's theorem is verified.** $\blacksquare$

### Q4(a)

$\vec F=3xy\hat i-5z\hat j-10x\hat k$ on $x=t^2+1,\ y=2t^2,\ z=t^3$, $t:0\to1$.

$dx=2t\,dt,\ dy=4t\,dt,\ dz=3t^2dt$.

- $3xy\,dx=3(t^2+1)(2t^2)(2t)dt=12t^5+12t^3$
- $-5z\,dy=-5t^3\cdot4t\,dt=-20t^4$
- $-10x\,dz=-10(t^2+1)(3t^2)dt=-30t^4-30t^2$

$$W=\int_0^1(12t^5-50t^4+12t^3-30t^2)\,dt=2-10+3-10=\boxed{-15}$$

### Q4(b)

$\nabla\!\left(\dfrac1r\right)=-\dfrac{\vec r}{r^3}$, so for $r\ne0$

$$\nabla^2\!\left(\frac1r\right)=-\nabla\cdot\frac{\vec r}{r^3}=-\left[-3r^{-5}(\vec r\cdot\vec r)+3r^{-3}\right]=-[-3r^{-3}+3r^{-3}]$$

$$\boxed{\nabla^2\!\left(\frac1r\right)=0\quad(r\neq0)}$$

So $1/r$ is harmonic away from the origin. (At the origin it is a delta function: $\nabla^2(1/r)=-4\pi\delta(\vec r)$.)

### Q4(c)

Using $\vec A=18z\hat i-12\hat j+3y\hat k$ and the plane $2x+3y+6z=10$ in the first octant.

The outward unit normal is $\hat n=\frac{(2,3,6)}7$, so

$$\vec A\cdot\hat n=\frac{36z-36+18y}7.$$

Project onto the $xy$-plane: $dS=\dfrac{dx\,dy}{\hat n\cdot\hat k}=\dfrac76dx\,dy$. Then

$$\iint_S\vec A\cdot\hat n\,dS=\iint(6z-6+3y)\,dx\,dy.$$

From the plane, $6z=10-2x-3y$, so the integrand is $4-2x$. The projection is $x,y\ge0,\ 2x+3y\le10$:

$$\int_0^5(4-2x)\frac{10-2x}3\,dx=\frac13\int_0^5(40-28x+4x^2)\,dx=\frac13\left[200-350+\tfrac{500}3\right]=\boxed{\frac{50}9}$$

(For comparison, the classic version of this problem with the plane $2x+3y+6z=12$ gives $24$ by the same method.)

---

## 2018

### Q3(a)

A force field $\vec F$ is **conservative** if the work $\int\vec F\cdot d\vec r$ is independent of the path, equivalently $\oint\vec F\cdot d\vec r=0$ for every closed path, equivalently $\vec F=\nabla\phi$ for some scalar $\phi$ (on a simply connected domain this holds iff $\nabla\times\vec F=\vec0$).

$\vec F=(2xy+z^3)\hat i+x^2\hat j+3xz^2\hat k$:

- $\hat i$: $\partial_yF_3-\partial_zF_2=0-0=0$
- $\hat j$: $\partial_zF_1-\partial_xF_3=3z^2-3z^2=0$
- $\hat k$: $\partial_xF_2-\partial_yF_1=2x-2x=0$

$\nabla\times\vec F=\vec 0$, so $\vec F$ is conservative. $\blacksquare$

### Q3(b)

$\partial_x\phi=2xy+z^3\Rightarrow\phi=x^2y+xz^3+g(y,z)$; $\phi_y=x^2+g_y=x^2\Rightarrow g_y=0$; $\phi_z=3xz^2+g_z=3xz^2\Rightarrow g_z=0$.

$$\boxed{\phi=x^2y+xz^3+C}$$

Work from $(1,-2,1)$ to $(3,1,4)$:

- $\phi(3,1,4)=9(1)+3(64)=201$
- $\phi(1,-2,1)=1(-2)+1(1)=-1$

$$W=201-(-1)=\boxed{202}$$

### Q3(c)

$\vec F=xy\hat i-z\hat j+x^2\hat k$ on $x=t^2,\ y=2t,\ z=t^3$, $t:0\to1$.

$dx=2t\,dt,\ dy=2\,dt,\ dz=3t^2dt$.

$$\vec F\cdot d\vec r=t^2(2t)(2t)-t^3(2)+t^4(3t^2)=4t^4-2t^3+3t^6$$

$$\int_0^1(4t^4-2t^3+3t^6)\,dt=\frac45-\frac12+\frac37=\boxed{\frac{51}{70}}$$

### Q4(a)

Identical to 2016 Q4(a): $\boxed{\dfrac{17}{12}}$.

### Q4(b)

Identical to 2015 Q5(c): $\boxed{7x-3y+8z=26}$.

### Q4(c)

$P=xy+y^2$, $Q=x^2$; $\partial_xQ-\partial_yP=2x-(x+2y)=x-2y$.

**Double integral** over the triangle $x,y\ge0,\ x+y\le1$:

$$\int_0^1\!\!\int_0^{1-x}(x-2y)\,dy\,dx=\int_0^1\left[x(1-x)-(1-x)^2\right]dx=\int_0^1(3x-2x^2-1)\,dx=\frac32-\frac23-1=-\frac16.$$

**Line integral** (counterclockwise: $(0,0)\to(1,0)\to(0,1)\to(0,0)$):

- $y=0$ ($x:0\to1$): $P=0,\ dy=0\Rightarrow0$
- $x+y=1$ ($x:1\to0$, $y=1-x$, $dy=-dx$): $P=x(1-x)+(1-x)^2=1-x$, so the integrand is $(1-x)-x^2$: $\ \int_1^0(1-x-x^2)dx=-\frac16$
- $x=0$ ($y:1\to0$): $dx=0,\ Q=0\Rightarrow0$

Total $=-\dfrac16$, equal to the double integral. **Green's theorem is verified.** $\blacksquare$

---

# Part 2: Laplace Transform

**Standard results used**

$$L\{\sin at\}=\frac a{s^2+a^2},\quad L\{\cos at\}=\frac s{s^2+a^2},\quad L\{t^n\}=\frac{n!}{s^{n+1}},\quad L\{e^{at}F\}=f(s-a),$$

$$L\{t^nF\}=(-1)^n\frac{d^nf}{ds^n},\quad L\Big\{\frac{F}{t}\Big\}=\int_s^\infty f(u)\,du,\quad L\{F(t+T)=F(t)\}=\frac{1}{1-e^{-sT}}\int_0^Te^{-st}F(t)\,dt.$$

## 2016

### Q7(a)

$L\{\sin t\}=\dfrac1{s^2+1}$, so

$$L\{t^2\sin t\}=\frac{d^2}{ds^2}\frac1{s^2+1}=\frac{d}{ds}\left[\frac{-2s}{(s^2+1)^2}\right]=\frac{6s^2-2}{(s^2+1)^3}.$$

The factor $e^{3t}$ shifts $s\to s-3$:

$$\boxed{L\{e^{3t}t^2\sin t\}=\frac{6(s-3)^2-2}{\left[(s-3)^2+1\right]^3}}$$

### Q7(b)

$L\{\sin t/t\}=\int_s^\infty\dfrac{du}{u^2+1}=\dfrac\pi2-\tan^{-1}s$. Setting $s=1$ (which supplies the factor $e^{-t}$):

$$\int_0^\infty e^{-t}\frac{\sin t}t\,dt=\frac\pi2-\frac\pi4=\frac\pi4.\ \blacksquare$$

### Q7(c)

Transform $Y''+Y=t$ with $Y(0)=1,\ Y'(0)=-2$, writing $\bar Y=L\{Y\}$:

$$s^2\bar Y-s+2+\bar Y=\frac1{s^2}\ \Rightarrow\ \bar Y=\frac1{s^2(s^2+1)}+\frac{s-2}{s^2+1}.$$

Since $\dfrac1{s^2(s^2+1)}=\dfrac1{s^2}-\dfrac1{s^2+1}$,

$$\bar Y=\frac1{s^2}+\frac s{s^2+1}-\frac3{s^2+1}\ \Longrightarrow\ \boxed{Y(t)=t+\cos t-3\sin t}$$

*Check:* $Y(0)=1$; $Y'(0)=1-3=-2$; $Y''+Y=t$ ✓.

### Q8(a)

$s^2-2s-3=(s-3)(s+1)$.

$$\frac{3s+7}{(s-3)(s+1)}=\frac4{s-3}-\frac1{s+1}\qquad\left(A=\tfrac{16}4,\ B=\tfrac4{-4}\right)$$

$$\boxed{L^{-1}=4e^{3t}-e^{-t}}$$

### Q8(b)

Take $f=\dfrac1{s+1}\to e^{-t}$ and $g=\dfrac1{s^2+1}\to\sin t$. By the convolution theorem,

$$L^{-1}\{fg\}=\int_0^te^{-u}\sin(t-u)\,du.$$

Expand $\sin(t-u)=\sin t\cos u-\cos t\sin u$ and use
$\int_0^te^{-u}\cos u\,du=\frac12[1+e^{-t}(\sin t-\cos t)]$, $\int_0^te^{-u}\sin u\,du=\frac12[1-e^{-t}(\sin t+\cos t)]$:

$$\boxed{L^{-1}\left\{\frac1{(s+1)(s^2+1)}\right\}=\frac12\left(e^{-t}+\sin t-\cos t\right)}$$

*Check by partial fractions:* $\frac1{(s+1)(s^2+1)}=\frac{1/2}{s+1}+\frac{-\frac12s+\frac12}{s^2+1}$ ✓.

### Q8(c)

$L\left\{\dfrac{\cos at-\cos bt}t\right\}=\displaystyle\int_s^\infty\left[\frac u{u^2+a^2}-\frac u{u^2+b^2}\right]du=\frac12\ln\frac{s^2+b^2}{s^2+a^2}.$

Let $s\to0$ with $a=6,\ b=4$:

$$\int_0^\infty\frac{\cos6t-\cos4t}t\,dt=\frac12\ln\frac{16}{36}=\ln\frac46=\ln\frac23.\ \blacksquare$$

---

## 2017

### Q7(a)

As printed, "$F=3$ for $t\ge2$" conflicts with $F(t+2)=F(t)$. Taking the periodic function with period $T=2$ and $F=t^2$ on $(0,2)$:

$$\int_0^2t^2e^{-st}dt=\left[-\frac{t^2e^{-st}}s-\frac{2te^{-st}}{s^2}-\frac{2e^{-st}}{s^3}\right]_0^2=\frac{2-e^{-2s}(2+4s+4s^2)}{s^3}$$

$$\boxed{L\{F\}=\frac{2\left[1-e^{-2s}(1+2s+2s^2)\right]}{s^3\,(1-e^{-2s})}}$$

*Non-periodic reading* ($F=t^2$ on $(0,2)$ and $F=3$ for $t\ge2$): $L\{F\}=\dfrac{2\left[1-e^{-2s}(1+2s+2s^2)\right]}{s^3}+\dfrac{3e^{-2s}}s$.

### Q7(b)

**Definition.** The Laplace transform of $F(t)$, $t>0$, is $L\{F\}=f(s)=\int_0^\infty e^{-st}F(t)\,dt$, defined for those $s$ for which the integral converges.

$$\int_0^\infty te^{-3t}\sin t\,dt=L\{t\sin t\}\Big|_{s=3}=-\frac{d}{ds}\frac1{s^2+1}\Big|_{s=3}=\frac{2s}{(s^2+1)^2}\Big|_{s=3}=\frac6{100}=\frac3{50}.\ \blacksquare$$

### Q7(c)

**Definition.** If $L\{F(t)\}=f(s)$, then $F(t)=L^{-1}\{f(s)\}$ is the inverse Laplace transform (unique up to null functions, by Lerch's theorem).

$$\frac{6s-4}{s^2+4s+20}=\frac{6s-4}{(s+2)^2+16}=\frac{6(s+2)-16}{(s+2)^2+16}=6\frac{s+2}{(s+2)^2+16}-4\cdot\frac{4}{(s+2)^2+16}$$

$$\boxed{L^{-1}=e^{-2t}\left(6\cos4t-4\sin4t\right)}$$

### Q8(a)

$F=t$ on $(0,3)$, $F=1$ on $(3,6)$, period $T=6$.

$$\int_0^3te^{-st}dt=\frac1{s^2}-e^{-3s}\left(\frac3s+\frac1{s^2}\right),\qquad\int_3^6e^{-st}dt=\frac{e^{-3s}-e^{-6s}}s.$$

Sum $=\dfrac1{s^2}-e^{-3s}\left(\dfrac2s+\dfrac1{s^2}\right)-\dfrac{e^{-6s}}s$, so

$$\boxed{L\{F\}=\frac{1-(1+2s)e^{-3s}-s\,e^{-6s}}{s^2\,(1-e^{-6s})}}$$

### Q8(b)

From 2016 Q8(b), $L^{-1}\left\{\dfrac1{(s+1)(s^2+1)}\right\}=\displaystyle\int_0^te^{-u}\sin(t-u)\,du=\tfrac12(e^{-t}+\sin t-\cos t)$. Multiply by $5$:

$$\boxed{L^{-1}\left\{\frac5{(s+1)(s^2+1)}\right\}=\frac52\left(e^{-t}+\sin t-\cos t\right)}$$

### Q8(c)

$U_t=U_{xx}$, $U(x,0)=3\sin2\pi x$, $U(0,t)=U(1,t)=0$.

Let $\bar U(x,s)=L\{U\}$. Then

$$s\bar U-3\sin2\pi x=\bar U_{xx}\ \Rightarrow\ \bar U_{xx}-s\bar U=-3\sin2\pi x.$$

Particular solution $A\sin2\pi x$: $-4\pi^2A-sA=-3\Rightarrow A=\dfrac3{s+4\pi^2}$. The complementary part $c_1e^{\sqrt sx}+c_2e^{-\sqrt sx}$ must vanish: the particular solution already satisfies $\bar U(0)=\bar U(1)=0$ (since $\sin2\pi=0$), so $c_1=c_2=0$.

$$\bar U=\frac{3\sin2\pi x}{s+4\pi^2}\ \Longrightarrow\ \boxed{U(x,t)=3e^{-4\pi^2t}\sin2\pi x}$$

*Check:* $U_t=-4\pi^2U=U_{xx}$ ✓.

---

## 2018

### Q7(a)

Same as 2017 Q7(a) (periodic case):

$$\boxed{L\{F\}=\frac{2\left[1-e^{-2s}(1+2s+2s^2)\right]}{s^3\,(1-e^{-2s})}}$$

### Q7(b)

Using $L\{t\sin t\}=\dfrac{2s}{(s^2+1)^2}$ at $s=2$:

$$\int_0^\infty te^{-2t}\sin t\,dt=\frac{4}{25}.$$

This does **not** equal the printed $\frac3{25}$. The printed value matches the cosine version:

$$\int_0^\infty te^{-2t}\cos t\,dt=L\{t\cos t\}\Big|_{s=2}=\frac{s^2-1}{(s^2+1)^2}\Big|_{s=2}=\frac3{25}.\ \blacksquare$$

So the statement is correct for $\cos t$ (probably the intended integrand); for $\sin t$ the value is $\frac4{25}$.

### Q7(c)

$U_t=2U_{xx}$, $U(x,0)=10\sin4\pi x$, $U(0,t)=U(5,t)=0$, $0<x<5$.

$$s\bar U-10\sin4\pi x=2\bar U_{xx}\ \Rightarrow\ \bar U_{xx}-\frac s2\bar U=-5\sin4\pi x.$$

Particular solution $A\sin4\pi x$: $-16\pi^2A-\frac s2A=-5\Rightarrow A=\dfrac{10}{s+32\pi^2}$. Since $\sin(4\pi\cdot5)=\sin20\pi=0$, the boundary conditions hold with no homogeneous part.

$$\bar U=\frac{10\sin4\pi x}{s+32\pi^2}\ \Longrightarrow\ \boxed{U(x,t)=10\,e^{-32\pi^2t}\sin4\pi x}$$

*Check:* $U_t=-32\pi^2U$ and $2U_{xx}=2(-16\pi^2)U$ ✓.

### Q8(a)

**(i)** $\sin^2t=\frac{1-\cos2t}2$, so $L\{\sin^2t\}=\frac12\left[\frac1s-\frac s{s^2+4}\right]=\dfrac2{s(s^2+4)}$. Shift $s\to s+1$:

$$\boxed{L\{e^{-t}\sin^2t\}=\frac2{(s+1)\left[(s+1)^2+4\right]}=\frac2{(s+1)(s^2+2s+5)}}$$

**(ii)** From 2016 Q7(a):

$$\boxed{L\{t^2\sin t\}=\frac{6s^2-2}{(s^2+1)^3}}$$

### Q8(b)

Write $s=(s+1)-1$:

$$\frac s{(s+1)^5}=\frac1{(s+1)^4}-\frac1{(s+1)^5}.$$

With $L^{-1}\left\{\frac1{(s+1)^n}\right\}=\dfrac{t^{n-1}e^{-t}}{(n-1)!}$:

$$\boxed{L^{-1}=e^{-t}\left(\frac{t^3}6-\frac{t^4}{24}\right)=\frac{t^3(4-t)}{24}e^{-t}}$$

### Q8(c)

Take $\dfrac1{s^2}\to t$ and $\dfrac1{s-2}\to e^{2t}$:

$$L^{-1}\left\{\frac1{s^2(s-2)}\right\}=\int_0^tu\,e^{2(t-u)}du=e^{2t}\left[-\frac{ue^{-2u}}2-\frac{e^{-2u}}4\right]_0^t=\frac{e^{2t}-2t-1}4.$$

$$\boxed{L^{-1}=\frac{e^{2t}-2t-1}4}$$

*Check by partial fractions:* $\frac1{s^2(s-2)}=-\frac1{4s}-\frac1{2s^2}+\frac1{4(s-2)}$ ✓.

---

## Answer Summary

| Question | Answer |
|---|---|
| 2011 Q6(b) | $7$ |
| 2011 Q7(c) | Irrotational, not solenoidal |
| 2012 Q5(a) | $\frac12\sqrt{107}$ |
| 2012 Q7(b) | $\alpha=\frac{43}3$ |
| 2012 Q7(c) | $-\frac56\hat i+\frac{15}2\hat j-3\hat k$ |
| 2013 Q3(d) | $8\hat i-4\hat j-2\hat k$ |
| 2013 Q4(c) | $a^5/20$ |
| 2013 Q7(a) | $p=5,\ \mu=10$ |
| 2013 Q8(c) | $m=3$ |
| 2015 Q5(b) | $1/r^2$ |
| 2015 Q5(c), 2018 Q4(b) | $7x-3y+8z=26$ |
| 2015 Q6(a) | $37/3$ |
| 2015 Q6(c) | $8\sqrt3/27$ |
| 2015 Q7(a) | $-56$ |
| 2015 Q7(b) | $1/3$ |
| 2015 Q7(c) | $1/2$ |
| 2016 Q4(a), 2018 Q4(a) | $17/12$ |
| 2016 Q4(b) | $23/3$ |
| 2016 Q4(c) | $2/5$ |
| 2017 Q3(a) | $376/7$; plane $2x+12y+21z=34$ |
| 2017 Q3(b) | $\phi=y^2\sin x+xz^3-4y+2z$ |
| 2017 Q3(c) | Both sides $=-1/60$ |
| 2017 Q4(a) | $-15$ |
| 2017 Q4(c) | $50/9$ |
| 2018 Q3(b) | $\phi=x^2y+xz^3$; $W=202$ |
| 2018 Q3(c) | $51/70$ |
| 2018 Q4(c) | Both sides $=-1/6$ |
| Laplace 2016 Q7(c) | $Y=t+\cos t-3\sin t$ |
| Laplace 2017 Q8(c) | $U=3e^{-4\pi^2t}\sin2\pi x$ |
| Laplace 2018 Q7(c) | $U=10e^{-32\pi^2t}\sin4\pi x$ |
