# MS-103 Laplace Transform — Exam Preparation

**Source:** *Laplace sir solutions by Adnan Ctec19.pdf* (18 scanned pages)  
**Format:** Exam-style questions with worked answers  
**Notation:** $`\mathcal L\{F(t)\}=f(s)`$, where $`s`$ is the Laplace variable.

> **Study priority:** Learn the transform table and derivative formulas first. Then practise the inverse-transform problems and the four differential-equation problems. The solutions below follow the questions and examples in the supplied scan. Obvious algebra and notation slips have been corrected; no additional syllabus topics have been inserted.

## Contents

1. Definition of Laplace transform
2. Elementary transforms: $`1`$, $`t`$, and $`t^n`$
3. Laplace transform of $`\cos at`$
4. Laplace transform of $`\sin at`$
5. Laplace transform of $`\sinh at`$
6. Change-of-scale property
7. First shifting theorem
8. Transform of $`e^{-t}\cos 2t`$
9. Transform of a polynomial-trigonometric expression
10. Transform of $`t^2\cos at`$
11. Transform of $`t^3e^{-t}`$
12. Laplace transform of a derivative — proof
13. Laplace transform of the $`n`$-th derivative
14. Inverse transform of a simple rational function
15. Inverse transform using partial fractions and shifting
16. Differential equation with a condition at $`t=\pi/2`$
17. Differential equation with an exponential-trigonometric forcing term
18. Differential equation with a repeated linear factor
19. Differential equation with forcing term $`t`$
20. Last-minute formula sheet and revision plan

---

# Part I — Definition and elementary transforms

## Q1. Define the Laplace transform of a function.

**Answer:** Let $`F(t)`$ be a function defined for $`t\geq 0`$. Its Laplace transform is the function of the new variable $`s`$ defined by

```math
\boxed{\mathcal L\{F(t)\}=f(s)=\int_0^\infty e^{-st}F(t)\,dt.}
```

The Laplace transform is said to exist when this improper integral converges for the required values of $`s`$.

**Symbols to remember:**

- $`t`$: original or time variable.
- $`s`$: Laplace variable.
- $`F(t)`$: original function.
- $`f(s)`$: Laplace transform of $`F(t)`$.

## Q2. Find the Laplace transforms of (i) $`F(t)=1`$, (ii) $`F(t)=t`$, and (iii) $`F(t)=t^n`$.

### (i) When $`F(t)=1`$

From the definition,

```math
\begin{aligned}
\mathcal L\{1\}
&=\int_0^\infty e^{-st}\,dt\\
&=\left[-\frac{e^{-st}}{s}\right]_0^\infty\\
&=0-\left(-\frac1s\right).
\end{aligned}
```

Therefore,

```math
\boxed{\mathcal L\{1\}=\frac1s},\qquad s>0.
```

### (ii) When $`F(t)=t`$

```math
\begin{aligned}
\mathcal L\{t\}
&=\int_0^\infty te^{-st}\,dt.
\end{aligned}
```

Using integration by parts, take $`u=t`$ and $`dv=e^{-st}dt`$. Then $`du=dt`$ and $`v=-e^{-st}/s`$.

```math
\begin{aligned}
\mathcal L\{t\}
&=\left[-\frac{te^{-st}}s\right]_0^\infty
+\frac1s\int_0^\infty e^{-st}\,dt\\
&=0+\frac1s\cdot\frac1s.
\end{aligned}
```

Hence,

```math
\boxed{\mathcal L\{t\}=\frac1{s^2}}.
```

### (iii) When $`F(t)=t^n`$

For a non-negative integer $`n`$, repeated integration by parts gives

```math
\begin{aligned}
\mathcal L\{t^n\}
&=\int_0^\infty t^n e^{-st}\,dt\\
&=\frac{n}{s}\int_0^\infty t^{n-1}e^{-st}\,dt\\
&=\frac{n}{s}\mathcal L\{t^{n-1}\}.
\end{aligned}
```

Repeating this process until the power of $`t`$ becomes zero,

```math
\mathcal L\{t^n\}
=\frac{n(n-1)\cdots 2\cdot1}{s^n}\mathcal L\{1\}.
```

