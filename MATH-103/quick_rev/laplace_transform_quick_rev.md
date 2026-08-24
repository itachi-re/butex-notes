# Quick Revision — Unit 4: Laplace Transform (MS-103)

> Last-minute cram sheet. No derivations — see [laplace_transform/](../laplace_transform/) for full notes.

## One-Line Definitions

- **Laplace transform:** $F(s)=\int_0^\infty e^{-st}f(t)\,dt$
- **Inverse Laplace transform:** $\mathcal{L}^{-1}\{F(s)\}=f(t)$
- **Convolution:** $(f*g)(t)=\int_0^t f(\tau)g(t-\tau)\,d\tau$
- **Exponential order:** $|f(t)|\le Me^{\alpha t}$ for $t>T$ — guarantees the transform exists for $s>\alpha$.

## Essential Transform Table

| $f(t)$ | $F(s)$ |
|---|---|
| $1$ | $1/s$ |
| $t^n$ | $n!/s^{n+1}$ |
| $e^{at}$ | $1/(s-a)$ |
| $\sin at$ | $a/(s^2+a^2)$ |
| $\cos at$ | $s/(s^2+a^2)$ |
| $\sinh at$ | $a/(s^2-a^2)$ |
| $\cosh at$ | $s/(s^2-a^2)$ |
| $e^{at}\sin bt$ | $b/[(s-a)^2+b^2]$ |
| $e^{at}\cos bt$ | $(s-a)/[(s-a)^2+b^2]$ |
| $t^ne^{at}$ | $n!/(s-a)^{n+1}$ |
| $u(t-a)$ | $e^{-as}/s$ |

## Essential Properties

| Property | Formula |
|---|---|
| Linearity | $\mathcal{L}\{af+bg\}=aF(s)+bG(s)$ |
| 1st Shift | $\mathcal{L}\{e^{at}f(t)\}=F(s-a)$ |
| 2nd Shift | $\mathcal{L}\{u(t-a)f(t-a)\}=e^{-as}F(s)$ |
| Derivative | $\mathcal{L}\{f'\}=sF(s)-f(0)$; $\mathcal{L}\{f''\}=s^2F(s)-sf(0)-f'(0)$ |
| Integral | $\mathcal{L}\{\int_0^t f\}=F(s)/s$ |
| Mult. by $t$ | $\mathcal{L}\{tf(t)\}=-F'(s)$ |
| Initial value | $f(0^+)=\lim_{s\to\infty}sF(s)$ |
| Final value | $\lim_{t\to\infty}f(t)=\lim_{s\to0}sF(s)$ (only if limit exists) |

## Inverse-Transform Patterns

| $F(s)$ form | $f(t)$ |
|---|---|
| $\dfrac A{s-a}$ | $Ae^{at}$ |
| $\dfrac1{(s-a)^k}$ | $\dfrac{t^{k-1}}{(k-1)!}e^{at}$ |
| $\dfrac{s-a}{(s-a)^2+b^2}$ | $e^{at}\cos bt$ |
| $\dfrac b{(s-a)^2+b^2}$ | $e^{at}\sin bt$ |
| $e^{-as}G(s)$ | $u(t-a)\,g(t-a)$ |
| Quadratic denom | complete the square first, then match above |
| Product $F(s)G(s)$, awkward PF | use convolution instead |

## ODE Solving Workflow (memorize as a checklist)

1. $\mathcal{L}$ both sides
2. Replace derivatives: $y'\to sY-y(0)$, $y''\to s^2Y-sy(0)-y'(0)$
3. Plug in initial conditions
4. Solve algebraically for $Y(s)$
5. Partial fractions
6. Inverse transform
7. State $y(t)$

**Second-order shortcut:** $Y(s) = \dfrac{F(s)+(s+b)y(0)+y'(0)}{s^2+bs+c}$ for $y''+by'+cy=f(t)$.

**Resonance flag:** if a factor of $F(s)$'s denominator matches a root of the characteristic polynomial → expect $t\sin$, $t\cos$, or $t^ke^{rt}$ in the answer.

## PDE Solving Workflow

1. $\mathcal{L}_t$ both sides (transform $t$ only, $x$ stays)
2. $u_t\to sU-u(x,0)$, $u_{tt}\to s^2U-su(x,0)-u_t(x,0)$; $u_x,u_{xx}$ unchanged
3. Get an ODE in $x$ for $U(x,s)$
4. Transform boundary conditions the same way
5. Solve the ODE in $x$ (use boundedness as $x\to\infty$ to kill the growing exponential)
6. Inverse transform back to $u(x,t)$

**Heat equation:** $u_t=c^2u_{xx} \Rightarrow U_{xx}-\dfrac s{c^2}U=-\dfrac{u(x,0)}{c^2}$

**Wave equation:** $u_{tt}=c^2u_{xx} \Rightarrow U_{xx}-\dfrac{s^2}{c^2}U = \dfrac{-su(x,0)-u_t(x,0)}{c^2}$

## Common Exam Question Types — Answer Skeletons

**Type 1 — "Find $\mathcal{L}\{f(t)\}$ for a combination of elementary functions."**
→ Split with linearity → match each term to the table → recombine.

**Type 2 — "Find $\mathcal{L}^{-1}\{F(s)\}$ for a rational function."**
→ Check table match → else partial fractions (linear / repeated / quadratic, complete the square if needed) → invert term-by-term → apply 2nd shift last if $e^{-as}$ present.

**Type 3 — "Solve the IVP $ay''+by'+cy=f(t)$, $y(0)=\dots,y'(0)=\dots$ using Laplace transform."**
→ Transform → substitute I.C. → solve for $Y(s)$ → partial fractions → invert → state $y(t)$.
