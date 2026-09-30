# ODE Exam-Ready Solutions

## Group – Even

### Q1. Ordinary Differential Equation — Definition & Formation [4]

**Definition:** An ordinary differential equation (ODE) is an equation involving one dependent variable and its derivatives with respect to a single independent variable.

**Given:** $y = e^x(A\cos 2x + B\sin 2x)$

**Step 1 — Differentiate once:**

$$y' = e^x(A\cos 2x+B\sin 2x) + e^x(-2A\sin 2x+2B\cos 2x)$$

$$y' = y + e^x(-2A\sin 2x+2B\cos 2x)$$

So:

$$y' - y = e^x(-2A\sin 2x+2B\cos 2x) \quad \text{...(i)}$$

**Step 2 — Differentiate (i) again:**

$$y'' - y' = e^x(-2A\sin2x+2B\cos2x) + e^x(-4A\cos2x-4B\sin2x)$$

$$y'' - y' = (y'-y) - 4e^x(A\cos2x+B\sin2x)$$

$$y'' - y' = (y'-y) - 4y$$

**Step 3 — Simplify:**

$$y'' - y' - y' + y - 4y\cdot(-1) = 0$$

$$\boxed{y'' - 2y' + 5y = 0}$$

**Order = 2, Degree = 1**

---

### Q2. General Solution of $\dfrac{dy}{dx} = \dfrac{y}{x} + x\sin\left(\dfrac{y}{x}\right)$ [3]

This is a homogeneous equation. Put $y = vx \implies \dfrac{dy}{dx} = v + x\dfrac{dv}{dx}$

$$v + x\frac{dv}{dx} = v + x\sin v$$

$$x\frac{dv}{dx} = x\sin v \implies \frac{dv}{\sin v} = \frac{dx}{x}$$

**Integrating:**

$$\int \csc v\,dv = \int \frac{dx}{x}$$

$$\ln\left|\tan\frac{v}{2}\right| = \ln|x| + \ln C$$

$$\tan\frac{v}{2} = Cx$$

Substituting back $v = y/x$:

$$\boxed{\tan\left(\frac{y}{2x}\right) = Cx}$$

---

### Q3. Exactness Test and Solution [3]

**Equation:** $[1 + \log(xy)]\,dx + \left[1 + \dfrac{x}{y}\right]dy = 0$

Here $M = 1 + \log(xy)$, $N = 1 + \dfrac{x}{y}$

$$\frac{\partial M}{\partial y} = \frac{\partial}{\partial y}[\log x + \log y] = \frac{1}{y}$$

$$\frac{\partial N}{\partial x} = \frac{1}{y}$$

Since $\dfrac{\partial M}{\partial y} = \dfrac{\partial N}{\partial x} = \dfrac{1}{y}$, the equation is **exact**.

**Solution:** $F(x,y) = \int M\,dx$ (y held constant) $+\ g(y)$

$$\int [1+\log x+\log y]\,dx = x + (x\log x - x) + x\log y = x\log x + x\log y$$

So $F = x\log x + x\log y + g(y)$. Differentiate w.r.t. $y$ and match with $N$:

$$\frac{\partial F}{\partial y} = \frac{x}{y} + g'(y) = 1+\frac{x}{y} \implies g'(y)=1 \implies g(y)=y$$

$$\boxed{x\log(xy) + y = C}$$

---

## Group – Odd

### Q1. Definitions + Solve $x^4\dfrac{dy}{dx} + x^3y = -\sec(xy)$ [3]

**Order:** the order of the highest derivative present in the ODE.
**Degree:** the power of the highest-order derivative, after the equation is made free of radicals/fractions in derivatives.

**Solving:** Factor the LHS:

$$x^3\left(x\frac{dy}{dx} + y\right) = -\sec(xy)$$

Notice that $x\dfrac{dy}{dx} + y = \dfrac{d(xy)}{dx}$. Let $t = xy$, so $\dfrac{dt}{dx} = xy' + y$.

$$x^3 \frac{dt}{dx} = -\sec t$$

$$\cos t\, dt = -\frac{dx}{x^3}$$

**Integrating both sides:**

$$\int \cos t\,dt = -\int x^{-3}\,dx$$

$$\sin t = \frac{1}{2x^2} + C$$

Substitute back $t = xy$:

$$\boxed{\sin(xy) = \frac{1}{2x^2} + C}$$

---

### Q2. Ice Melting Problem [3]

Let $N(t)$ = amount of ice at time $t$, $N_0$ = initial amount.

Since rate of melting $\propto$ amount present:

$$\frac{dN}{dt} = -kN \implies N = N_0 e^{-kt}$$

**Given:** at $t = 30$ min $= \tfrac{1}{2}$ hr, $N = N_0/2$:

$$\frac{N_0}{2} = N_0 e^{-k/2} \implies e^{-k/2} = \frac{1}{2} \implies k = 2\ln 2 = \ln 4$$

**Find $N$ at $t = 2$ hours:**

$$N = N_0 e^{-2k} = N_0 e^{-2\ln4} = N_0 \cdot 4^{-2} = \frac{N_0}{16}$$

$$\boxed{N(2) = \dfrac{N_0}{16}}$$

So only $\tfrac{1}{16}$ of the original ice remains after 2 hours.

---

### Q3. Solve $(D^2 - 3D + 2)y = e^x$ [4]

**Auxiliary equation:**

$$m^2 - 3m + 2 = 0 \implies (m-1)(m-2)=0 \implies m = 1,\ 2$$

**Complementary Function (CF):**

$$y_c = C_1 e^{x} + C_2 e^{2x}$$

**Particular Integral (PI):** Since $e^x$ corresponds to root $m=1$ (a repeated case with the RHS), the standard rule $\dfrac{1}{f(D)}e^{ax}$ fails ($f(1)=0$), so use:

$$\text{PI} = x\cdot\frac{e^{ax}}{f'(a)}, \quad f'(D)=2D-3,\ f'(1) = -1$$

$$\text{PI} = \frac{xe^x}{-1} = -xe^x$$

**Verification (undetermined coefficients):** try $y_p = Axe^x$:

- $y_p' = Ae^x(1+x)$, $y_p'' = Ae^x(2+x)$
- Substituting: $Ae^x[(2+x) - 3(1+x) + 2x] = Ae^x(-1) = e^x \implies A = -1$ ✓

**General Solution:**

$$\boxed{y = C_1 e^{x} + C_2 e^{2x} - xe^{x}}$$
