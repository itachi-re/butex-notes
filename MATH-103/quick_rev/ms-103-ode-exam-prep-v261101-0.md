# MS-103 ODE Exam Prep

**Source:** `Ode Solutions by Adnan (Ctec-19).pdf`  
**Purpose:** last-minute exam revision — questions rewritten cleanly with exam-style solutions.

---

## 1. Separable equation

**Question.** Solve

$$
(e^x+1)\frac{dy}{dx}=y(y+1).
$$

**Solution.** Separate variables:

$$
\frac{dy}{y(y+1)}=\frac{dx}{e^x+1}.
$$

Partial fractions on the left: $\dfrac{1}{y(y+1)}=\dfrac1y-\dfrac1{y+1}$. On the right, multiply top and bottom by $e^{-x}$:

$$
\int\frac{dx}{e^x+1}=\int\frac{e^{-x}}{1+e^{-x}}\,dx=-\ln(1+e^{-x})=\ln\frac{e^x}{e^x+1}.
$$

Therefore

$$
\ln\left\lvert\frac{y}{y+1}\right\rvert=\ln\left\lvert\frac{e^x}{e^x+1}\right\rvert+\ln C ,
$$

and the general solution is

$$
\boxed{\frac{y}{y+1}=C\,\frac{e^x}{e^x+1}}
$$

---

## 2. Separable equation

**Question.** Solve

$$
\frac{dy}{dx}=\frac{1+y^2}{x}.
$$

**Solution.** Separate:

$$
\frac{dy}{1+y^2}=\frac{dx}{x}.
$$

Integrate: $\tan^{-1}y=\ln\lvert x\rvert+C$. Thus

$$
\boxed{y=\tan\big(\ln\lvert x\rvert+C\big)}
$$

---

## 3. Homogeneous equation (substitution $v=y/x$)

> [!NOTE]
> The source file printed this question as $\dfrac{dy}{dx}=\dfrac{y}{x}\tan\dfrac{y}{x}$, which does not integrate in closed form (and its working had an algebra slip). The heading mentioned $\sin^{-1}$, so this is rewritten as the standard textbook problem $\dfrac{dy}{dx}=\dfrac{y}{x}+\tan\dfrac{y}{x}$. **Check it against your original PDF.**

**Question.** Solve

$$
\frac{dy}{dx}=\frac{y}{x}+\tan\!\left(\frac{y}{x}\right).
$$

**Solution.** Put $v=\dfrac yx$, so $y=vx$ and

$$
\frac{dy}{dx}=v+x\frac{dv}{dx}.
$$

Substituting gives

$$
v+x\frac{dv}{dx}=v+\tan v\quad\Longrightarrow\quad x\frac{dv}{dx}=\tan v .
$$

Separate and integrate:

$$
\int\cot v\,dv=\int\frac{dx}{x}\quad\Longrightarrow\quad\ln\lvert\sin v\rvert=\ln\lvert x\rvert+\ln C .
$$

So $\sin v=Cx$, i.e.

$$
\boxed{\sin\!\left(\frac{y}{x}\right)=Cx}\qquad\text{or}\qquad y=x\sin^{-1}(Cx).
$$

The key exam step is the substitution $v=y/x$.

---

## 4. Non-homogeneous equation reducible to homogeneous

**Question.** Solve

$$
(4x-y+7)\,dx-(2x+y-1)\,dy=0.
$$

**Solution.** Remove the constants by putting $x=X+h$, $y=Y+k$ with

$$
4h-k+7=0,\qquad 2h+k-1=0 .
$$

Adding: $6h+6=0$, so

$$
\boxed{h=-1,\quad k=3}
$$

Hence $X=x+1$ and $Y=y-3$, and the equation becomes

$$
\frac{dY}{dX}=\frac{4X-Y}{2X+Y}.
$$

Put $Y=vX$, so $\dfrac{dY}{dX}=v+X\dfrac{dv}{dX}$:

$$
v+X\frac{dv}{dX}=\frac{4-v}{2+v}
\quad\Longrightarrow\quad
X\frac{dv}{dX}=\frac{4-3v-v^2}{2+v}=-\frac{(v+4)(v-1)}{v+2}.
$$

Separate:

$$
\frac{v+2}{(v+4)(v-1)}\,dv=-\frac{dX}{X}.
$$

Partial fractions:

$$
\frac{v+2}{(v+4)(v-1)}=\frac{2}{5(v+4)}+\frac{3}{5(v-1)}.
$$

Integrate:

$$
\frac25\ln\lvert v+4\rvert+\frac35\ln\lvert v-1\rvert=-\ln\lvert X\rvert+c .
$$

Multiply by 5:

$$
2\ln\lvert v+4\rvert+3\ln\lvert v-1\rvert+5\ln\lvert X\rvert=C .
$$

With $v=Y/X$ the powers of $X$ cancel:

$$
\boxed{(Y+4X)^2(Y-X)^3=C}
$$

Finally, substitute $X=x+1$, $Y=y-3$:

$$
\boxed{(y+4x+1)^2\,(y-x-4)^3=C}
$$

---

## 5. Another shifted homogeneous equation

**Question.** Solve

$$
(x+y-3)\,dx-(3x-y-1)\,dy=0.
$$

**Solution.** Put $x=X+h$, $y=Y+k$ with

$$
h+k-3=0,\qquad 3h-k-1=0 .
$$

Adding: $4h=4$, so

$$
\boxed{h=1,\quad k=2}
$$

So $X=x-1$, $Y=y-2$, and

$$
\frac{dY}{dX}=\frac{X+Y}{3X-Y}.
$$

Put $Y=vX$:

$$
v+X\frac{dv}{dX}=\frac{1+v}{3-v}
\quad\Longrightarrow\quad
X\frac{dv}{dX}=\frac{1+v-v(3-v)}{3-v}=\frac{(v-1)^2}{3-v}.
$$

Thus

$$
\frac{3-v}{(v-1)^2}\,dv=\frac{dX}{X}.
$$

Let $u=v-1$. Then

$$
\frac{3-v}{(v-1)^2}=\frac{2-u}{u^2}=\frac{2}{u^2}-\frac1u .
$$

Integrate:

$$
-\frac{2}{v-1}-\ln\lvert v-1\rvert=\ln\lvert X\rvert+c
\quad\Longrightarrow\quad
\ln\lvert X(v-1)\rvert+\frac{2}{v-1}=C .
$$

Since $v=Y/X$, we have $X(v-1)=Y-X$ and $\dfrac{2}{v-1}=\dfrac{2X}{Y-X}$:

$$
\boxed{\ln\lvert Y-X\rvert+\frac{2X}{Y-X}=C}
$$

Substitute $X=x-1$, $Y=y-2$:

$$
\boxed{\ln\lvert y-x-1\rvert+\frac{2(x-1)}{y-x-1}=C}
$$

---

## 6. Linear first-order ODE

**Form.**

$$
\frac{dy}{dx}+P(x)\,y=Q(x).
$$

**Method.** The integrating factor is

$$
\boxed{\mathrm{IF}=e^{\int P(x)\,dx}}
$$

Multiplying through by IF makes the left side an exact derivative:

$$
\frac{d}{dx}\big(y\,\mathrm{IF}\big)=Q\,\mathrm{IF}.
$$

Integrating:

$$
\boxed{y\,\mathrm{IF}=\int Q\,\mathrm{IF}\,dx+C}
$$

---

## 7. Exact-differential test and method

For

$$
M(x,y)\,dx+N(x,y)\,dy=0
$$

the equation is **exact** if

$$
\boxed{\frac{\partial M}{\partial y}=\frac{\partial N}{\partial x}}
$$

The solution is

$$
\boxed{\int M\,dx+\int\left(N-\frac{\partial}{\partial y}\int M\,dx\right)dy=C}
$$

**Equivalent step-by-step method:**

1. Integrate $M$ with respect to $x$ (treating $y$ as constant).
2. Add an unknown function $\phi(y)$.
3. Differentiate the result with respect to $y$.
4. Compare with $N$ and determine $\phi(y)$.

---

## 8. Exact equation

**Question.** Solve

$$
(6x-2y-7)\,dx-(2x+6y-3)\,dy=0.
$$

**Solution.** Here $M=6x-2y-7$ and $N=-2x-6y+3$. Then

$$
M_y=-2,\qquad N_x=-2,
$$

so the equation is exact.

Integrate $M$ with respect to $x$:

$$
\int M\,dx=3x^2-2xy-7x+\phi(y).
$$

Differentiate with respect to $y$ and equate to $N$:

$$
-2x+\phi'(y)=-2x-6y+3\quad\Longrightarrow\quad\phi'(y)=-6y+3,
$$

so $\phi(y)=-3y^2+3y$. Therefore

$$
\boxed{3x^2-2xy-7x-3y^2+3y=C}
$$

---

## 9. Exact equation with exponential terms

**Question.** Solve

$$
(e^x\sin y+e^{-y})\,dx+(e^x\cos y-xe^{-y})\,dy=0.
$$

**Solution.** Here $M=e^x\sin y+e^{-y}$ and $N=e^x\cos y-xe^{-y}$.

$$
M_y=e^x\cos y-e^{-y},\qquad N_x=e^x\cos y-e^{-y},
$$

so the equation is exact.

$$
\int M\,dx=e^x\sin y+xe^{-y}+\phi(y).
$$

Differentiate with respect to $y$:

$$
e^x\cos y-xe^{-y}+\phi'(y)=N=e^x\cos y-xe^{-y}\quad\Longrightarrow\quad\phi'(y)=0 .
$$

Therefore

$$
\boxed{e^x\sin y+xe^{-y}=C}
$$

---

## 10. Exactness criterion

**Question.** State the criterion for $M\,dx+N\,dy=0$ to be exact.

**Answer.** If $M$, $N$ and their first partial derivatives are continuous in a simply connected region, then