Since $`\mathcal L\{1\}=1/s`$,

```math
\boxed{\mathcal L\{t^n\}=\frac{n!}{s^{n+1}}},\qquad s>0.
```

---

## Q3. Find the Laplace transform of $`F(t)=\cos at`$.

**Solution:**

```math
\mathcal L\{\cos at\}=\int_0^\infty e^{-st}\cos at\,dt.
```

Using

```math
\int e^{-st}\cos at\,dt
=\frac{e^{-st}(-s\cos at+a\sin at)}{s^2+a^2},
```

we obtain

```math
\begin{aligned}
\mathcal L\{\cos at\}
&=\left[\frac{e^{-st}(-s\cos at+a\sin at)}{s^2+a^2}\right]_0^\infty\\
&=0-\frac{-s}{s^2+a^2}.
\end{aligned}
```

Therefore,

```math
\boxed{\mathcal L\{\cos at\}=\frac{s}{s^2+a^2}}.
```

## Q4. Find the Laplace transform of $`F(t)=\sin at`$.

**Solution:**

```math
\mathcal L\{\sin at\}=\int_0^\infty e^{-st}\sin at\,dt.
```

Using

```math
\int e^{-st}\sin at\,dt
=\frac{e^{-st}(-s\sin at-a\cos at)}{s^2+a^2},
```

we get

```math
\begin{aligned}
\mathcal L\{\sin at\}
&=\left[\frac{e^{-st}(-s\sin at-a\cos at)}{s^2+a^2}\right]_0^\infty\\
&=0-\left(-\frac{a}{s^2+a^2}\right).
\end{aligned}
```

Hence,

```math
\boxed{\mathcal L\{\sin at\}=\frac{a}{s^2+a^2}}.
```

## Q5. Prove that $`\mathcal L\{\sinh at\}=\dfrac{a}{s^2-a^2}`$.

**Proof:** We know that

```math
\sinh at=\frac{e^{at}-e^{-at}}2.
```

Therefore,

```math
\begin{aligned}
\mathcal L\{\sinh at\}
&=\frac12\int_0^\infty e^{-st}(e^{at}-e^{-at})\,dt\\
&=\frac12\int_0^\infty\left(e^{-(s-a)t}-e^{-(s+a)t}\right)dt\\
&=\frac12\left[\frac1{s-a}-\frac1{s+a}\right]\\
&=\frac12\left[\frac{(s+a)-(s-a)}{(s-a)(s+a)}\right]\\
&=\frac12\cdot\frac{2a}{s^2-a^2}.
\end{aligned}
```

Thus,

```math
\boxed{\mathcal L\{\sinh at\}=\frac{a}{s^2-a^2}},\qquad s>|a|.
```

---

# Part II — Properties of the Laplace transform

## Q6. If $`\mathcal L\{F(t)\}=f(s)`$, prove that

```math
\boxed{\mathcal L\{F(at)\}=\frac1a f\!\left(\frac{s}{a}\right)},\qquad a>0.
```

**Proof:** By definition,

```math
\mathcal L\{F(at)\}=\int_0^\infty e^{-st}F(at)\,dt.
```

Put $`u=at`$. Then

```math
t=\frac ua,\qquad dt=\frac{du}{a}.
```

Changing the limits gives

```math
\begin{aligned}
\mathcal L\{F(at)\}
&=\frac1a\int_0^\infty e^{-(s/a)u}F(u)\,du\\
&=\frac1a f\!\left(\frac{s}{a}\right).
\end{aligned}
```

Hence proved.

## Q7. If $`\mathcal L\{F(t)\}=f(s)`$, prove that

```math
\boxed{\mathcal L\{e^{at}F(t)\}=f(s-a)}.
```

**Proof:** By definition,

```math
\begin{aligned}
\mathcal L\{e^{at}F(t)\}
&=\int_0^\infty e^{-st}e^{at}F(t)\,dt\\
&=\int_0^\infty e^{-(s-a)t}F(t)\,dt.
\end{aligned}
```

But this is the Laplace transform $`f(s)`$ with $`s`$ replaced by $`s-a`$. Therefore,

