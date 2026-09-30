# Differential Equations — Exam Preparation Book

A complete, exam-focused guide covering Order & Degree, First Order First Degree Equations, Homogeneous Equations, Linear Equations, Bernoulli Equations, Exact Equations, and Higher Order Linear Equations with Constant Coefficients.

Every worked question shows full step-by-step derivation — identification of type, formulas used, substitutions, integration, and simplification — before the final boxed answer.

---

# Chapter 1 — Order and Degree of a Differential Equation

## Quick Revision

- **Order**: the order of the highest derivative present in the differential equation.
- **Degree**: the power of the highest order derivative, *after* the equation has been made **free of radicals and fractional powers of derivatives** (i.e., written as a polynomial in derivatives).
- Degree is **only** defined when the equation can be expressed as a polynomial in derivatives. If a derivative appears inside a transcendental function ($e^{y''}$, $\sin(y')$, $\ln(y'')$, etc.), the degree is **not defined**.
- Fractional/negative powers of *lower* order derivatives do **not** affect degree — only the power of the **highest** order derivative matters, and only after clearing radicals/fractions on that highest derivative.
- **Key formulas / recognition tips**:
  - If you see a square root or fractional power directly on the highest derivative, **raise both sides to remove it** before reading off the degree.
  - Order = count how many times $y$ has been differentiated (look at the subscript/prime count or the $d^n/dx^n$ label).
  - Degree = the exponent on that highest-order term once the equation is rationalized and polynomial in all derivatives.

**Common mistakes**
- Confusing order and degree.
- Trying to assign a degree when the highest derivative sits inside $\sin$, $\cos$, $e^{(\cdot)}$, or $\ln$ — degree does not exist here.
- Forgetting to square/cube to remove a radical *before* stating the degree.
- Assuming degree is affected by fractional powers of **lower**-order derivatives — it isn't.

---

## Practice Questions

### Question 1
Find the order and degree of:
$$\frac{d^2y}{dx^2} + 3\frac{dy}{dx} + 2y = 0$$

<details>
<summary>Solution</summary>

**Step 1: Identify the highest derivative.**
The highest derivative present is $\dfrac{d^2y}{dx^2}$, so the **order = 2**.

**Step 2: Check the power of the highest derivative.**
$\dfrac{d^2y}{dx^2}$ appears to the power 1, and the equation is already a polynomial in derivatives (no radicals, no transcendental wrapping).

**Final Answer:**
$$\boxed{\text{Order} = 2,\ \text{Degree} = 1}$$
</details>

---

### Question 2
Find the order and degree of:
$$\left(\frac{dy}{dx}\right)^2 + 3y = 5x$$

<details>
<summary>Solution</summary>

**Step 1: Highest derivative.**
Only $\dfrac{dy}{dx}$ appears $\Rightarrow$ **order = 1**.

**Step 2: Power of highest derivative.**
It appears squared, and the equation is already polynomial in the derivative.

**Final Answer:**
$$\boxed{\text{Order} = 1,\ \text{Degree} = 2}$$
</details>

---

### Question 3
Find the order and degree of:
$$\frac{d^3y}{dx^3} + x\left(\frac{dy}{dx}\right)^2 = 0$$

<details>
<summary>Solution</summary>

**Step 1: Highest derivative.**
$\dfrac{d^3y}{dx^3}$ is present $\Rightarrow$ **order = 3**.

**Step 2: Power of highest derivative.**
The term $\dfrac{d^3y}{dx^3}$ appears to power 1. The fractional/higher power on $\dfrac{dy}{dx}$ (a *lower*-order derivative) does not affect degree.

**Final Answer:**
$$\boxed{\text{Order} = 3,\ \text{Degree} = 1}$$
</details>

---

### Question 4
Find the order and degree of:
$$\sqrt{1+\left(\frac{dy}{dx}\right)^2} = \frac{d^2y}{dx^2}$$

<details>
<summary>Solution</summary>

**Step 1: Identify highest derivative.**
$\dfrac{d^2y}{dx^2}$ is the highest order term $\Rightarrow$ **order = 2**. But it is not yet free of radicals as a *whole equation*, so we must rationalize before reading degree.

**Step 2: Remove the radical.**
Square both sides:
$$1+\left(\frac{dy}{dx}\right)^2 = \left(\frac{d^2y}{dx^2}\right)^2$$

**Step 3: Read off the degree.**
Now the equation is a polynomial in derivatives, and the highest derivative $\dfrac{d^2y}{dx^2}$ appears to power 2.

**Final Answer:**
$$\boxed{\text{Order} = 2,\ \text{Degree} = 2}$$
</details>

---

### Question 5
Find the order and degree of:
$$\frac{d^3y}{dx^3} + \left(\frac{d^2y}{dx^2}\right)^2 + \left(\frac{dy}{dx}\right)^{1/3} = 0$$

<details>
<summary>Solution</summary>

**Step 1: Highest derivative.**
$\dfrac{d^3y}{dx^3}$ is present $\Rightarrow$ **order = 3**.

**Step 2: Power of highest derivative.**
$\dfrac{d^3y}{dx^3}$ appears to power 1. The fractional power $1/3$ belongs to $\dfrac{dy}{dx}$, a lower order term, so it does **not** affect the degree of the equation.

**Final Answer:**
$$\boxed{\text{Order} = 3,\ \text{Degree} = 1}$$
</details>

---

### Question 6
Discuss the order and degree of:
$$e^{\frac{d^2y}{dx^2}} = \frac{dy}{dx} + x$$

<details>
<summary>Solution</summary>

**Step 1: Highest derivative.**
$\dfrac{d^2y}{dx^2}$ is the highest derivative $\Rightarrow$ **order = 2**.

**Step 2: Attempt to find degree.**
The highest order derivative sits **inside an exponential function**. There is no algebraic manipulation (squaring, cubing, etc.) that can turn $e^{y''}$ into a finite polynomial power of $y''$ — logarithms would be needed, which is not permitted for a polynomial form.

**Step 3: Conclusion.**
Since the equation cannot be expressed as a polynomial in derivatives, the **degree is not defined**.

**Final Answer:**
$$\boxed{\text{Order} = 2,\ \text{Degree} = \text{Not defined}}$$
</details>

---

### Question 7
Find the order and degree of the radius of curvature type equation:
$$\frac{d^2y}{dx^2}\, R = \left[1+\left(\frac{dy}{dx}\right)^2\right]^{3/2}$$

<details>
<summary>Solution</summary>

**Step 1: Highest derivative.**
$\dfrac{d^2y}{dx^2}$ is highest $\Rightarrow$ **order = 2**. The RHS has a fractional power $3/2$, but it is on a lower order term ($dy/dx$), while the LHS derivative $\dfrac{d^2y}{dx^2}$ itself is not under a radical. However, since the whole equation mixes fractional powers, the safest exam practice is to rationalize fully.

**Step 2: Remove the radical (square both sides).**
$$\left(\frac{d^2y}{dx^2}\right)^2 R^2 = \left[1+\left(\frac{dy}{dx}\right)^2\right]^{3}$$

**Step 3: Read off order and degree.**
The highest order derivative $\dfrac{d^2y}{dx^2}$ now appears to power 2, and the whole expression is polynomial in derivatives.

**Final Answer:**
$$\boxed{\text{Order} = 2,\ \text{Degree} = 2}$$
</details>

---

### Question 8
A student writes Clairaut's equation as:
$$y = x\frac{dy}{dx} + f\left(\frac{dy}{dx}\right)$$
State its order and degree, and explain why this form is significant in exams.

<details>
<summary>Solution</summary>

**Step 1: Highest derivative.**
Only $\dfrac{dy}{dx}$ appears $\Rightarrow$ **order = 1**.

**Step 2: Power of highest derivative.**
$\dfrac{dy}{dx}$ appears to the first power inside $f(\cdot)$ and multiplied by $x$ — as long as $f$ itself, when expanded, keeps $dy/dx$ to integer powers, the degree equals the highest power of $dy/dx$ occurring after expansion. In the *general symbolic* form (degree of $f$ unspecified), it is conventionally quoted as **degree 1** because the defining feature of Clairaut's form is linearity in $x$ and $dy/dx$ outside of $f$.

**Step 3: Significance.**
This form is important because its general solution is obtained simply by replacing $dy/dx$ with an arbitrary constant $c$: $y = cx + f(c)$, and it also possesses a **singular solution** obtained by eliminating $c$ between $y=cx+f(c)$ and $0 = x+f'(c)$.

**Final Answer:**
$$\boxed{\text{Order} = 1,\ \text{Degree} = 1 \text{ (in the standard symbolic form)}}$$
</details>

---

### Question 9
Find the order and degree of:
$$\sqrt{\frac{d^3y}{dx^3}} + \left(\frac{d^2y}{dx^2}\right)^2 = x$$

<details>
<summary>Solution</summary>

**Step 1: Highest derivative.**
$\dfrac{d^3y}{dx^3}$ is highest $\Rightarrow$ **order = 3**. It sits under a radical, so we must rationalize.

**Step 2: Isolate and remove the radical.**
$$\sqrt{\frac{d^3y}{dx^3}} = x - \left(\frac{d^2y}{dx^2}\right)^2$$
Square both sides:
$$\frac{d^3y}{dx^3} = \left[x - \left(\frac{d^2y}{dx^2}\right)^2\right]^2$$

**Step 3: Read off the degree.**
After rationalizing, $\dfrac{d^3y}{dx^3}$ appears to the power 1.

**Final Answer:**
$$\boxed{\text{Order} = 3,\ \text{Degree} = 1}$$
</details>

---

### Question 10
Find the order and degree of:
$$\left[1+\left(\frac{dy}{dx}\right)^2\right]^{3/2} = k\,\frac{d^2y}{dx^2}$$
(This is the curvature formula used to derive circles of curvature.)

<details>
<summary>Solution</summary>

**Step 1: Highest derivative.**
$\dfrac{d^2y}{dx^2}$ is the highest order derivative $\Rightarrow$ **order = 2**. It is not under a radical, but the LHS has a fractional power on a lower-order term combined across the whole equation — rationalizing is still the safe approach since the equation as a whole is not yet a clean polynomial.

**Step 2: Remove the radical.**
Square both sides:
$$\left[1+\left(\frac{dy}{dx}\right)^2\right]^{3} = k^2\left(\frac{d^2y}{dx^2}\right)^2$$

**Step 3: Read off order and degree.**
$\dfrac{d^2y}{dx^2}$ appears to power 2.

**Final Answer:**
$$\boxed{\text{Order} = 2,\ \text{Degree} = 2}$$
</details>

---

## Exam Tips

- Always check whether the highest-order derivative is trapped inside a radical, fraction, or transcendental function **before** declaring the degree.
- If a radical or fractional power sits on the highest derivative, **raise the whole equation to the appropriate power first**.
- If the highest derivative is inside $\sin$, $\cos$, $\tan$, $e^{(\cdot)}$, or $\ln$, immediately answer "degree not defined."
- Order is always easy — just count the highest derivative. Degree needs care.
- Fractional powers on **lower**-order derivatives never affect the degree.

---

## Self-Test

1. Find the order and degree of $\dfrac{d^2y}{dx^2} + \left(\dfrac{dy}{dx}\right)^3 = \sin x$.
2. Find the order and degree of $\left(\dfrac{d^2y}{dx^2}\right)^{2/3} = \dfrac{dy}{dx} + x^2$.
3. Determine the order and degree of $\log\left(\dfrac{dy}{dx}\right) = x + y$.
4. Find the order and degree of $\dfrac{d^4y}{dx^4} + x\dfrac{d^2y}{dx^2} = 0$.
5. Find the order and degree of $\left(\dfrac{d^2y}{dx^2}\right)^2 = \left[1+\left(\dfrac{dy}{dx}\right)^3\right]$.

---

# Chapter 2 — Differential Equation of First Order and First Degree

## Quick Revision

- **Standard form**: $\dfrac{dy}{dx} = f(x,y)$ or $M(x,y)\,dx + N(x,y)\,dy = 0$.
- **Variables Separable**: if the equation can be rearranged into $f(x)\,dx = g(y)\,dy$, integrate both sides directly.
- **Reducible to variables separable**: when $\dfrac{dy}{dx} = f(ax+by+c)$, substitute $v = ax+by+c$, giving $\dfrac{dv}{dx} = a + b\dfrac{dy}{dx}$, which converts the equation into a separable one in $v$ and $x$.
- **Equations of the type** $\dfrac{dy}{dx} = \dfrac{a_1x+b_1y+c_1}{a_2x+b_2y+c_2}$:
  - If $\dfrac{a_1}{a_2} \ne \dfrac{b_1}{b_2}$: shift origin using $x = X+h,\ y = Y+k$ where $(h,k)$ solves $a_1h+b_1k+c_1=0,\ a_2h+b_2k+c_2=0$; the equation becomes homogeneous in $X,Y$.
  - If $\dfrac{a_1}{a_2} = \dfrac{b_1}{b_2}$: substitute $v = a_2x+b_2y$ directly.
- **Orthogonal trajectories**: family $F(x,y,c)=0$ has orthogonal family obtained by replacing $dy/dx \to -dx/dy$ in the differential equation of the family, then solving the new (usually separable) equation.
- **Common tricks**: multiply/divide to isolate $dy$ and $dx$ on separate sides; use $\ln|\cdot|$ carefully and combine constants at the end.

**Common mistakes**
- Forgetting the $+C$ (or losing it while combining logarithms).
- Sign errors when substituting $dy/dx = (dv/dx - a)/b$.
- Not checking whether $\dfrac{a_1}{a_2}=\dfrac{b_1}{b_2}$ before choosing the substitution method.
- Dividing by an expression that could be zero without noting the singular solution.

**Recognition tips**
- If $x$'s and $y$'s can be algebraically separated after simple rearrangement → variables separable.
- If the RHS is a function of a *linear combination* $ax+by+c$ only → substitute $v=ax+by+c$.
- If RHS is a ratio of two linear expressions in $x,y$ that are **not** proportional → shift origin, reduces to homogeneous (see Chapter 3).

---

## Practice Questions

### Question 1
Solve: $\dfrac{dy}{dx} = \dfrac{x^2}{y}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Variables are already separable.

**Step 2: Separate variables.**
$$y\,dy = x^2\,dx$$

**Step 3: Integrate.**
$$\int y\,dy = \int x^2\,dx \implies \frac{y^2}{2} = \frac{x^3}{3} + C_1$$

**Step 4: Simplify.**
$$y^2 = \frac{2x^3}{3} + C,\quad C = 2C_1$$

**Final Answer:**
$$\boxed{y^2 = \frac{2x^3}{3} + C}$$
</details>

---

### Question 2
Solve: $\dfrac{dy}{dx} = \dfrac{1+y^2}{1+x^2}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Variables separable.

**Step 2: Separate.**
$$\frac{dy}{1+y^2} = \frac{dx}{1+x^2}$$

**Step 3: Integrate (standard formula $\int \frac{du}{1+u^2} = \arctan u$).**
$$\arctan y = \arctan x + C$$

**Final Answer:**
$$\boxed{\arctan y = \arctan x + C}$$
</details>

---

### Question 3
Solve: $\dfrac{dy}{dx} = e^{x-y}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Rewrite as $e^{-y}\cdot$ derivative — separable.

**Step 2: Separate.**
$$e^{y}\,dy = e^{x}\,dx$$

**Step 3: Integrate.**
$$e^{y} = e^{x} + C$$

**Final Answer:**
$$\boxed{e^{y} = e^{x} + C}$$
</details>

---

### Question 4
Solve: $(x+y+1)\dfrac{dy}{dx} = 1$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** RHS depends on $dy/dx$ multiplied by a linear combination $x+y+1$ — reducible to separable.

**Step 2: Substitution.**
Let $v = x+y+1 \Rightarrow \dfrac{dv}{dx} = 1+\dfrac{dy}{dx} \Rightarrow \dfrac{dy}{dx} = \dfrac{dv}{dx}-1$.

**Step 3: Substitute into the equation.**
$$v\left(\frac{dv}{dx}-1\right) = 1 \implies v\frac{dv}{dx} = 1+v \implies \frac{dv}{dx} = \frac{1+v}{v}$$

**Step 4: Separate and integrate.**
$$\frac{v}{1+v}\,dv = dx \implies \int\left(1 - \frac{1}{1+v}\right)dv = \int dx$$
$$v - \ln|1+v| = x + C$$

**Step 5: Back-substitute $v = x+y+1$.**
$$(x+y+1) - \ln|x+y+2| = x + C$$
$$y+1-\ln|x+y+2| = C$$

**Final Answer:**
$$\boxed{y + 1 - \ln|x+y+2| = C}$$
</details>

---

### Question 5
Solve: $\dfrac{dy}{dx} = \sin(x+y)$.

<details>
<summary>Solution</summary>

**Step 1: Substitution.**
Let $v = x+y \Rightarrow \dfrac{dv}{dx} = 1 + \dfrac{dy}{dx} \Rightarrow \dfrac{dy}{dx} = \dfrac{dv}{dx} - 1$.

**Step 2: Substitute.**
$$\frac{dv}{dx} - 1 = \sin v \implies \frac{dv}{dx} = 1+\sin v$$

**Step 3: Separate.**
$$\frac{dv}{1+\sin v} = dx$$
Multiply numerator and denominator by $(1-\sin v)$:
$$\frac{(1-\sin v)}{1-\sin^2 v}\,dv = \frac{(1-\sin v)}{\cos^2 v}\,dv = (\sec^2 v - \sec v\tan v)\,dv$$

**Step 4: Integrate.**
$$\int(\sec^2v - \sec v\tan v)\,dv = \int dx \implies \tan v - \sec v = x + C$$

**Step 5: Back-substitute $v=x+y$.**
$$\tan(x+y) - \sec(x+y) = x + C$$

**Final Answer:**
$$\boxed{\tan(x+y) - \sec(x+y) = x + C}$$
</details>

---

### Question 6
Solve: $xy(1+x^2)\dfrac{dy}{dx} = 1+y^2$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Rearranging gives a separable equation in $x,y$.

**Step 2: Separate.**
$$\frac{y}{1+y^2}\,dy = \frac{dx}{x(1+x^2)}$$

**Step 3: Integrate LHS.**
$$\int\frac{y}{1+y^2}\,dy = \frac{1}{2}\ln(1+y^2)$$

**Step 4: Integrate RHS using partial fractions.**
$$\frac{1}{x(1+x^2)} = \frac{1}{x} - \frac{x}{1+x^2}$$
$$\int\left(\frac{1}{x}-\frac{x}{1+x^2}\right)dx = \ln|x| - \frac{1}{2}\ln(1+x^2)$$

**Step 5: Combine.**
$$\frac{1}{2}\ln(1+y^2) = \ln|x| - \frac{1}{2}\ln(1+x^2) + C_1$$
Multiply by 2:
$$\ln(1+y^2) + \ln(1+x^2) = 2\ln|x| + C$$
$$\ln\big[(1+y^2)(1+x^2)\big] = \ln x^2 + C$$
$$(1+y^2)(1+x^2) = C_1 x^2$$

**Final Answer:**
$$\boxed{(1+x^2)(1+y^2) = C x^2}$$
</details>

---

### Question 7
Solve $\dfrac{dy}{dx} = \dfrac{x+y-3}{x-y-1}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Ratio of two non-proportional linear expressions $\left(\dfrac{1}{1} \ne \dfrac{1}{-1}\right)$ — shift the origin.

**Step 2: Find $(h,k)$.**
Solve simultaneously:
$$h+k-3=0,\qquad h-k-1=0$$
Adding: $2h-4=0 \Rightarrow h=2$; then $k = 1$.

**Step 3: Substitute $x=X+2,\ y=Y+1$.**
$$\frac{dY}{dX} = \frac{X+Y}{X-Y}$$
This is now homogeneous.

**Step 4: Substitute $Y=vX$.**
$$v + X\frac{dv}{dX} = \frac{1+v}{1-v} \implies X\frac{dv}{dX} = \frac{1+v}{1-v}-v = \frac{1+v^2}{1-v}$$

**Step 5: Separate.**
$$\frac{1-v}{1+v^2}\,dv = \frac{dX}{X}$$
$$\int\frac{1}{1+v^2}\,dv - \int\frac{v}{1+v^2}\,dv = \int\frac{dX}{X}$$
$$\arctan v - \frac{1}{2}\ln(1+v^2) = \ln|X| + C$$

**Step 6: Simplify.**
$$\arctan v = \ln|X| + \frac{1}{2}\ln(1+v^2) + C = \frac{1}{2}\ln\big[X^2(1+v^2)\big] + C = \frac{1}{2}\ln(X^2+Y^2) + C$$

**Step 7: Back-substitute $v = Y/X$, $X=x-2$, $Y=y-1$.**
$$\arctan\left(\frac{y-1}{x-2}\right) = \frac{1}{2}\ln\big[(x-2)^2+(y-1)^2\big] + C$$

**Final Answer:**
$$\boxed{\arctan\left(\frac{y-1}{x-2}\right) = \frac{1}{2}\ln\big[(x-2)^2+(y-1)^2\big] + C}$$
</details>

---

### Question 8 (Application)
A body at $100^\circ\text{C}$ is placed in surroundings kept at $25^\circ\text{C}$. After $5$ minutes the temperature is $60^\circ\text{C}$. Using Newton's Law of Cooling, $\dfrac{dT}{dt} = -k(T-T_s)$, find the time taken to cool to $30^\circ\text{C}$.

<details>
<summary>Solution</summary>

**Step 1: Set up the separable equation.**
$$\frac{dT}{T-25} = -k\,dt$$

**Step 2: Integrate.**
$$\ln|T-25| = -kt + C \implies T - 25 = Ae^{-kt}$$

**Step 3: Apply initial condition $T(0)=100$.**
$$100-25 = 75 = A \implies T = 25+75e^{-kt}$$

**Step 4: Apply $T(5)=60$ to find $k$.**
$$60-25 = 35 = 75e^{-5k} \implies e^{-5k} = \frac{35}{75}=\frac{7}{15}$$
$$k = \frac{1}{5}\ln\frac{15}{7} \approx \frac{1}{5}(0.7621) \approx 0.1524\ \text{min}^{-1}$$

**Step 5: Find time to reach $T=30$.**
$$30-25 = 5 = 75e^{-kt} \implies e^{-kt} = \frac{1}{15}$$
$$-kt = \ln\frac{1}{15} = -2.708 \implies t = \frac{2.708}{0.1524} \approx 17.8\ \text{minutes}$$

**Final Answer:**
$$\boxed{T(t) = 25+75e^{-kt},\quad k=\tfrac{1}{5}\ln\tfrac{15}{7},\quad t \approx 17.8\text{ minutes to reach }30^\circ\text{C}}$$
</details>

---

### Question 9 (Application — Orthogonal Trajectories)
Find the orthogonal trajectories of the family of parabolas $y = Cx^2$.

<details>
<summary>Solution</summary>

**Step 1: Find the differential equation of the family.**
Differentiate $y=Cx^2$: $\dfrac{dy}{dx}=2Cx$. Eliminate $C$ using $C=y/x^2$:
$$\frac{dy}{dx} = \frac{2y}{x}$$

**Step 2: Form the orthogonal trajectory equation.**
Replace $\dfrac{dy}{dx}$ with $-\dfrac{dx}{dy}$ (equivalently invert and negate the slope):
$$\frac{dy}{dx} = -\frac{x}{2y}$$

**Step 3: Separate and integrate.**
$$2y\,dy = -x\,dx \implies \int 2y\,dy = -\int x\,dx$$
$$y^2 = -\frac{x^2}{2} + C_1$$

**Step 4: Simplify.**
$$\frac{x^2}{2} + y^2 = C_1 \implies x^2+2y^2 = C$$

**Final Answer:**
$$\boxed{x^2+2y^2 = C \quad \text{(a family of ellipses)}}$$
</details>

---

### Question 10
Solve: $\dfrac{dy}{dx} = \tan^2(x+y)$.

<details>
<summary>Solution</summary>

**Step 1: Substitution.**
Let $v=x+y \Rightarrow \dfrac{dv}{dx} = 1+\dfrac{dy}{dx}$.

**Step 2: Substitute.**
$$\frac{dv}{dx} - 1 = \tan^2 v \implies \frac{dv}{dx} = 1+\tan^2 v = \sec^2 v$$

**Step 3: Separate and integrate.**
$$\cos^2 v\,dv = dx \implies \int\frac{1+\cos2v}{2}\,dv = \int dx$$
$$\frac{v}{2} + \frac{\sin2v}{4} = x + C$$

**Step 4: Back-substitute $v=x+y$.**
$$\frac{x+y}{2} + \frac{\sin\big(2(x+y)\big)}{4} = x+C$$
Simplify:
$$\frac{y-x}{2} + \frac{\sin\big(2(x+y)\big)}{4} = C$$

**Final Answer:**
$$\boxed{\frac{y-x}{2} + \frac{1}{4}\sin\big(2(x+y)\big) = C}$$
</details>

---

## Exam Tips

- Always test simple algebraic separability first — it is the fastest method.
- For $f(ax+by+c)$ forms, immediately set $v=ax+by+c$; never try to separate $x,y$ directly.
- For linear-fraction RHS, check the ratio of coefficients **before** choosing between "shift origin" and "direct substitution $v=a_2x+b_2y$."
- In application problems (cooling, growth), always write the general solution first, then apply conditions **in the order given**.
- For orthogonal trajectories: derive the DE of the family, then replace $dy/dx \to -dx/dy$.

---

## Self-Test

1. Solve $\dfrac{dy}{dx} = \dfrac{y}{x}\ln\dfrac{y}{x}$ *(hint: not separable directly — treat with care or recognize as homogeneous, covered in Chapter 3).*
2. Solve $\dfrac{dy}{dx} = \cos(x+y)$.
3. Solve $(2x+3y-1)\,dx + (4x+6y-5)\,dy = 0$ *(check the coefficient ratio first)*.
4. Find the orthogonal trajectories of the family $x^2+y^2=C^2$.
5. A radioactive substance decays according to $\dfrac{dN}{dt}=-\lambda N$. If half the substance decays in $10$ years, find $\lambda$ and the fraction remaining after $30$ years.

---

# Chapter 3 — Homogeneous Differential Equation

## Quick Revision

- A function $f(x,y)$ is **homogeneous of degree $n$** if $f(\lambda x,\lambda y) = \lambda^n f(x,y)$.
- A first order DE $M\,dx+N\,dy=0$ is **homogeneous** if $M$ and $N$ are homogeneous of the **same** degree; equivalently $\dfrac{dy}{dx}$ can be written as a function of $\dfrac{y}{x}$ alone: $\dfrac{dy}{dx} = f\!\left(\dfrac{y}{x}\right)$.
- **Method**: substitute $y = vx$, so $\dfrac{dy}{dx} = v + x\dfrac{dv}{dx}$. This always converts a homogeneous equation into a **separable** equation in $v$ and $x$.
- If the equation is more naturally a function of $x/y$, substitute $x = vy$ instead: $\dfrac{dx}{dy} = v+y\dfrac{dv}{dy}$.

**Common mistakes**
- Forgetting the product rule when writing $\dfrac{d(vx)}{dx} = v + x\dfrac{dv}{dx}$.
- Not checking that **both** $M$ and $N$ are homogeneous of the *same* degree before applying the method.
- Losing constant multiples when converting back from $v$ to $y/x$.
- Sign errors in partial fraction decomposition during the separation step.

**Recognition tips**
- Every term in $M$ and $N$ has the **same total degree** in $x,y$.
- $dy/dx$ can be written purely as a function of the ratio $y/x$ — no isolated $x$ or $y$ survives.

---

## Practice Questions

### Question 1
Solve: $(x^2+y^2)\,dx - 2xy\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** $M=x^2+y^2$, $N=-2xy$, both homogeneous of degree 2 $\Rightarrow$ homogeneous equation.

**Step 2: Rewrite and substitute $y=vx$.**
$$\frac{dy}{dx} = \frac{x^2+y^2}{2xy} = \frac{1+v^2}{2v},\qquad \frac{dy}{dx}=v+x\frac{dv}{dx}$$

**Step 3: Substitute and simplify.**
$$v+x\frac{dv}{dx} = \frac{1+v^2}{2v} \implies x\frac{dv}{dx} = \frac{1+v^2}{2v}-v = \frac{1-v^2}{2v}$$

**Step 4: Separate and integrate.**
$$\frac{2v}{1-v^2}\,dv = \frac{dx}{x} \implies -\ln|1-v^2| = \ln|x| + C_1$$

**Step 5: Simplify.**
$$\ln\left|\frac{1}{x(1-v^2)}\right| = C_1 \implies x(1-v^2) = C$$

**Step 6: Back-substitute $v=y/x$.**
$$x\left(1-\frac{y^2}{x^2}\right) = C \implies x - \frac{y^2}{x} = C \implies x^2-y^2 = Cx$$

**Final Answer:**
$$\boxed{x^2-y^2 = Cx}$$
</details>

---

### Question 2
Solve: $\dfrac{dy}{dx} = \dfrac{y}{x} + \tan\dfrac{y}{x}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** RHS is a function of $y/x$ only — homogeneous.

**Step 2: Substitute $y=vx$.**
$$v + x\frac{dv}{dx} = v + \tan v \implies x\frac{dv}{dx} = \tan v$$

**Step 3: Separate and integrate.**
$$\cot v\,dv = \frac{dx}{x} \implies \int\cot v\,dv = \int\frac{dx}{x}$$
$$\ln|\sin v| = \ln|x| + C_1 \implies \sin v = Cx$$

**Step 4: Back-substitute $v=y/x$.**

**Final Answer:**
$$\boxed{\sin\left(\frac{y}{x}\right) = Cx}$$
</details>

---

### Question 3
Solve: $(x-y)\,dx + x\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** $M=x-y$, $N=x$, both homogeneous of degree 1.

**Step 2: Rewrite.**
$$\frac{dy}{dx} = \frac{y-x}{x} = \frac{y}{x}-1$$

**Step 3: Substitute $y=vx$.**
$$v+x\frac{dv}{dx} = v-1 \implies x\frac{dv}{dx}=-1$$

**Step 4: Separate and integrate.**
$$dv = -\frac{dx}{x} \implies v = -\ln|x|+C$$

**Step 5: Back-substitute.**
$$\frac{y}{x} = C-\ln|x|$$

**Final Answer:**
$$\boxed{y = x\left(C-\ln|x|\right)}$$
</details>

---

### Question 4
Solve: $(x^2-y^2)\,dx + 2xy\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Both terms homogeneous degree 2.

**Step 2: Rewrite and substitute $y=vx$.**
$$\frac{dy}{dx} = \frac{y^2-x^2}{2xy} = \frac{v^2-1}{2v}$$

**Step 3: Substitute.**
$$v+x\frac{dv}{dx} = \frac{v^2-1}{2v} \implies x\frac{dv}{dx} = \frac{v^2-1}{2v}-v = \frac{-1-v^2}{2v}$$

**Step 4: Separate and integrate.**
$$\frac{2v}{1+v^2}\,dv = -\frac{dx}{x} \implies \ln(1+v^2) = -\ln|x| + C_1$$
$$\ln\big[x(1+v^2)\big] = C_1 \implies x(1+v^2) = C$$

**Step 5: Back-substitute $v=y/x$.**
$$x + \frac{y^2}{x} = C \implies x^2+y^2 = Cx$$

**Final Answer:**
$$\boxed{x^2+y^2 = Cx}$$
</details>

---

### Question 5 (IVP)
Solve $\dfrac{dy}{dx} = \dfrac{x^2+3y^2}{2xy}$ subject to $y(1)=1$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Homogeneous of degree 2 in numerator and denominator.

**Step 2: Substitute $y=vx$.**
$$v+x\frac{dv}{dx} = \frac{1+3v^2}{2v} \implies x\frac{dv}{dx} = \frac{1+3v^2}{2v}-v = \frac{1+v^2}{2v}$$

**Step 3: Separate and integrate.**
$$\frac{2v}{1+v^2}\,dv = \frac{dx}{x} \implies \ln(1+v^2) = \ln|x| + C_1 \implies 1+v^2 = Cx$$

**Step 4: Back-substitute $v=y/x$.**
$$1+\frac{y^2}{x^2} = Cx \implies x^2+y^2 = Cx^3$$

**Step 5: Apply IVP $x=1,y=1$.**
$$1+1 = C(1) \implies C=2$$

**Final Answer:**
$$\boxed{x^2+y^2 = 2x^3}$$
</details>

---

### Question 6
Solve: $\dfrac{dy}{dx} = \dfrac{2x-y}{x+4y}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Homogeneous of degree 1 (ratio of linear forms, no constants).

**Step 2: Substitute $y=vx$.**
$$v+x\frac{dv}{dx} = \frac{2-v}{1+4v} \implies x\frac{dv}{dx} = \frac{2-v}{1+4v}-v = \frac{2-2v-4v^2}{1+4v}$$

**Step 3: Factor.**
$$2-2v-4v^2 = -2(2v^2+v-1) = -2(2v-1)(v+1)$$
$$x\frac{dv}{dx} = \frac{-2(2v-1)(v+1)}{1+4v}$$

**Step 4: Separate.**
$$\frac{1+4v}{(2v-1)(v+1)}\,dv = -\frac{2\,dx}{x}$$

**Step 5: Partial fractions.**
$$\frac{1+4v}{(2v-1)(v+1)} = \frac{A}{2v-1}+\frac{B}{v+1}$$
$$1+4v = A(v+1)+B(2v-1)$$
At $v=\tfrac12$: $3 = \tfrac32 A \Rightarrow A=2$. At $v=-1$: $-3=-3B \Rightarrow B=1$.

**Step 6: Integrate.**
$$\int\left(\frac{2}{2v-1}+\frac{1}{v+1}\right)dv = \ln|2v-1| + \ln|v+1| = \ln\big|(2v-1)(v+1)\big|$$
$$\ln\big|(2v-1)(v+1)\big| = -2\ln|x| + C_1 \implies (2v-1)(v+1)x^2 = C$$

**Step 7: Back-substitute $v=y/x$.**
$$\left(\frac{2y}{x}-1\right)\left(\frac{y}{x}+1\right)x^2 = C \implies (2y-x)(y+x) = C$$

**Final Answer:**
$$\boxed{(2y-x)(x+y) = C}$$
</details>

---

### Question 7 (Hard — a "trap" homogeneous equation)
Solve: $(x^2y-2y^3)\,dx - (x^3-2xy^2)\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** $M=x^2y-2y^3$, $N=-(x^3-2xy^2)$, both homogeneous degree 3.

**Step 2: Divide through by $x^3$ and substitute $y=vx$ (so $y/x=v$).**
$$\frac{dy}{dx} = \frac{x^2y-2y^3}{x^3-2xy^2} = \frac{v-2v^3}{1-2v^2}$$

**Step 3: Substitute $\dfrac{dy}{dx}=v+x\dfrac{dv}{dx}$.**
$$v+x\frac{dv}{dx} = \frac{v-2v^3}{1-2v^2}$$
$$x\frac{dv}{dx} = \frac{v-2v^3}{1-2v^2} - v = \frac{v-2v^3-v(1-2v^2)}{1-2v^2} = \frac{v-2v^3-v+2v^3}{1-2v^2} = \frac{0}{1-2v^2}=0$$

**Step 4: Interpret the result.**
$x\dfrac{dv}{dx}=0$ for $x\ne0$ forces $\dfrac{dv}{dx}=0$, i.e. $v$ is **constant**.

**Step 5: Conclusion.**
$$v = \frac{y}{x} = C$$

**Final Answer:**
$$\boxed{y = Cx \quad\text{(a family of straight lines through the origin)}}$$

*Exam note:* not every homogeneous equation gives a complicated implicit curve — always simplify fully; here the RHS collapses to zero, showing the family of solutions is simply straight lines.
</details>

---

### Question 8 (Hard)
Solve: $y^2\,dx + (xy+x^2)\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** $M=y^2$, $N=xy+x^2$, both homogeneous degree 2.

**Step 2: Rewrite and substitute $y=vx$.**
$$\frac{dy}{dx} = \frac{-y^2}{xy+x^2} = \frac{-v^2}{v+1}$$

**Step 3: Substitute $v+x\dfrac{dv}{dx}$.**
$$v+x\frac{dv}{dx} = \frac{-v^2}{v+1} \implies x\frac{dv}{dx} = \frac{-v^2}{v+1}-v = \frac{-v^2-v(v+1)}{v+1} = \frac{-2v^2-v}{v+1} = \frac{-v(2v+1)}{v+1}$$

**Step 4: Separate.**
$$\frac{v+1}{v(2v+1)}\,dv = -\frac{dx}{x}$$

**Step 5: Partial fractions.**
$$\frac{v+1}{v(2v+1)} = \frac{A}{v}+\frac{B}{2v+1}$$
$$v+1 = A(2v+1)+Bv$$
At $v=0$: $1=A$. At $v=-\tfrac12$: $\tfrac12 = -\tfrac12 B \Rightarrow B=-1$.

**Step 6: Integrate.**
$$\int\left(\frac{1}{v}-\frac{1}{2v+1}\right)dv = \ln|v| - \frac12\ln|2v+1|$$
$$\ln|v| - \frac12\ln|2v+1| = -\ln|x|+C_1$$
Multiply by 2:
$$2\ln|v| - \ln|2v+1| = -2\ln|x| + C_2 \implies \ln\left(\frac{v^2}{2v+1}\right) = \ln\left(\frac{C_3}{x^2}\right)$$
$$\frac{v^2x^2}{2v+1} = C_3$$

**Step 7: Back-substitute $v=y/x$: $v^2x^2 = y^2$, $2v+1 = \dfrac{2y+x}{x}$.**
$$\frac{y^2}{\left(\dfrac{2y+x}{x}\right)} = C_3 \implies \frac{xy^2}{2y+x} = C_3$$

**Final Answer:**
$$\boxed{xy^2 = C(x+2y)}$$
</details>

---

### Question 9 (Hard, IVP)
Solve $(x^2+y^2)\dfrac{dy}{dx} = 2xy$ subject to $y(1) = 2$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Homogeneous of degree 2.

**Step 2: Rewrite and substitute $y=vx$.**
$$\frac{dy}{dx} = \frac{2xy}{x^2+y^2} = \frac{2v}{1+v^2}$$
$$v+x\frac{dv}{dx} = \frac{2v}{1+v^2} \implies x\frac{dv}{dx} = \frac{2v}{1+v^2}-v = \frac{2v-v-v^3}{1+v^2} = \frac{v-v^3}{1+v^2} = \frac{v(1-v^2)}{1+v^2}$$

**Step 3: Separate.**
$$\frac{1+v^2}{v(1-v^2)}\,dv = \frac{dx}{x}$$

**Step 4: Partial fractions.**
$$\frac{1+v^2}{v(1-v)(1+v)} = \frac{A}{v}+\frac{B}{1-v}+\frac{C}{1+v}$$
$$1+v^2 = A(1-v^2) + Bv(1+v) + Cv(1-v)$$
At $v=0$: $A=1$. At $v=1$: $2=2B\Rightarrow B=1$. At $v=-1$: $2=-2C\Rightarrow C=-1$.

**Step 5: Integrate.**
$$\int\left(\frac1v+\frac{1}{1-v}-\frac{1}{1+v}\right)dv = \ln|v| - \ln|1-v| - \ln|1+v| = \ln\left|\frac{v}{1-v^2}\right|$$
$$\ln\left|\frac{v}{1-v^2}\right| = \ln|x|+C_1 \implies \frac{v}{1-v^2}=Cx$$

**Step 6: Back-substitute $v=y/x$.**
$$\frac{y/x}{1-y^2/x^2} = Cx \implies \frac{xy}{x^2-y^2} = Cx \implies \frac{y}{x^2-y^2}=C \implies y = C(x^2-y^2)$$

**Step 7: Apply IVP $x=1,y=2$.**
$$2 = C(1-4) = -3C \implies C = -\frac{2}{3}$$

**Step 8: Substitute back.**
$$y = -\frac{2}{3}(x^2-y^2) \implies 3y = -2x^2+2y^2 \implies 2y^2-3y-2x^2 = 0$$

**Final Answer:**
$$\boxed{2y^2-3y-2x^2=0}$$
</details>

---

### Question 10
Solve: $\dfrac{dy}{dx} = \dfrac{y}{x} + \dfrac{x}{y}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** RHS is a function of $y/x$ (and its reciprocal) — homogeneous.

**Step 2: Substitute $y=vx$.**
$$v+x\frac{dv}{dx} = v+\frac{1}{v} \implies x\frac{dv}{dx} = \frac{1}{v}$$

**Step 3: Separate and integrate.**
$$v\,dv = \frac{dx}{x} \implies \frac{v^2}{2} = \ln|x| + C_1$$

**Step 4: Back-substitute $v=y/x$.**
$$\frac{y^2}{2x^2} = \ln|x| + C_1 \implies y^2 = 2x^2\ln|x| + Cx^2$$

**Final Answer:**
$$\boxed{y^2 = x^2\big(2\ln|x| + C\big)}$$
</details>

---

## Exam Tips

- Always confirm **both** $M$ and $N$ have the same degree before committing to $y=vx$.
- Choose $y=vx$ if the equation naturally simplifies in $y/x$; choose $x=vy$ if it simplifies better in $x/y$ (e.g., when $x$ appears with higher net power).
- Watch for equations that **collapse to $v=$ constant** (straight-line solutions) — always simplify the RHS fully before separating.
- After integrating, always convert back to $x,y$ — never leave the final answer in terms of $v$.
- Partial fractions are extremely common in this chapter — practice decomposition speed.

---

## Self-Test

1. Solve $(x^2+y^2)\,dx - xy\,dy = 0$.
2. Solve $\dfrac{dy}{dx} = \dfrac{y-x}{y+x}$.
3. Solve $x\,dy - y\,dx = \sqrt{x^2+y^2}\,dx$.
4. Solve $\dfrac{dy}{dx} = \dfrac{x^2+xy+y^2}{x^2}$.
5. Solve $(x^3+y^3)\,dy = x^2y\,dx$, given $y(1)=1$.

---

# Chapter 4 — Linear Differential Equation

## Quick Revision

- **Standard form**: $\dfrac{dy}{dx} + Py = Q$, where $P,Q$ are functions of $x$ only (or the analogous form $\dfrac{dx}{dy}+Px = Q$ with $P,Q$ functions of $y$).
- **Integrating Factor (IF)**: $\text{IF} = e^{\int P\,dx}$.
- **General solution**:
$$y \cdot \text{IF} = \int Q\cdot \text{IF}\,dx + C$$
- The IF works because $\dfrac{d}{dx}(y\cdot\text{IF}) = \text{IF}\left(\dfrac{dy}{dx}+Py\right) = \text{IF}\cdot Q$.

**Common mistakes**
- Forgetting to divide the whole equation by the coefficient of $dy/dx$ before reading off $P$ and $Q$.
- Errors in $\int P\,dx$, especially with $\cot x$, $\tan x$, or $1/x$ terms (remember $\int\cot x\,dx=\ln|\sin x|$, $\int\tan x\,dx = -\ln|\cos x|=\ln|\sec x|$).
- Forgetting integration by parts is often needed for $\int Q\cdot\text{IF}\,dx$.
- Losing the constant of integration.

**Recognition tips**
- The equation is linear in $y$ and $dy/dx$ — no powers of $y$ higher than 1, and no products like $y\cdot dy/dx$.
- If a power of $y$ appears on the RHS multiplying $P$, it's likely **Bernoulli** (Chapter 5), not linear.

---

## Practice Questions

### Question 1
Solve: $\dfrac{dy}{dx} + y = e^{x}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Linear, $P=1$, $Q=e^x$.

**Step 2: Integrating factor.**
$$\text{IF} = e^{\int 1\,dx} = e^{x}$$

**Step 3: Apply the formula.**
$$(y e^{x})' = e^{x}\cdot e^{x} = e^{2x}$$

**Step 4: Integrate.**
$$y e^{x} = \frac{e^{2x}}{2} + C$$

**Step 5: Solve for $y$.**
$$y = \frac{e^{x}}{2} + Ce^{-x}$$

**Final Answer:**
$$\boxed{y = \frac{e^{x}}{2} + Ce^{-x}}$$
</details>

---

### Question 2
Solve: $\dfrac{dy}{dx} + \dfrac{y}{x} = x^2$ ($x>0$).

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Linear, $P=1/x$, $Q=x^2$.

**Step 2: Integrating factor.**
$$\text{IF} = e^{\int \frac{1}{x}dx} = e^{\ln x} = x$$

**Step 3: Apply formula.**
$$(xy)' = x\cdot x^2 = x^3$$

**Step 4: Integrate.**
$$xy = \frac{x^4}{4} + C$$

**Step 5: Solve for $y$.**
$$y = \frac{x^3}{4} + \frac{C}{x}$$

**Final Answer:**
$$\boxed{y = \frac{x^3}{4}+\frac{C}{x}}$$
</details>

---

### Question 3
Solve: $\dfrac{dy}{dx} + 2y = 4x$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Linear, $P=2$, $Q=4x$.

**Step 2: Integrating factor.**
$$\text{IF} = e^{2x}$$

**Step 3: Apply formula.**
$$(ye^{2x})' = 4xe^{2x}$$

**Step 4: Integrate by parts** ($u=4x,\ dv=e^{2x}dx \Rightarrow v=\tfrac12 e^{2x}$).
$$\int 4xe^{2x}dx = 4\left(\frac{x e^{2x}}{2}-\int\frac{e^{2x}}{2}dx\right) = 2xe^{2x} - e^{2x}+C$$

**Step 5: Solve for $y$.**
$$ye^{2x} = 2xe^{2x}-e^{2x}+C \implies y = 2x-1+Ce^{-2x}$$

**Final Answer:**
$$\boxed{y = 2x-1+Ce^{-2x}}$$
</details>

---

### Question 4
Solve: $\dfrac{dy}{dx} + y\tan x = \sec x$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Linear, $P=\tan x$, $Q=\sec x$.

**Step 2: Integrating factor.**
$$\text{IF} = e^{\int \tan x\,dx} = e^{\ln|\sec x|} = \sec x$$

**Step 3: Apply formula.**
$$(y\sec x)' = \sec x\cdot\sec x = \sec^2 x$$

**Step 4: Integrate.**
$$y\sec x = \tan x + C$$

**Step 5: Solve for $y$.**
$$y = \sin x + C\cos x$$

**Final Answer:**
$$\boxed{y = \sin x + C\cos x}$$
</details>

---

### Question 5
Solve: $x\dfrac{dy}{dx} + 2y = x^2\ln x$ ($x>0$).

<details>
<summary>Solution</summary>

**Step 1: Rewrite in standard form.**
$$\frac{dy}{dx} + \frac{2y}{x} = x\ln x,\qquad P=\frac{2}{x},\ Q = x\ln x$$

**Step 2: Integrating factor.**
$$\text{IF} = e^{\int \frac{2}{x}dx} = e^{2\ln x} = x^2$$

**Step 3: Apply formula.**
$$(x^2y)' = x^2\cdot x\ln x = x^3\ln x$$

**Step 4: Integrate by parts** ($u=\ln x,\ dv=x^3dx \Rightarrow v=x^4/4$).
$$\int x^3\ln x\,dx = \frac{x^4}{4}\ln x - \int \frac{x^4}{4}\cdot\frac1x\,dx = \frac{x^4}{4}\ln x - \frac{x^4}{16}+C$$

**Step 5: Solve for $y$.**
$$x^2 y = \frac{x^4}{4}\ln x - \frac{x^4}{16}+C \implies y = \frac{x^2}{4}\ln x - \frac{x^2}{16}+\frac{C}{x^2}$$

**Final Answer:**
$$\boxed{y = \frac{x^2}{4}\ln x - \frac{x^2}{16} + \frac{C}{x^2}}$$
</details>

---

### Question 6 (IVP)
Solve $\dfrac{dy}{dx} + y = x$ with $y(0)=1$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Linear, $P=1$, $Q=x$.

**Step 2: Integrating factor.**
$$\text{IF} = e^{x}$$

**Step 3: Apply formula.**
$$(ye^x)' = xe^x$$

**Step 4: Integrate by parts.**
$$\int xe^x\,dx = xe^x - e^x + C$$
$$ye^x = xe^x-e^x+C \implies y = x-1+Ce^{-x}$$

**Step 5: Apply IVP $x=0,y=1$.**
$$1 = -1+C \implies C=2$$

**Final Answer:**
$$\boxed{y = x-1+2e^{-x}}$$
</details>

---

### Question 7
Solve: $\dfrac{dy}{dx} + y\cot x = 2\cos x$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Linear, $P=\cot x$, $Q=2\cos x$.

**Step 2: Integrating factor.**
$$\text{IF} = e^{\int \cot x\,dx} = e^{\ln|\sin x|} = \sin x$$

**Step 3: Apply formula.**
$$(y\sin x)' = 2\cos x\sin x = \sin 2x$$

**Step 4: Integrate.**
$$y\sin x = -\frac{\cos 2x}{2} + C$$

**Step 5: Simplify using $\cos 2x = 1-2\sin^2x$.**
$$-\frac{\cos2x}{2} = -\frac{1}{2}+\sin^2x$$
$$y\sin x = \sin^2 x + C' \qquad (C' = C-\tfrac12)$$
$$y = \sin x + \frac{C'}{\sin x}$$

**Final Answer:**
$$\boxed{y = \sin x + C\csc x}$$
</details>

---

### Question 8 (Application — RL Circuit)
An RL circuit satisfies $L\dfrac{di}{dt}+Ri = E$ with $i(0)=0$, where $L,R,E$ are constants. Find $i(t)$.

<details>
<summary>Solution</summary>

**Step 1: Rewrite in standard linear form.**
$$\frac{di}{dt} + \frac{R}{L}i = \frac{E}{L}, \qquad P=\frac{R}{L},\ Q=\frac{E}{L}$$

**Step 2: Integrating factor.**
$$\text{IF} = e^{\frac{R}{L}t}$$

**Step 3: Apply formula.**
$$\left(i\,e^{\frac{R}{L}t}\right)' = \frac{E}{L}e^{\frac{R}{L}t}$$

**Step 4: Integrate.**
$$i\,e^{\frac{R}{L}t} = \frac{E}{L}\cdot\frac{L}{R}e^{\frac{R}{L}t} + C = \frac{E}{R}e^{\frac{R}{L}t}+C$$
$$i = \frac{E}{R} + Ce^{-\frac{R}{L}t}$$

**Step 5: Apply $i(0)=0$.**
$$0 = \frac{E}{R}+C \implies C = -\frac{E}{R}$$

**Final Answer:**
$$\boxed{i(t) = \frac{E}{R}\left(1-e^{-\frac{R}{L}t}\right)}$$
</details>

---

### Question 9 (Hard)
Solve: $\cos^2x\dfrac{dy}{dx} + y = \tan x$.

<details>
<summary>Solution</summary>

**Step 1: Rewrite in standard form.**
$$\frac{dy}{dx} + y\sec^2x = \tan x\sec^2x,\qquad P = \sec^2x,\ Q=\tan x\sec^2x$$

**Step 2: Integrating factor.**
$$\text{IF} = e^{\int \sec^2x\,dx} = e^{\tan x}$$

**Step 3: Apply formula.**
$$\left(y e^{\tan x}\right)' = \tan x\sec^2x\, e^{\tan x}$$

**Step 4: Substitute $u=\tan x$, $du=\sec^2x\,dx$.**
$$\int u e^{u}\,du = ue^{u}-e^{u}+C = e^{u}(u-1)+C$$

**Step 5: Back-substitute $u=\tan x$.**
$$ye^{\tan x} = e^{\tan x}(\tan x - 1)+C$$
$$y = \tan x - 1 + Ce^{-\tan x}$$

**Final Answer:**
$$\boxed{y = \tan x - 1 + Ce^{-\tan x}}$$
</details>

---

### Question 10 (Hard)
Solve: $x\ln x\,\dfrac{dy}{dx} + y = 2\ln x$ ($x>1$).

<details>
<summary>Solution</summary>

**Step 1: Rewrite in standard form.**
$$\frac{dy}{dx} + \frac{y}{x\ln x} = \frac{2}{x},\qquad P = \frac{1}{x\ln x},\ Q=\frac{2}{x}$$

**Step 2: Integrating factor.**
$$\int P\,dx = \int \frac{dx}{x\ln x}$$
Let $u=\ln x,\ du=dx/x$: $\int \frac{du}{u} = \ln|u| = \ln(\ln x)$.
$$\text{IF} = e^{\ln(\ln x)} = \ln x$$

**Step 3: Apply formula.**
$$(y\ln x)' = \frac{2}{x}\ln x$$

**Step 4: Integrate** (let $u=\ln x$, $du=dx/x$):
$$\int \frac{2\ln x}{x}\,dx = \int 2u\,du = u^2+C = (\ln x)^2 + C$$

**Step 5: Solve for $y$.**
$$y\ln x = (\ln x)^2 + C \implies y = \ln x + \frac{C}{\ln x}$$

**Final Answer:**
$$\boxed{y = \ln x + \frac{C}{\ln x}}$$
</details>

---

## Exam Tips

- Always convert to the standard form $\dfrac{dy}{dx}+Py=Q$ (coefficient of $dy/dx$ must be $1$) **before** reading off $P$.
- Memorize: $\int\tan x\,dx=\ln|\sec x|$, $\int\cot x\,dx=\ln|\sin x|$, $\int \frac{dx}{x}=\ln|x|$ — these generate the most common integrating factors.
- After finding IF, the LHS is **always** $\dfrac{d}{dx}(y\cdot\text{IF})$ — never re-derive this, just apply it directly.
- Integration by parts (LIATE rule) is frequently needed for $\int Q\cdot\text{IF}\,dx$.
- In application problems, always convert to standard form first, then match constants like $R/L$ or $k$ to $P$.

---

## Self-Test

1. Solve $\dfrac{dy}{dx} + \dfrac{2y}{x} = \dfrac{\cos x}{x^2}$.
2. Solve $(1+x^2)\dfrac{dy}{dx} + 2xy = 4x^2$.
3. Solve $\dfrac{dy}{dx} - y\tan x = e^{x}\sec x$.
4. Solve $\dfrac{dy}{dx} + y = \sin x$, given $y(0)=0$.
5. Solve $\dfrac{dy}{dx} + \dfrac{y}{x\ln x} = \dfrac{1}{x}$.

---

# Chapter 5 — Bernoulli Equation

## Quick Revision

- **Standard form**: $\dfrac{dy}{dx} + Py = Qy^{n}$, where $P,Q$ are functions of $x$ and $n\ne 0,1$.
- **Method**: divide throughout by $y^{n}$:
$$y^{-n}\frac{dy}{dx} + Py^{1-n} = Q$$
Substitute $v = y^{1-n}$, so $\dfrac{dv}{dx} = (1-n)y^{-n}\dfrac{dy}{dx}$, i.e. $y^{-n}\dfrac{dy}{dx} = \dfrac{1}{1-n}\dfrac{dv}{dx}$.
- This reduces the equation to a **linear** equation in $v$:
$$\frac{dv}{dx} + (1-n)Pv = (1-n)Q$$
which is solved using the integrating factor method of Chapter 4.
- Finally, back-substitute $v = y^{1-n}$.

**Common mistakes**
- Forgetting to divide **every** term by $y^n$, including the $Py$ term.
- Sign or factor errors when converting $y^{-n}dy/dx$ into $\dfrac{1}{1-n}\dfrac{dv}{dx}$.
- Forgetting to invert back from $v$ to $y$ at the end.
- Misidentifying $n$ (it is the power of $y$ on the RHS, not the whole equation).

**Recognition tips**
- Linear in $y$ **except** for one term where $y$ (or a power of $y$) multiplies $Q(x)$.
- If $n=0$, it is already linear (Chapter 4); if $n=1$, it is separable.

---

## Practice Questions

### Question 1
Solve: $\dfrac{dy}{dx} + \dfrac{y}{x} = xy^{2}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Bernoulli with $n=2$.

**Step 2: Divide by $y^2$.**
$$y^{-2}\frac{dy}{dx} + \frac{y^{-1}}{x} = x$$

**Step 3: Substitute $v=y^{-1}$, $\dfrac{dv}{dx}=-y^{-2}\dfrac{dy}{dx}$.**
$$-\frac{dv}{dx} + \frac{v}{x} = x \implies \frac{dv}{dx} - \frac{v}{x} = -x$$

**Step 4: Solve the linear equation. IF** $= e^{-\int \frac{1}{x}dx} = \dfrac1x$.
$$\left(\frac{v}{x}\right)' = -x\cdot\frac1x = -1$$
$$\frac{v}{x} = -x + C \implies v = Cx - x^2$$

**Step 5: Back-substitute $v=1/y$.**
$$\frac{1}{y} = Cx - x^2$$

**Final Answer:**
$$\boxed{y = \frac{1}{Cx-x^2}}$$
</details>

---

### Question 2
Solve: $\dfrac{dy}{dx} - y = xy^{3}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Bernoulli, $n=3$.

**Step 2: Divide by $y^3$.**
$$y^{-3}\frac{dy}{dx} - y^{-2} = x$$

**Step 3: Substitute $v=y^{-2}$, $\dfrac{dv}{dx}=-2y^{-3}\dfrac{dy}{dx}$, so $y^{-3}\dfrac{dy}{dx} = -\dfrac12\dfrac{dv}{dx}$.**
$$-\frac12\frac{dv}{dx} - v = x \implies \frac{dv}{dx}+2v = -2x$$

**Step 4: Solve the linear equation. IF** $= e^{2x}$.
$$(ve^{2x})' = -2xe^{2x}$$
Integrate by parts:
$$\int -2xe^{2x}\,dx = -2\left(\frac{xe^{2x}}{2}-\int \frac{e^{2x}}{2}dx\right) = -xe^{2x}+\frac{e^{2x}}{2}+C$$
$$ve^{2x} = -xe^{2x}+\frac{e^{2x}}{2}+C \implies v = -x+\frac12+Ce^{-2x}$$

**Step 5: Back-substitute $v=y^{-2}$.**

**Final Answer:**
$$\boxed{\frac{1}{y^2} = \frac12 - x + Ce^{-2x}}$$
</details>

---

### Question 3
Solve: $\dfrac{dy}{dx} + y = y^{2}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Bernoulli, $n=2$.

**Step 2: Divide by $y^2$.**
$$y^{-2}\frac{dy}{dx} + y^{-1} = 1$$

**Step 3: Substitute $v=y^{-1}$, $\dfrac{dv}{dx}=-y^{-2}\dfrac{dy}{dx}$.**
$$-\frac{dv}{dx}+v = 1 \implies \frac{dv}{dx} - v = -1$$

**Step 4: Solve. IF** $=e^{-x}$.
$$(ve^{-x})' = -e^{-x}$$
$$ve^{-x} = e^{-x}+C \implies v = 1+Ce^{x}$$

**Step 5: Back-substitute $v=1/y$.**
$$\frac1y = 1+Ce^{x}$$

**Final Answer:**
$$\boxed{y = \frac{1}{1+Ce^{x}}}$$
</details>

---

### Question 4
Solve: $x\dfrac{dy}{dx} + y = x^{3}y^{3}$.

<details>
<summary>Solution</summary>

**Step 1: Rewrite in standard Bernoulli form.**
$$\frac{dy}{dx} + \frac{y}{x} = x^2 y^3, \qquad n=3$$

**Step 2: Divide by $y^3$.**
$$y^{-3}\frac{dy}{dx} + \frac{y^{-2}}{x} = x^2$$

**Step 3: Substitute $v=y^{-2}$, $\dfrac{dv}{dx}=-2y^{-3}\dfrac{dy}{dx}$.**
$$-\frac12\frac{dv}{dx} + \frac{v}{x} = x^2 \implies \frac{dv}{dx} - \frac{2v}{x} = -2x^2$$

**Step 4: Solve. IF** $= e^{-2\int \frac{dx}{x}} = x^{-2}$.
$$(vx^{-2})' = -2x^2\cdot x^{-2} = -2$$
$$vx^{-2} = -2x+C \implies v = -2x^3+Cx^2$$

**Step 5: Back-substitute $v=y^{-2}$.**

**Final Answer:**
$$\boxed{\frac{1}{y^2} = Cx^2 - 2x^3}$$
</details>

---

### Question 5
Solve: $\dfrac{dy}{dx} + y = xy^{1/2}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Bernoulli, $n=1/2$.

**Step 2: Divide by $y^{1/2}$.**
$$y^{-1/2}\frac{dy}{dx} + y^{1/2} = x$$

**Step 3: Substitute $v=y^{1/2}$, $\dfrac{dv}{dx}=\dfrac12y^{-1/2}\dfrac{dy}{dx}$, so $y^{-1/2}\dfrac{dy}{dx}=2\dfrac{dv}{dx}$.**
$$2\frac{dv}{dx} + v = x \implies \frac{dv}{dx} + \frac{v}{2} = \frac{x}{2}$$

**Step 4: Solve. IF** $= e^{x/2}$.
$$(ve^{x/2})' = \frac{x}{2}e^{x/2}$$
Integrate by parts ($u=x/2$, $dv=e^{x/2}dx \Rightarrow v_{part}=2e^{x/2}$):
$$\int \frac{x}{2}e^{x/2}dx = xe^{x/2} - \int e^{x/2}dx = xe^{x/2}-2e^{x/2}+C$$
$$ve^{x/2} = xe^{x/2}-2e^{x/2}+C \implies v = x-2+Ce^{-x/2}$$

**Step 5: Back-substitute $v=y^{1/2}$.**
$$\sqrt{y} = x-2+Ce^{-x/2}$$

**Final Answer:**
$$\boxed{y = \left(x-2+Ce^{-x/2}\right)^{2}}$$
</details>

---

### Question 6 (IVP)
Solve $\dfrac{dy}{dx} + \dfrac{y}{x} = x^2y^2$ subject to $y(1)=1$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Bernoulli, $n=2$.

**Step 2: Divide by $y^2$.**
$$y^{-2}\frac{dy}{dx} + \frac{y^{-1}}{x} = x^2$$

**Step 3: Substitute $v=y^{-1}$.**
$$-\frac{dv}{dx} + \frac{v}{x} = x^2 \implies \frac{dv}{dx} - \frac{v}{x} = -x^2$$

**Step 4: Solve. IF** $= \dfrac1x$.
$$\left(\frac{v}{x}\right)' = -x^2\cdot \frac1x = -x$$
$$\frac{v}{x} = -\frac{x^2}{2}+C \implies v = -\frac{x^3}{2}+Cx$$

**Step 5: Apply IVP $x=1,y=1 \Rightarrow v=1$.**
$$1 = -\frac12+C \implies C = \frac32$$
$$v = -\frac{x^3}{2}+\frac{3x}{2} = \frac{3x-x^3}{2}$$

**Step 6: Back-substitute $v=1/y$.**

**Final Answer:**
$$\boxed{y = \frac{2}{3x-x^3}}$$
</details>

---

### Question 7
Solve: $\dfrac{dy}{dx} + y\cot x = y^{3}\sin^{3}x$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** Bernoulli, $n=3$.

**Step 2: Divide by $y^3$.**
$$y^{-3}\frac{dy}{dx} + y^{-2}\cot x = \sin^3x$$

**Step 3: Substitute $v=y^{-2}$, $y^{-3}\dfrac{dy}{dx} = -\dfrac12\dfrac{dv}{dx}$.**
$$-\frac12\frac{dv}{dx} + v\cot x = \sin^3x \implies \frac{dv}{dx} - 2v\cot x = -2\sin^3x$$

**Step 4: Solve. IF** $= e^{-2\int \cot x\,dx} = e^{-2\ln|\sin x|} = \csc^2x$.
$$(v\csc^2x)' = -2\sin^3x\csc^2x = -2\sin x$$
$$v\csc^2x = 2\cos x + C$$
$$v = \sin^2x(2\cos x + C)$$

**Step 5: Back-substitute $v=y^{-2}$.**

**Final Answer:**
$$\boxed{\frac{1}{y^2} = \sin^2x\,(2\cos x + C)}$$
</details>

---

### Question 8 (Hard — Application, Logistic Growth)
A population satisfies the logistic equation $\dfrac{dP}{dt} = kP\left(1-\dfrac{P}{M}\right)$, $P(0)=P_0$. Find $P(t)$.

<details>
<summary>Solution</summary>

**Step 1: Rewrite as Bernoulli.**
$$\frac{dP}{dt} - kP = -\frac{k}{M}P^2, \qquad n=2$$

**Step 2: Divide by $P^2$.**
$$P^{-2}\frac{dP}{dt} - kP^{-1} = -\frac{k}{M}$$

**Step 3: Substitute $v=P^{-1}$, $\dfrac{dv}{dt}=-P^{-2}\dfrac{dP}{dt}$.**
$$-\frac{dv}{dt} - kv = -\frac{k}{M} \implies \frac{dv}{dt} + kv = \frac{k}{M}$$

**Step 4: Solve. IF** $=e^{kt}$.
$$\left(ve^{kt}\right)' = \frac{k}{M}e^{kt}$$
$$ve^{kt} = \frac{1}{M}e^{kt}+C \implies v = \frac{1}{M}+Ce^{-kt}$$

**Step 5: Apply IC $t=0,\ P=P_0 \Rightarrow v=1/P_0$.**
$$\frac{1}{P_0} = \frac{1}{M}+C \implies C = \frac{1}{P_0}-\frac{1}{M}$$

**Step 6: Back-substitute $v=1/P$ and simplify.**
$$\frac{1}{P} = \frac{1}{M} + \left(\frac{1}{P_0}-\frac{1}{M}\right)e^{-kt}$$

**Final Answer:**
$$\boxed{P(t) = \dfrac{M}{1+\left(\dfrac{M}{P_0}-1\right)e^{-kt}}}$$
</details>

---

### Question 9 (Hard)
Solve: $\dfrac{dy}{dx} - \dfrac{y}{x} = \dfrac{x}{y}$.

<details>
<summary>Solution</summary>

**Step 1: Identify type.** RHS has $y^{-1}$, so this is Bernoulli with $n=-1$.

**Step 2: Multiply through by $y$ (equivalent to dividing by $y^{-1}$).**
$$y\frac{dy}{dx} - \frac{y^2}{x} = x$$

**Step 3: Substitute $v=y^2$, $\dfrac{dv}{dx}=2y\dfrac{dy}{dx}$, so $y\dfrac{dy}{dx}=\dfrac12\dfrac{dv}{dx}$.**
$$\frac12\frac{dv}{dx} - \frac{v}{x} = x \implies \frac{dv}{dx} - \frac{2v}{x} = 2x$$

**Step 4: Solve. IF** $= e^{-2\int \frac{dx}{x}} = x^{-2}$.
$$(vx^{-2})' = 2x\cdot x^{-2} = \frac{2}{x}$$
$$vx^{-2} = 2\ln|x| + C \implies v = x^2(2\ln|x|+C)$$

**Step 5: Back-substitute $v=y^2$.**

**Final Answer:**
$$\boxed{y^2 = x^2\left(2\ln|x| + C\right)}$$
</details>

---

### Question 10 (Hard)
Solve: $3\dfrac{dy}{dx} + y = (x-1)y^{4}$.

<details>
<summary>Solution</summary>

**Step 1: Rewrite in standard Bernoulli form.**
$$\frac{dy}{dx} + \frac{y}{3} = \frac{(x-1)}{3}y^4, \qquad n=4$$

**Step 2: Divide by $y^4$.**
$$y^{-4}\frac{dy}{dx} + \frac{y^{-3}}{3} = \frac{x-1}{3}$$

**Step 3: Substitute $v=y^{-3}$, $\dfrac{dv}{dx}=-3y^{-4}\dfrac{dy}{dx}$, so $y^{-4}\dfrac{dy}{dx}=-\dfrac13\dfrac{dv}{dx}$.**
$$-\frac13\frac{dv}{dx} + \frac{v}{3} = \frac{x-1}{3}$$
Multiply through by $-3$:
$$\frac{dv}{dx} - v = 1-x$$

**Step 4: Solve. IF** $= e^{-x}$.
$$(ve^{-x})' = (1-x)e^{-x}$$

**Step 5: Integrate the RHS.**
$$\int(1-x)e^{-x}dx = \int e^{-x}dx - \int xe^{-x}dx$$
$$\int e^{-x}dx = -e^{-x};\qquad \int xe^{-x}dx = -xe^{-x}-e^{-x}$$
$$\int(1-x)e^{-x}dx = -e^{-x} - (-xe^{-x}-e^{-x}) = xe^{-x}$$

**Step 6: Integrate and solve for $v$.**
$$ve^{-x} = xe^{-x} + C \implies v = x + Ce^{x}$$

**Step 7: Back-substitute $v=y^{-3}$.**

**Final Answer:**
$$\boxed{\frac{1}{y^3} = x + Ce^{x}}$$
</details>

---

## Exam Tips

- Identify $n$ first — it is the power of $y$ multiplying $Q(x)$ on the RHS.
- Divide **every single term** by $y^n$, including the middle $Py$ term.
- Remember the sign: $\dfrac{dv}{dx} = (1-n)y^{-n}\dfrac{dy}{dx}$, so isolating $y^{-n}dy/dx$ introduces a factor of $\dfrac{1}{1-n}$.
- After finding $v(x)$, always convert back using $v=y^{1-n}$ — a very common mark-losing mistake is stopping at $v$.
- Logistic growth ($n=2$) and similar application problems are common exam favorites — memorize the pattern.

---

## Self-Test

1. Solve $\dfrac{dy}{dx} + y = e^{x}y^{2}$.
2. Solve $x^2\dfrac{dy}{dx} + y^2 = xy$ *(rewrite first to standard Bernoulli form)*.
3. Solve $\dfrac{dy}{dx} - \dfrac{2y}{x} = x^2y^{1/2}$.
4. Solve $\dfrac{dy}{dx} + y\tan x = y^3\sec x$.
5. Solve $\dfrac{dy}{dx} + \dfrac{y}{x}\ln x = \dfrac{y^2}{x}$, given $y(1)=2$.

---

# Chapter 6 — Exact Differential Equation

## Quick Revision

- A DE $M(x,y)\,dx + N(x,y)\,dy = 0$ is **exact** if
$$\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$$
- **Solution method**: find $F(x,y)$ such that $\dfrac{\partial F}{\partial x}=M$ and $\dfrac{\partial F}{\partial y}=N$.
$$F(x,y) = \int M\,dx\ (\text{treating } y \text{ as constant}) + g(y)$$
then differentiate w.r.t. $y$, match to $N$, and solve for $g(y)$.
- Alternative shortcut (**grouping method**): regroup terms of $M\,dx+N\,dy$ into recognizable exact differentials, e.g. $y\,dx+x\,dy=d(xy)$, $2x\,dx=d(x^2)$, etc.
- **Integrating factors for non-exact equations**:
  - If $\dfrac{1}{N}\left(\dfrac{\partial M}{\partial y}-\dfrac{\partial N}{\partial x}\right) = f(x)$ (function of $x$ alone), then $\text{IF}=e^{\int f(x)\,dx}$.
  - If $\dfrac{1}{M}\left(\dfrac{\partial N}{\partial x}-\dfrac{\partial M}{\partial y}\right) = g(y)$ (function of $y$ alone), then $\text{IF}=e^{\int g(y)\,dy}$.
- Final solution is always written as $F(x,y) = C$.

**Common mistakes**
- Forgetting the "constant of integration" $g(y)$ (a function of $y$, not a true constant) when integrating $M$ with respect to $x$.
- Including terms from $N$ that already appeared in $\int M\,dx$ when finding $g(y)$ — only integrate the *leftover* part of $N$.
- Sign errors when testing $\partial M/\partial y$ vs $\partial N/\partial x$.
- Applying the wrong integrating factor formula (mixing up the $x$-only and $y$-only tests).

**Recognition tips**
- Compute $\partial M/\partial y$ and $\partial N/\partial x$ quickly — if equal, exact.
- If not exact, check $(M_y-N_x)/N$ for $x$-dependence first; if it fails, check $(N_x-M_y)/M$ for $y$-dependence.
- Terms like $y\,dx+x\,dy$, $y^2dx+2xy\,dy$, and similar symmetric pairs often hint at a grouping shortcut.

---

## Practice Questions

### Question 1
Solve: $(2x+y)\,dx + (x+2y)\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Test exactness.**
$M=2x+y \Rightarrow M_y=1$. $N=x+2y \Rightarrow N_x=1$. Equal $\Rightarrow$ exact.

**Step 2: Integrate $M$ w.r.t. $x$.**
$$F = \int(2x+y)\,dx = x^2+xy+g(y)$$

**Step 3: Differentiate w.r.t. $y$ and match to $N$.**
$$F_y = x+g'(y) = N = x+2y \implies g'(y)=2y \implies g(y)=y^2$$

**Step 4: Write final implicit solution.**

**Final Answer:**
$$\boxed{x^2+xy+y^2 = C}$$
</details>

---

### Question 2
Solve: $(3x^2+2xy)\,dx + (x^2+2y)\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Test exactness.**
$M_y = 2x$; $N_x = 2x$. Equal $\Rightarrow$ exact.

**Step 2: Integrate $M$ w.r.t. $x$.**
$$F = \int (3x^2+2xy)\,dx = x^3+x^2y+g(y)$$

**Step 3: Match to $N$.**
$$F_y = x^2+g'(y) = x^2+2y \implies g'(y)=2y \implies g(y)=y^2$$

**Final Answer:**
$$\boxed{x^3+x^2y+y^2 = C}$$
</details>

---

### Question 3
Solve: $(y\cos x + 2xe^{y})\,dx + (\sin x + x^2e^{y}-1)\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Test exactness.**
$M_y = \cos x + 2xe^{y}$; $N_x = \cos x + 2xe^{y}$. Equal $\Rightarrow$ exact.

**Step 2: Integrate $M$ w.r.t. $x$.**
$$F = \int(y\cos x+2xe^{y})\,dx = y\sin x + x^2e^{y}+g(y)$$

**Step 3: Match to $N$.**
$$F_y = \sin x + x^2e^{y}+g'(y) = \sin x+x^2e^{y}-1 \implies g'(y)=-1 \implies g(y)=-y$$

**Final Answer:**
$$\boxed{y\sin x + x^2e^{y} - y = C}$$
</details>

---

### Question 4
Solve: $(2xy+3)\,dx + (x^2-1)\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Test exactness.**
$M_y = 2x$; $N_x=2x$. Equal $\Rightarrow$ exact.

**Step 2: Integrate $M$ w.r.t. $x$.**
$$F = \int(2xy+3)\,dx = x^2y+3x+g(y)$$

**Step 3: Match to $N$.**
$$F_y = x^2+g'(y) = x^2-1 \implies g'(y)=-1 \implies g(y)=-y$$

**Final Answer:**
$$\boxed{x^2y+3x-y = C}$$
</details>

---

### Question 5
Solve: $(y^2e^{xy^2}+4x^3)\,dx + (2xye^{xy^2}-3y^2)\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Test exactness.**
$M_y = 2ye^{xy^2}+y^2\cdot e^{xy^2}\cdot 2xy = 2ye^{xy^2}+2xy^3e^{xy^2}$.
$N_x = 2ye^{xy^2}+2xy\cdot e^{xy^2}\cdot y^2 = 2ye^{xy^2}+2xy^3e^{xy^2}$.
Equal $\Rightarrow$ exact.

**Step 2: Integrate $M$ w.r.t. $x$.** (Let $u=xy^2$, treating $y$ constant, $du=y^2dx$.)
$$F = \int(y^2e^{xy^2}+4x^3)\,dx = e^{xy^2}+x^4+g(y)$$

**Step 3: Match to $N$.**
$$F_y = 2xye^{xy^2}+g'(y) = 2xye^{xy^2}-3y^2 \implies g'(y)=-3y^2 \implies g(y)=-y^3$$

**Final Answer:**
$$\boxed{e^{xy^2}+x^4-y^3 = C}$$
</details>

---

### Question 6 (Hard — requires an integrating factor)
Solve: $(x^2+y^2+x)\,dx + xy\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Test exactness.**
$M=x^2+y^2+x \Rightarrow M_y=2y$. $N=xy \Rightarrow N_x=y$. Not equal $\Rightarrow$ not exact.

**Step 2: Test for an $x$-only integrating factor.**
$$\frac{M_y-N_x}{N} = \frac{2y-y}{xy} = \frac{y}{xy} = \frac1x$$
This is a function of $x$ alone $\Rightarrow$ $\text{IF} = e^{\int \frac{1}{x}dx} = x$.

**Step 3: Multiply the equation by $x$.**
$$(x^3+xy^2+x^2)\,dx + x^2y\,dy = 0$$

**Step 4: Verify exactness of the new equation.**
$M=x^3+xy^2+x^2 \Rightarrow M_y = 2xy$. $N=x^2y \Rightarrow N_x=2xy$. Equal $\Rightarrow$ exact.

**Step 5: Integrate $M$ w.r.t. $x$.**
$$F = \int(x^3+xy^2+x^2)\,dx = \frac{x^4}{4}+\frac{x^2y^2}{2}+\frac{x^3}{3}+g(y)$$

**Step 6: Match to $N$.**
$$F_y = x^2y + g'(y) = x^2y \implies g'(y)=0 \implies g(y)=\text{const}$$

**Step 7: Simplify (multiply through by 12 for a cleaner form).**

**Final Answer:**
$$\boxed{3x^4+6x^2y^2+4x^3 = C}$$
</details>

---

### Question 7 (IVP)
Solve $(2x+y\cos x)\,dx + (\sin x - 2y)\,dy = 0$ subject to $y(0)=2$.

<details>
<summary>Solution</summary>

**Step 1: Test exactness.**
$M_y = \cos x$; $N_x=\cos x$. Equal $\Rightarrow$ exact.

**Step 2: Integrate $M$ w.r.t. $x$.**
$$F = \int(2x+y\cos x)\,dx = x^2 + y\sin x + g(y)$$

**Step 3: Match to $N$.**
$$F_y = \sin x + g'(y) = \sin x - 2y \implies g'(y)=-2y \implies g(y)=-y^2$$

**Step 4: General implicit solution.**
$$x^2+y\sin x - y^2 = C$$

**Step 5: Apply IVP $x=0,\ y=2$.**
$$0 + 0 - 4 = C \implies C=-4$$

**Final Answer:**
$$\boxed{x^2+y\sin x - y^2 = -4}$$
</details>

---

### Question 8 (Hard — integrating factor in $y$)
Solve: $(xy^3+y)\,dx + 2(x^2y^2+x+y^4)\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Test exactness.**
$M=xy^3+y \Rightarrow M_y=3xy^2+1$.
$N=2x^2y^2+2x+2y^4 \Rightarrow N_x=4xy^2+2$.
Not equal $\Rightarrow$ not exact.

**Step 2: Test for a $y$-only integrating factor.**
$$\frac{N_x-M_y}{M} = \frac{(4xy^2+2)-(3xy^2+1)}{xy^3+y} = \frac{xy^2+1}{y(xy^2+1)} = \frac{1}{y}$$
Function of $y$ alone $\Rightarrow$ $\text{IF}=e^{\int \frac{dy}{y}} = y$.

**Step 3: Multiply through by $y$.**
$$(xy^4+y^2)\,dx + (2x^2y^3+2xy+2y^5)\,dy = 0$$

**Step 4: Verify exactness.**
$M_y = 4xy^3+2y$; $N_x = 4xy^3+2y$. Equal $\Rightarrow$ exact.

**Step 5: Integrate $M$ w.r.t. $x$.**
$$F = \int(xy^4+y^2)\,dx = \frac{x^2y^4}{2}+xy^2+g(y)$$

**Step 6: Match to $N$.**
$$F_y = 2x^2y^3+2xy+g'(y) = 2x^2y^3+2xy+2y^5 \implies g'(y)=2y^5 \implies g(y)=\frac{y^6}{3}$$

**Step 7: Multiply through by 6 for a clean form.**

**Final Answer:**
$$\boxed{3x^2y^4+6xy^2+2y^6 = C}$$
</details>

---

### Question 9 (Hard)
Solve: $(e^{x}\sin y - 2y\sin x)\,dx + (e^{x}\cos y + 2\cos x)\,dy = 0$.

<details>
<summary>Solution</summary>

**Step 1: Test exactness.**
$M_y = e^{x}\cos y - 2\sin x$; $N_x = e^{x}\cos y - 2\sin x$. Equal $\Rightarrow$ exact.

**Step 2: Integrate $M$ w.r.t. $x$.**
$$F = \int (e^{x}\sin y - 2y\sin x)\,dx = e^{x}\sin y + 2y\cos x + g(y)$$

**Step 3: Match to $N$.**
$$F_y = e^{x}\cos y + 2\cos x + g'(y) = e^{x}\cos y + 2\cos x \implies g'(y)=0$$

**Final Answer:**
$$\boxed{e^{x}\sin y + 2y\cos x = C}$$
</details>

---

### Question 10 (Hard — grouping method)
Solve using the grouping (inspection) method:
$$(y^2\cos x - 3x^2y - 2x)\,dx + (2y\sin x - x^3 + \ln y)\,dy = 0$$

<details>
<summary>Solution</summary>

**Step 1: Test exactness.**
$M_y = 2y\cos x - 3x^2$; $N_x = 2y\cos x - 3x^2$. Equal $\Rightarrow$ exact.

**Step 2: Group terms into recognizable exact differentials.**
$$\underbrace{y^2\cos x\,dx + 2y\sin x\,dy}_{d(y^2\sin x)} + \underbrace{(-3x^2y\,dx - x^3\,dy)}_{d(-x^3y)} + \underbrace{(-2x\,dx)}_{d(-x^2)} + \underbrace{\ln y\,dy}_{d(y\ln y - y)} = 0$$

**Step 3: Verify each grouped term.**
- $d(y^2\sin x) = y^2\cos x\,dx + 2y\sin x\,dy$ ✓
- $d(-x^3y) = -3x^2y\,dx - x^3\,dy$ ✓
- $d(-x^2) = -2x\,dx$ ✓
- $d(y\ln y - y) = \ln y\,dy$ (since $\int \ln y\,dy = y\ln y - y$) ✓

**Step 4: Sum all pieces.**
$$F(x,y) = y^2\sin x - x^3y - x^2 + y\ln y - y$$

**Final Answer:**
$$\boxed{y^2\sin x - x^3y - x^2 + y\ln y - y = C}$$
</details>

---

## Exam Tips

- Always test $M_y \stackrel{?}{=} N_x$ **first** — this takes seconds and tells you whether you need an integrating factor.
- When integrating $M$ w.r.t. $x$, treat $y$ as a constant; the "constant" of integration must be written as $g(y)$, not $C$.
- Only integrate the part of $N$ that was **not already produced** by $\partial/\partial y$ of your $F$ so far — don't double count.
- If not exact, test the $x$-only formula first (usually faster); if that fails, try the $y$-only formula.
- The grouping/inspection method is faster than the formal method when the equation "looks like" a sum of standard exact differentials ($d(xy)$, $d(x^2y)$, $d(y\ln y - y)$, etc.) — practice recognizing common patterns.

---

## Self-Test

1. Solve $(2xy+y^3)\,dx + (x^2+3xy^2)\,dy = 0$.
2. Solve $(y e^{xy}+2x)\,dx + (xe^{xy}-2y)\,dy = 0$.
3. Solve $(3x^2y+2xy)\,dx + (x^3+x^2)\,dy = 0$, testing exactness carefully.
4. Solve $(y^2+2xy)\,dx - x^2\,dy = 0$ using an appropriate integrating factor.
5. Solve $(x+y)\,dx + (x-y)\,dy = 0$, given $y(1)=0$.

---

# Chapter 7 — Higher Linear Differential Equation

## Quick Revision

- **Standard form (constant coefficients)**:
$$a_n\frac{d^ny}{dx^n} + a_{n-1}\frac{d^{n-1}y}{dx^{n-1}} + \cdots + a_1\frac{dy}{dx} + a_0y = R(x)$$
- Using the operator $D \equiv \dfrac{d}{dx}$, write as $f(D)y = R(x)$.
- **General solution** = **Complementary Function (CF)** + **Particular Integral (PI)**.

**Finding the CF** — solve the auxiliary equation $f(m)=0$:
| Roots of auxiliary equation | Contribution to CF |
|---|---|
| Real, distinct $m_1,m_2,\dots$ | $C_1e^{m_1x}+C_2e^{m_2x}+\cdots$ |
| Real, repeated ($m$, multiplicity $k$) | $(C_1+C_2x+\cdots+C_kx^{k-1})e^{mx}$ |
| Complex conjugate $\alpha\pm i\beta$ | $e^{\alpha x}(C_1\cos\beta x + C_2\sin\beta x)$ |

**Finding the PI** — key shortcut rules for $\dfrac{1}{f(D)}R(x)$:
- $R(x)=e^{ax}$: PI $=\dfrac{e^{ax}}{f(a)}$ if $f(a)\ne 0$. If $a$ is a root of multiplicity $r$, PI $= \dfrac{x^{r}e^{ax}}{f^{(r)}(a)}$ (equivalently, apply $D\to D+a$ shift and divide out the repeated factor).
- $R(x)=\sin(ax)$ or $\cos(ax)$: replace $D^2\to -a^2$ wherever possible; if this causes division by zero (resonance), multiply by $x$ and use the standard result $\dfrac{1}{D^2+a^2}\cos ax = \dfrac{x\sin ax}{2a}$, $\dfrac{1}{D^2+a^2}\sin ax = -\dfrac{x\cos ax}{2a}$.
- $R(x)=x^k$ (polynomial): expand $\dfrac{1}{f(D)}$ as an infinite series in ascending powers of $D$ (binomial expansion) and apply term by term, truncating once derivatives vanish.
- **Shifting theorem**: $\dfrac{1}{f(D)}\left(e^{ax}V(x)\right) = e^{ax}\dfrac{1}{f(D+a)}V(x)$ — essential when $R(x)=e^{ax}\cdot(\text{polynomial or trig})$.

**Common mistakes**
- Forgetting resonance (root of auxiliary equation matches the exponent/frequency in $R(x)$) — leads to a wrong, non-independent PI.
- Sign errors when replacing $D^2\to -a^2$.
- Not applying the shifting theorem when $R(x)$ is $e^{ax}$ times a polynomial or trig function.
- Mixing up CF and PI when writing the final general solution.

**Recognition tips**
- Always solve the auxiliary equation **first** — its roots immediately tell you whether resonance will occur with $R(x)$.
- If $R(x)$ is a sum of different types, find the PI for each part separately and add (linearity of $D$).

---

## Practice Questions

### Question 1
Solve: $y'' - 5y' + 6y = 0$.

<details>
<summary>Solution</summary>

**Step 1: Auxiliary equation.**
$$m^2-5m+6=0 \implies (m-2)(m-3)=0 \implies m=2,\ 3$$

**Step 2: Roots are real and distinct — write CF.**

**Final Answer:**
$$\boxed{y = C_1e^{2x}+C_2e^{3x}}$$
</details>

---

### Question 2
Solve: $y'' + 4y = 0$.

<details>
<summary>Solution</summary>

**Step 1: Auxiliary equation.**
$$m^2+4=0 \implies m=\pm 2i$$

**Step 2: Complex conjugate roots $\alpha=0,\ \beta=2$ — write CF.**

**Final Answer:**
$$\boxed{y = C_1\cos 2x + C_2\sin 2x}$$
</details>

---

### Question 3
Solve: $y'' - 4y' + 4y = 0$.

<details>
<summary>Solution</summary>

**Step 1: Auxiliary equation.**
$$m^2-4m+4=0 \implies (m-2)^2=0 \implies m=2,2\ (\text{repeated})$$

**Step 2: Repeated root — CF has an extra factor of $x$.**

**Final Answer:**
$$\boxed{y = (C_1+C_2x)e^{2x}}$$
</details>

---

### Question 4
Solve: $y'' + 3y' + 2y = e^{x}$.

<details>
<summary>Solution</summary>

**Step 1: Auxiliary equation (CF).**
$$m^2+3m+2=0 \implies (m+1)(m+2)=0 \implies m=-1,-2$$
$$\text{CF} = C_1e^{-x}+C_2e^{-2x}$$

**Step 2: Particular Integral.** Since $R(x)=e^{x}$ and $1$ is **not** a root of the auxiliary equation:
$$\text{PI} = \frac{1}{f(D)}e^{x} = \frac{e^{x}}{f(1)} = \frac{e^x}{(1)^2+3(1)+2} = \frac{e^x}{6}$$

**Step 3: Combine.**

**Final Answer:**
$$\boxed{y = C_1e^{-x}+C_2e^{-2x}+\frac{e^{x}}{6}}$$
</details>

---

### Question 5
Solve: $y'' - 2y' + y = x^2$.

<details>
<summary>Solution</summary>

**Step 1: Auxiliary equation (CF).**
$$m^2-2m+1=0 \implies (m-1)^2=0 \implies m=1,1$$
$$\text{CF} = (C_1+C_2x)e^{x}$$

**Step 2: Particular Integral.** $f(D)=(D-1)^2$, and $R(x)=x^2$ (polynomial). Expand $\dfrac{1}{(D-1)^2}$ in ascending powers of $D$:
$$\frac{1}{(D-1)^2} = (1-D)^{-2} = 1+2D+3D^2+\cdots$$

**Step 3: Apply to $x^2$** (higher derivatives beyond $D^2$ vanish since $x^2$ is degree 2):
$$\text{PI} = (1+2D+3D^2)x^2 = x^2 + 2(2x) + 3(2) = x^2+4x+6$$

**Step 4: Combine.**

**Final Answer:**
$$\boxed{y = (C_1+C_2x)e^{x} + x^2+4x+6}$$
</details>

---

### Question 6 (Resonance)
Solve: $y'' + y = \cos x$.

<details>
<summary>Solution</summary>

**Step 1: Auxiliary equation (CF).**
$$m^2+1=0 \implies m=\pm i$$
$$\text{CF} = C_1\cos x+C_2\sin x$$

**Step 2: Particular Integral.** Since $R(x)=\cos x$ and the frequency $a=1$ **matches** the imaginary part of the roots, direct substitution $D^2\to -1$ gives division by zero (resonance). Use the standard resonance formula:
$$\frac{1}{D^2+a^2}\cos(ax) = \frac{x\sin(ax)}{2a}, \qquad a=1$$
$$\text{PI} = \frac{x\sin x}{2}$$

**Step 3: Combine.**

**Final Answer:**
$$\boxed{y = C_1\cos x + C_2\sin x + \frac{x\sin x}{2}}$$
</details>

---

### Question 7 (Resonance with exponential)
Solve: $y'' - 3y' + 2y = e^{2x}$.

<details>
<summary>Solution</summary>

**Step 1: Auxiliary equation (CF).**
$$m^2-3m+2=0 \implies (m-1)(m-2)=0 \implies m=1,2$$
$$\text{CF} = C_1e^{x}+C_2e^{2x}$$

**Step 2: Particular Integral.** Since $R(x)=e^{2x}$ and $a=2$ **is** a (simple) root, direct substitution fails — resonance. Try $y_p = (Ax+B)e^{2x}$ and substitute directly (undetermined coefficients).

**Step 3: Compute derivatives.**
$$y_p = (Ax+B)e^{2x}$$
$$y_p' = e^{2x}[2Ax+(A+2B)]$$
$$y_p'' = e^{2x}[4Ax+(4A+4B)]$$

**Step 4: Substitute into $y''-3y'+2y=e^{2x}$.**
$$e^{2x}\Big\{[4Ax+4A+4B] - 3[2Ax+A+2B] + 2[Ax+B]\Big\} = e^{2x}$$
$$e^{2x}\Big\{(4A-6A+2A)x + (4A+4B-3A-6B+2B)\Big\} = e^{2x}$$
$$e^{2x}\{0\cdot x + (A)\} = e^{2x} \implies A=1$$
(The $B$ terms cancel identically, confirming $B$ is arbitrary and can be absorbed into the CF constant $C_2$; take $B=0$ for the PI.)

**Step 5: Particular solution.**
$$\text{PI} = xe^{2x}$$

**Step 6: Combine.**

**Final Answer:**
$$\boxed{y = C_1e^{x}+C_2e^{2x}+xe^{2x}}$$
</details>

---

### Question 8 (Hard — shifting theorem)
Solve: $y'' + y' - 2y = xe^{x}$.

<details>
<summary>Solution</summary>

**Step 1: Auxiliary equation (CF).**
$$m^2+m-2=0 \implies (m+2)(m-1)=0 \implies m=1,-2$$
$$\text{CF} = C_1e^{x}+C_2e^{-2x}$$

**Step 2: Particular Integral — resonance, since $a=1$ is a root.** Try $y_p = x(Ax+B)e^{x} = (Ax^2+Bx)e^{x}$.

**Step 3: Compute derivatives.**
$$y_p = (Ax^2+Bx)e^{x}$$
$$y_p' = e^{x}\big[Ax^2+(2A+B)x+B\big]$$
$$y_p'' = e^{x}\big[Ax^2+(4A+B)x+(2A+2B)\big]$$

**Step 4: Substitute into $y''+y'-2y=xe^{x}$.**
$$e^{x}\Big\{[Ax^2+(4A+B)x+2A+2B]+[Ax^2+(2A+B)x+B]-2[Ax^2+Bx]\Big\} = xe^{x}$$
Collect powers of $x$:
$$x^2:\ A+A-2A = 0 \quad(\checkmark\text{ automatically satisfied})$$
$$x^1:\ (4A+B)+(2A+B)-2B = 6A$$
$$x^0:\ (2A+2B)+B = 2A+3B$$

**Step 5: Match coefficients to $xe^{x}$ (i.e., coefficient of $x$ is 1, constant term is 0).**
$$6A = 1 \implies A=\frac16$$
$$2A+3B=0 \implies \frac13+3B=0 \implies B=-\frac19$$

**Step 6: Particular solution.**
$$\text{PI} = \left(\frac{x^2}{6}-\frac{x}{9}\right)e^{x}$$

**Step 7: Combine.**

**Final Answer:**
$$\boxed{y = C_1e^{x}+C_2e^{-2x}+\left(\frac{x^2}{6}-\frac{x}{9}\right)e^{x}}$$
</details>

---

### Question 9 (Hard — triple repeated root)
Solve: $y''' - 3y'' + 3y' - y = e^{x}$.

<details>
<summary>Solution</summary>

**Step 1: Auxiliary equation.**
$$m^3-3m^2+3m-1 = (m-1)^3 = 0 \implies m=1,1,1\ (\text{triple root})$$

**Step 2: Complementary Function.**
$$\text{CF} = (C_1+C_2x+C_3x^2)e^{x}$$

**Step 3: Particular Integral.** Since $R(x)=e^{x}$ and $1$ is a root of multiplicity $3$, use:
$$\text{PI} = \frac{x^{3}e^{x}}{3!} = \frac{x^3e^{x}}{6}$$
(This follows from applying the shift $D\to D+1$: $f(D)=(D-1)^3 \Rightarrow f(D+1)=D^3$, and $\dfrac{1}{D^3}(1) = \dfrac{x^3}{6}$, so $\text{PI}=e^{x}\cdot\dfrac{x^3}{6}$.)

**Step 4: Combine.**

**Final Answer:**
$$\boxed{y = \left(C_1+C_2x+C_3x^2+\frac{x^3}{6}\right)e^{x}}$$
</details>

---

### Question 10 (Hard — Application, Damped Oscillation)
Solve the damped vibration equation $y''+4y'+13y=0$ subject to $y(0)=2,\ y'(0)=0$.

<details>
<summary>Solution</summary>

**Step 1: Auxiliary equation.**
$$m^2+4m+13=0$$
$$m = \frac{-4\pm\sqrt{16-52}}{2} = \frac{-4\pm\sqrt{-36}}{2} = -2\pm 3i$$

**Step 2: Complex roots $\alpha=-2,\ \beta=3$ — write general solution.**
$$y = e^{-2x}(C_1\cos 3x + C_2\sin 3x)$$

**Step 3: Apply $y(0)=2$.**
$$y(0) = C_1 = 2$$

**Step 4: Differentiate to apply $y'(0)=0$.**
$$y' = e^{-2x}\Big[-2(C_1\cos3x+C_2\sin3x) + (-3C_1\sin3x+3C_2\cos3x)\Big]$$
At $x=0$:
$$y'(0) = -2C_1+3C_2 = 0 \implies -4+3C_2=0 \implies C_2=\frac{4}{3}$$

**Step 5: Substitute constants.**

**Final Answer:**
$$\boxed{y = e^{-2x}\left(2\cos 3x + \frac{4}{3}\sin 3x\right)}$$

*Physical interpretation: this represents an oscillation of angular frequency $3$ whose amplitude decays exponentially at rate $2$ — a damped vibration.*
</details>

---

## Exam Tips

- Always solve the auxiliary equation first — its roots tell you immediately whether resonance will occur.
- Memorize the three CF cases (distinct real, repeated real, complex conjugate) — the table above is the fastest reference.
- For $e^{ax}$ resonance, either use the formula $\dfrac{x^r e^{ax}}{f^{(r)}(a)}$ directly, or fall back on undetermined coefficients with a trial solution $x^r(\text{poly})e^{ax}$ if unsure — both give the same answer.
- For $\sin(ax)/\cos(ax)$ resonance, memorize: $\dfrac{1}{D^2+a^2}\cos ax = \dfrac{x\sin ax}{2a}$ and $\dfrac{1}{D^2+a^2}\sin ax = -\dfrac{x\cos ax}{2a}$.
- When $R(x)=e^{ax}V(x)$, always use the shifting theorem $\dfrac{1}{f(D)}e^{ax}V(x)=e^{ax}\dfrac{1}{f(D+a)}V(x)$ rather than guessing a trial form blindly.
- Always double-check the final PI by substituting back into the original equation if time permits — this catches most sign/arithmetic errors.

---

## Self-Test

1. Solve $y'' - 6y' + 9y = 0$.
2. Solve $y'' + 2y' + 5y = 0$.
3. Solve $y'' - y = xe^{x}$ *(check for resonance carefully)*.
4. Solve $y'' + y = x^2$.
5. Solve $y''' - y'' - y' + y = 0$ *(factor the auxiliary cubic carefully)*.

---

# Final Notes

- Work through each chapter's Practice Questions before attempting the Self-Test.
- In exams, always start every solution by **naming the type of equation** — examiners award marks for correct identification even before the final answer.
- Keep a personal formula sheet with: the IF formula, the Bernoulli substitution $v=y^{1-n}$, the exactness test, and the auxiliary-equation root table from Chapter 7 — these four items cover the majority of first-order and higher-order exam questions.
