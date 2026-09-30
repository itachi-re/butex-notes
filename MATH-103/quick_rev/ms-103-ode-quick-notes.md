---
title: "Ordinary Differential Equations — Quick Revision Notes"
course: MATH-103
tags: [ode, differential-equations, calculus, math-103, butex-notes]
---

![Math](https://img.shields.io/badge/MATH--103-ODE-blue) ![Level](https://img.shields.io/badge/Level-Undergraduate-green) ![Type](https://img.shields.io/badge/Type-Revision%20Notes-orange)

# ODE Quick Notes

A complete, exam-ready walkthrough of Ordinary Differential Equations — built from first principles, in plain English, with every symbol defined the first time it appears.

---

## Table of Contents

1. [Introduction](#1-introduction)
2. [Classification of Differential Equations](#2-classification-of-differential-equations)
3. [First Order ODE](#3-first-order-ode)
4. [Higher Order Linear ODE](#4-higher-order-linear-ode)
5. [Method of Undetermined Coefficients](#5-method-of-undetermined-coefficients-uc)
6. [Inverse Operator Method](#6-inverse-operator-method)
7. [Variation of Parameters](#7-variation-of-parameters)
8. [Formula Sheet](#8-formula-sheet)
9. [Quick Revision Tables](#9-quick-revision-tables)
10. [Exam Cheatsheet](#10-exam-cheatsheet)

---

## 1. Introduction

### 1.1 What is a differential equation?

A **differential equation** is simply an equation that contains a function together with one or more of its **derivatives**.

Instead of asking "what number satisfies this equation?" (like ordinary algebra), a differential equation asks:

> "What **function** satisfies this equation, given information about its rate of change?"

**Definition.** A differential equation is any equation involving an unknown function $y$ and one or more of its derivatives $y', y'', \dots$

**Example**

$$\frac{dy}{dx} = 3x^2$$

This says: "the slope of $y$ at every point $x$ equals $3x^2$." Solving it means finding the function $y(x)$ whose slope behaves this way. Here $y = x^3 + C$, where $C$ is an arbitrary constant.

> **Exam Tip:** Whenever you see $\frac{dy}{dx}$, $y'$, $\dot y$, or $D y$ — they all mean the *same thing*: the first derivative of $y$ with respect to the independent variable.

### 1.2 Why differential equations matter

Almost nothing in nature is described directly by a formula for "where something is." Instead, nature tells us **how fast things change**, and calculus is the language that connects "rate of change" back to "actual position/value." Differential equations are the mathematical bridge between those two ideas.

### 1.3 Real-world applications

| Field | Example | Typical ODE |
|---|---|---|
| **Physics** | Newton's second law, oscillating springs, radioactive decay | $m\ddot{x} = -kx$, $\frac{dN}{dt} = -\lambda N$ |
| **Engineering** | RLC circuits, heat conduction along a rod, control systems | $L\frac{d^2q}{dt^2} + R\frac{dq}{dt} + \frac{q}{C} = E(t)$ |
| **Biology** | Population growth, epidemic spread (SIR models) | $\frac{dP}{dt} = rP\left(1-\frac{P}{K}\right)$ |
| **Economics** | Compound interest, market equilibrium dynamics | $\frac{dA}{dt} = rA$ |

### 1.4 Origin of differential equations

Differential equations arose historically from **Newton's and Leibniz's** development of calculus in the late 17th century. Newton needed a way to describe motion under forces (leading to $F = ma$, a second-order ODE), while Leibniz's notation ($dy/dx$) gave the field its modern symbolic language. Over the following centuries, Euler, Bernoulli, Lagrange, and Laplace expanded the theory into the systematic toolkit used today.

> **Definition (informal).** A differential equation *originates* whenever a physical law is stated as a relationship between a quantity and its rate(s) of change, rather than as a direct formula for the quantity itself.

---

## 2. Classification of Differential Equations

Before solving anything, you must be able to **name** the type of equation you're looking at — this single step determines which method you'll use.

### 2.1 Ordinary Differential Equation (ODE)

**Definition.** An ODE involves derivatives with respect to **only one** independent variable.

$$\frac{d^2y}{dx^2} + 3y = 0$$

Here $y$ depends only on $x$.

### 2.2 Partial Differential Equation (PDE)

**Definition.** A PDE involves a function of **two or more** independent variables, differentiated partially with respect to each.

$$\frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0 \quad \text{(Laplace's Equation)}$$

Here $u$ depends on both $x$ and $y$. The symbol $\partial$ (a curly "d") means "differentiate with respect to this variable while holding the others fixed."

> This course (MATH-103) focuses on **ODEs only**.

### 2.3 Order

**Definition.** The order is the **highest derivative** appearing in the equation.

| Term | Order |
|---|---|
| $y$ | 0 |
| $\frac{dy}{dx}$ | 1 |
| $\frac{d^2y}{dx^2}$ | 2 |
| $\frac{d^ny}{dx^n}$ | $n$ |

### 2.4 Degree

**Definition.** The degree is the **power of the highest-order derivative**, after the equation has been made free of radicals and fractions involving derivatives.

$$\left(\frac{d^2y}{dx^2}\right)^3 + \frac{dy}{dx} = 0$$

Highest derivative is $\frac{d^2y}{dx^2}$, raised to power $3$ → **degree 3**.

> **Common Mistake:** Confusing order (which derivative) with degree (what power it's raised to). Also, degree is only defined *after* clearing radicals/fractions of derivative terms.

### 2.5 Linear vs Non-linear

**Definition.** A differential equation is **linear** if:
- The dependent variable $y$ and all its derivatives appear only to the **first power**.
- There are **no products** of $y$ with its own derivatives (e.g., no $y \cdot y'$).
- There are no transcendental functions of $y$ (no $\sin y$, $e^y$, $\ln y$, etc.).

**General linear form (order $n$):**

$$a_n(x)\frac{d^ny}{dx^n} + a_{n-1}(x)\frac{d^{n-1}y}{dx^{n-1}} + \cdots + a_1(x)\frac{dy}{dx} + a_0(x)y = f(x)$$

**Examples**

- Linear: $y'' + 3y' + 2y = e^x$
- Non-linear: $y'' + 3(y')^2 + 2y = 0$ (derivative squared)
- Non-linear: $yy' = x$ (product of $y$ and $y'$)
- Non-linear: $y'' + \sin(y) = 0$

### 2.6 Homogeneous vs Non-homogeneous

**Definition.** A linear ODE is **homogeneous** if the right-hand side (the "forcing term") is zero; otherwise it is **non-homogeneous**.

$$y'' + 5y' + 6y = 0 \quad \text{(homogeneous)}$$
$$y'' + 5y' + 6y = e^x \quad \text{(non-homogeneous — $e^x$ is the forcing function)}$$

Think of a spring: left alone, it oscillates naturally (homogeneous). Push on it externally, and the $e^x$ term represents that external push (non-homogeneous).

### 2.7 Explicit vs Implicit

- **Explicit solution:** $y$ is isolated, e.g. $y = x^2 + C$.
- **Implicit solution:** $y$ and $x$ are mixed together and cannot easily be separated, e.g. $x^2 + y^2 = C$.

### 2.8 Initial Value Problem (IVP)

**Definition.** An ODE together with condition(s) specified at a **single point** of the independent variable.

$$y' = 2x, \quad y(0) = 5$$

### 2.9 Boundary Value Problem (BVP)

**Definition.** An ODE together with conditions specified at **two or more different points**.

$$y'' + y = 0, \quad y(0) = 0,\ y(\pi) = 0$$

> **Exam Tip:** IVP → conditions all at one $x$-value. BVP → conditions at different $x$-values (usually endpoints of an interval). This distinction matters because BVPs may have no solution, one solution, or infinitely many, while IVPs (under standard conditions) have a unique solution.

### 2.10 Comparison Table

| Property | Category A | Category B |
|---|---|---|
| Number of independent variables | ODE: one | PDE: two or more |
| Highest derivative present | Order | — |
| Power of highest derivative | Degree | — |
| Powers/products of $y$, $y'$, ... | Linear (all power 1, no products) | Non-linear |
| Right-hand side | Homogeneous ($=0$) | Non-homogeneous ($\neq 0$) |
| Where conditions are given | IVP (one point) | BVP (multiple points) |

---

## 3. First Order ODE

A first-order ODE contains only $y$ and $\frac{dy}{dx}$ (no higher derivatives). There are five standard types tested in exams.

### 3.1 Variable Separable

**Definition.** An equation is separable if it can be rearranged so that all $y$-terms (including $dy$) are on one side and all $x$-terms (including $dx$) are on the other.

**Identification rule:** Can you write it as $f(y)\,dy = g(x)\,dx$?

**General method:**

> **Formula**
> $$\frac{dy}{dx} = g(x)h(y) \quad\Longrightarrow\quad \int \frac{dy}{h(y)} = \int g(x)\,dx$$

**Algorithm:**
1. Rearrange to isolate all $y$'s (with $dy$) on the left, all $x$'s (with $dx$) on the right.
2. Integrate both sides independently.
3. Add a single constant of integration $C$.
4. Simplify to explicit form if possible.

**Example 1.** Solve $\dfrac{dy}{dx} = \dfrac{x}{y}$.

Separate: $y\,dy = x\,dx$

Integrate: $\dfrac{y^2}{2} = \dfrac{x^2}{2} + C_1$

$$\boxed{y^2 - x^2 = C}$$

**Example 2.** Solve $\dfrac{dy}{dx} = e^{x-y}$, given $y(0)=0$.

Rewrite: $e^y\,dy = e^x\,dx$

Integrate: $e^y = e^x + C$

Apply IC: $1 = 1 + C \Rightarrow C = 0$

$$\boxed{e^y = e^x \;\Rightarrow\; y = x}$$

**Practice:** Solve $\dfrac{dy}{dx} = \dfrac{y^2+1}{x}$ (no solution shown).

> **Exam Tip:** Always check whether dividing by $h(y)$ loses a solution (e.g. $y=0$ might be a "singular solution" not captured by the general formula).

> **Common Mistake:** Forgetting to add $C$ immediately after integration, or splitting it incorrectly across both sides (only **one** constant is needed).

---

### 3.2 Homogeneous Equations (in $x, y$)

**Definition.** A first-order ODE $\frac{dy}{dx} = f(x,y)$ is **homogeneous** (in this specific first-order sense) if $f(x,y)$ can be written as a function of $\frac{y}{x}$ alone, i.e., $f(tx,ty) = f(x,y)$ for any $t$.

**Identification rule:** Every term has the **same total degree** when $x$ and $y$ are both counted.

**Substitution:** Let $y = vx$, so $\frac{dy}{dx} = v + x\frac{dv}{dx}$.

> **Formula**
> $$y = vx \quad\Longrightarrow\quad \frac{dy}{dx} = v + x\frac{dv}{dx}$$

**Algorithm:**
1. Confirm homogeneity (equal degree in every term).
2. Substitute $y = vx$ and $\frac{dy}{dx} = v + x\frac{dv}{dx}$.
3. The equation becomes separable in $v$ and $x$.
4. Solve for $v$, then substitute back $v = y/x$.

**Example 1.** Solve $\dfrac{dy}{dx} = \dfrac{x^2+y^2}{xy}$.

Both terms degree 2 → homogeneous. Let $y=vx$:

$$v + x\frac{dv}{dx} = \frac{x^2 + v^2x^2}{vx^2} = \frac{1+v^2}{v}$$

$$x\frac{dv}{dx} = \frac{1+v^2}{v} - v = \frac{1}{v}$$

Separate: $v\,dv = \dfrac{dx}{x}$

Integrate: $\dfrac{v^2}{2} = \ln|x| + C_1$

Substitute back $v = y/x$:

$$\boxed{\frac{y^2}{2x^2} = \ln|x| + C}$$

**Example 2.** Solve $(x^2+y^2)dx - 2xy\,dy = 0$.

Rewrite: $\dfrac{dy}{dx} = \dfrac{x^2+y^2}{2xy}$ (homogeneous, degree 2 throughout).

Let $y=vx$: $v + x\dfrac{dv}{dx} = \dfrac{1+v^2}{2v}$

$$x\frac{dv}{dx} = \frac{1+v^2}{2v} - v = \frac{1-v^2}{2v}$$

Separate: $\dfrac{2v}{1-v^2}dv = \dfrac{dx}{x}$

Integrate: $-\ln|1-v^2| = \ln|x| + C_1$

$$\boxed{x(1-v^2) = C \;\Rightarrow\; x\left(1-\frac{y^2}{x^2}\right)=C}$$

**Practice:** Solve $\dfrac{dy}{dx} = \dfrac{y-x}{y+x}$ (no solution shown).

> **Exam Tip:** If a fraction of two polynomials has both numerator and denominator with the same total degree in $x,y$, it is homogeneous — the $y=vx$ substitution always works.

> **Common Mistake:** Forgetting to substitute $\frac{dy}{dx} = v + x\frac{dv}{dx}$ (students often forget the product-rule term $x\frac{dv}{dx}$).

---

### 3.3 Linear First-Order ODE

**Definition.** A first-order ODE is linear if it can be written as:

> **Formula**
> $$\frac{dy}{dx} + P(x)y = Q(x)$$

**Identification rule:** $y$ and $y'$ appear only to the first power, and there is no product $y\cdot y'$.

**Method — Integrating Factor (IF):**

> **Formula**
> $$\text{IF} = e^{\int P(x)\,dx}$$
> $$y \cdot \text{IF} = \int Q(x)\cdot \text{IF}\,dx + C$$

**Why it works:** Multiplying by the IF turns the left-hand side into the derivative of a **product**, $\frac{d}{dx}\left[y\cdot \text{IF}\right]$, which can then be integrated directly.

**Algorithm:**
1. Write in standard form $y' + P(x)y = Q(x)$.
2. Compute $\text{IF} = e^{\int P\,dx}$.
3. Multiply both sides by IF.
4. Recognize the left side as $\frac{d}{dx}(y\cdot \text{IF})$.
5. Integrate both sides, then solve for $y$.

**Example 1.** Solve $\dfrac{dy}{dx} + \dfrac{y}{x} = x^2$.

$P(x) = \dfrac{1}{x}$, so $\text{IF} = e^{\int \frac{1}{x}dx} = e^{\ln x} = x$.

Multiply: $x\dfrac{dy}{dx} + y = x^3 \;\Rightarrow\; \dfrac{d}{dx}(xy) = x^3$

Integrate: $xy = \dfrac{x^4}{4} + C$

$$\boxed{y = \frac{x^3}{4} + \frac{C}{x}}$$

**Example 2.** Solve $y' - 2y = e^{x}$, $y(0) = 1$.

$P = -2$, so $\text{IF} = e^{-2x}$.

$\dfrac{d}{dx}\left(ye^{-2x}\right) = e^{x}e^{-2x} = e^{-x}$

Integrate: $ye^{-2x} = -e^{-x} + C$

Apply IC: $1 = -1 + C \Rightarrow C=2$

$$\boxed{y = -e^{x} + 2e^{2x}}$$

**Practice:** Solve $y' + 3y = e^{-3x}$ (no solution shown — watch for resonance here!).

> **Exam Tip:** The integrating factor method is the single most tested first-order technique. Memorize $\text{IF}=e^{\int P\,dx}$ cold.

> **Common Mistake:** Forgetting the constant $C$ appears **only after** integrating the right side, not inside the exponent of the IF.

---

### 3.4 Exact Equations

**Definition.** An equation $M(x,y)\,dx + N(x,y)\,dy = 0$ is **exact** if there exists a function $F(x,y)$ such that $dF = M\,dx + N\,dy$.

**Identification rule (Exactness test):**

> **Formula**
> $$\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x} \quad\Longrightarrow\quad \text{exact}$$

**Why it works:** If this condition holds, $M\,dx+N\,dy$ is literally the total differential of some function $F(x,y)$ — so the solution is simply $F(x,y) = C$.

**Algorithm:**
1. Identify $M(x,y)$ and $N(x,y)$.
2. Check $\partial M/\partial y = \partial N/\partial x$.
3. Integrate $M$ with respect to $x$ (treating $y$ as constant) to get $F = \int M\,dx + g(y)$.
4. Differentiate this $F$ with respect to $y$, set equal to $N$, solve for $g'(y)$, then $g(y)$.
5. Write final solution $F(x,y) = C$.

**Example 1.** Solve $(2xy + 3)dx + (x^2 + 4y)dy = 0$.

$M = 2xy+3$, $N = x^2+4y$

$\partial M/\partial y = 2x$, $\partial N/\partial x = 2x$ → **exact**.

$F = \int (2xy+3)\,dx = x^2y + 3x + g(y)$

$\partial F/\partial y = x^2 + g'(y) = N = x^2 + 4y \Rightarrow g'(y) = 4y \Rightarrow g(y) = 2y^2$

$$\boxed{x^2y + 3x + 2y^2 = C}$$

**Example 2.** Solve $(y\cos x + 2xe^y)dx + (\sin x + x^2e^y - 1)dy = 0$.

$M = y\cos x + 2xe^y$, $N = \sin x + x^2 e^y - 1$

$\partial M/\partial y = \cos x + 2xe^y$, $\partial N/\partial x = \cos x + 2xe^y$ → **exact**.

$F = \int M\,dx = y\sin x + x^2e^y + g(y)$

$\partial F/\partial y = \sin x + x^2e^y + g'(y) = N \Rightarrow g'(y) = -1 \Rightarrow g(y) = -y$

$$\boxed{y\sin x + x^2e^y - y = C}$$

**Practice:** Solve $(3x^2+2xy)dx + (x^2+2y)dy=0$ (no solution shown).

> **Exam Tip:** If the exactness test **fails**, look for an **integrating factor** (a function of $x$ alone or $y$ alone) that restores exactness — a common follow-up exam question.

> **Common Mistake:** Forgetting the "constant of integration" $g(y)$ (a function of $y$, not a plain number) when integrating $M$ with respect to $x$.

---

### 3.5 Bernoulli's Equation

**Definition.** An ODE of the form:

> **Formula**
> $$\frac{dy}{dx} + P(x)y = Q(x)y^n, \qquad n \neq 0, 1$$

**Identification rule:** Linear-looking equation, but the right side has $y$ raised to some power $n$ (not 0 or 1 — those cases reduce to the ordinary linear equation).

**Method — reduce to linear:**

> **Formula**
> Substitute $v = y^{1-n}$, giving $\dfrac{dv}{dx} + (1-n)P(x)v = (1-n)Q(x)$

**Why it works:** Dividing the original equation by $y^n$ and applying the chain rule shows that $v=y^{1-n}$ satisfies an ordinary **linear** ODE, which we already know how to solve.

**Algorithm:**
1. Identify $n$ and confirm Bernoulli form.
2. Divide the whole equation by $y^n$.
3. Substitute $v = y^{1-n}$, so $\frac{dv}{dx} = (1-n)y^{-n}\frac{dy}{dx}$.
4. Solve the resulting linear ODE in $v$ using the integrating factor method.
5. Substitute back $y = v^{1/(1-n)}$.

**Example 1.** Solve $\dfrac{dy}{dx} + \dfrac{y}{x} = xy^2$.

Here $n=2$. Divide by $y^2$: $y^{-2}y' + \dfrac{y^{-1}}{x} = x$

Let $v = y^{-1} \Rightarrow v' = -y^{-2}y'$, so $y^{-2}y' = -v'$.

$$-v' + \frac{v}{x} = x \quad\Longrightarrow\quad v' - \frac{v}{x} = -x$$

$\text{IF} = e^{-\int \frac{1}{x}dx} = x^{-1}$

$\dfrac{d}{dx}(vx^{-1}) = -1 \Rightarrow vx^{-1} = -x + C \Rightarrow v = -x^2 + Cx$

Since $v = 1/y$:

$$\boxed{\frac{1}{y} = Cx - x^2}$$

**Example 2.** Solve $x\dfrac{dy}{dx} + y = y^2\ln x$.

Standard form: $\dfrac{dy}{dx} + \dfrac{y}{x} = \dfrac{y^2\ln x}{x}$, so $n=2$, $P=1/x$, $Q = \ln x / x$.

Let $v = y^{-1}$: $v' - \dfrac{v}{x} = -\dfrac{\ln x}{x}$

$\text{IF} = x^{-1}$

$\dfrac{d}{dx}(vx^{-1}) = -\dfrac{\ln x}{x^2}$

Integrating (by parts) the right side gives $\dfrac{\ln x}{x} + \dfrac{1}{x} + C$.

$$vx^{-1} = \frac{\ln x}{x} + \frac{1}{x} + C \;\Rightarrow\; v = \ln x + 1 + Cx$$

$$\boxed{\frac{1}{y} = \ln x + 1 + Cx}$$

**Practice:** Solve $\dfrac{dy}{dx} - y = xy^3$ (no solution shown).

> **Exam Tip:** Bernoulli is really "linear ODE in disguise" — spot the power $y^n$ on the right, substitute $v=y^{1-n}$, and it collapses into Section 3.3's method.

> **Common Mistake:** Forgetting the factor $(1-n)$ when converting the derivative of $v$ back in terms of $y'$.

---

## 4. Higher Order Linear ODE

### 4.1 Differential Operator (D notation)

**Definition.** Define the operator $D \equiv \dfrac{d}{dx}$, so $Dy = y'$, $D^2y = y''$, and generally $D^ny = y^{(n)}$.

An $n$th-order linear ODE with constant coefficients can then be written compactly as:

$$f(D)y = \left(a_nD^n + a_{n-1}D^{n-1}+\cdots+a_1D+a_0\right)y = R(x)$$

This is purely notation — it lets us manipulate derivatives **algebraically**, as if $D$ were a number.

### 4.2 Auxiliary (Characteristic) Equation

**Definition.** For the homogeneous equation $f(D)y=0$, replace $D$ with a variable $m$ to get the **auxiliary equation**:

> **Formula**
> $$a_nm^n + a_{n-1}m^{n-1} + \cdots + a_1m + a_0 = 0$$

**Why it works:** Trial solutions of the form $y=e^{mx}$ satisfy $D^ky = m^ke^{mx}$. Substituting this trial form into $f(D)y=0$ and cancelling $e^{mx}$ (never zero) leaves exactly the polynomial $f(m)=0$ — so finding valid $m$ values means finding valid exponential solutions.

### 4.3 Complementary Function (CF)

**Definition.** The **CF** is the general solution of the associated *homogeneous* equation $f(D)y=0$. It always contains as many arbitrary constants as the order of the equation.

**Case 1 — Distinct real roots** $m_1, m_2, \dots, m_n$:

> **Formula**
> $$y_c = C_1e^{m_1x} + C_2e^{m_2x} + \cdots + C_ne^{m_nx}$$

**Case 2 — Repeated real root** $m$ (multiplicity $k$):

> **Formula**
> $$y_c = (C_1 + C_2x + \cdots + C_kx^{k-1})e^{mx}$$

**Case 3 — Complex conjugate roots** $\alpha \pm i\beta$:

> **Formula**
> $$y_c = e^{\alpha x}(C_1\cos\beta x + C_2\sin\beta x)$$

**Example (distinct real roots).** Solve $y'' - 3y' + 2y = 0$.

Auxiliary equation: $m^2-3m+2=0 \Rightarrow (m-1)(m-2)=0 \Rightarrow m=1,2$

$$\boxed{y = C_1e^{x} + C_2e^{2x}}$$

**Example (equal roots).** Solve $y'' - 4y' + 4y = 0$.

Auxiliary: $m^2-4m+4=0 \Rightarrow (m-2)^2=0 \Rightarrow m=2,2$ (repeated)

$$\boxed{y = (C_1+C_2x)e^{2x}}$$

**Example (complex roots).** Solve $y''+4y=0$.

Auxiliary: $m^2+4=0 \Rightarrow m = \pm 2i$, so $\alpha=0,\ \beta=2$

$$\boxed{y = C_1\cos 2x + C_2\sin 2x}$$

> **Exam Tip:** The type of root (real distinct / real repeated / complex) is decided entirely by the **discriminant** of the auxiliary equation — check it first before writing your final CF form.

> **Common Mistake:** For repeated roots, forgetting to multiply the *second* constant's term by $x$ (and $x^2$ for triple roots, etc.).

### 4.4 Particular Integral (PI)

**Definition.** The **PI** is *any one* solution of the full non-homogeneous equation $f(D)y = R(x)$ (no arbitrary constants).

### 4.5 Complete Solution

> **Formula**
> $$y = y_c + y_p \quad (\text{Complementary Function} + \text{Particular Integral})$$

**Why it works:** Because the equation is linear, if $y_c$ solves the homogeneous part and $y_p$ solves the full equation, their sum also solves the full equation (superposition principle) — and since $y_c$ carries all the arbitrary constants, $y=y_c+y_p$ is the *general* solution.

> **Exam Tip:** Always find the CF **first**. It tells you immediately whether a term in your PI trial guess will need modification (see resonance, Section 5.4).

---

## 5. Method of Undetermined Coefficients (UC)

### 5.1 When applicable

Use UC only when:
- The ODE has **constant coefficients**.
- The right-hand side $R(x)$ is one of: a polynomial, $e^{ax}$, $\sin bx$/$\cos bx$, or a product/sum of these.

**Not applicable** when $R(x)$ involves $\tan x$, $\sec x$, $\ln x$, $1/x$, or other non-"nice" functions — use Variation of Parameters instead (Section 7).

### 5.2 Standard trial forms

> **Formula — Decision Table**

| $R(x)$ | Trial $y_p$ |
|---|---|
| $k$ (constant) | $A$ |
| Polynomial of degree $n$ | $A_nx^n + \cdots + A_1x + A_0$ |
| $e^{ax}$ | $Ae^{ax}$ |
| $\sin bx$ or $\cos bx$ | $A\cos bx + B\sin bx$ |
| $e^{ax}\sin bx$ or $e^{ax}\cos bx$ | $e^{ax}(A\cos bx+B\sin bx)$ |
| Sum of terms | Sum of corresponding trial forms |

### 5.3 Resonance cases (modified trial solutions)

**Definition.** *Resonance* occurs when a term in your trial $y_p$ **already appears** in the CF $y_c$ — meaning your guess would just reproduce the homogeneous solution and fail to satisfy the full equation.

> **Formula — Modification rule**
> If the trial term duplicates a CF term, multiply the *entire trial* by $x^s$, where $s$ is the smallest positive integer that removes the duplication.

**Why it works:** Multiplying by $x^s$ keeps the trial function linearly independent from the CF, so it can genuinely balance the non-zero right-hand side rather than vanishing back into $f(D)y_p=0$.

### 5.4 Worked Examples

**Example 1 (no resonance).** Solve $y''-3y'+2y = e^{3x}$.

CF (from 4.3): $y_c = C_1e^x+C_2e^{2x}$. Since $e^{3x}$ does **not** appear in CF, try $y_p = Ae^{3x}$.

$y_p' = 3Ae^{3x}$, $y_p''=9Ae^{3x}$

$9Ae^{3x} - 9Ae^{3x} + 2Ae^{3x} = e^{3x} \Rightarrow 2A = 1 \Rightarrow A=\tfrac12$

$$\boxed{y = C_1e^x + C_2e^{2x} + \frac{1}{2}e^{3x}}$$

**Example 2 (resonance).** Solve $y''-3y'+2y=e^{x}$.

CF is the same, $y_c=C_1e^x+C_2e^{2x}$. Since $e^x$ **duplicates** the $C_1e^x$ term, modify: try $y_p=Axe^x$.

$y_p' = Ae^x + Axe^x$, $y_p'' = 2Ae^x + Axe^x$

Substitute: $(2Ae^x+Axe^x) - 3(Ae^x+Axe^x) + 2Axe^x = e^x$

$$2Ae^x - 3Ae^x + (A-3A+2A)xe^x = e^x \Rightarrow -Ae^x = e^x \Rightarrow A=-1$$

$$\boxed{y = C_1e^x + C_2e^{2x} - xe^{x}}$$

**Example 3 (polynomial RHS).** Solve $y''-y=x^2$.

CF: $m^2-1=0 \Rightarrow m=\pm1 \Rightarrow y_c=C_1e^x+C_2e^{-x}$

Try $y_p=Ax^2+Bx+C$: $y_p''=2A$

$2A-(Ax^2+Bx+C)=x^2 \Rightarrow -Ax^2-Bx+(2A-C)=x^2$

Match coefficients: $-A=1\Rightarrow A=-1$; $-B=0\Rightarrow B=0$; $2A-C=0 \Rightarrow C=-2$

$$\boxed{y=C_1e^x+C_2e^{-x} -x^2-2}$$

**Practice:** Solve $y''+y = \sin x$ (watch for resonance — no solution shown).

> **Exam Tip:** Always write out the CF *before* choosing your trial PI — this is the only way to catch resonance before it costs you the whole problem.

> **Common Mistake:** Using $y_p=A\sin bx$ alone (dropping the cosine term) even though the equation has first-derivative terms — always include **both** $\cos$ and $\sin$ unless you're sure they decouple.

---

## 6. Inverse Operator Method

### 6.1 Operator notation

Recall $D\equiv \frac{d}{dx}$. We define the **inverse operator** $\dfrac{1}{D}$ as the operation of integration, and more generally $\dfrac{1}{f(D)}R(x)$ denotes *a* particular integral of $f(D)y=R(x)$.

> **Definition**
> $$y_p = \frac{1}{f(D)}R(x)$$

This is a purely symbolic/operational shortcut — it packages integration steps into algebraic manipulation of $D$.

### 6.2 Inverse operator rules

> **Formula — Exponential Rule**
> $$\frac{1}{f(D)}e^{ax} = \frac{e^{ax}}{f(a)}, \qquad \text{provided } f(a)\neq 0$$
> **Failure case (resonance):** if $f(a)=0$, use $\dfrac{1}{f(D)}e^{ax} = x\cdot\dfrac{e^{ax}}{f'(a)}$ (repeat multiplying by $x$ and differentiating $f$ if still zero).

> **Formula — Trigonometric Rule**
> $$\frac{1}{f(D^2)}\sin ax = \frac{\sin ax}{f(-a^2)}, \qquad \frac{1}{f(D^2)}\cos ax = \frac{\cos ax}{f(-a^2)}$$
> (Replace $D^2$ with $-a^2$; if the result is zero — resonance — multiply by $x$ and adjust as in the exponential case.)

> **Formula — Polynomial Rule**
> $$\frac{1}{f(D)}x^n = \left[f(D)\right]^{-1}x^n$$
> Expand $[f(D)]^{-1}$ as a binomial/Maclaurin series in $D$ up to the $D^n$ term (higher powers of $D$ annihilate $x^n$).

> **Formula — Shift Rule (for mixed forcing $e^{ax}V(x)$)**
> $$\frac{1}{f(D)}\left[e^{ax}V(x)\right] = e^{ax}\frac{1}{f(D+a)}V(x)$$

### 6.3 Worked Examples

**Example 1 (exponential).** Find PI for $y''-3y'+2y=e^{3x}$.

$f(D)=D^2-3D+2$. Since $f(3)=9-9+2=2\neq0$:

$$y_p = \frac{e^{3x}}{f(3)} = \frac{e^{3x}}{2}$$

(Matches Example 1 of Section 5.4 — same answer, faster method.)

**Example 2 (resonance, exponential).** Find PI for $y''-3y'+2y=e^{x}$.

$f(1) = 1-3+2=0$ (resonance). Use modified rule with $f'(D)=2D-3$, so $f'(1)=-1$:

$$y_p = x\cdot\frac{e^x}{f'(1)} = x\cdot\frac{e^x}{-1} = -xe^x$$

(Matches Example 2 of Section 5.4.)

**Example 3 (trigonometric).** Find PI for $y''+y=\cos 2x$.

$f(D^2)=D^2+1$. Replace $D^2\to -4$:

$$y_p = \frac{\cos 2x}{-4+1} = -\frac{\cos 2x}{3}$$

$$\boxed{y_p = -\frac{1}{3}\cos 2x}$$

**Example 4 (polynomial).** Find PI for $y''-y=x^2$.

$f(D)=D^2-1$. We need $\dfrac{1}{D^2-1}x^2 = -\dfrac{1}{1-D^2}x^2$.

Expand $(1-D^2)^{-1} = 1+D^2+D^4+\cdots$ (stop at $D^2$ since $D^4x^2=0$):

$$y_p = -(1+D^2)x^2 = -(x^2 + 2) = -x^2-2$$

(Matches Example 3 of Section 5.4.)

> **Exam Tip:** Inverse operator methods are usually **faster** than UC for exponential/trig forcing terms — but polynomial forcing requires careful series expansion of $[f(D)]^{-1}$, so don't rush the algebra.

> **Common Mistake:** Forgetting to check $f(a)=0$ (or $f(-a^2)=0$) *before* applying the plain formula — this is exactly the resonance condition and skipping the check gives a divide-by-zero error hidden inside a wrong answer.

---

## 7. Variation of Parameters

### 7.1 Why this method exists

UC and inverse-operator methods only work for a limited set of "nice" forcing functions $R(x)$ (polynomials, exponentials, sines/cosines). **Variation of Parameters (VoP)** works for **any** continuous $R(x)$ — including $\tan x$, $\sec x$, $\ln x$, etc. — provided you already know the CF.

### 7.2 Derivation (simplified, for second order)

Given $y'' + P(x)y' + Q(x)y = R(x)$ with CF $y_c = C_1y_1 + C_2y_2$, we look for a particular solution of the form

$$y_p = u_1(x)y_1(x) + u_2(x)y_2(x)$$

where $u_1, u_2$ are **functions**, not constants (hence "variation" of the parameters $C_1, C_2$). Imposing a convenient simplifying condition ($u_1'y_1+u_2'y_2=0$) reduces the problem to solving two linear equations for $u_1'$ and $u_2'$, expressed neatly using the **Wronskian**.

### 7.3 Formula

**Definition (Wronskian).**

$$W(y_1,y_2) = \begin{vmatrix} y_1 & y_2 \\ y_1' & y_2' \end{vmatrix} = y_1y_2' - y_2y_1'$$

> **Formula**
> $$u_1 = -\int \frac{y_2\,R(x)}{W}\,dx, \qquad u_2 = \int \frac{y_1\,R(x)}{W}\,dx$$
> $$y_p = u_1y_1 + u_2y_2$$

### 7.4 Step-by-step algorithm

1. Find the CF and identify $y_1, y_2$ (the two independent solutions).
2. Compute the Wronskian $W = y_1y_2' - y_2y_1'$.
3. Write the ODE in **standard form** (leading coefficient 1) to correctly identify $R(x)$.
4. Compute $u_1 = -\int \frac{y_2R}{W}dx$ and $u_2=\int \frac{y_1R}{W}dx$.
5. Form $y_p = u_1y_1+u_2y_2$.
6. Complete solution: $y = y_c + y_p$.

### 7.5 Worked Examples

**Example 1.** Solve $y'' + y = \tan x$.

CF: $m^2+1=0 \Rightarrow y_c = C_1\cos x + C_2\sin x$, so $y_1=\cos x,\ y_2=\sin x$.

$W = \cos x\cdot\cos x - \sin x\cdot(-\sin x) = \cos^2x+\sin^2x = 1$

$$u_1 = -\int \sin x\tan x\,dx = -\int \frac{\sin^2x}{\cos x}dx = -\int\left(\sec x-\cos x\right)dx = -\ln|\sec x+\tan x|+\sin x$$

$$u_2 = \int \cos x\tan x\,dx = \int \sin x\,dx = -\cos x$$

$$y_p = u_1\cos x + u_2\sin x = \cos x\left(\sin x-\ln|\sec x+\tan x|\right) - \sin x\cos x$$

$$\boxed{y = C_1\cos x + C_2\sin x - \cos x\ln|\sec x + \tan x|}$$

(the $\sin x\cos x$ terms cancel.)

**Example 2.** Solve $y'' - y = \dfrac{2}{1+e^x}$.

CF: $m^2-1=0 \Rightarrow y_1=e^x,\ y_2=e^{-x}$

$W = e^x(-e^{-x}) - e^{-x}(e^x) = -1-1 = -2$

$$u_1 = -\int \frac{e^{-x}\cdot\frac{2}{1+e^x}}{-2}dx = \int \frac{e^{-x}}{1+e^x}dx$$

Multiply top and bottom by $e^x$: $\displaystyle\int \frac{1}{e^x(1+e^x)}dx = \int\left(\frac{1}{e^x}-\frac{1}{1+e^x}\right)dx$ (partial fractions in $e^x$)

$$u_1 = -x + \ln(1+e^x) - e^{-x}$$

$$u_2 = \int \frac{e^{x}\cdot\frac{2}{1+e^x}}{-2}dx = -\int \frac{e^x}{1+e^x}dx = -\ln(1+e^x)$$

$$y_p = u_1e^x + u_2e^{-x} = e^x\left[-x+\ln(1+e^x)-e^{-x}\right] - e^{-x}\ln(1+e^x)$$

$$\boxed{y = C_1e^x + C_2e^{-x} - xe^x - 1 + \left(e^x-e^{-x}\right)\ln\left(1+e^x\right)}$$

> This example is included specifically to show how VoP handles a forcing function ($\frac{2}{1+e^x}$) that **UC and inverse operators cannot touch** — the integrals get messier, but the method still works. (Verified symbolically with SymPy: substituting $y_p$ back into $y''-y$ reproduces $\frac{2}{1+e^x}$ exactly.)

**Practice:** Solve $y'' + y = \sec x$ (no solution shown).

### 7.6 Comparison with UC

| Feature | Undetermined Coefficients | Variation of Parameters |
|---|---|---|
| Works for | Polynomial, $e^{ax}$, $\sin/\cos$ (and combinations) | **Any** continuous $R(x)$ |
| Speed | Fast, algebraic guessing | Slower, requires integration |
| Needs CF? | Yes (to check resonance) | Yes (as $y_1,y_2$ themselves) |
| Handles $\tan x,\sec x,\ln x$? | No | Yes |
| Risk of error | Wrong trial guess / resonance oversight | Messy integrals |

> **Exam Tip:** If $R(x)$ is *not* one of the "nice" UC forms, don't waste time guessing — go straight to Variation of Parameters.

> **Common Mistake:** Forgetting the negative sign in $u_1=-\int \frac{y_2R}{W}dx$, or using the ODE's original leading coefficient instead of converting to standard (monic) form first, which silently corrupts $R(x)$.

---

## 8. Formula Sheet

> **One-Page Revision Sheet**

**Order & Degree**
- Order = highest derivative present.
- Degree = power of highest derivative (after clearing radicals/fractions).

**First-Order Techniques**

| Type | Key formula |
|---|---|
| Separable | $\int \frac{dy}{h(y)} = \int g(x)dx$ |
| Homogeneous | Sub $y=vx$, $\frac{dy}{dx}=v+x\frac{dv}{dx}$ |
| Linear | $\text{IF}=e^{\int P\,dx}$, $y\cdot\text{IF}=\int Q\cdot\text{IF}\,dx+C$ |
| Exact | Test: $M_y=N_x$; Solve: $F=\int M\,dx + g(y)$ |
| Bernoulli | Sub $v=y^{1-n}$ |

**Auxiliary Equation Root Cases**

| Roots | CF |
|---|---|
| Real distinct $m_1,\dots,m_n$ | $\sum C_ie^{m_ix}$ |
| Real repeated $m$ (order $k$) | $(C_1+C_2x+\cdots+C_kx^{k-1})e^{mx}$ |
| Complex $\alpha\pm i\beta$ | $e^{\alpha x}(C_1\cos\beta x+C_2\sin\beta x)$ |

**Inverse Operator Identities**

$$\frac{1}{f(D)}e^{ax}=\frac{e^{ax}}{f(a)}\ (f(a)\neq0); \quad \text{resonance: } x\cdot\frac{e^{ax}}{f'(a)}$$

$$\frac{1}{f(D^2)}\sin ax=\frac{\sin ax}{f(-a^2)}; \quad \frac{1}{f(D^2)}\cos ax=\frac{\cos ax}{f(-a^2)}$$

$$\frac{1}{f(D)}\left[e^{ax}V(x)\right]=e^{ax}\frac{1}{f(D+a)}V(x)$$

**Variation of Parameters**

$$W=y_1y_2'-y_2y_1', \quad u_1=-\int\frac{y_2R}{W}dx,\quad u_2=\int\frac{y_1R}{W}dx,\quad y_p=u_1y_1+u_2y_2$$

**Common Substitutions**

| Situation | Substitution |
|---|---|
| Homogeneous 1st order | $y=vx$ |
| Bernoulli | $v=y^{1-n}$ |
| Cauchy–Euler $x^2y''+xy'+y=\cdots$ | $x=e^t$ |

**Standard Integrals (frequent in ODE work)**

$$\int \sec x\,dx = \ln|\sec x+\tan x|+C, \qquad \int \tan x\,dx = -\ln|\cos x|+C$$
$$\int e^{ax}\sin bx\,dx = \frac{e^{ax}(a\sin bx-b\cos bx)}{a^2+b^2}+C$$
$$\int e^{ax}\cos bx\,dx = \frac{e^{ax}(a\cos bx+b\sin bx)}{a^2+b^2}+C$$

---

## 9. Quick Revision Tables

### 9.1 Classification Table

| Concept | Question to ask | Example |
|---|---|---|
| ODE vs PDE | One variable or several? | $y'(x)$ vs $u(x,y)$ |
| Order | Highest derivative? | $y''$ → order 2 |
| Degree | Power of highest derivative? | $(y'')^3$ → degree 3 |
| Linear vs Non-linear | Any $y^2$, $yy'$, $\sin y$? | $y''+3y=0$ linear |
| Homogeneous vs Non-homogeneous | RHS zero? | $y''+3y=e^x$ non-hom. |
| IVP vs BVP | Conditions at one point or several? | $y(0),y'(0)$ → IVP |

### 9.2 First-Order Methods Table

| Type | Spot it by | Solve with |
|---|---|---|
| Separable | Can split into $f(y)dy=g(x)dx$ | Direct integration |
| Homogeneous | Every term same total degree | $y=vx$ |
| Linear | Form $y'+Py=Q$ | Integrating factor |
| Exact | $M_y=N_x$ | Potential function $F$ |
| Bernoulli | Form $y'+Py=Qy^n$ | $v=y^{1-n}$ |

### 9.3 Second-Order Methods Table

| Situation | Best method |
|---|---|
| Homogeneous, constant coefficients | Auxiliary equation → CF |
| Non-homog., RHS = polynomial/$e^{ax}$/$\sin$/$\cos$ | Undetermined Coefficients or Inverse Operator |
| Non-homog., RHS = $\tan x,\sec x,\ln x$, etc. | Variation of Parameters |
| RHS term duplicates CF term | Apply resonance modification ($\times x^s$) |

### 9.4 Choosing the Correct Technique — Decision Flow

```mermaid
flowchart TD
    A[Given ODE] --> B{Order = 1?}
    B -- Yes --> C{Separable?}
    C -- Yes --> C1[Direct integration]
    C -- No --> D{Homogeneous in x,y?}
    D -- Yes --> D1[Sub y = vx]
    D -- No --> E{Linear: y' + Py = Q?}
    E -- Yes --> E1[Integrating Factor]
    E -- No --> F{Exact: My = Nx?}
    F -- Yes --> F1[Potential function F]
    F -- No --> G{Bernoulli: y' + Py = Qy^n?}
    G -- Yes --> G1[Sub v = y^(1-n)]
    B -- No --> H[Find CF via auxiliary equation]
    H --> I{RHS = 0?}
    I -- Yes --> I1[Solution = CF only]
    I -- No --> J{RHS is polynomial / e^ax / sin / cos?}
    J -- Yes --> K{Duplicates CF term?}
    K -- Yes --> K1[UC or Inverse Operator with x^s modification]
    K -- No --> K2[UC or Inverse Operator, standard trial]
    J -- No --> L[Variation of Parameters]
```

---

## 10. Exam Cheatsheet

### 10.1 How to identify the equation type — in 10 seconds

1. Count derivatives → **order**.
2. Check power of highest derivative → **degree**.
3. Scan for $y^2, yy', \sin y$, etc. → **linear or not**.
4. Check RHS → zero (**homogeneous**) or not (**non-homogeneous**).
5. Count how many conditions and at how many points → **IVP or BVP**.

### 10.2 Which method to choose

- **First order:** try separable → homogeneous → linear → exact → Bernoulli, roughly in that order of quickness to check.
- **Higher order, homogeneous:** auxiliary equation, classify roots (distinct/repeated/complex).
- **Higher order, non-homogeneous, "nice" RHS:** UC (algebraic) or Inverse Operator (symbolic) — pick whichever you're faster with.
- **Higher order, "ugly" RHS** ($\tan x, \sec x, \ln x, \frac{1}{x}$, etc.): Variation of Parameters — no shortcuts exist.

### 10.3 Most common mistakes (recap)

> **Common Mistake Summary**
> - Confusing order with degree.
> - Missing the $x\frac{dv}{dx}$ term in homogeneous substitution.
> - Forgetting $g(y)$ (not just a constant) when solving exact equations.
> - Missing the $(1-n)$ factor in Bernoulli substitution.
> - Not checking for **resonance** before finalizing a UC/Inverse-Operator trial.
> - Sign errors in $u_1 = -\int\frac{y_2R}{W}dx$ (Variation of Parameters).
> - Forgetting to convert to **standard (monic) form** before reading off $R(x)$ for VoP.

### 10.4 Frequently tested formulas (final recap)

$$\text{IF}=e^{\int P\,dx}, \qquad \frac{1}{f(D)}e^{ax}=\frac{e^{ax}}{f(a)}, \qquad W=y_1y_2'-y_2y_1'$$

### 10.5 Memory tricks

- **"SHLEB"** — Separable, Homogeneous, Linear, Exact, Bernoulli — the five first-order types, in a rough order of how quickly you can test for them.
- **CF + PI = Complete** — never forget the complementary function; it's half of every non-homogeneous answer.
- **Resonance = repetition** — if your PI guess "repeats" something already in the CF, multiply by $x$ (once per repetition).
- Wronskian mnemonic: "**first times second-prime, minus second times first-prime**" ($y_1y_2' - y_2y_1'$).

---

*End of notes — MATH-103, butex-notes repository.*