```math
\boxed{\mathcal L\{e^{at}F(t)\}=f(s-a)}.
```

This is called the **first shifting theorem**.

## Q8. Find $`\mathcal L\{e^{-t}\cos 2t\}`$.

**Solution:** First,

```math
\mathcal L\{\cos 2t\}=\frac{s}{s^2+4}=f(s).
```

Using the first shifting theorem with $`a=-1`$, replace $`s`$ by $`s+1`$:

```math
\begin{aligned}
\mathcal L\{e^{-t}\cos 2t\}
&=f(s+1)\\
&=\frac{s+1}{(s+1)^2+4}.
\end{aligned}
```

Therefore,

```math
\boxed{\mathcal L\{e^{-t}\cos 2t\}=\frac{s+1}{s^2+2s+5}}.
```

## Q9. Find the Laplace transform of

```math
F(t)=5t^2-6t^3+3\cos 4t-4\sin 5t.
```

**Solution:** By the linearity property,

```math
\begin{aligned}
\mathcal L\{F(t)\}
={}&5\mathcal L\{t^2\}-6\mathcal L\{t^3\}\\
&+3\mathcal L\{\cos4t\}-4\mathcal L\{\sin5t\}.
\end{aligned}
```

Using

```math
\mathcal L\{t^2\}=\frac{2!}{s^3},\quad
\mathcal L\{t^3\}=\frac{3!}{s^4},
```

```math
\mathcal L\{\cos4t\}=\frac{s}{s^2+16},\quad
\mathcal L\{\sin5t\}=\frac5{s^2+25},
```

we get

```math
\begin{aligned}
\mathcal L\{F(t)\}
&=5\frac{2!}{s^3}-6\frac{3!}{s^4}
+\frac{3s}{s^2+16}-\frac{20}{s^2+25}\\
&=\boxed{\frac{10}{s^3}-\frac{36}{s^4}
+\frac{3s}{s^2+16}-\frac{20}{s^2+25}}.
\end{aligned}
```

## Q10. Find $`\mathcal L\{t^2\cos at\}`$.

**Solution:** We use the multiplication-by-$`t^n`$ property:

```math
\mathcal L\{t^nF(t)\}=(-1)^n\frac{d^n}{ds^n}f(s),
```

where $`\mathcal L\{F(t)\}=f(s)`$.

Since

```math
\mathcal L\{\cos at\}=\frac{s}{s^2+a^2},
```

```math
\begin{aligned}
\mathcal L\{t^2\cos at\}
&=\frac{d^2}{ds^2}\left(\frac{s}{s^2+a^2}\right).
\end{aligned}
```

First derivative:

```math
\frac{d}{ds}\left(\frac{s}{s^2+a^2}\right)
=\frac{a^2-s^2}{(s^2+a^2)^2}.
```

Second derivative:

```math
\begin{aligned}
\frac{d}{ds}\left[\frac{a^2-s^2}{(s^2+a^2)^2}\right]
&=\frac{-2s(s^2+a^2)-4s(a^2-s^2)}{(s^2+a^2)^3}\\
&=\frac{2s(s^2-3a^2)}{(s^2+a^2)^3}.
\end{aligned}
```

Therefore,

```math
\boxed{\mathcal L\{t^2\cos at\}
=\frac{2s(s^2-3a^2)}{(s^2+a^2)^3}}.
```

## Q11. Find $`\mathcal L\{t^3e^{-t}\}`$.

**Solution:** We know that

```math
\mathcal L\{e^{-t}\}=\frac1{s+1}.
```

Using

```math
\mathcal L\{t^nF(t)\}=(-1)^n\frac{d^n}{ds^n}f(s),
```

we have

```math
\begin{aligned}
\mathcal L\{t^3e^{-t}\}
&=(-1)^3\frac{d^3}{ds^3}\left(\frac1{s+1}\right)\\
&=-\frac{d^3}{ds^3}(s+1)^{-1}\\
&=-\left[-6(s+1)^{-4}\right].
\end{aligned}
```

Hence,

```math
\boxed{\mathcal L\{t^3e^{-t}\}=\frac6{(s+1)^4}}.
```