$$
\boxed{M_y=N_x}
$$

is the necessary and sufficient condition for exactness.

---

## 11. Integrating factor for a non-exact equation

For $M\,dx+N\,dy=0$:

- If $\dfrac{M_y-N_x}{N}$ is a function of $x$ only, say $f(x)$, then

$$
\boxed{\mathrm{IF}=e^{\int f(x)\,dx}}
$$

- If $\dfrac{N_x-M_y}{M}$ is a function of $y$ only, say $g(y)$, then

$$
\boxed{\mathrm{IF}=e^{\int g(y)\,dy}}
$$

---

## 12. Homogeneous-function integrating factor

If $M\,dx+N\,dy=0$ is homogeneous of the same degree in $x,y$ and not exact, a useful integrating factor (when $xM+yN\neq0$) is

$$
\boxed{\mathrm{IF}=\frac{1}{xM+yN}}
$$

After multiplying by the integrating factor, solve the resulting exact equation.

---

## 13. Higher-order linear ODE with constant coefficients

For

$$
F(D)\,y=0,\qquad D=\frac{d}{dx},
$$

assume $y=e^{mx}$. Then

$$
F(m)=0
$$

is the **auxiliary (characteristic) equation**.

---

## 14. Example: distinct real roots

**Question.** Solve $(D^2-3D+2)\,y=0$.

**Solution.** Auxiliary equation:

$$
m^2-3m+2=0\ \Longrightarrow\ (m-1)(m-2)=0\ \Longrightarrow\ m=1,\,2 .
$$

Therefore

$$
\boxed{y=C_1e^{x}+C_2e^{2x}}
$$

---

## 15. Repeated roots

If $(D-m)^2y=0$, then $m$ is a repeated root and

$$
\boxed{y=(C_1+C_2x)\,e^{mx}}
$$

For a root of multiplicity $r$:

$$
\boxed{y=e^{mx}\big(C_1+C_2x+\cdots+C_rx^{r-1}\big)}
$$

---

## 16. Complex roots

If the auxiliary equation gives $m=\alpha\pm i\beta$, the real solution is

$$
\boxed{y=e^{\alpha x}\big(C_1\cos\beta x+C_2\sin\beta x\big)}
$$

**Example.** For $(D^2+6D+13)\,y=0$:

$$
m^2+6m+13=0\ \Longrightarrow\ m=-3\pm2i ,
$$

so

$$
\boxed{y=e^{-3x}\big(C_1\cos2x+C_2\sin2x\big)}
$$

---

## 17. General operator method

For $F(D)\,y=R(x)$:

$$
\boxed{y=\mathrm{CF}+\mathrm{PI}}
$$

- **CF** = complementary function, from $F(m)=0$.
- **PI** = particular integral.

For exponential forcing:

$$
\boxed{\frac{1}{F(D)}\,e^{ax}=\frac{e^{ax}}{F(a)}}\qquad(F(a)\neq0).
$$

If $F(a)=0$, resonance occurs and the rule is modified by multiplying by a suitable power of $x$ (for a simple root, $\dfrac{1}{F(D)}e^{ax}=\dfrac{x\,e^{ax}}{F'(a)}$).

---

## 18. Variation of parameters

For

$$
y''+P(x)\,y'+Q(x)\,y=R(x),
$$

suppose the complementary solutions are $y_1,y_2$. The Wronskian is

$$
W=\begin{vmatrix}y_1&y_2\\ y_1'&y_2'\end{vmatrix}=y_1y_2'-y_2y_1'.
$$

Then

$$
\boxed{u_1'=-\frac{y_2R}{W}},\qquad\boxed{u_2'=\frac{y_1R}{W}}
$$

and

$$
\boxed{y_p=u_1y_1+u_2y_2}
$$

---

## 19. Quick exam checklist

### First-order

- Separable
- Linear
- Bernoulli
- Homogeneous
- Exact
- Integrating factor

### Higher-order

- Auxiliary equation
- CF
- PI
- Repeated roots
- Complex roots
- Resonance
- Variation of parameters

### Must-remember formulas

$$
\mathrm{IF}_{\text{linear}}=e^{\int P\,dx}
$$

$$
M_y=N_x\quad\text{(exactness)}
$$

$$
y_{\text{general}}=\mathrm{CF}+\mathrm{PI}
$$

$$
m=\alpha\pm i\beta\ \Longrightarrow\ y=e^{\alpha x}\big(C_1\cos\beta x+C_2\sin\beta x\big)
$$

---

## 20. Three-hour ODE revision plan

| Time | Topic |
|------|-------|
| 0:00–0:40 | Separable + linear + Bernoulli |
| 0:40–1:20 | Homogeneous + exact equations |
| 1:20–2:10 | Higher-order constant-coefficient equations |
| 2:10–2:35 | PI / operator method + resonance |
| 2:35–2:50 | Variation of parameters |
| 2:50–3:00 | Memorise formulas and solve one problem from each type |
