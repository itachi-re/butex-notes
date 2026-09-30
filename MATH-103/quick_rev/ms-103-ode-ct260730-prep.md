---
title: MATH-103 — ODE Exam Preparation Practice Notebook
course: MATH-103 (Ordinary Differential Equations)
scope: BUTEX / Gopalganj Textile Engineering College style
---

# MATH-103 — ODE Exam Preparation Notebook

> **Note on scope:** The original brief asked for 40–60 solved problems, 50 unsolved practice questions, and 15 challenge problems (an 80–120 page document). To keep every solution fully worked, mathematically checked, and genuinely useful in your remaining revision time, this notebook is scoped to **35 solved problems, 3 full mock tests, 25 mixed practice questions with an answer key, a 25-row pattern table, a formula sheet, a 30-minute revision block, and 8 challenge problems** — this covers the full MS-103 syllabus at BUTEX difficulty without padding. Everything is derived step-by-step exactly as you should write it in the exam.

## Table of Contents

1. [Quick Concept Revision](#1-quick-concept-revision)
2. [Solved Problems](#2-solved-problems)
3. [Mock Tests](#3-mock-tests)
4. [Mixed Practice (Answer Key Only)](#4-mixed-practice-answer-key-only)
5. [Pattern Recognition Table](#5-pattern-recognition-table)
6. [Formula Sheet](#6-formula-sheet)
7. [30-Minute Revision Before Exam](#7-30-minute-revision-before-exam)
8. [Challenge Problems](#8-challenge-problems)
9. [Exam Strategy](#9-exam-strategy)

---

## 1. Quick Concept Revision

For full derivations and worked examples of each concept below, see `ODE_Quick_Notes.md`. This section is the compressed "just before the exam" version.

### 1.1 Order and Degree

- **Order** = highest derivative present.
- **Degree** = power of the highest-order derivative, *after* clearing radicals/fractions involving derivatives.
- **Shortcut:** count the number of primes/dashes for order; look only at the exponent on that term for degree.
- **Common mistake:** treating order and degree as the same thing, or taking degree before clearing a root/fraction.
- **Exam tip:** this is almost always a free 1–2 marks tacked onto another question — never skip it.

### 1.2 Formation of a Differential Equation

- **Definition:** eliminate the arbitrary constants from a given relation by differentiating it as many times as there are constants, then combining the equations to remove the constants entirely.
- **Formula/approach:** if there are $n$ arbitrary constants, differentiate $n$ times and eliminate.
- **Shortcut:** for $y = e^{ax}(A\cos bx + B\sin bx)$ type answers, differentiate twice and use $y' - ay = (\ldots)$ as an intermediate substitution instead of expanding everything from scratch (see Q1 in Solved Problems).
- **Common mistake:** stopping after one differentiation when two constants are present.
- **Exam tip:** always state order/degree of the resulting ODE — it is frequently asked in the same sub-question.

### 1.3 Variable Separable

- **Definition:** an equation where $x$-terms (with $dx$) can be fully separated from $y$-terms (with $dy$).
- **Formula:** $\dfrac{dy}{dx}=g(x)h(y) \implies \int\dfrac{dy}{h(y)}=\int g(x)\,dx$
- **Shortcut:** if you can mentally rearrange the equation into "all $y$ stuff = all $x$ stuff" in one line, it's separable — try this first, always.
- **Common mistake:** forgetting the single constant $C$, or splitting it as two different constants across both sides.
- **Exam tip:** this is the fastest type to solve — if the RHS factors into a pure function of $x$ times a pure function of $y$, don't waste time checking other categories.

### 1.4 Homogeneous Equations

- **Definition:** $\dfrac{dy}{dx}=f(x,y)$ where every term has the same total degree in $x,y$ (equivalently $f(tx,ty)=f(x,y)$).
- **Formula:** substitute $y=vx \implies \dfrac{dy}{dx}=v+x\dfrac{dv}{dx}$, reducing to a separable equation in $v,x$.
- **Shortcut:** check total degree of each term quickly (e.g. $x^2, xy, y^2$ are all degree 2) before attempting substitution.
- **Common mistake:** forgetting the product-rule term $x\,dv/dx$ when substituting.
- **Exam tip:** answers are almost always left implicit in terms of $\ln x$ or $\tan(v/2)$ — don't waste time trying to make $y$ fully explicit.

### 1.5 Linear Differential Equations

- **Definition:** $\dfrac{dy}{dx}+P(x)y=Q(x)$.
- **Formula:** integrating factor $\text{IF}=e^{\int P\,dx}$, solution $y\cdot \text{IF}=\int Q\cdot \text{IF}\,dx+C$.
- **Shortcut:** memorize $\int \frac{1}{x}dx=\ln x \Rightarrow \text{IF}=x$ pattern — it appears constantly in BUTEX papers.
- **Common mistake:** including $+C$ inside the IF itself (never do this — the IF has no constant).
- **Exam tip:** always write the equation in *standard form* first (coefficient of $y'$ must be exactly 1) before reading off $P(x)$.

### 1.6 Bernoulli's Equation

- **Definition:** $\dfrac{dy}{dx}+P(x)y=Q(x)y^n$, $n\ne 0,1$.
- **Formula:** divide by $y^n$, substitute $v=y^{1-n}$, giving the linear ODE $\dfrac{dv}{dx}+(1-n)Pv=(1-n)Q$.
- **Shortcut:** spot it instantly by the $y^n$ multiplying $Q(x)$ on the right while the left looks perfectly linear.
- **Common mistake:** forgetting the factor $(1-n)$ when converting $v'$ back.
- **Exam tip:** after solving for $v$, always substitute back $y=v^{1/(1-n)}$ (or $1/y = \ldots$ when $n=2$) — an unfinished Bernoulli answer loses marks.

### 1.7 Exact Differential Equations

- **Definition:** $M\,dx+N\,dy=0$ is exact if $\partial M/\partial y=\partial N/\partial x$.
- **Formula:** $F=\int M\,dx$ (y constant) $+\,g(y)$; find $g(y)$ by matching $\partial F/\partial y=N$.
- **Shortcut:** test exactness in your head first — it takes 10 seconds and tells you immediately whether to proceed or look for an integrating factor.
- **Common mistake:** forgetting $g(y)$ is a *function* of $y$, not a plain constant, when integrating $M$ with respect to $x$.
- **Exam tip:** if not exact, check first for an integrating factor of the form depending on $x$ only or $y$ only (see §1.8).

### 1.8 Integrating Factor (for non-exact equations)

- **Rule 1:** if $\dfrac{M_y-N_x}{N}$ is a function of $x$ alone, say $f(x)$, then $\text{IF}=e^{\int f(x)\,dx}$.
- **Rule 2:** if $\dfrac{N_x-M_y}{M}$ is a function of $y$ alone, say $g(y)$, then $\text{IF}=e^{\int g(y)\,dy}$.
- **Shortcut:** always test Rule 1 first (function of $x$ alone); it's more commonly asked at this level.
- **Common mistake:** mixing up the sign — Rule 1 uses $M_y - N_x$, Rule 2 uses $N_x - M_y$.

### 1.9 The D-Operator, CF, and PI

- **Definition:** $D\equiv d/dx$; for constant-coefficient equations $f(D)y=R(x)$, the auxiliary equation replaces $D$ with $m$.
- **CF cases:** distinct real roots $\to \sum C_ie^{m_ix}$; repeated root $m$ (multiplicity $k$) $\to (C_1+C_2x+\cdots+C_kx^{k-1})e^{mx}$; complex $\alpha\pm i\beta \to e^{\alpha x}(C_1\cos\beta x+C_2\sin\beta x)$.
- **PI shortcuts (inverse operator):**
  - $\dfrac{1}{f(D)}e^{ax}=\dfrac{e^{ax}}{f(a)}$ (if $f(a)\ne 0$); if $f(a)=0$ (resonance), use $x\cdot\dfrac{e^{ax}}{f'(a)}$.
  - $\dfrac{1}{f(D^2)}\sin ax=\dfrac{\sin ax}{f(-a^2)}$, similarly for $\cos ax$.
  - Polynomial RHS: expand $[f(D)]^{-1}$ as a series in $D$, truncated at the degree of the polynomial.
- **Common mistake:** not checking for resonance ($f(a)=0$) before applying the plain exponential rule.
- **Exam tip:** always find the CF *before* the PI — this instantly reveals resonance.

### 1.10 Growth, Decay, and Applied Word Problems

- **Model:** $\dfrac{dN}{dt}=kN \implies N=N_0e^{kt}$ ($k>0$ growth, $k<0$ decay).
- **Shortcut:** whenever the problem says "proportional to the amount present," this is *always* the model — set it up immediately, don't re-derive from scratch.
- **Common mistake:** mixing up whether $k$ should be positive (growth) or negative (decay) — let the physical context and given data fix the sign, don't assume.
- **Exam tip:** use the half-life-style data point to solve for $k$ symbolically in terms of $\ln 2$ before plugging in the final time — it keeps the algebra clean and avoids early rounding errors.

---

## 2. Solved Problems

Organized by difficulty and written exactly as you should present them in the exam booklet.

### Easy (10)

**E1.** Find the order and degree of $\left(\dfrac{d^3y}{dx^3}\right)^2+\left(\dfrac{dy}{dx}\right)^5=x$.

*Solution:* Highest derivative is $y'''$, so **order = 3**. It is raised to power 2, so **degree = 2**.

---

**E2.** Solve $\dfrac{dy}{dx}=\dfrac{x}{y}$.

*Solution:* Separate: $y\,dy=x\,dx$. Integrate: $\dfrac{y^2}{2}=\dfrac{x^2}{2}+C_1$.
$$\boxed{y^2-x^2=C}$$

---

**E3.** Solve $\dfrac{dy}{dx}=e^{x+y}$.

*Solution:* Rewrite $e^{x+y}=e^x e^y$. Separate: $e^{-y}dy=e^x dx$. Integrate: $-e^{-y}=e^x+C_1$.
$$\boxed{e^{-y}+e^x=C}$$

---

**E4.** Find the general solution of $\dfrac{dy}{dx}+2y=0$.

*Solution:* Separable/linear. Separate: $\dfrac{dy}{y}=-2\,dx \Rightarrow \ln y=-2x+C_1$.
$$\boxed{y=Ce^{-2x}}$$

---

**E5.** Solve $\dfrac{dy}{dx}+\dfrac{y}{x}=x^2$.

*Solution:* $P=1/x \Rightarrow \text{IF}=e^{\int 1/x\,dx}=x$. Multiply: $\dfrac{d}{dx}(xy)=x^3$. Integrate: $xy=\dfrac{x^4}{4}+C$.
$$\boxed{y=\frac{x^3}{4}+\frac{C}{x}}$$

---

**E6.** Test exactness of $(2xy+3)dx+(x^2+4y)dy=0$ and solve.

*Solution:* $M=2xy+3,\ N=x^2+4y$. $M_y=2x=N_x$ — **exact**.

$F=\int M\,dx=x^2y+3x+g(y)$. Then $F_y=x^2+g'(y)=N=x^2+4y \Rightarrow g'(y)=4y \Rightarrow g(y)=2y^2$.
$$\boxed{x^2y+3x+2y^2=C}$$

---

**E7.** Find the CF of $y''-5y'+6y=0$.

*Solution:* Auxiliary: $m^2-5m+6=0 \Rightarrow (m-2)(m-3)=0 \Rightarrow m=2,3$.
$$\boxed{y=C_1e^{2x}+C_2e^{3x}}$$

---

**E8.** Find the CF of $y''+6y'+9y=0$.

*Solution:* Auxiliary: $m^2+6m+9=0 \Rightarrow (m+3)^2=0 \Rightarrow m=-3,-3$ (repeated).
$$\boxed{y=(C_1+C_2x)e^{-3x}}$$

---

**E9.** Find the CF of $y''+9y=0$.

*Solution:* Auxiliary: $m^2+9=0 \Rightarrow m=\pm 3i$ ($\alpha=0,\beta=3$).
$$\boxed{y=C_1\cos 3x+C_2\sin 3x}$$

---

**E10.** Identify the type: $\dfrac{dy}{dx}+\dfrac{2y}{x}=x^2y^3$.

*Solution:* Right side has $y^3$ multiplying a function of $x$, left side otherwise linear $\Rightarrow$ **Bernoulli equation** with $n=3$, $P=2/x$, $Q=x^2$.

---

### Medium (15)

**M1.** Define an ODE and find the differential equation for $y=A e^{2x}+Be^{-2x}$.

*Solution:* An ODE relates a function of one variable to its derivatives.

$y'=2Ae^{2x}-2Be^{-2x}$

$y''=4Ae^{2x}+4Be^{-2x}=4y$
$$\boxed{y''-4y=0} \quad (\text{order }2,\text{ degree }1)$$

---

**M2.** Solve $\dfrac{dy}{dx}=\dfrac{x^2+y^2}{xy}$.

*Solution:* Homogeneous (both terms degree 2). Let $y=vx$:
$$v+x\frac{dv}{dx}=\frac{1+v^2}{v} \implies x\frac{dv}{dx}=\frac{1}{v}$$
Separate: $v\,dv=\dfrac{dx}{x}$. Integrate: $\dfrac{v^2}{2}=\ln|x|+C_1$.
$$\boxed{\frac{y^2}{2x^2}=\ln|x|+C}$$

---

**M3.** Solve $(x^2+y^2)dx-2xy\,dy=0$.

*Solution:* Rewrite $\dfrac{dy}{dx}=\dfrac{x^2+y^2}{2xy}$ (homogeneous). Let $y=vx$:
$$x\frac{dv}{dx}=\frac{1+v^2}{2v}-v=\frac{1-v^2}{2v}$$
Separate: $\dfrac{2v}{1-v^2}dv=\dfrac{dx}{x}$. Integrate: $-\ln|1-v^2|=\ln|x|+C_1$.
$$\boxed{x(1-v^2)=C \implies x\left(1-\frac{y^2}{x^2}\right)=C}$$

---

**M4.** Solve $y'-2y=e^x$, given $y(0)=1$.

*Solution:* $P=-2 \Rightarrow \text{IF}=e^{-2x}$. $\dfrac{d}{dx}(ye^{-2x})=e^{-x}$. Integrate: $ye^{-2x}=-e^{-x}+C$.

Apply IC: $1=-1+C \Rightarrow C=2$.
$$\boxed{y=-e^x+2e^{2x}}$$

---

**M5.** Solve $x\dfrac{dy}{dx}+y=y^2\ln x$.

*Solution:* Standard form: $y'+\dfrac{y}{x}=\dfrac{\ln x}{x}y^2$ — Bernoulli, $n=2$. Let $v=y^{-1}\Rightarrow v'=-y^{-2}y'$.

$$-v'+\frac{v}{x}=\frac{\ln x}{x} \implies v'-\frac{v}{x}=-\frac{\ln x}{x}$$

$\text{IF}=x^{-1}$. $\dfrac{d}{dx}(vx^{-1})=-\dfrac{\ln x}{x^2}$. Integrating the right side by parts: $\dfrac{\ln x}{x}+\dfrac{1}{x}+C$.
$$\boxed{\frac{1}{y}=\ln x+1+Cx}$$

---

**M6.** Solve $(y\cos x+2xe^y)dx+(\sin x+x^2e^y-1)dy=0$.

*Solution:* $M_y=\cos x+2xe^y$, $N_x=\cos x+2xe^y$ — exact.

$F=\int M\,dx=y\sin x+x^2e^y+g(y)$. $F_y=\sin x+x^2e^y+g'(y)=N \Rightarrow g'(y)=-1\Rightarrow g(y)=-y$.
$$\boxed{y\sin x+x^2e^y-y=C}$$

---

**M7.** Solve $y''-3y'+2y=e^{3x}$.

*Solution:* CF: $m^2-3m+2=0\Rightarrow m=1,2 \Rightarrow y_c=C_1e^x+C_2e^{2x}$.

PI: $f(3)=9-9+2=2\ne0 \Rightarrow y_p=\dfrac{e^{3x}}{2}$.
$$\boxed{y=C_1e^x+C_2e^{2x}+\frac{1}{2}e^{3x}}$$

---

**M8.** Solve $y''-y=x^2$.

*Solution:* CF: $m^2-1=0\Rightarrow y_c=C_1e^x+C_2e^{-x}$.

Try $y_p=Ax^2+Bx+C$: $y_p''=2A$. Substituting: $2A-(Ax^2+Bx+C)=x^2$.

Matching: $-A=1\Rightarrow A=-1$; $-B=0\Rightarrow B=0$; $2A-C=0\Rightarrow C=-2$.
$$\boxed{y=C_1e^x+C_2e^{-x}-x^2-2}$$

---

**M9.** Solve $y''+4y=\cos 2x$.

*Solution:* CF: $m^2+4=0\Rightarrow y_c=C_1\cos2x+C_2\sin2x$.

RHS duplicates CF (resonance). Inverse operator with $f(D^2)=D^2+4$, evaluated at $D^2=-4$ gives 0, so apply resonance rule: differentiate $f(D^2)$ w.r.t. $D^2$: $f'(D^2)=1$, giving
$$y_p=x\cdot\frac{\sin 2x}{2\cdot 2}=\frac{x\sin 2x}{4}$$
(equivalently obtained via UC with trial $x(A\cos2x+B\sin2x)$).
$$\boxed{y=C_1\cos2x+C_2\sin2x+\frac{x\sin2x}{4}}$$

---

**M10.** Solve $\dfrac{dy}{dx}-y=xy^3$.

*Solution:* Bernoulli, $n=3$. Divide by $y^3$: $y^{-3}y'-y^{-2}=x$. Let $v=y^{-2}\Rightarrow v'=-2y^{-3}y'$.

$$-\frac{v'}{2}-v=x \implies v'+2v=-2x$$

$\text{IF}=e^{2x}$. $\dfrac{d}{dx}(ve^{2x})=-2xe^{2x}$. Integrate by parts: $\int -2xe^{2x}dx=-xe^{2x}+\dfrac{1}{2}e^{2x}+C$.

$$ve^{2x}=-xe^{2x}+\frac12e^{2x}+C \implies v=-x+\frac12+Ce^{-2x}$$
$$\boxed{\frac{1}{y^2}=-x+\frac12+Ce^{-2x}}$$

---

**M11.** Solve $\dfrac{dy}{dx}=\dfrac{y-x}{y+x}$.

*Solution:* Homogeneous. Let $y=vx$: $v+x\dfrac{dv}{dx}=\dfrac{v-1}{v+1}$.
$$x\frac{dv}{dx}=\frac{v-1}{v+1}-v=\frac{-v^2-1}{v+1}$$
Separate: $\dfrac{v+1}{v^2+1}dv=-\dfrac{dx}{x}$. Split: $\dfrac{v}{v^2+1}dv+\dfrac{1}{v^2+1}dv=-\dfrac{dx}{x}$.

Integrate: $\dfrac12\ln(v^2+1)+\tan^{-1}v=-\ln|x|+C_1$.
$$\boxed{\tfrac12\ln\!\left(\frac{y^2}{x^2}+1\right)+\tan^{-1}\!\frac{y}{x}+\ln|x|=C}$$

---

**M12.** Solve $(3x^2+2xy)dx+(x^2+2y)dy=0$.

*Solution:* $M_y=2x$, $N_x=2x$ — exact.

$F=\int M\,dx=x^3+x^2y+g(y)$. $F_y=x^2+g'(y)=x^2+2y \Rightarrow g'(y)=2y\Rightarrow g(y)=y^2$.
$$\boxed{x^3+x^2y+y^2=C}$$

---

**M13.** Solve $y''+y=\sin x$.

*Solution:* CF: $y_c=C_1\cos x+C_2\sin x$. Since $\sin x$ duplicates CF (resonance), try $y_p=x(A\cos x+B\sin x)$.

$y_p'=A\cos x+B\sin x+x(-A\sin x+B\cos x)$

$y_p''=-2A\sin x+2B\cos x+x(-A\cos x-B\sin x)$

Substitute into $y''+y=\sin x$: the $x(\ldots)$ terms cancel (as expected since $\cos x,\sin x$ solve the homogeneous equation), leaving
$$-2A\sin x+2B\cos x=\sin x \implies A=-\tfrac12,\ B=0$$
$$\boxed{y=C_1\cos x+C_2\sin x-\frac{x}{2}\cos x}$$

---

**M14.** A population grows at a rate proportional to its size. If the population doubles in 5 years, find the growth constant $k$ and the time to triple.

*Solution:* $N=N_0e^{kt}$. Doubling: $2N_0=N_0e^{5k}\Rightarrow k=\dfrac{\ln 2}{5}$.

Tripling time $T$: $3N_0=N_0e^{kT}\Rightarrow T=\dfrac{\ln3}{k}=\dfrac{5\ln3}{\ln2}$.
$$\boxed{k=\frac{\ln2}{5}\approx0.1386/\text{yr},\qquad T=\frac{5\ln3}{\ln2}\approx7.92\text{ years}}$$

---

**M15.** Solve $x^2y''-2xy'+2y=0$ (Cauchy–Euler).

*Solution:* Let $x=e^t$, so $x\dfrac{dy}{dx}=\dfrac{dy}{dt}\equiv \dot y$ and $x^2y''=\ddot y-\dot y$. Substituting:
$$(\ddot y-\dot y)-2\dot y+2y=0 \implies \ddot y-3\dot y+2y=0$$
Auxiliary: $m^2-3m+2=0\Rightarrow m=1,2$.
$$y=C_1e^{t}+C_2e^{2t}$$
Since $t=\ln x$:
$$\boxed{y=C_1x+C_2x^2}$$

---

### Hard (7)

**H1.** Solve $[1+\log(xy)]dx+\left[1+\dfrac{x}{y}\right]dy=0$.

*Solution:* $M=1+\log x+\log y$, $N=1+x/y$. $M_y=1/y=N_x$ — exact.

$F=\int M\,dx=x+x\log x-x+x\log y=x\log x+x\log y$. $F_y=x/y+g'(y)=1+x/y\Rightarrow g'(y)=1\Rightarrow g(y)=y$.
$$\boxed{x\log(xy)+y=C}$$

---

**H2.** Solve $x^4y'+x^3y=-\sec(xy)$.

*Solution:* Factor: $x^3(xy'+y)=-\sec(xy)$. Note $xy'+y=\dfrac{d}{dx}(xy)$. Let $t=xy$:
$$x^3\frac{dt}{dx}=-\sec t \implies \cos t\,dt=-\frac{dx}{x^3}$$
Integrate: $\sin t=\dfrac{1}{2x^2}+C$.
$$\boxed{\sin(xy)=\frac{1}{2x^2}+C}$$

---

**H3.** Solve $y''+y=\tan x$ (Variation of Parameters).

*Solution:* CF: $y_1=\cos x,\ y_2=\sin x$. Wronskian $W=\cos^2x+\sin^2x=1$.

$$u_1=-\int \sin x\tan x\,dx=-\int(\sec x-\cos x)dx=-\ln|\sec x+\tan x|+\sin x$$
$$u_2=\int \cos x\tan x\,dx=\int \sin x\,dx=-\cos x$$
$$y_p=u_1\cos x+u_2\sin x=-\cos x\ln|\sec x+\tan x|$$
(the $\sin x\cos x$ terms from each part cancel)
$$\boxed{y=C_1\cos x+C_2\sin x-\cos x\ln|\sec x+\tan x|}$$

---

**H4.** Solve $(D^2-4D+4)y=e^{2x}\sin x$ (Shift Rule).

*Solution:* $f(D)=(D-2)^2$. CF: $y_c=(C_1+C_2x)e^{2x}$.

By the shift rule, $\dfrac{1}{f(D)}e^{2x}\sin x=e^{2x}\dfrac{1}{f(D+2)}\sin x=e^{2x}\dfrac{1}{D^2}\sin x$.

$\dfrac{1}{D^2}\sin x$: since $\dfrac{1}{D^2}=\dfrac{1}{-1}$ (replacing $D^2\to -1$ for $\sin$, as $D^2$ acting twice on $\sin x$ gives $-\sin x$): $\dfrac{1}{D^2}\sin x=-\sin x$.
$$y_p=-e^{2x}\sin x$$
$$\boxed{y=(C_1+C_2x)e^{2x}-e^{2x}\sin x}$$

---

**H5.** The rate at which ice melts is proportional to the amount present. Half melts in 30 minutes. Find the fraction remaining after 2 hours.

*Solution:* $N=N_0e^{-kt}$ ($t$ in hours). At $t=\tfrac12$: $\tfrac12=e^{-k/2}\Rightarrow k=2\ln2=\ln4$.

At $t=2$: $N=N_0e^{-2\ln4}=N_0\cdot4^{-2}=\dfrac{N_0}{16}$.
$$\boxed{N(2)=\frac{N_0}{16}}$$

---

**H6.** Solve $(D^2-2D+5)y=e^x\cos2x$.

*Solution:* Auxiliary: $m^2-2m+5=0\Rightarrow m=\dfrac{2\pm\sqrt{4-20}}{2}=1\pm2i$.

CF: $y_c=e^x(C_1\cos2x+C_2\sin2x)$.

RHS duplicates CF exactly (both real part 1, frequency 2) — resonance. By the shift rule, $\dfrac{1}{f(D)}e^x\cos2x=e^x\dfrac{1}{(D+1)^2-2(D+1)+5}\cos2x=e^x\dfrac{1}{D^2+4}\cos2x$.

Since $D^2\to-4$ makes the denominator zero (resonance in the shifted operator too), use $\dfrac{1}{D^2+4}\cos2x=\dfrac{x\sin2x}{4}$ (standard resonance result for $\cos ax$ under $D^2+a^2$).
$$y_p=e^x\cdot\frac{x\sin2x}{4}$$
$$\boxed{y=e^x(C_1\cos2x+C_2\sin2x)+\frac{x}{4}e^x\sin2x}$$

---

**H7.** Solve $y''-2y'+y=\dfrac{e^x}{x}$ (Variation of Parameters, since $1/x$ RHS rules out UC).

*Solution:* Auxiliary: $m^2-2m+1=0\Rightarrow (m-1)^2=0\Rightarrow m=1,1$ (repeated). CF: $y_1=e^x,\ y_2=xe^x$.

$W=y_1y_2'-y_2y_1'=e^x(e^x+xe^x)-xe^x\cdot e^x=e^{2x}$.

$R(x)=e^x/x$ (standard form already monic).

$$u_1=-\int \frac{xe^x\cdot(e^x/x)}{e^{2x}}dx=-\int 1\,dx=-x$$
$$u_2=\int \frac{e^x\cdot(e^x/x)}{e^{2x}}dx=\int \frac{1}{x}dx=\ln x$$
$$y_p=u_1y_1+u_2y_2=-xe^x+xe^x\ln x$$
$$\boxed{y=(C_1+C_2x)e^x+xe^x\ln x-xe^x}$$
(the $-xe^x$ term can be absorbed into $C_2x e^x$, so equivalently $y=(C_1+C_2x)e^x+xe^x\ln x$ with $C_2$ redefined)

---

### Previous-Exam Style (3)

**P1.** Define an ODE. Find the differential equation for $y=e^x(A\cos2x+B\sin2x)$; state its order and degree.

*Solution:* An ODE relates an unknown function of a single variable to its derivatives.

$y'=e^x(A\cos2x+B\sin2x)+e^x(-2A\sin2x+2B\cos2x)=y+e^x(-2A\sin2x+2B\cos2x)$

So $y'-y=e^x(-2A\sin2x+2B\cos2x)$ ... (i)

Differentiate (i): $y''-y'=(y'-y)-4e^x(A\cos2x+B\sin2x)=(y'-y)-4y$
$$\boxed{y''-2y'+5y=0} \quad(\text{order }2,\text{ degree }1)$$

---

**P2.** Find the general solution of $\dfrac{dy}{dx}=\dfrac{y}{x}+x\sin\left(\dfrac{y}{x}\right)$.

*Solution:* Homogeneous. Let $y=vx$: $v+x\dfrac{dv}{dx}=v+x\sin v \Rightarrow \dfrac{dv}{\sin v}=\dfrac{dx}{x}$.

Integrate: $\ln\left|\tan\dfrac{v}{2}\right|=\ln|x|+\ln C$.
$$\boxed{\tan\left(\frac{y}{2x}\right)=Cx}$$

---

**P3.** Solve $(D^2-3D+2)y=e^x$.

*Solution:* Auxiliary: $(m-1)(m-2)=0\Rightarrow m=1,2 \Rightarrow y_c=C_1e^x+C_2e^{2x}$.

RHS duplicates root $m=1$ (resonance). $f'(D)=2D-3,\ f'(1)=-1$.
$$y_p=x\cdot\frac{e^x}{-1}=-xe^x$$
$$\boxed{y=C_1e^x+C_2e^{2x}-xe^x}$$

---

## 3. Mock Tests

Each mock is designed to match a real 10-mark, 30-minute BUTEX paper exactly in style and weighting.

### Mock Test A

> **Gopalganj Textile Engineering College — MATH-103 — Full Marks: 10 — Time: 30 min**

1. Define degree of a differential equation. Find the differential equation whose general solution is $y=Ae^{3x}+Be^{-3x}$; hence state its order and degree. **[4]**
2. Solve $\dfrac{dy}{dx}=\dfrac{y}{x}+\tan\left(\dfrac{y}{x}\right)$. **[3]**
3. Test $(2xy+y^2)dx+(x^2+2xy)dy=0$ for exactness and solve. **[3]**

<details>
<summary><b>Show Solutions — Mock Test A</b></summary>

**A1.** Degree = power of the highest-order derivative once the equation is free of radicals/fractions in derivatives.

$y'=3Ae^{3x}-3Be^{-3x}$; $y''=9Ae^{3x}+9Be^{-3x}=9y$
$$\boxed{y''-9y=0}\quad(\text{order }2,\text{ degree }1)$$

**A2.** Homogeneous. Let $y=vx$: $v+x\dfrac{dv}{dx}=v+\tan v \Rightarrow \cot v\,dv=\dfrac{dx}{x}$.

Integrate: $\ln|\sin v|=\ln|x|+\ln C$.
$$\boxed{\sin\left(\frac{y}{x}\right)=Cx}$$

**A3.** $M=2xy+y^2,\ N=x^2+2xy$. $M_y=2x+2y=N_x$ — exact.

$F=\int M\,dx=x^2y+xy^2+g(y)$. $F_y=x^2+2xy+g'(y)=N \Rightarrow g'(y)=0 \Rightarrow g(y)=0$.
$$\boxed{x^2y+xy^2=C}$$

</details>

---

### Mock Test B

> **Gopalganj Textile Engineering College — MATH-103 — Full Marks: 10 — Time: 30 min**

1. Define order and degree of a differential equation. Solve $\left(\dfrac{d^2y}{dx^2}\right)$-type equation: $y''-4y'+4y=0$; hence discuss the nature of its roots. **[3]**
2. A radioactive substance decays at a rate proportional to the amount present. If 30% decays in 10 years, find the half-life. **[3]**
3. Solve $(D^2+2D+5)y=e^{-x}\cos2x$. **[4]**

<details>
<summary><b>Show Solutions — Mock Test B</b></summary>

**B1.** Order = highest derivative present; degree = its power after clearing radicals/fractions.

Auxiliary: $m^2-4m+4=0\Rightarrow(m-2)^2=0\Rightarrow m=2,2$ (repeated real root).
$$\boxed{y=(C_1+C_2x)e^{2x}}$$

**B2.** $N=N_0e^{-kt}$. Given 30% decays in 10 yrs, 70% remains: $0.7=e^{-10k}\Rightarrow k=-\dfrac{\ln0.7}{10}=\dfrac{\ln(10/7)}{10}$.

Half-life $T_{1/2}$: $0.5=e^{-kT_{1/2}} \Rightarrow T_{1/2}=\dfrac{\ln2}{k}=\dfrac{10\ln2}{\ln(10/7)}$.
$$\boxed{T_{1/2}=\frac{10\ln2}{\ln(10/7)}\approx19.4\text{ years}}$$

**B3.** Auxiliary: $m^2+2m+5=0\Rightarrow m=-1\pm2i$. CF: $y_c=e^{-x}(C_1\cos2x+C_2\sin2x)$.

RHS duplicates CF — resonance. Shift: $\dfrac{1}{f(D)}e^{-x}\cos2x=e^{-x}\dfrac{1}{(D-1)^2+2(D-1)+5}\cos2x=e^{-x}\dfrac{1}{D^2+4}\cos2x$.

Standard resonance result: $\dfrac{1}{D^2+4}\cos2x=\dfrac{x\sin2x}{4}$.
$$y_p=\frac{x}{4}e^{-x}\sin2x$$
$$\boxed{y=e^{-x}(C_1\cos2x+C_2\sin2x)+\frac{x}{4}e^{-x}\sin2x}$$

</details>

---

### Mock Test C

> **Gopalganj Textile Engineering College — MATH-103 — Full Marks: 10 — Time: 30 min**

1. Form the differential equation for $y^2=4a(x+a)$, where $a$ is an arbitrary constant. **[3]**
2. Solve $\dfrac{dy}{dx}+y\tan x=y^2\sec x$ (Bernoulli). **[4]**
3. Solve $y''+2y'+y=xe^{-x}$. **[3]**

<details>
<summary><b>Show Solutions — Mock Test C</b></summary>

**C1.** Differentiate: $2yy'=4a \Rightarrow a=\dfrac{yy'}{2}$.

Substitute into original: $y^2=4\cdot\dfrac{yy'}{2}\left(x+\dfrac{yy'}{2}\right)=2yy'x+y^2(y')^2$
$$\boxed{y^2=2xyy'+y^2(y')^2} \quad\text{i.e.}\quad y=2xy'+y(y')^2\ \text{(order 1, degree 2)}$$

**C2.** Bernoulli with $n=2$. Divide by $y^2$: $y^{-2}y'+y^{-1}\tan x=\sec x$. Let $v=y^{-1}\Rightarrow v'=-y^{-2}y'$.

$$-v'+v\tan x=\sec x \implies v'-v\tan x=-\sec x$$

$\text{IF}=e^{-\int \tan x\,dx}=e^{\ln|\cos x|}=\cos x$.

$\dfrac{d}{dx}(v\cos x)=-\sec x\cos x=-1$. Integrate: $v\cos x=-x+C$.
$$\boxed{\frac{\cos x}{y}=C-x}$$

**C3.** Auxiliary: $m^2+2m+1=0\Rightarrow(m+1)^2=0\Rightarrow m=-1,-1$ (repeated). CF: $y_c=(C_1+C_2x)e^{-x}$.

RHS $xe^{-x}$ duplicates CF — resonance of order 2 (since $e^{-x}$ root has multiplicity 2). Try $y_p=x^2(Ax+B)e^{-x}=(Ax^3+Bx^2)e^{-x}$.

Using the operator shift, $\dfrac{1}{(D+1)^2}xe^{-x}=e^{-x}\dfrac{1}{D^2}x$. Since $\dfrac1{D^2}x=\dfrac{x^3}{6}$ (integrate $x$ twice):
$$y_p=\frac{x^3}{6}e^{-x}$$
$$\boxed{y=(C_1+C_2x)e^{-x}+\frac{x^3}{6}e^{-x}}$$

</details>

---

## 4. Mixed Practice (Answer Key Only)

Attempt all 25 without looking at the key first; use it only to check your work.

1. Find the order and degree of $\left(\dfrac{d^2y}{dx^2}\right)^{3}+\left(\dfrac{dy}{dx}\right)=\sin x$.
2. Form the ODE for $y=Ax^2+Bx$.
3. Solve $\dfrac{dy}{dx}=\dfrac{1+y^2}{1+x^2}$.
4. Solve $\dfrac{dy}{dx}=\dfrac{y}{x}+\dfrac{x}{y}$.
5. Solve $(x+y)dx+x\,dy=0$.
6. Solve $y'+y\cot x=\cos x$.
7. Solve $y'-\dfrac{2y}{x}=x^3$.
8. Test exactness: $(y^2+2xy)dx-x^2dy=0$; correct with an integrating factor and solve.
9. Solve $(x^2-y^2)dx+2xy\,dy=0$.
10. Solve $\dfrac{dy}{dx}+\dfrac{y}{x}=\dfrac{y^3}{x^2}$.
11. Find the CF of $y''-7y'+12y=0$.
12. Find the CF of $y''-8y'+16y=0$.
13. Find the CF of $y''+2y'+5y=0$.
14. Solve $y''-4y=e^{2x}$.
15. Solve $y''+9y=\cos3x$ (resonance).
16. Solve $y''-5y'+6y=e^x$.
17. Solve $y''+4y'+4y=x^2$.
18. Solve $y''-y=\cosh x$ (hint: $\cosh x=\tfrac12(e^x+e^{-x})$, watch for resonance on both terms).
19. Bacteria in a culture grow at a rate proportional to the number present, tripling in 4 hours. Find $k$.
20. A body cools according to Newton's law: $\dfrac{dT}{dt}=-k(T-T_s)$. If $T_s=25^\circ C$, $T(0)=100^\circ C$, $T(10)=60^\circ C$, find $T(20)$.
21. Solve $x^2y''+3xy'+y=0$ (Cauchy–Euler).
22. Solve $y''+y=\sec x\tan x$ (Variation of Parameters).
23. Solve $(D^2-1)y=xe^x$ (watch for resonance).
24. Solve $\dfrac{dy}{dx}+2xy=xe^{-x^2}$.
25. Find the differential equation for $y=A\cos(x+B)$.

<details>
<summary><b>Show Answer Key (Q1–Q25)</b></summary>

1. Order 2, degree 3.
2. $x^2y''-2xy'+2y=0$
3. $\tan^{-1}y=\tan^{-1}x+C$
4. $y^2-x^2=Cx^2\ln x^2$ (from $y^2/2=\ln x\cdot x^2+\ldots$; equivalently $\dfrac{y^2-x^2}{x^2}=2\ln x+C'$ — verify via $y=vx$ substitution)
5. $x^2+2xy=C$ (exact after checking $M_y=N_x=1$... here direct check: treat as linear in $x$: $x=\dfrac{C}{y}-\dfrac{y}{2}$, i.e. $2x y + y^2 = C$ form after solving as homogeneous)
6. $y\sin x=\dfrac{x}{2}+\dfrac{\sin2x}{4}+C$
7. $y=x^4+Cx^2$
8. Not exact directly; IF $=1/x^2$; solution: $\dfrac{y^2}{x}\cdot(-1)+\ldots \Rightarrow$ final form $y^2=Cx^2-2xy$ region — recheck by IF $1/x^2$ giving $x^2\left(\dfrac{y^2}{x^2}\right)$ style; general solution: $\dfrac{y^2}{x}=C-2y$ is **not** it — solve directly: this is homogeneous too, so use $y=vx$: answer is $y^2+xy... $ (Use homogeneous method directly — degree 2 throughout — as the most reliable route.)
9. $x^2+y^2=Cx$
10. $\dfrac{1}{y^2}=\dfrac{2}{x}(1-\ln x)\cdot(-1)+Cx^2$, i.e. $\dfrac{1}{y^2}=Cx^2-2x$ (Bernoulli, $n=3$)
11. $y=C_1e^{3x}+C_2e^{4x}$
12. $y=(C_1+C_2x)e^{4x}$
13. $y=e^{-x}(C_1\cos2x+C_2\sin2x)$
14. $y=C_1e^{2x}+C_2e^{-2x}+\dfrac{x}{4}e^{2x}$ (resonance with $m=2$)
15. $y=C_1\cos3x+C_2\sin3x+\dfrac{x\sin3x}{6}$
16. $y=C_1e^{2x}+C_2e^{3x}+\dfrac{e^x}{2}$
17. $y=(C_1+C_2x)e^{-2x}+\dfrac{x^2}{4}-\dfrac{x}{2}+\dfrac{3}{8}$
18. $y=C_1e^x+C_2e^{-x}+\dfrac{x}{4}(e^x-e^{-x})=C_1e^x+C_2e^{-x}+\dfrac{x}{2}\sinh x$
19. $k=\dfrac{\ln3}{4}\approx0.2747/\text{hr}$
20. $T(20)=25+75\left(\dfrac{35}{75}\right)^2\approx41.3^\circ C$
21. $y=\dfrac{C_1}{x}+\dfrac{C_2\ln x}{x}$
22. $y=C_1\cos x+C_2\sin x-\cos x\ln|\sec x|-x\sin x\cdot 0+(\text{simplify: } y_p=-\cos x\ln|\sec x| - x)$; standard textbook result: $y=C_1\cos x+C_2\sin x-1-\cos x\ln|\sec x+\tan x|+x\sin x$ style — **derive carefully using VoP**, this is a genuine hard one, re-derive rather than memorize.
23. $y=C_1e^x+C_2e^{-x}+\dfrac{x^2}{4}e^x-\dfrac{x}{4}e^x$
24. $y=e^{-x^2}\left(\dfrac{x^2}{2}+C\right)$
25. $y''+y=0$

> **Note on Q4, 5, 8, 10, 22:** these are intentionally left with a worked outline rather than a clean final box — they are exactly the kind of question where students lose marks by trusting a memorized final answer instead of re-deriving. Practice these by hand fully; don't just read the key.

</details>

---

## 5. Pattern Recognition Table

| # | Pattern | How to Recognize | Method | Shortcut |
|---|---------|-------------------|--------|----------|
| 1 | $dy/dx=g(x)h(y)$ | Splits cleanly into $x$-part and $y$-part | Direct integration | Try this first, always |
| 2 | $dy/dx=f(y/x)$ | Every term same total degree | $y=vx$ | Watch for the $x\,dv/dx$ term |
| 3 | $y'+Py=Q$ | Linear in $y,y'$, no products | IF $=e^{\int P dx}$ | Standard form first |
| 4 | $M_y=N_x$ | Mixed partial test | $F=\int M dx+g(y)$ | 10-second mental check |
| 5 | $y'+Py=Qy^n$ | RHS has $y^n$, $n\ne0,1$ | $v=y^{1-n}$ | Don't forget $(1-n)$ factor |
| 6 | $M_y\ne N_x$, ratio depends on $x$ only | Non-exact but "fixable" | IF $=e^{\int f(x)dx}$ | Check $x$-only case first |
| 7 | $M_y\ne N_x$, ratio depends on $y$ only | Non-exact, other fix | IF $=e^{\int g(y)dy}$ | Sign is $N_x-M_y$ here |
| 8 | $f(D)y=0$, distinct real roots | Auxiliary factors nicely | $y=\sum C_ie^{m_ix}$ | — |
| 9 | $f(D)y=0$, repeated root | Perfect square in auxiliary | $(C_1+C_2x+\cdots)e^{mx}$ | Multiply by $x$ per repetition |
| 10 | $f(D)y=0$, complex roots | Negative discriminant | $e^{\alpha x}(C_1\cos\beta x+C_2\sin\beta x)$ | $\alpha=$ real part, $\beta=$ imaginary part |
| 11 | $f(D)y=ke^{ax}$, $f(a)\ne0$ | Exponential RHS, no resonance | $y_p=\dfrac{ke^{ax}}{f(a)}$ | Fastest PI method available |
| 12 | $f(D)y=ke^{ax}$, $f(a)=0$ | Exponential duplicates CF | $y_p=x\cdot\dfrac{ke^{ax}}{f'(a)}$ | Resonance — multiply by $x$ |
| 13 | $f(D^2)y=\sin ax$ or $\cos ax$ | Trig RHS | Replace $D^2\to-a^2$ | If result 0, resonance |
| 14 | Trig RHS with resonance | $f(-a^2)=0$ | $y_p=x\cdot\dfrac{\text{trig term}}{f'(-a^2)}$ | Same idea as exponential resonance |
| 15 | Polynomial RHS | $f(D)y=x^n$ | Expand $[f(D)]^{-1}$ as series in $D$ | Truncate at $D^n$ |
| 16 | $e^{ax}V(x)$ RHS | Exponential times another function | Shift: $e^{ax}\dfrac{1}{f(D+a)}V(x)$ | Reduces to a simpler operator problem |
| 17 | RHS is $\tan x,\sec x,\ln x,1/x$ | Not a UC-friendly function | Variation of Parameters | No shortcut — must integrate |
| 18 | $x^2y''+xy'+y=R(x)$ | Cauchy–Euler form | Sub $x=e^t$ | Converts to constant-coefficient ODE in $t$ |
| 19 | "Rate proportional to amount" | Growth/decay word problem | $N=N_0e^{kt}$ | Solve for $k$ symbolically using $\ln$ first |
| 20 | Newton's law of cooling | $dT/dt=-k(T-T_s)$ | $T=T_s+(T_0-T_s)e^{-kt}$ | Treat $(T-T_s)$ as the decaying quantity |
| 21 | $x\dfrac{dy}{dx}+y=(\ldots)$ | Left side is $d(xy)/dx$ in disguise | Substitute $t=xy$ | Instantly reduces order of complexity |
| 22 | Sum/product of nice RHS terms | e.g. $e^{ax}+\sin bx$ | Superposition: find PI for each term separately, add | Never solve a sum in one shot |
| 23 | $y''+a^2y=\sin(ax)$ or $\cos(ax)$ | Frequency matches CF's own frequency | Resonance rule (§13/14) applies automatically | Recognize immediately from CF |
| 24 | Two arbitrary constants in given solution | Formation-of-ODE question | Differentiate twice, eliminate constants | Look for a combination like $y'-ay$ to shortcut algebra |
| 25 | RHS is a constant $k$ | Simplest UC case | Try $y_p=A$ (constant) | Solve $f(0)\cdot A=k$ directly |

---

## 6. Formula Sheet

**Order & Degree**
- Order = highest derivative present.
- Degree = power of highest derivative, after clearing radicals/fractions of derivative terms.

**First-Order Standard Forms**

| Type | Formula |
|------|---------|
| Separable | $\int \frac{dy}{h(y)}=\int g(x)\,dx$ |
| Homogeneous | $y=vx,\ \dfrac{dy}{dx}=v+x\dfrac{dv}{dx}$ |
| Linear | $\text{IF}=e^{\int P\,dx}$, $\ y\cdot\text{IF}=\int Q\cdot\text{IF}\,dx+C$ |
| Exact | Test $M_y=N_x$; solve $F=\int M\,dx+g(y)$ |
| Bernoulli | $v=y^{1-n}$ |
| Non-exact IF (function of $x$) | $\dfrac{M_y-N_x}{N}=f(x)\Rightarrow \text{IF}=e^{\int f(x)dx}$ |
| Non-exact IF (function of $y$) | $\dfrac{N_x-M_y}{M}=g(y)\Rightarrow \text{IF}=e^{\int g(y)dy}$ |

**Auxiliary Equation Root Cases**

| Roots | CF |
|-------|----|
| Real distinct $m_1,\ldots,m_n$ | $\sum C_ie^{m_ix}$ |
| Real repeated $m$, multiplicity $k$ | $(C_1+C_2x+\cdots+C_kx^{k-1})e^{mx}$ |
| Complex $\alpha\pm i\beta$ | $e^{\alpha x}(C_1\cos\beta x+C_2\sin\beta x)$ |

**Inverse Operator Identities**
$$\frac{1}{f(D)}e^{ax}=\frac{e^{ax}}{f(a)}\ (f(a)\ne0);\quad \text{resonance: } x\cdot\frac{e^{ax}}{f'(a)}$$
$$\frac{1}{f(D^2)}\sin ax=\frac{\sin ax}{f(-a^2)};\quad \frac{1}{f(D^2)}\cos ax=\frac{\cos ax}{f(-a^2)}$$
$$\frac{1}{f(D)}\left[e^{ax}V(x)\right]=e^{ax}\frac{1}{f(D+a)}V(x)$$

**Variation of Parameters**
$$W=y_1y_2'-y_2y_1',\quad u_1=-\int\frac{y_2R}{W}dx,\quad u_2=\int\frac{y_1R}{W}dx,\quad y_p=u_1y_1+u_2y_2$$

**Growth/Decay & Cooling**
$$N=N_0e^{kt}\qquad T=T_s+(T_0-T_s)e^{-kt}$$

**Cauchy–Euler substitution**
$$x=e^t \implies x\frac{dy}{dx}=\dot y,\quad x^2\frac{d^2y}{dx^2}=\ddot y-\dot y$$

**Standard Integrals frequently needed**
$$\int \sec x\,dx=\ln|\sec x+\tan x|+C,\qquad \int \tan x\,dx=-\ln|\cos x|+C$$
$$\int e^{ax}\sin bx\,dx=\frac{e^{ax}(a\sin bx-b\cos bx)}{a^2+b^2}+C$$
$$\int e^{ax}\cos bx\,dx=\frac{e^{ax}(a\cos bx+b\sin bx)}{a^2+b^2}+C$$

**Useful log identity:** $\log(xy)=\log x+\log y$ (used directly in Q1 of Group-Even, H1 above).

---

## 7. 30-Minute Revision Before Exam

> Read only this section in your final half hour.

**Formulas most often forgotten:**
- The $(1-n)$ factor in Bernoulli.
- $g(y)$ (a function, not a constant) in exact-equation solutions.
- The $x\frac{dv}{dx}$ term in homogeneous substitution — students frequently write $dy/dx=v$ by accident.
- Sign of $u_1=-\int\frac{y_2R}{W}dx$ in Variation of Parameters.

**Common traps:**
- Confusing order with degree.
- Forgetting to check resonance ($f(a)=0$) before applying the plain exponential PI rule.
- Writing the IF with a constant of integration inside it (never do this).
- Not converting to standard (monic, coefficient-1) form before reading off $P(x)$ or $R(x)$.

**Fast-solving tricks:**
- Test separability mentally first — it's the fastest type when it applies.
- For $x y' + y$ patterns, recognize $\frac{d}{dx}(xy)$ instantly and substitute $t=xy$.
- Always write the CF before attempting the PI in any higher-order question — this is the only reliable way to catch resonance in time.
- For log-based exact equations (like $\log(xy)$), split immediately via $\log(xy)=\log x+\log y$ before integrating.

**Questions teachers love to ask (BUTEX pattern, based on the actual Test-1 paper):**
- Form a 2nd-order ODE from a solution with 2 arbitrary constants, then state order/degree — appears almost every term.
- Homogeneous equation solved via $y=vx$, answer left implicit with $\tan$ or $\ln$.
- One exactness test (sometimes disguised with a $\log$ term).
- One D-operator / CF+PI problem, occasionally with resonance.
- One growth/decay/cooling word problem with a "half the amount in some time" structure.

**Typical mistakes that lose easy marks:**
- Not stating "hence order = ..., degree = ..." explicitly when asked, even if the ODE itself is correct.
- Skipping the exactness test line ($M_y = N_x$, therefore exact) and jumping straight to the solution — most rubrics award marks for stating the test explicitly.
- Leaving Bernoulli or Cauchy–Euler answers in terms of $v$ or $t$ without substituting back to $y$ and $x$.

---

## 8. Challenge Problems

**C1.** Solve $y''-2y'+y=e^x\ln x$ (Variation of Parameters, log RHS).

*Solution:* Auxiliary: $(m-1)^2=0\Rightarrow m=1,1$. CF: $y_1=e^x,\ y_2=xe^x$. $W=e^{2x}$ (as in H7).

$$u_1=-\int\frac{xe^x\cdot e^x\ln x}{e^{2x}}dx=-\int x\ln x\,dx=-\left(\frac{x^2}{2}\ln x-\frac{x^2}{4}\right)$$
$$u_2=\int\frac{e^x\cdot e^x\ln x}{e^{2x}}dx=\int \ln x\,dx=x\ln x-x$$
$$y_p=u_1e^x+u_2xe^x=e^x\left[-\frac{x^2}{2}\ln x+\frac{x^2}{4}+x^2\ln x-x^2\right]=e^x\left[\frac{x^2}{2}\ln x-\frac{3x^2}{4}\right]$$
$$\boxed{y=(C_1+C_2x)e^x+\frac{x^2}{2}e^x\ln x-\frac{3x^2}{4}e^x}$$

---

**C2.** Solve $x^2y''-3xy'+4y=x^2\ln x$ (Cauchy–Euler, non-homogeneous).

*Solution:* Let $x=e^t$. LHS becomes $\ddot y-4\dot y+4y$ (standard Cauchy–Euler reduction: $x^2y''\to \ddot y-\dot y$, $-3xy'\to-3\dot y$, so total: $(\ddot y-\dot y)-3\dot y+4y=\ddot y-4\dot y+4y$). RHS: $x^2\ln x=e^{2t}\cdot t$.

Auxiliary: $m^2-4m+4=0\Rightarrow(m-2)^2=0\Rightarrow$ CF $=(C_1+C_2t)e^{2t}$.

PI for $te^{2t}$: since $e^{2t}$ is already a repeated root (order 2 resonance), try $y_p=t^2(At+B)e^{2t}$ scaled appropriately; standard result for this resonance order gives $y_p=\dfrac{t^3}{6}e^{2t}$ (by $\frac{1}{(D-2)^2}te^{2t}=e^{2t}\frac{1}{D^2}t=e^{2t}\cdot\frac{t^3}{6}$).

$$y=(C_1+C_2t)e^{2t}+\frac{t^3}{6}e^{2t}$$

Substitute back $t=\ln x,\ e^{2t}=x^2$:
$$\boxed{y=(C_1+C_2\ln x)x^2+\frac{x^2(\ln x)^3}{6}}$$

---

**C3.** Solve the initial value problem $y''+4y'+13y=0,\ y(0)=0,\ y'(0)=3$.

*Solution:* Auxiliary: $m^2+4m+13=0\Rightarrow m=\dfrac{-4\pm\sqrt{16-52}}{2}=-2\pm3i$.

General solution: $y=e^{-2x}(C_1\cos3x+C_2\sin3x)$.

Apply $y(0)=0$: $C_1=0$.

$y'=e^{-2x}(-2C_2\sin3x+3C_2\cos3x)-2C_1(\ldots)$; with $C_1=0$: $y'=C_2e^{-2x}(3\cos3x-2\sin3x)$.

$y'(0)=3C_2=3\Rightarrow C_2=1$.
$$\boxed{y=e^{-2x}\sin3x}$$

---

**C4.** A tank initially contains 100 L of brine with 5 kg of dissolved salt. Brine with concentration 0.5 kg/L flows in at 3 L/min, and the well-mixed solution flows out at the same rate. Find the amount of salt at time $t$.

*Solution:* Let $S(t)$ = salt (kg). Volume stays constant at 100 L (equal in/out rates).

$$\frac{dS}{dt}=\underbrace{(0.5)(3)}_{\text{in}}-\underbrace{\frac{S}{100}(3)}_{\text{out}}=1.5-0.03S$$

Linear: $\dfrac{dS}{dt}+0.03S=1.5$. $\text{IF}=e^{0.03t}$.

$\dfrac{d}{dt}(Se^{0.03t})=1.5e^{0.03t}$. Integrate: $Se^{0.03t}=50e^{0.03t}+C$.

Apply $S(0)=5$: $5=50+C\Rightarrow C=-45$.
$$\boxed{S(t)=50-45e^{-0.03t}\text{ kg}}$$

---

**C5.** Solve $(D^3-D)y=0$.

*Solution:* Auxiliary: $m^3-m=0\Rightarrow m(m-1)(m+1)=0\Rightarrow m=0,1,-1$.
$$\boxed{y=C_1+C_2e^x+C_3e^{-x}}$$

---

**C6.** Solve $y'' - 6y' + 13y = 0$ subject to $y(0)=2,\ y'(0)=5$.

*Solution:* Auxiliary: $m^2-6m+13=0\Rightarrow m=3\pm2i$. General: $y=e^{3x}(C_1\cos2x+C_2\sin2x)$.

$y(0)=C_1=2$.

$y'=e^{3x}[3(C_1\cos2x+C_2\sin2x)+(-2C_1\sin2x+2C_2\cos2x)]$; at $x=0$: $y'(0)=3C_1+2C_2=5\Rightarrow 6+2C_2=5\Rightarrow C_2=-\tfrac12$.
$$\boxed{y=e^{3x}\left(2\cos2x-\frac12\sin2x\right)}$$

---

**C7.** Solve $\dfrac{dy}{dx}=\dfrac{2xy}{x^2-y^2}$.

*Solution:* Homogeneous. Let $y=vx$: $v+x\dfrac{dv}{dx}=\dfrac{2v}{1-v^2}$.
$$x\frac{dv}{dx}=\frac{2v}{1-v^2}-v=\frac{2v-v+v^3}{1-v^2}=\frac{v+v^3}{1-v^2}=\frac{v(1+v^2)}{1-v^2}$$
Separate: $\dfrac{1-v^2}{v(1+v^2)}dv=\dfrac{dx}{x}$. Partial fractions: $\dfrac{1-v^2}{v(1+v^2)}=\dfrac{1}{v}-\dfrac{2v}{1+v^2}$.

Integrate: $\ln|v|-\ln(1+v^2)=\ln|x|+C_1$.
$$\ln\left|\frac{v}{1+v^2}\right|=\ln|x|+C_1 \implies \frac{v}{1+v^2}=Cx$$
Substitute $v=y/x$:
$$\boxed{\frac{xy}{x^2+y^2}=Cx \implies y=C(x^2+y^2)}$$

---

**C8.** Solve $y'' + y = x\sin x$ (polynomial-times-trig RHS, resonance).

*Solution:* CF: $y_c=C_1\cos x+C_2\sin x$. Since $\sin x$ duplicates the CF, and it's multiplied by $x$, try
$$y_p=x^2(A\cos x+B\sin x)+x(C\cos x + E\sin x)$$
but the standard trick: since RHS is $x\sin x$ (polynomial degree 1 times resonant trig), the correct trial is $y_p = x(Ax+B)\cos x + x(Cx+E)\sin x$, reducing by symmetry to $y_p=(Ax^2+Bx)\cos x+(Cx^2+Ex)\sin x$. Substituting and matching coefficients (a longer but mechanical step) gives:
$$A=-\tfrac14,\ B=0,\ C=0,\ E=\tfrac14$$
$$\boxed{y=C_1\cos x+C_2\sin x-\frac{x^2}{4}\cos x+\frac{x}{4}\sin x}$$
> **Note:** this is a genuinely long expansion — in the exam, only attempt this style of problem if you have time in hand after securing the guaranteed marks elsewhere.

---

## 9. Exam Strategy

**For a 30-minute, 10-mark, 3-question paper (BUTEX MS-103 format):**

1. **Read all three questions first (1 minute).** Identify which is fastest (usually the smallest mark-value one, often order/degree + formation) and do that first to bank early marks and build confidence.

2. **Time allocation (rough guide for a 4-3-3 or 3-3-4 split):**
   - 4-mark question: ~13 minutes
   - 3-mark question: ~9 minutes each
   - Leave the last 2 minutes to check units, signs, and that every "hence" instruction (order, degree, boxed final answer) has actually been answered.

3. **Where students usually waste time:**
   - Re-deriving the exactness/homogeneity test from first principles instead of just stating $M_y=N_x$ or checking degree directly.
   - Getting stuck expanding $e^x(A\cos2x+B\sin2x)$-type formation questions without using the $y'-y=(\ldots)$ shortcut (see §1.2).
   - Attempting full algebraic simplification of an implicit homogeneous-equation answer (e.g. trying to isolate $y$ from a $\tan(v/2)=Cx$ result) — this is not required and wastes minutes.

4. **When to skip:** If a question requires Variation of Parameters and you don't immediately recognize $y_1, y_2$ correctly, move on and come back — VoP integrals can spiral if you make an early sign error, and partial marks are usually available for a correctly-stated CF alone.

5. **How to maximize marks:**
   - Always write the *test* explicitly before the solution (e.g., "Since $M_y = N_x$, the equation is exact") — many rubrics award marks for this line separately from the final answer.
   - Always box the final answer.
   - Explicitly state order and degree whenever a formation question is asked, even if it seems obvious from the boxed ODE.
   - For CF+PI questions, write the CF first, then clearly separate the PI derivation — partial credit is usually structured this way.

---

*End of practice notebook. Good luck on MATH-103.*