---

# Part III — Laplace transforms of derivatives

## Q12. State and prove the Laplace transform of the first derivative.

**Statement:** If

```math
\mathcal L\{F(t)\}=f(s),
```

then

```math
\boxed{\mathcal L\{F'(t)\}=sf(s)-F(0)}.
```

**Proof:** From the definition,

```math
\mathcal L\{F'(t)\}=\int_0^\infty e^{-st}F'(t)\,dt.
```

Using integration by parts,

```math
\begin{aligned}
\mathcal L\{F'(t)\}
&=\left[e^{-st}F(t)\right]_0^\infty
+s\int_0^\infty e^{-st}F(t)\,dt\\
&=0-F(0)+sf(s).
\end{aligned}
```

Therefore,

```math
\boxed{\mathcal L\{F'(t)\}=sf(s)-F(0)}.
```

## Q13. State the Laplace transform of the $`n`$-th derivative. Also write the results for the second and third derivatives.

**Answer:** If $`\mathcal L\{F(t)\}=f(s)`$, then

```math
\boxed{
\begin{aligned}
\mathcal L\{F^{(n)}(t)\}
={}&s^nf(s)-s^{n-1}F(0)-s^{n-2}F'(0)\\
&-s^{n-3}F''(0)-\cdots-F^{(n-1)}(0).
\end{aligned}}
```

Important special cases:

**First derivative**

```math
\boxed{\mathcal L\{F'(t)\}=sf(s)-F(0)}
```

**Second derivative**

```math
\boxed{\mathcal L\{F''(t)\}=s^2f(s)-sF(0)-F'(0)}
```

**Third derivative**

```math
\boxed{\mathcal L\{F'''(t)\}=s^3f(s)-s^2F(0)-sF'(0)-F''(0)}
```

For a differential equation with unknown function $`y(t)`$, use the same formula with $`f(s)=Y(s)=\mathcal L\{y(t)\}`$:

```math
\begin{aligned}
\mathcal L\{y'\}&=sY-y(0),\\
\mathcal L\{y''\}&=s^2Y-sy(0)-y'(0),\\
\mathcal L\{y'''\}&=s^3Y-s^2y(0)-sy'(0)-y''(0).
\end{aligned}
```

---

# Part IV — Inverse Laplace transforms

## Q14. Evaluate

```math
\mathcal L^{-1}\left\{\frac{7s+12}{s^2+9}\right\}.
```

**Solution:** Split the numerator:

```math
\begin{aligned}
\mathcal L^{-1}\left\{\frac{7s+12}{s^2+9}\right\}
&=7\mathcal L^{-1}\left\{\frac{s}{s^2+9}\right\}
+12\mathcal L^{-1}\left\{\frac1{s^2+9}\right\}.
\end{aligned}
```

Use the standard inverse transforms

```math
\mathcal L^{-1}\left\{\frac{s}{s^2+a^2}\right\}=\cos at,
```

```math
\mathcal L^{-1}\left\{\frac{a}{s^2+a^2}\right\}=\sin at.
```

Since $`a=3`$,

```math
\begin{aligned}
&=7\cos3t+4\sin3t.
\end{aligned}
```

Therefore,

```math
\boxed{\mathcal L^{-1}\left\{\frac{7s+12}{s^2+9}\right\}
=7\cos3t+4\sin3t}.
```

## Q15. Evaluate

```math
\mathcal L^{-1}\left\{
\frac{s^2+2s+3}{(s^2+2s+2)(s^2+2s+5)}
\right\}.
```

**Solution:** Put

```math
u=s^2+2s.
```

Then the expression becomes

```math
\frac{u+3}{(u+2)(u+5)}.
```

Resolve into partial fractions:

```math
\frac{u+3}{(u+2)(u+5)}
=\frac{A}{u+2}+\frac{B}{u+5}.
```

Multiplying by $`(u+2)(u+5)`$,

```math
u+3=A(u+5)+B(u+2).
```

Comparing coefficients,

```math
A+B=1,\qquad 5A+2B=3.
```

Solving,

```math
A=\frac13,\qquad B=\frac23.
```

Thus,

