# Gopalganj Textile Engineering College, Gopalganj

**B.Sc. in Textile Engineering — 2nd Class Test 2025 (Level-1, Term-2)**
**Subject:** Mathematics-II (MS-103) | **Full Marks:** 10 | **Duration:** 30 minutes

> Solutions compiled by **sigkill0x00**

---

## Question 1 &nbsp; [3.5]

**Define Laplace transformation. Prove that** $\mathcal{L}\{t^n\} = \dfrac{n!}{s^{n+1}}$.

### Definition

Let $f(t)$ be a function defined for all $t \ge 0$. The **Laplace transform** of $f(t)$ is

$$
\mathcal{L}\{f(t)\} = F(s) = \int_0^\infty e^{-st} f(t)\,dt,
$$

provided the integral converges, where $s$ is a real (or complex) parameter.

### Proof

Here $n$ is a non-negative integer and $s > 0$. Let

$$
I_n = \mathcal{L}\{t^n\} = \int_0^\infty e^{-st}\,t^n\,dt .
$$

**Step 1: base case ($n = 0$).**

$$
I_0 = \int_0^\infty e^{-st}\,dt = \left[-\frac{e^{-st}}{s}\right]_0^\infty = 0 + \frac{1}{s} = \frac{1}{s}.
$$

**Step 2: recurrence ($n \ge 1$).** Integrate by parts with $u = t^n$, $dv = e^{-st}dt$, so $du = n t^{n-1}dt$, $v = -\dfrac{e^{-st}}{s}$:

$$
I_n = \left[-\frac{t^n e^{-st}}{s}\right]_0^\infty + \frac{n}{s}\int_0^\infty e^{-st}\,t^{n-1}\,dt .
$$

The boundary term vanishes: at $t=0$ it is $0$ (since $n\ge1$), and as $t\to\infty$, $t^n e^{-st}\to 0$ for $s>0$. Hence

$$
I_n = \frac{n}{s}\, I_{n-1}.
$$

**Step 3: repeated application.**

$$
I_n = \frac{n}{s}\cdot\frac{n-1}{s}\cdot\frac{n-2}{s}\cdots\frac{1}{s}\cdot I_0
= \frac{n(n-1)(n-2)\cdots 1}{s^{n}}\cdot\frac{1}{s}.
$$

$$
\boxed{\mathcal{L}\{t^n\} = \frac{n!}{s^{n+1}}}\qquad (s>0)
$$

**Hence proved.** $\blacksquare$

*(Remark: for non-integer $n>-1$ the same result reads $\Gamma(n+1)/s^{n+1}$.)*

---

## Question 2 &nbsp; [2.5]

**Given** $X(s) = \dfrac{12}{s(s+3)}$. **Find** $x(t)$ **and interpret the long-time response.**

### Partial fractions

$$
\frac{12}{s(s+3)} = \frac{A}{s} + \frac{B}{s+3}
\;\Rightarrow\; 12 = A(s+3) + Bs .
$$

- Put $s = 0$: $12 = 3A \Rightarrow A = 4$
- Put $s = -3$: $12 = -3B \Rightarrow B = -4$

$$
X(s) = \frac{4}{s} - \frac{4}{s+3}.
$$

### Inverse Laplace transform

Using $\mathcal{L}^{-1}\left\{\dfrac1s\right\} = 1$ and $\mathcal{L}^{-1}\left\{\dfrac{1}{s+a}\right\} = e^{-at}$:

$$
\boxed{x(t) = 4 - 4e^{-3t} = 4\left(1 - e^{-3t}\right),\quad t \ge 0}
$$

### Interpretation of the long-time response

As $t \to \infty$, $e^{-3t} \to 0$, so

$$
x(\infty) = 4 .
$$

*Check by Final Value Theorem:* $\displaystyle\lim_{s\to0} sX(s) = \lim_{s\to0}\frac{12}{s+3} = 4$ ✓

- The yarn position rises from $x(0)=0$ and **settles at a constant steady-state value of 4 units**.
- The response is a **first-order exponential approach** with time constant $\tau = \tfrac13$. About 95% of the final value is reached by $t \approx 3\tau = 1$ unit of time.
- There is **no oscillation or overshoot**, and the pole at $s=-3$ lies in the left half-plane, so the system is **stable**. The yarn moves smoothly to its final position and stays there.

---

## Question 3 &nbsp; [4]

**Define scalar triple product. Find** $\lambda$ **so that** $2\mathbf i - \mathbf j + \mathbf k,\;\; \mathbf i + 2\mathbf j - 3\mathbf k,\;\; 4\mathbf i - \mathbf j + \lambda\mathbf k$ **are coplanar.**

### Definition

For three vectors $\mathbf a, \mathbf b, \mathbf c$, the **scalar triple product** is

$$
[\mathbf a\;\mathbf b\;\mathbf c] = \mathbf a\cdot(\mathbf b\times\mathbf c).
$$

If $\mathbf a = a_1\mathbf i + a_2\mathbf j + a_3\mathbf k$, and similarly for $\mathbf b, \mathbf c$, then

$$
[\mathbf a\;\mathbf b\;\mathbf c] =
\begin{vmatrix}
a_1 & a_2 & a_3\\
b_1 & b_2 & b_3\\
c_1 & c_2 & c_3
\end{vmatrix}.
$$

Its absolute value equals the **volume of the parallelepiped** with $\mathbf a,\mathbf b,\mathbf c$ as adjacent edges. Three vectors are **coplanar if and only if** their scalar triple product is zero.

### Solution

Let $\mathbf a = (2,-1,1)$, $\mathbf b = (1,2,-3)$, $\mathbf c = (4,-1,\lambda)$.

For coplanarity:

$$
\begin{vmatrix}
2 & -1 & 1\\
1 & 2 & -3\\
4 & -1 & \lambda
\end{vmatrix} = 0 .
$$

Expanding along the first row:

$$
2\big[2\lambda - (-3)(-1)\big] - (-1)\big[1\cdot\lambda - (-3)(4)\big] + 1\big[1\cdot(-1) - 2\cdot 4\big] = 0
$$

$$
2(2\lambda - 3) + (\lambda + 12) + (-9) = 0
$$

$$
4\lambda - 6 + \lambda + 12 - 9 = 0
$$

$$
5\lambda - 3 = 0
$$

$$
\boxed{\lambda = \dfrac{3}{5}}
$$

### Verification

With $\lambda = \tfrac35$: $\mathbf b \times \mathbf c = (2\lambda-3,\; -(\lambda+12),\; -9) = \left(-\tfrac95,\; -\tfrac{63}{5},\; -9\right)$.

$$
\mathbf a\cdot(\mathbf b\times\mathbf c) = 2\left(-\tfrac95\right) + (-1)\left(-\tfrac{63}{5}\right) + 1(-9) = -\tfrac{18}{5} + \tfrac{63}{5} - \tfrac{45}{5} = 0 \;✓
$$

So the three vectors are coplanar when $\lambda = \dfrac{3}{5}$.

---

*Compiled by sigkill0x00*
