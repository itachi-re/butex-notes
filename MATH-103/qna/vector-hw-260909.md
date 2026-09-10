## Q1. Directional Derivative Normal to a Surface

**Find the rate of change of** $\phi = xyz$ **in the direction normal to the surface**
$$F(x, y, z) = xy + y^2 + yz = 3$$
**at the point** $(1, 1, 1)$.

**Solution:**

The direction normal to the surface $F(x, y, z) = 3$ is given by $\nabla F$.
Hence the directional derivative of $\phi$ along the normal (unit normal) is

$$D_n\phi = \nabla\phi \cdot \frac{\nabla F}{|\nabla F|}.$$

$$\nabla\phi = \langle yz, xz, xy \rangle, \qquad \nabla F = \langle y, x+2y+z, y \rangle.$$

At $(1,1,1)$:
$$\nabla\phi(1,1,1) = \langle 1,1,1 \rangle, \qquad \nabla F(1,1,1) = \langle 1,4,1 \rangle.$$

Therefore

$$D_n\phi(1,1,1) = \frac{\langle 1,1,1\rangle \cdot \langle 1,4,1\rangle}{\sqrt{1^2+4^2+1^2}} = \frac{6}{\sqrt{18}} = \boxed{\sqrt{2}}.$$

---

## Q2. Orthogonal Intersection of Surfaces

**Find the values of constants** $\lambda$ **and** $\mu$ **so that the surfaces**
$$\lambda x^2 - \mu yz = (\lambda+2)x, \qquad 4xy + z^3 = 4$$
**intersect orthogonally at the point** $(1, -1, 2)$.

**Solution:**

**1) First find $\lambda, \mu$ so that the point lies on both surfaces.**

From $4xy + z^3 = 4$:
$$4(1)(-1) + 2^3 = -4 + 8 = 4 \quad \text{(satisfied)}.$$

From $\lambda x^2 - \mu yz = (\lambda+2)x$ at $(1,-1,2)$:
$$\lambda - \mu(-1)(2) = \lambda + 2 \;\Rightarrow\; \lambda + 2\mu = \lambda + 2 \;\Rightarrow\; \mu = 1.$$

**2) For orthogonality, the normals (gradients) are perpendicular at the point.**

$$F_1(x,y,z) = \lambda x^2 - \mu yz - (\lambda+2)x, \qquad F_2(x,y,z) = 4xy + z^3 - 4.$$

$$\nabla F_1 = \langle 2\lambda x - (\lambda+2),\, -\mu z,\, -\mu y \rangle, \qquad \nabla F_2 = \langle 4y, 4x, 3z^2 \rangle.$$

At $(1,-1,2)$ with $\mu = 1$:
$$\nabla F_1 = \langle \lambda - 2, -2, 1 \rangle, \qquad \nabla F_2 = \langle -4, 4, 12 \rangle.$$

Orthogonality:
$$(\lambda-2)(-4) + (-2)(4) + 1(12) = 0 \;\Rightarrow\; -4\lambda + 16 = 0 \;\Rightarrow\; \boxed{\lambda = 4}.$$

Thus $\boxed{\lambda = 4,\ \mu = 1}$.

---

## Q3. Gradient of $r^n$

**For** $r = (x+y+z)^{1/2}$**, prove that** $\nabla(r^n) = n r^{n-2}\mathbf{r}$ **(where $\mathbf{r} = \langle x, y, z\rangle$).**

**Solution:**

Let $u = x + y + z$. Then $r = u^{1/2}$ and $r^n = u^{n/2}$. Using the chain rule,

$$\nabla(r^n) = \frac{n}{2}u^{\frac{n}{2}-1}\nabla u = \frac{n}{2}r^{n-2}\langle 1,1,1\rangle.$$

Since $\mathbf{r} = \langle x, y, z\rangle$ and $\nabla(x+y+z) = \langle 1,1,1\rangle$, we can write this as

$$\boxed{\nabla(r^n) = n r^{n-2}\mathbf{r}.} \quad \left(\text{Here } \mathbf{r} = \langle x,y,z\rangle \text{ and } r = (x+y+z)^{1/2}.\right)$$

Also show that
$$\frac{\partial(r^n)}{\partial x} = n x r^{n-2},$$

From $\nabla(r^n) = n r^{n-2}\mathbf{r}$, the $x$-component gives
$$\frac{\partial(r^n)}{\partial x} = n x r^{n-2}, \qquad \text{as required.}$$