```math
\begin{aligned}
&\frac{s^2+2s+3}{(s^2+2s+2)(s^2+2s+5)}\\
&=\frac1{3(s^2+2s+2)}
+\frac2{3(s^2+2s+5)}.
\end{aligned}
```

Complete the squares:

```math
s^2+2s+2=(s+1)^2+1,
```

```math
s^2+2s+5=(s+1)^2+4.
```

Therefore,

```math
\begin{aligned}
\mathcal L^{-1}\{\cdots\}
={}&\frac13\mathcal L^{-1}\left\{\frac1{(s+1)^2+1}\right\}\\
&+\frac23\mathcal L^{-1}\left\{\frac1{(s+1)^2+4}\right\}.
\end{aligned}
```

Using the first shifting theorem,

```math
\mathcal L^{-1}\left\{\frac1{(s+1)^2+1}\right\}=e^{-t}\sin t,
```

```math
\mathcal L^{-1}\left\{\frac1{(s+1)^2+4}\right\}
=\frac12e^{-t}\sin2t.
```

Hence,

```math
\boxed{\mathcal L^{-1}\{\cdots\}
=\frac13e^{-t}(\sin t+\sin2t)}.
```

---

# Part V — Solving differential equations by Laplace transform

## Q16. Solve by Laplace transform

```math
y''(t)+9y(t)=\cos2t,
```

subject to

```math
y(0)=1,\qquad y\left(\frac\pi2\right)=-1.
```

**Solution:** Let

```math
\mathcal L\{y(t)\}=Y(s),\qquad y'(0)=c,
```

where $`c`$ is unknown because the second condition is given at $`t=\pi/2`$, not at $`t=0`$.

Taking the Laplace transform,

```math
\mathcal L\{y''\}+9\mathcal L\{y\}
=\mathcal L\{\cos2t\}.
```

Using the derivative formula,

```math
s^2Y(s)-sy(0)-y'(0)+9Y(s)=\frac{s}{s^2+4}.
```

Substitute $`y(0)=1`$ and $`y'(0)=c`$:

```math
(s^2+9)Y(s)-s-c=\frac{s}{s^2+4}.
```

Therefore,

```math
Y(s)=\frac{s}{(s^2+4)(s^2+9)}
+\frac{s}{s^2+9}+\frac{c}{s^2+9}.
```

Since

```math
\frac{s}{(s^2+4)(s^2+9)}
=\frac{s}{5}\left(\frac1{s^2+4}-\frac1{s^2+9}\right),
```

we get

```math
Y(s)=\frac15\frac{s}{s^2+4}
+\frac45\frac{s}{s^2+9}
+\frac{c}{s^2+9}.
```

Taking inverse Laplace transforms,

```math
y(t)=\frac15\cos2t+\frac45\cos3t+\frac c3\sin3t.
```

Now apply the condition $`y(\pi/2)=-1`$:

```math
-1=\frac15\cos\pi+\frac45\cos\frac{3\pi}{2}
+\frac c3\sin\frac{3\pi}{2}.
```

Using $`\cos\pi=-1`$, $`\cos(3\pi/2)=0`$, and $`\sin(3\pi/2)=-1`$,

```math
-1=-\frac15-\frac c3.
```

Thus,

```math
\frac c3=\frac45\quad\Rightarrow\quad c=\frac{12}{5}.
```

Therefore, the required solution is

```math
\boxed{y(t)=\frac15\cos2t+\frac45\cos3t+\frac45\sin3t}.
```

## Q17. Solve by Laplace transform

```math
y''+2y'+5y=e^{-t}\sin t,
```

where

```math
y(0)=0,\qquad y'(0)=1.
```

**Solution:** Let $`\mathcal L\{y(t)\}=Y(s)`$.

Taking the Laplace transform,

```math
\mathcal L\{y''\}+2\mathcal L\{y'\}+5\mathcal L\{y\}
=\mathcal L\{e^{-t}\sin t\}.
```

Use the derivative formulas:

```math
(s^2Y-sy(0)-y'(0))+2(sY-y(0))+5Y
=\frac1{(s+1)^2+1}.
```

