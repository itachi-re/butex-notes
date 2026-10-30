# Math-II Question Bank: Exam-Style Solutions (Part 3 of 3)

Solutions to the Question Bank (Minarul Sir's class notes), split by chapter so GitHub can render every equation.

[Complex Variable](ms-103-solution-qb-complex-variables-261030-0.md) · [Vector Calculus](ms-103-solution-qb-vectors-261030-0.md) · [Laplace Transform](ms-103-solution-qb-laplace-261030-0.md) · **Ordinary Differential Equations**

> **Notes on the source questions**
> - Ch4 T2 Q8(ii) is solved exactly as printed, $`\dfrac{dy}{dx}=\dfrac{y}{x}+x\sin\dfrac{y}{x}`$.

---

# Chapter 4: Ordinary Differential Equations (ODE)

## Topic 1: Definition & Formation of Differential Equations

### Q1. Define differential equation, ODE and PDE with examples.

- **Differential equation (DE):** an equation containing derivatives (or differentials) of one or more dependent variables with respect to one or more independent variables.
- **Ordinary differential equation (ODE):** a DE with derivatives with respect to a **single** independent variable. Example: $`\dfrac{dy}{dx} + 3y = e^x`$.
- **Partial differential equation (PDE):** a DE with partial derivatives with respect to **two or more** independent variables. Example: $`\dfrac{\partial^2u}{\partial x^2} + \dfrac{\partial^2u}{\partial y^2} = 0`$.

### Q2. Define order and degree with examples.

- **Order:** the order of the highest-order derivative present. 
- **Degree:** the power of the highest-order derivative, after the equation has been made free of radicals and fractions in its derivatives.

Examples: $`\dfrac{d^2y}{dx^2} + \left(\dfrac{dy}{dx}\right)^3 = x`$ has order 2 and degree 1. $`\left(\dfrac{d^3y}{dx^3}\right)^2 + \dfrac{dy}{dx} = 0`$ has order 3 and degree 2.

### Q3. (Homework) Give examples.

**(i) Linear, second order, first degree:** $`\dfrac{d^2y}{dx^2} + 3\dfrac{dy}{dx} + 2y = \sin x`$.

**(ii) Non-linear, second order, second degree:** $`\left(\dfrac{d^2y}{dx^2}\right)^2 + \left(\dfrac{dy}{dx}\right)^3 + y = 0`$ (non-linear because of the powers of derivatives).

### Q4. (Homework) Order and degree.

**(i)** $`\dfrac{d^2y}{dx^2} + a^2x = 0`$: **order 2, degree 1.**

**(ii)** $`\left[1 + \left(\dfrac{dy}{dx}\right)^2\right]^{3/2} = \dfrac{d^2y}{dx^2}`$. Squaring to remove the fractional power: $`\left[1 + \left(\dfrac{dy}{dx}\right)^2\right]^3 = \left(\dfrac{d^2y}{dx^2}\right)^2`$. **Order 2, degree 2.**

**(iii)** $`x^2\left(\dfrac{d^2y}{dx^2}\right)^3 + y\left(\dfrac{dy}{dx}\right)^4 + y^4 = 0`$: **order 2, degree 3.**

### Q5. (Homework) Form the differential equation.

**(i) $`y = ae^{3x} + be^x`$.**

```math
y' = 3ae^{3x} + be^x,\qquad y'' = 9ae^{3x} + be^x
```

$`y' - y = 2ae^{3x}`$ and $`y'' - y' = 6ae^{3x} = 3(y' - y)`$. Hence

**Answer:**

```math
\frac{d^2y}{dx^2} - 4\frac{dy}{dx} + 3y = 0
```

**(ii) $`y = e^x(A\cos x + B\sin x)`$.**

Let $`w = e^x(-A\sin x + B\cos x)`$. Then $`y' = y + w`$ and $`w' = w - y`$ (differentiating $`w`$ and collecting terms). So

```math
y'' = y' + w' = y' + w - y = y' + (y' - y) - y = 2y' - 2y
```

**Answer:**

```math
\frac{d^2y}{dx^2} - 2\frac{dy}{dx} + 2y = 0
```

### Q6. General solution vs particular solution.

- **General solution:** a solution containing as many **arbitrary constants** as the order of the equation. It represents a family of curves. Example: $`y = Ce^{x}`$ for $`y' = y`$.
- **Particular solution:** the solution obtained from the general solution by assigning definite values to the arbitrary constants (usually using initial/boundary conditions). Example: $`y = 2e^x`$ for $`y' = y`$, $`y(0) = 2`$.

---

## Topic 2: Separation of Variables & Homogeneous Differential Equations

### Q1. Solve $`x^3\left(x\dfrac{dy}{dx} + y\right) = -\sec(xy)`$, $`y(1) = \dfrac\pi2`$.

Put $`v = xy`$. Then $`\dfrac{dv}{dx} = x\dfrac{dy}{dx} + y`$, so

```math
x^3\frac{dv}{dx} = -\sec v\;\Rightarrow\;\cos v\,dv = -\frac{dx}{x^3}
```

```math
\sin v = \frac{1}{2x^2} + C\;\Rightarrow\;\sin(xy) = \frac1{2x^2} + C
```

At $`x = 1`$, $`y = \dfrac\pi2`$: $`\sin\dfrac\pi2 = 1 = \dfrac12 + C\Rightarrow C = \dfrac12`$.

**Answer:**

```math
\sin(xy) = \frac{1}{2x^2} + \frac12 = \frac{1 + x^2}{2x^2}
```

### Q2. (Homework) Solve $`\dfrac{dy}{dx} = 1 + \tan(y - x)`$.

Put $`v = y - x`$, $`\dfrac{dv}{dx} = \dfrac{dy}{dx} - 1 = \tan v`$:

```math
\cot v\,dv = dx\;\Rightarrow\;\ln|\sin v| = x + \ln C
```

**Answer:**

```math
\sin(y - x) = Ce^x
```

### Q3. Solve $`(2x^2 + 3y^2 - 7)x\,dx - (3x^2 + 2y^2 - 8)y\,dy = 0`$.

Put $`u = x^2`$, $`w = y^2`$: $`x\,dx = \tfrac12du`$, $`y\,dy = \tfrac12dw`$.

```math
(2u + 3w - 7)\,du = (3u + 2w - 8)\,dw
```

Solve $`2u + 3w - 7 = 0`$ and $`3u + 2w - 8 = 0`$: $`u = 2`$, $`w = 1`$. Shift: $`u = X + 2`$, $`w = Y + 1`$:

```math
(2X + 3Y)\,dX = (3X + 2Y)\,dY\quad(\text{homogeneous})
```

Put $`Y = vX`$, $`dY = v\,dX + X\,dv`$:

```math
(2 + 3v)\,dX = (3 + 2v)(v\,dX + X\,dv)\;\Rightarrow\;2(1 - v^2)\,dX = (3 + 2v)X\,dv
```

```math
\frac{dX}{X} = \frac{3 + 2v}{2(1-v)(1+v)}dv = \frac12\left[\frac{5/2}{1-v} + \frac{1/2}{1+v}\right]dv
```

Integrating: $`\ln X = -\tfrac54\ln|1 - v| + \tfrac14\ln|1 + v| + \ln c`$, so

```math
X^4 = c\,\frac{1+v}{(1-v)^5}\;\Rightarrow\;(X - Y)^5 = c(X + Y)
```

Substituting $`X = x^2 - 2`$, $`Y = y^2 - 1`$:

**Answer:**

```math
(x^2 - y^2 - 1)^5 = c\,(x^2 + y^2 - 3)
```

### Q4. (Homework) Solve $`\dfrac{dy}{dx} = (4x + y + 1)^2`$.

Put $`v = 4x + y + 1`$, $`\dfrac{dv}{dx} = 4 + \dfrac{dy}{dx} = 4 + v^2`$:

```math
\frac{dv}{v^2 + 4} = dx\;\Rightarrow\;\frac12\tan^{-1}\frac v2 = x + c
```

**Answer:**

```math
4x + y + 1 = 2\tan(2x + C)
```

### Q5. Define homogeneous differential equation and state its working rules.

A DE $`\dfrac{dy}{dx} = \dfrac{M(x,y)}{N(x,y)}`$ is **homogeneous** if $`M`$ and $`N`$ are homogeneous functions of the same degree $`n`$ (i.e. $`M(\lambda x,\lambda y) = \lambda^nM(x,y)`$), equivalently $`\dfrac{dy}{dx} = f\!\left(\dfrac yx\right)`$.

**Working rules:**
1. Put $`y = vx`$, so $`\dfrac{dy}{dx} = v + x\dfrac{dv}{dx}`$ (if $`N`$ is simpler, put $`x = vy`$).
2. The equation becomes $`x\dfrac{dv}{dx} = f(v) - v`$, in which the variables separate: $`\dfrac{dv}{f(v) - v} = \dfrac{dx}{x}`$.
3. Integrate both sides.
4. Replace $`v`$ by $`\dfrac yx`$ and simplify.

### Q6. Solve $`x(x - y)\,dy + y^2dx = 0`$, $`y(1) = 1`$.

```math
\frac{dy}{dx} = \frac{-y^2}{x(x-y)} = \frac{y^2}{x(y - x)}
```

Put $`y = vx`$: $`v + x\dfrac{dv}{dx} = \dfrac{v^2}{v - 1}`$

```math
x\frac{dv}{dx} = \frac{v^2}{v-1} - v = \frac{v}{v-1}\;\Rightarrow\;\frac{v - 1}{v}dv = \frac{dx}{x}
```

```math
v - \ln v = \ln x + c\;\Rightarrow\;\frac yx - \ln y + \ln x = \ln x + c\;\Rightarrow\;\frac yx - \ln y = c
```

At $`x = 1`$, $`y = 1`$: $`c = 1`$.

**Answer:**

```math
\frac yx - \ln y = 1
```

### Q7. Solve $`x\dfrac{dy}{dx} = y(\log y - \log x + 1)`$.

```math
\frac{dy}{dx} = \frac yx\left(\ln\frac yx + 1\right)
```

Put $`y = vx`$: $`v + x\dfrac{dv}{dx} = v(\ln v + 1)\Rightarrow x\dfrac{dv}{dx} = v\ln v`$

```math
\frac{dv}{v\ln v} = \frac{dx}{x}\;\Rightarrow\;\ln|\ln v| = \ln x + \ln C\;\Rightarrow\;\ln v = Cx
```

**Answer:**

```math
y = x\,e^{Cx}
```

### Q8. (Homework)

**(i) $`(y^2 + 2xy)\,dx = (2x^2 + 3xy)\,dy`$.**

```math
\frac{dy}{dx} = \frac{y^2 + 2xy}{2x^2 + 3xy}
```

Put $`y = vx`$: $`v + x\dfrac{dv}{dx} = \dfrac{v^2 + 2v}{2 + 3v}`$

```math
x\frac{dv}{dx} = \frac{v^2 + 2v - 2v - 3v^2}{2 + 3v} = \frac{-2v^2}{2 + 3v}\;\Rightarrow\;\left(\frac{2}{v^2} + \frac3v\right)dv = -\frac{2\,dx}{x}
```

```math
-\frac2v + 3\ln v = -2\ln x + c\;\Rightarrow\;\ln(v^3x^2) = \frac2v + c
```

With $`v = \dfrac yx`$, $`v^3x^2 = \dfrac{y^3}{x}`$:

**Answer:**

```math
y^3 = Cx\,e^{2x/y}
```

**(ii) $`\dfrac{dy}{dx} = \dfrac yx + x\sin\dfrac yx`$.**

Put $`y = vx`$: $`v + x\dfrac{dv}{dx} = v + x\sin v\Rightarrow\dfrac{dv}{dx} = \sin v`$

```math
\frac{dv}{\sin v} = dx\;\Rightarrow\;\ln\tan\frac v2 = x + \ln C
```

**Answer:**

```math
\tan\frac{y}{2x} = Ce^x
```

---

## Topic 3: Ice Melt & Radiation / Cooling Problems

### Q1. Radium decays at a rate proportional to the amount present. If 5% disappears in 50 years, how much remains after 100 years?

Let $`Q`$ be the amount at time $`t`$ (years), $`Q_0`$ the original amount.

```math
\frac{dQ}{dt} = -kQ\;\Rightarrow\;Q = Q_0e^{-kt}
```

After 50 years, $`95\%`$ remains: $`Q_0e^{-50k} = 0.95\,Q_0\Rightarrow e^{-50k} = 0.95`$.

After 100 years:

```math
Q = Q_0e^{-100k} = Q_0(e^{-50k})^2 = Q_0(0.95)^2 = 0.9025\,Q_0
```

**Answer:**

```math
90.25\%\text{ of the original amount remains.}
```

### Q2. Newton's law of cooling: air at $`25^\circ`$C; body cools from $`100^\circ`$C to $`75^\circ`$C in 1 minute. Temperature after 3 minutes?

```math
\frac{d\theta}{dt} = -k(\theta - 25)\;\Rightarrow\;\theta = 25 + Ce^{-kt}
```

$`\theta(0) = 100\Rightarrow C = 75`$. $`\theta(1) = 75\Rightarrow 50 = 75e^{-k}\Rightarrow e^{-k} = \dfrac23`$.

```math
\theta(3) = 25 + 75\left(\frac23\right)^3 = 25 + \frac{200}{9} = \frac{425}{9}
```

**Answer:**

```math
\theta(3)\approx47.2^\circ\text{C}
```

### Q3. (Homework) Ice melts at a rate proportional to the amount present; half melts in 30 min. How much remains after 2 hours?

```math
\frac{dQ}{dt} = -kQ\;\Rightarrow\;Q = Q_0e^{-kt}
```

At $`t = 30`$ min: $`e^{-30k} = \dfrac12`$. After 2 hours $`= 120`$ min $`= 4\times30`$ min:

```math
Q = Q_0\left(e^{-30k}\right)^4 = Q_0\left(\frac12\right)^4
```

**Answer:**

```math
Q = \frac{Q_0}{16}\ (6.25\%\text{ of the ice remains})
```

---

## Topic 4: Linear Differential Equations

### Q1. Define linear DE and integrating factor.

A **linear first-order DE** has the form

```math
\frac{dy}{dx} + P(x)y = Q(x),
```

where $`y`$ and $`\dfrac{dy}{dx}`$ appear only to the first power and are not multiplied together.

**Integrating factor:** $`\text{I.F.} = e^{\int P\,dx}`$. Multiplying the equation by I.F. makes the left side $`\dfrac{d}{dx}(y\cdot\text{I.F.})`$, so the solution is

```math
y\cdot\text{I.F.} = \int Q\cdot\text{I.F.}\,dx + C.
```

(Similarly for $`\dfrac{dx}{dy} + P(y)x = Q(y)`$, with I.F. $`= e^{\int P\,dy}`$.)

### Q2. Solve $`\dfrac{dy}{dx} + y\tan x = \cos x`$, $`y(0) = 0`$.

$`P = \tan x`$, $`\ \text{I.F.} = e^{\int\tan x\,dx} = e^{\ln\sec x} = \sec x`$.

```math
y\sec x = \int\cos x\sec x\,dx = \int dx = x + C\;\Rightarrow\;y = (x + C)\cos x
```

$`y(0) = 0\Rightarrow C = 0`$.

**Answer:**

```math
y = x\cos x
```

### Q3. Solve $`x\log x\dfrac{dy}{dx} + y = 2\log x`$.

Divide by $`x\ln x`$: $`\dfrac{dy}{dx} + \dfrac{y}{x\ln x} = \dfrac2x`$.

$`\text{I.F.} = e^{\int\frac{dx}{x\ln x}} = e^{\ln\ln x} = \ln x`$.

```math
y\ln x = \int\frac2x\ln x\,dx = (\ln x)^2 + C
```

**Answer:**

```math
y = \ln x + \frac{C}{\ln x}
```

### Q4. (Homework B)

**(i) $`\sec x\dfrac{dy}{dx} = y + \sin x`$.**

```math
\frac{dy}{dx} - y\cos x = \sin x\cos x,\qquad \text{I.F.} = e^{-\int\cos x\,dx} = e^{-\sin x}
```

```math
ye^{-\sin x} = \int\sin x\cos x\,e^{-\sin x}dx
```

Put $`t = \sin x`$: $`\displaystyle\int te^{-t}dt = -te^{-t} - e^{-t} = -e^{-t}(t+1)`$.

```math
ye^{-\sin x} = -e^{-\sin x}(\sin x + 1) + C
```

**Answer:**

```math
y = Ce^{\sin x} - (1 + \sin x)
```

**(ii) $`x\dfrac{dy}{dx} + 2y = x^2\log x`$.**

```math
\frac{dy}{dx} + \frac2xy = x\ln x,\qquad\text{I.F.} = e^{2\ln x} = x^2
```

```math
yx^2 = \int x^3\ln x\,dx = \frac{x^4}{4}\ln x - \frac{x^4}{16} + C
```

**Answer:**

```math
y = \frac{x^2}{4}\ln x - \frac{x^2}{16} + \frac{C}{x^2}
```

### Q5. (Homework A)

**(i) $`x\left(\dfrac{dy}{dx} + y\right) = 1 - y`$.**

```math
x\frac{dy}{dx} + (x+1)y = 1\;\Rightarrow\;\frac{dy}{dx} + \left(1 + \frac1x\right)y = \frac1x
```

$`\text{I.F.} = e^{\int(1 + 1/x)dx} = e^{x + \ln x} = xe^x`$.

```math
y\,xe^x = \int\frac1x\cdot xe^xdx = e^x + C
```

**Answer:**

```math
y = \frac1x + \frac{Ce^{-x}}{x}
```

**(ii) $`(1 + y^2)\,dx = (\tan^{-1}y - x)\,dy`$.**

Treat $`x`$ as the dependent variable:

```math
\frac{dx}{dy} + \frac{x}{1+y^2} = \frac{\tan^{-1}y}{1+y^2},\qquad\text{I.F.} = e^{\tan^{-1}y}
```

```math
xe^{\tan^{-1}y} = \int\frac{\tan^{-1}y}{1+y^2}e^{\tan^{-1}y}dy
```

Put $`t = \tan^{-1}y`$: $`\displaystyle\int te^tdt = (t - 1)e^t + C`$.

**Answer:**

```math
x = \tan^{-1}y - 1 + Ce^{-\tan^{-1}y}
```

---

## Topic 5: Exact Differential Equations

### Q1. Define exact DE and state the condition of exactness.

A DE $`M(x,y)\,dx + N(x,y)\,dy = 0`$ is **exact** if there exists a function $`u(x,y)`$ with $`du = M\,dx + N\,dy`$, i.e. $`M = \dfrac{\partial u}{\partial x}`$, $`N = \dfrac{\partial u}{\partial y}`$.

**Condition:** 

```math
\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}.
```

**Solution:** 

```math
\int M\,dx\ (y\text{ constant}) + \int(\text{terms of }N\text{ not containing }x)\,dy = C.
```

### Q2. Find the primitive of $`(ax + hy + g)\,dx + (hx + by + f)\,dy = 0`$.

$`M = ax + hy + g`$, $`N = hx + by + f`$. $`\dfrac{\partial M}{\partial y} = h = \dfrac{\partial N}{\partial x}`$, so the equation is exact.

```math
\int M\,dx = \frac{ax^2}{2} + hxy + gx;\qquad\text{terms of }N\text{ free of }x:\ by + f\ \Rightarrow\ \int = \frac{by^2}{2} + fy
```

**Answer:**

```math
ax^2 + 2hxy + by^2 + 2gx + 2fy = C
```

### Q3. (Homework B)

**(i) $`[1 + \log(xy)]\,dx + \left(1 + \dfrac xy\right)dy = 0`$.**

$`M = 1 + \ln(xy)`$, $`\ \dfrac{\partial M}{\partial y} = \dfrac1y`$; $`\ N = 1 + \dfrac xy`$, $`\ \dfrac{\partial N}{\partial x} = \dfrac1y`$. Exact.

```math
\int M\,dx = \int(1 + \ln x + \ln y)\,dx = x + (x\ln x - x) + x\ln y = x\ln(xy)
```

Terms of $`N`$ free of $`x`$: $`1`$, giving $`\int1\,dy = y`$.

**Answer:**

```math
x\ln(xy) + y = C
```

**(ii) $`(2xy + e^y)\,dx + (x^2 + xe^y)\,dy = 0`$.**

$`\dfrac{\partial M}{\partial y} = 2x + e^y = \dfrac{\partial N}{\partial x}`$. Exact.

```math
\int M\,dx = x^2y + xe^y;\qquad N\text{ has no term free of }x.
```

**Answer:**

```math
x^2y + xe^y = C
```

---

## Topic 6: Higher Order Linear Differential Equations

### Q1. General form; complementary function and particular integral.

The general linear DE of order $`n`$ with constant coefficients:

```math
a_0\frac{d^ny}{dx^n} + a_1\frac{d^{n-1}y}{dx^{n-1}} + \cdots + a_ny = f(x),\quad\text{i.e. } \phi(D)\,y = f(x),\ D = \frac d{dx}.
```

The complete solution is

```math
y = y_c + y_p.
```

- **Complementary function $`y_c`$:** the general solution of the homogeneous equation $`\phi(D)y = 0`$ (contains $`n`$ arbitrary constants). Found from the auxiliary equation $`\phi(m) = 0`$:
  - distinct real roots $`m_1, m_2`$: $`y_c = c_1e^{m_1x} + c_2e^{m_2x}`$;
  - repeated root $`m`$: $`y_c = (c_1 + c_2x)e^{mx}`$;
  - complex roots $`\alpha\pm i\beta`$: $`y_c = e^{\alpha x}(c_1\cos\beta x + c_2\sin\beta x)`$.
- **Particular integral $`y_p`$:** any particular solution of $`\phi(D)y = f(x)`$, i.e. $`y_p = \dfrac{1}{\phi(D)}f(x)`$ (no arbitrary constants).

### Q2. (Homework) General solutions.

**(i) $`(D^2 - 4D + 13)y = 0`$.** $`m^2 - 4m + 13 = 0\Rightarrow m = \dfrac{4\pm\sqrt{16 - 52}}{2} = 2\pm3i`$.

**Answer:**

```math
y = e^{2x}(c_1\cos3x + c_2\sin3x)
```

**(ii) $`(D^2 - 3D + 2)y = 0`$.** $`(m-1)(m-2) = 0\Rightarrow m = 1, 2`$.

**Answer:**

```math
y = c_1e^{x} + c_2e^{2x}
```

**(iii) $`(D^2 + 6D + 9)y = 0`$.** $`(m+3)^2 = 0\Rightarrow m = -3,-3`$.

**Answer:**

```math
y = (c_1 + c_2x)e^{-3x}
```

**(iv) $`\dfrac{d^2y}{dx^2} - 2\dfrac{dy}{dx} + 2y = 0`$.** $`m^2 - 2m + 2 = 0\Rightarrow m = 1\pm i`$.

**Answer:**

```math
y = e^x(c_1\cos x + c_2\sin x)
```

---

## Topic 7: Undetermined Coefficients & Variation of Parameters

### Q1. (Homework B) Complete primitive.

**(i) $`(D^3 - 3D^2 + 3D - 1)y = xe^x + e^x`$.**

Auxiliary equation: $`m^3 - 3m^2 + 3m - 1 = (m-1)^3 = 0`$, so $`m = 1,1,1`$.

```math
y_c = (c_1 + c_2x + c_3x^2)e^x
```

Particular integral, with $`\phi(D) = (D-1)^3`$ and the shift rule $`\dfrac{1}{\phi(D)}e^{ax}V = e^{ax}\dfrac{1}{\phi(D + a)}V`$:

```math
y_p = \frac{1}{(D-1)^3}e^x(x + 1) = e^x\frac{1}{D^3}(x + 1) = e^x\left(\frac{x^4}{24} + \frac{x^3}{6}\right)
```

**Answer:**

```math
y = e^x\left[c_1 + c_2x + c_3x^2 + \frac{x^3}{6} + \frac{x^4}{24}\right]
```

**(ii) $`\dfrac{d^2y}{dx^2} - 9\dfrac{dy}{dx} + 20y = 20x + \cos5x`$.**

Auxiliary equation: $`m^2 - 9m + 20 = (m-4)(m-5) = 0`$:

```math
y_c = c_1e^{4x} + c_2e^{5x}
```

*P.I. for $`20x`$:*

```math
\frac{1}{20 - 9D + D^2}\,20x = \frac1{20}\left[1 - \frac{9D - D^2}{20}\right]^{-1}20x = \frac{1}{20}\left[1 + \frac{9D}{20}\right]20x = x + \frac{9}{20}
```

*P.I. for $`\cos5x`$:* replace $`D^2\to-25`$:

```math
\frac{1}{(-25) - 9D + 20}\cos5x = \frac{-1}{5 + 9D}\cos5x = \frac{-(5 - 9D)}{25 - 81D^2}\cos5x = \frac{-(5 - 9D)}{25 + 2025}\cos5x
```

```math
= -\frac{5\cos5x + 45\sin5x}{2050} = -\frac{\cos5x + 9\sin5x}{410}
```

**Answer:**

```math
y = c_1e^{4x} + c_2e^{5x} + x + \frac9{20} - \frac{1}{410}\left(\cos5x + 9\sin5x\right)
```

---

[Complex Variable](ms-103-solution-qb-complex-variables-261030-0.md) · [Vector Calculus](ms-103-solution-qb-vectors-261030-0.md) · [Laplace Transform](ms-103-solution-qb-laplace-261030-0.md) · **Ordinary Differential Equations**

*End of question bank solutions.*