Substitute $`y(0)=0`$ and $`y'(0)=1`$:

```math
s^2Y-1+2sY+5Y=\frac1{(s+1)^2+1}.
```

Hence,

```math
Y(s)(s^2+2s+5)=1+\frac1{s^2+2s+2}.
```

Combining the right-hand side,

```math
Y(s)=\frac{s^2+2s+3}{(s^2+2s+5)(s^2+2s+2)}.
```

Using partial fractions,

```math
\boxed{
Y(s)=\frac1{3(s^2+2s+2)}
+\frac2{3(s^2+2s+5)}.
}
```

Complete the squares:

```math
Y(s)=\frac1{3((s+1)^2+1)}
+\frac2{3((s+1)^2+4)}.
```

Taking inverse transforms,

```math
\begin{aligned}
y(t)
&=\frac13e^{-t}\sin t
+\frac23\cdot\frac12e^{-t}\sin2t\\
&=\frac13e^{-t}\sin t+\frac13e^{-t}\sin2t.
\end{aligned}
```

Therefore,

```math
\boxed{y(t)=\frac13e^{-t}(\sin t+\sin2t)}.
```

## Q18. Solve by Laplace transform

```math
y''-3y'+2y=4e^{2t},
```

where

```math
y(0)=-3,\qquad y'(0)=5.
```

**Solution:** Let $`\mathcal L\{y(t)\}=Y(s)`$.

Taking the Laplace transform,

```math
(s^2Y-sy(0)-y'(0))-3(sY-y(0))+2Y
=\frac4{s-2}.
```

Substitute the initial values:

```math
s^2Y+3s-5-3sY-9+2Y=\frac4{s-2}.
```

Collecting the terms containing $`Y`$,

```math
Y(s)(s^2-3s+2)=\frac4{s-2}-3s+14.
```

Since $`s^2-3s+2=(s-1)(s-2)`$,

```math
\begin{aligned}
Y(s)
&=\frac{4/(s-2)-3s+14}{(s-1)(s-2)}\\
&=\frac{-3s^2+20s-24}{(s-1)(s-2)^2}.
\end{aligned}
```

Resolve into partial fractions:

```math
\frac{-3s^2+20s-24}{(s-1)(s-2)^2}
=\frac A{s-1}+\frac B{s-2}+\frac C{(s-2)^2}.
```

Solving for the constants gives

```math
A=-7,\qquad B=4,\qquad C=4.
```

Thus,

```math
Y(s)=-\frac7{s-1}+\frac4{s-2}+\frac4{(s-2)^2}.
```

Taking inverse transforms,

```math
\begin{aligned}
y(t)
&=-7e^t+4e^{2t}+4te^{2t}.
\end{aligned}
```

Therefore,

```math
\boxed{y(t)=-7e^t+4e^{2t}+4te^{2t}}.
```

## Q19. Solve by Laplace transform

```math
y''+y=t,
```

where

```math
y(0)=1,\qquad y'(0)=-2.
```

**Solution:** Let $`\mathcal L\{y(t)\}=Y(s)`$.

Taking the Laplace transform,

```math
\mathcal L\{y''\}+\mathcal L\{y\}=\mathcal L\{t\}.
```

Therefore,

```math
s^2Y-sy(0)-y'(0)+Y=\frac1{s^2}.
```

Substituting the initial values,

```math
s^2Y-s+2+Y=\frac1{s^2}.
```

Hence,

```math
Y(s)(s^2+1)=\frac1{s^2}+s-2,
```

so

```math
Y(s)=\frac{1/s^2+s-2}{s^2+1}.
```

Resolve into simpler fractions:

```math
Y(s)=\frac1{s^2}-\frac3{s^2+1}+\frac{s}{s^2+1}.
```

Taking inverse Laplace transforms,

```math
\begin{aligned}
y(t)
&=t-3\sin t+\cos t.
\end{aligned}
```

Therefore,

```math
\boxed{y(t)=t-3\sin t+\cos t}.
```

---

# Part VI — Last-minute revision

## A. Essential Laplace transform table

| Function $`F(t)`$ | Laplace transform $`f(s)`$ |
|---|---|
| $`1`$ | $`\dfrac1s`$ |
| $`t`$ | $`\dfrac1{s^2}`$ |
| $`t^n`$ | $`\dfrac{n!}{s^{n+1}}`$ |
| $`e^{at}`$ | $`\dfrac1{s-a}`$ |
| $`\sin at`$ | $`\dfrac{a}{s^2+a^2}`$ |
| $`\cos at`$ | $`\dfrac{s}{s^2+a^2}`$ |
| $`\sinh at`$ | $`\dfrac{a}{s^2-a^2}`$ |
| $`e^{at}F(t)`$ | $`f(s-a)`$ |
| $`F(at)`$, $`a>0`$ | $`\dfrac1a f(\dfrac{s}{a})`$ |
| $`t^nF(t)`$ | $`(-1)^n\dfrac{d^n}{ds^n}f(s)`$ |

## B. Derivative formulas — memorize these

```math
\boxed{\mathcal L\{y'\}=sY-y(0)}
```

```math
\boxed{\mathcal L\{y''\}=s^2Y-sy(0)-y'(0)}
```

```math
\boxed{\mathcal L\{y'''\}=s^3Y-s^2y(0)-sy'(0)-y''(0)}
```

## C. Inverse-transform patterns

```math
\mathcal L^{-1}\left\{\frac{s}{s^2+a^2}\right\}=\cos at
```

```math
\mathcal L^{-1}\left\{\frac{a}{s^2+a^2}\right\}=\sin at
```

```math
\mathcal L^{-1}\left\{\frac1{(s+a)^2+b^2}\right\}
=\frac1b e^{-at}\sin bt
```

```math
\mathcal L^{-1}\left\{\frac{s+a}{(s+a)^2+b^2}\right\}
=e^{-at}\cos bt
```

```math
\mathcal L^{-1}\left\{\frac1{(s-a)^2}\right\}=te^{at}
```

## D. Reliable method for a Laplace differential-equation problem

1. Write $`Y(s)=\mathcal L\{y(t)\}`$.
2. Transform every derivative using the initial values.
3. Transform the right-hand side.
4. Collect all terms containing $`Y(s)`$ and solve for $`Y(s)`$.
5. Use partial fractions or complete the square.
6. Apply inverse Laplace transforms.
7. Check the result against the given initial/boundary conditions.

## E. Common mistakes to avoid

- For $`\mathcal L\{\sin at\}`$, the numerator is **$`a`$**, not $`s`$.
- For $`\mathcal L\{\cos at\}`$, the numerator is **$`s`$**.
- For $`\mathcal L\{e^{at}F(t)\}`$, replace $`s`$ by **$`s-a`$**. For $`e^{-t}`$, replace $`s`$ by **$`s+1`$**.
- When finding $`\mathcal L\{t^2F(t)\}`$, use the **second derivative** with a positive sign.
- In an ODE, $`\mathcal L\{y''\}=s^2Y-sy(0)-y'(0)`$. Do not omit either initial-value term.
- Complete the square before using shifted sine/cosine inverse formulas.
- For a repeated factor such as $`(s-2)^2`$, include both $`B/(s-2)`$ and $`C/(s-2)^2`$ in partial fractions.
- In Q16, $`y(\pi/2)=-1`$ is a boundary condition; the unknown $`y'(0)`$ must first be represented by a constant and then determined from that condition.

## F. Three-hour revision plan

| Time | What to revise |
|---|---|
| 0–30 min | Q1–Q7: definition, elementary transforms, hyperbolic transform, and properties |
| 30–60 min | Q8–Q13: shifting, multiplication by $`t^n`$, and derivative theorems |
| 60–90 min | Q14–Q15: inverse transforms and partial fractions |
| 90–155 min | Q16–Q19: solve all four differential equations by hand |
| 155–175 min | Rewrite the transform table and derivative formulas from memory |
| 175–180 min | Check signs, initial values, and the final boxed answers |

**Highest-value practice:** Q13, Q15, and Q16–Q19. These combine the main formulas with the algebraic steps most likely to cost marks if forgotten.

---

**End of MS-103 Laplace exam-preparation notes.**
