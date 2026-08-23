# Laplace Transform — Complete Notes

## 1. Definition of Laplace Transform

Let $f(t)$ be a function defined for $t>0$.

The **Laplace transform** of $f(t)$, denoted by

$$
\mathcal L\{f(t)\}
$$

is defined as

$$
\boxed{
\mathcal L\{f(t)\}
=
F(s)
=
\int_0^\infty e^{-st}f(t)\,dt
}
$$

where $s$ is a parameter, which may be real or complex.

### Notation

$$
f(t)
\quad\xrightarrow{\mathcal L}\quad
F(s)
$$

Here:

- $f(t)$ = original function / time-domain function
- $F(s)$ = Laplace transform / $s$-domain function
- $t$ = original variable
- $s$ = transform variable

The handwritten notes introduce the definition in exactly this form.

---

# 2. Basic Laplace Transforms

These are the formulas you should know first.

| Function $f(t)$ | Laplace transform $F(s)$ |
|---|---|
| $1$ | $\displaystyle \frac1s$ |
| $t$ | $\displaystyle \frac1{s^2}$ |
| $t^n$ | $\displaystyle \frac{n!}{s^{n+1}}$ |
| $e^{at}$ | $\displaystyle \frac1{s-a}$ |
| $\sin at$ | $\displaystyle \frac{a}{s^2+a^2}$ |
| $\cos at$ | $\displaystyle \frac{s}{s^2+a^2}$ |
| $\sinh at$ | $\displaystyle \frac{a}{s^2-a^2}$ |
| $\cosh at$ | $\displaystyle \frac{s}{s^2-a^2}$ |

These basic formulas are listed at the beginning of the handwritten notes.

---

## 3. Derivation of $\mathcal L\{1\}$

From the definition,

$$
\mathcal L\{1\}
=
\int_0^\infty e^{-st}\,dt
$$

Integrating,

$$
=
\left[-\frac{e^{-st}}s\right]_0^\infty
$$

For $s>0$,

$$
e^{-st}\rightarrow0
\qquad(t\rightarrow\infty)
$$

Therefore,

$$
=0-\left(-\frac1s\right)
$$

Hence,

$$
\boxed{\mathcal L\{1\}=\frac1s}
$$

---

# 4. Linearity Property

If

$$
\mathcal L\{f(t)\}=F(s)
$$

and

$$
\mathcal L\{g(t)\}=G(s)
$$

then

$$
\boxed{
\mathcal L\{af(t)+bg(t)\}
=
aF(s)+bG(s)
}
$$

where $a,b$ are constants.

### Example

Find

$$
\mathcal L\{e^{4t}+4t^3-2\cos5t+3\sin3t\}.
$$

Using linearity,

$$
\begin{aligned}
\mathcal L\{e^{4t}+4t^3-2\cos5t+3\sin3t\}
&=
\mathcal L\{e^{4t}\}
+4\mathcal L\{t^3\}\\
&\quad-2\mathcal L\{\cos5t\}
+3\mathcal L\{\sin3t\}.
\end{aligned}
$$

Now use the basic table:

$$
\mathcal L\{e^{4t}\}=\frac1{s-4}
$$

$$
\mathcal L\{t^3\}=\frac{3!}{s^4}=\frac6{s^4}
$$

$$
\mathcal L\{\cos5t\}=\frac{s}{s^2+25}
$$

$$
\mathcal L\{\sin3t\}=\frac3{s^2+9}
$$

Therefore,

$$
\boxed{
\frac1{s-4}
+\frac{24}{s^4}
-\frac{2s}{s^2+25}
+\frac9{s^2+9}
}
$$

---

# 5. First Shifting Property

This is one of the most important rules.

If

$$
\mathcal L\{f(t)\}=F(s),
$$

then

$$
\boxed{
\mathcal L\{e^{at}f(t)\}
=
F(s-a)
}
$$

### How to remember it

Multiplication by:

$$
e^{at}
$$

causes:

$$
\boxed{s\rightarrow s-a}
$$

---

## Example 1

Find

$$
\mathcal L\{e^{2t}t^3\}.
$$

First,

$$
\mathcal L\{t^3\}
=
\frac{6}{s^4}.
$$

Therefore,

$$
\mathcal L\{e^{2t}t^3\}
=
F(s-2).
$$

Replace $s$ by $s-2$:

$$
\boxed{
\mathcal L\{e^{2t}t^3\}
=
\frac6{(s-2)^4}
}
$$

This is the exact type of example used in the handwritten notes.

---

## Example 2

Find

$$
\mathcal L
\left\{
e^{5t}
\left(e^{4t}+4t^3+2\sin3t\right)
\right\}.
$$

First define

$$
f(t)=e^{4t}+4t^3+2\sin3t.
$$

Then

$$
\mathcal L\{f(t)\}
=
\frac1{s-4}
+
\frac{24}{s^4}
+
\frac6{s^2+9}.
$$

Using the first shifting property,

$$
\mathcal L\{e^{5t}f(t)\}
=
F(s-5).
$$

Therefore,

$$
\boxed{
\frac1{(s-5)-4}
+
\frac{24}{(s-5)^4}
+
\frac6{(s-5)^2+9}
}
$$

or

$$
\boxed{
\frac1{s-9}
+
\frac{24}{(s-5)^4}
+
\frac6{(s-5)^2+9}
}
$$

---

# 6. Multiplication by $t^n$

Suppose

$$
\mathcal L\{f(t)\}=F(s).
$$

Then

$$
\boxed{
\mathcal L\{t^nf(t)\}
=
(-1)^n\frac{d^n}{ds^n}F(s)
}
$$

This is called the **multiplication by $t^n$ property**. The handwritten notes state this rule and apply it to $t\cos t$, $t^2\sin t$, and $t^3\sin t$.

### Special case: $n=1$

$$
\boxed{
\mathcal L\{tf(t)\}
=
-\frac{d}{ds}F(s)
}
$$

### Special case: $n=2$

$$
\boxed{
\mathcal L\{t^2f(t)\}
=
\frac{d^2}{ds^2}F(s)
}
$$

### Special case: $n=3$

$$
\boxed{
\mathcal L\{t^3f(t)\}
=
-\frac{d^3}{ds^3}F(s)
}
$$

---

## Example: Find $\mathcal L\{t\cos t\}$

We know:

$$
\mathcal L\{\cos t\}
=
\frac{s}{s^2+1}.
$$

Therefore,

$$
\mathcal L\{t\cos t\}
=
-\frac{d}{ds}
\left(
\frac{s}{s^2+1}
\right).
$$

Using the quotient rule,

$$
\frac{d}{ds}
\left(
\frac{s}{s^2+1}
\right)
=
\frac{(s^2+1)-2s^2}{(s^2+1)^2}.
$$

Thus,

$$
=
\frac{1-s^2}{(s^2+1)^2}.
$$

Because of the minus sign,

$$
\boxed{
\mathcal L\{t\cos t\}
=
\frac{s^2-1}{(s^2+1)^2}
}
$$

---

# 7. Example: $\mathcal L\{t\sin t\}$

We know

$$
\mathcal L\{\sin t\}
=
\frac1{s^2+1}.
$$

Therefore,

$$
\mathcal L\{t\sin t\}
=
-\frac{d}{ds}
\left(
\frac1{s^2+1}
\right).
$$

Now,

$$
\frac{d}{ds}(s^2+1)^{-1}
=
-(s^2+1)^{-2}(2s).
$$

Therefore,

$$
\boxed{
\mathcal L\{t\sin t\}
=
\frac{2s}{(s^2+1)^2}
}
$$

This is the same technique used repeatedly in the handwritten examples.

---

# 8. Division by $t$

This property goes in the opposite direction.

If

$$
\mathcal L\{f(t)\}=F(s),
$$

then

$$
\boxed{
\mathcal L
\left\{
\frac{f(t)}t
\right\}
=
\int_s^\infty F(u)\,du
}
$$

This appears explicitly in the handwritten notes.

### Very important

When using this rule:

$$
\boxed{s\text{ becomes the lower limit}}
$$

and the integration variable is usually changed to $u$.

---

# 9. Example: Find $\mathcal L\{\sin t/t\}$

We know:

$$
\mathcal L\{\sin t\}
=
\frac1{s^2+1}.
$$

Therefore,

$$
\mathcal L
\left\{
\frac{\sin t}{t}
\right\}
=
\int_s^\infty
\frac1{u^2+1}\,du.
$$

Since

$$
\int\frac{du}{u^2+1}
=
\tan^{-1}u,
$$

we get

$$
=
\left[\tan^{-1}u\right]_s^\infty.
$$

Since

$$
\tan^{-1}\infty=\frac{\pi}{2},
$$

therefore

$$
\boxed{
\mathcal L
\left\{
\frac{\sin t}{t}
\right\}
=
\frac{\pi}{2}-\tan^{-1}s
}
$$

or equivalently,

$$
\boxed{
\mathcal L
\left\{
\frac{\sin t}{t}
\right\}
=
\cot^{-1}s
}
$$

---

# 10. Important Definite Integral from Division by $t$

The handwritten notes use the above result to evaluate

$$
\int_0^\infty \frac{\sin t}{t}\,dt.
$$

Since

$$
\mathcal L
\left\{
\frac{\sin t}{t}
\right\}
=
\frac{\pi}{2}-\tan^{-1}s,
$$

put

$$
s=0.
$$

Then

$$
\int_0^\infty\frac{\sin t}{t}\,dt
=
\frac{\pi}{2}.
$$

Thus,

$$
\boxed{
\int_0^\infty\frac{\sin t}{t}\,dt
=
\frac{\pi}{2}
}
$$

The handwritten notes explicitly use the $s\to0$ step for this result.

---

# 11. Logarithmic Result

A very important result from the notes is

$$
\boxed{
\mathcal L
\left\{
\frac{e^{-at}-e^{-bt}}{t}
\right\}
=
\ln\left(\frac{s+b}{s+a}\right)
}
$$

### Derivation

Let

$$
f(t)=e^{-at}-e^{-bt}.
$$

Then

$$
\mathcal L\{f(t)\}
=
\frac1{s+a}-\frac1{s+b}.
$$

By the division-by-$t$ property,

$$
\mathcal L
\left\{
\frac{e^{-at}-e^{-bt}}t
\right\}
=
\int_s^\infty
\left(
\frac1{u+a}
-
\frac1{u+b}
\right)du.
$$

Integrating,

$$
=
\left[
\ln(u+a)-\ln(u+b)
\right]_s^\infty.
$$

At infinity the logarithmic difference tends to $0$, so

$$
=
-\ln(s+a)+\ln(s+b).
$$

Therefore,

$$
\boxed{
\mathcal L
\left\{
\frac{e^{-at}-e^{-bt}}t
\right\}
=
\ln\left(\frac{s+b}{s+a}\right)
}
$$

This is one of the main worked proofs in both handwritten sources.

---

# 12. Another Logarithmic Formula

The notes also derive:

$$
\boxed{
\mathcal L
\left\{
\frac{\cos at-\cos bt}{t}
\right\}
=
\frac12
\ln
\left(
\frac{s^2+b^2}{s^2+a^2}
\right)
}
$$

### Derivation

First,

$$
\mathcal L\{\cos at\}
=
\frac{s}{s^2+a^2}
$$

and

$$
\mathcal L\{\cos bt\}
=
\frac{s}{s^2+b^2}.
$$

Therefore,

$$
F(s)
=
\frac{s}{s^2+a^2}
-
\frac{s}{s^2+b^2}.
$$

By division by $t$,

$$
\mathcal L
\left\{
\frac{\cos at-\cos bt}{t}
\right\}
=
\int_s^\infty
\left(
\frac{u}{u^2+a^2}
-
\frac{u}{u^2+b^2}
\right)du.
$$

Using

$$
\int\frac{u}{u^2+a^2}\,du
=
\frac12\ln(u^2+a^2),
$$

we obtain

$$
\boxed{
\frac12
\ln
\left(
\frac{s^2+b^2}{s^2+a^2}
\right)
}
$$

The handwritten derivation appears on the later pages of the first and second sets of notes.

---

# 13. Inverse Laplace Transform

If

$$
\mathcal L\{f(t)\}=F(s),
$$

then $f(t)$ is called the **inverse Laplace transform** of $F(s)$.

Notation:

$$
\boxed{
f(t)=\mathcal L^{-1}\{F(s)\}
}
$$

The handwritten notes introduce inverse Laplace immediately after the direct-transform properties.

---

# 14. Basic Inverse Laplace Formulas

From the basic transform table:

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac1s
\right\}
=1
}
$$

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac1{s^2}
\right\}
=t
}
$$

More generally,

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{n!}{s^{n+1}}
\right\}
=t^n
}
$$

Therefore,

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac1{s^{n+1}}
\right\}
=
\frac{t^n}{n!}
}
$$

Also,

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac1{s-a}
\right\}
=e^{at}
}
$$

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{a}{s^2+a^2}
\right\}
=\sin at
}
$$

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{s}{s^2+a^2}
\right\}
=\cos at
}
$$

---

# 15. Inverse Laplace with First Shifting

Suppose we have

$$
F(s-a).
$$

Then:

$$
\boxed{
\mathcal L^{-1}\{F(s-a)\}
=
e^{at}f(t)
}
$$

### Example

Find

$$
\mathcal L^{-1}
\left\{
\frac{6s-4}{s^2-4s+20}
\right\}.
$$

Complete the square:

$$
s^2-4s+20
=
(s-2)^2+16.
$$

Rewrite the numerator:

$$
6s-4
=
6(s-2)+8.
$$

Therefore,

$$
\frac{6s-4}{s^2-4s+20}
=
\frac{6(s-2)}{(s-2)^2+4^2}
+
\frac8{(s-2)^2+4^2}.
$$

Using first shifting:

$$
\mathcal L^{-1}
\left\{
\frac{s-2}{(s-2)^2+4^2}
\right\}
=
e^{2t}\cos4t
$$

and

$$
\mathcal L^{-1}
\left\{
\frac4{(s-2)^2+4^2}
\right\}
=
e^{2t}\sin4t.
$$

Since the numerator contains $8=2(4)$,

$$
\boxed{
f(t)
=
6e^{2t}\cos4t
+
2e^{2t}\sin4t
}
$$

or

$$
\boxed{
f(t)
=
2e^{2t}(3\cos4t+\sin4t)
}
$$

This is the type of completing-the-square inverse-transform problem shown in the handwritten notes.

---

# 16. Inverse Laplace of Hyperbolic Functions

Useful formulas:

$$
\boxed{
\mathcal L\{\sinh at\}
=
\frac{a}{s^2-a^2}
}
$$

Therefore,

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{a}{s^2-a^2}
\right\}
=
\sinh at
}
$$

and

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{s}{s^2-a^2}
\right\}
=
\cosh at
}
$$

---

# 17. Division by $s$ in Inverse Laplace

If

$$
\mathcal L^{-1}\{F(s)\}=f(t),
$$

then

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{F(s)}s
\right\}
=
\int_0^t f(u)\,du
}
$$

This is called the **division by $s$ property** in the handwritten notes.

### Example

Find

$$
\mathcal L^{-1}
\left\{
\frac1{s^2(s^2+1)}
\right\}.
$$

Rewrite:

$$
\frac1{s^2(s^2+1)}
=
\frac1s
\left(
\frac1{s(s^2+1)}
\right).
$$

Let

$$
F(s)=\frac1{s(s^2+1)}.
$$

Now,

$$
\frac1{s(s^2+1)}
=
\frac1s-\frac{s}{s^2+1}.
$$

Therefore,

$$
f(t)=1-\cos t.
$$

By division by $s$,

$$
\mathcal L^{-1}
\left\{
\frac1{s^2(s^2+1)}
\right\}
=
\int_0^t(1-\cos u)\,du.
$$

Hence,

$$
=
\left[u-\sin u\right]_0^t
$$

so

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac1{s^2(s^2+1)}
\right\}
=
t-\sin t
}
$$

---

# 18. Second Shifting Property

This property deals with a **delay** in the time domain.

Suppose

$$
g(t)=
\begin{cases}
0,&0<t<a,\\
f(t-a),&t>a.
\end{cases}
$$

Then

$$
\boxed{
\mathcal L\{g(t)\}
=
e^{-as}F(s)
}
$$

This is called the **second shifting property** or **time-shifting property**. The handwritten notes derive it directly from the definition.

---

## Why does $e^{-as}$ appear?

Start with

$$
\mathcal L\{g(t)\}
=
\int_0^\infty e^{-st}g(t)\,dt.
$$

Since $g(t)=0$ before $t=a$,

$$
=
\int_a^\infty e^{-st}f(t-a)\,dt.
$$

Put

$$
u=t-a.
$$

Then

$$
t=u+a
$$

and

$$
dt=du.
$$

Therefore,

$$
e^{-st}
=
e^{-s(u+a)}
=
e^{-as}e^{-su}.
$$

So,

$$
\mathcal L\{g(t)\}
=
e^{-as}
\int_0^\infty e^{-su}f(u)\,du.
$$

But the integral is $F(s)$.

Therefore,

$$
\boxed{
\mathcal L\{g(t)\}=e^{-as}F(s)
}
$$

---

# 19. Example of Second Shifting

Consider

$$
g(t)=
\begin{cases}
0,&0<t<\frac{2\pi}{3},\\
\cos\left(t-\frac{2\pi}{3}\right),
&t>\frac{2\pi}{3}.
\end{cases}
$$

Here,

$$
a=\frac{2\pi}{3}
$$

and

$$
f(t)=\cos t.
$$

Since

$$
\mathcal L\{\cos t\}
=
\frac{s}{s^2+1},
$$

the second shifting property gives

$$
\boxed{
\mathcal L\{g(t)\}
=
e^{-2\pi s/3}
\frac{s}{s^2+1}
}
$$

This is the piecewise time-shift example at the end of the handwritten notes.

---

# 20. First Shifting vs Second Shifting

Do **not** confuse these.

| Property | Time-domain change | $s$-domain result |
|---|---|---|
| First shifting | multiply by $e^{at}$ | $F(s-a)$ |
| Second shifting | delay function by $a$ | $e^{-as}F(s)$ |

### First shifting

$$
\boxed{
e^{at}f(t)
\longrightarrow
F(s-a)
}
$$

### Second shifting

$$
\boxed{
f(t-a)u(t-a)
\longrightarrow
e^{-as}F(s)
}
$$

The easiest memory trick:

> **$e^{at}$ changes $s$.**

> **A delay produces $e^{-as}$.**

---

# 21. Convolution Theorem

This is mainly useful for inverse Laplace transforms when the expression is a product that is difficult to decompose.

Suppose

$$
\mathcal L\{f(t)\}=F(s)
$$

and

$$
\mathcal L\{g(t)\}=G(s).
$$

Then

$$
\boxed{
\mathcal L^{-1}\{F(s)G(s)\}
=
\int_0^t f(u)g(t-u)\,du
}
$$

The integral

$$
(f*g)(t)
=
\int_0^t f(u)g(t-u)\,du
$$

is called the **convolution** of $f$ and $g$.

The handwritten notes state this theorem and work through examples involving $1/(s+1)$ and $1/(s^2+1)$.

---

# 22. Example of Convolution

Find

$$
\mathcal L^{-1}
\left\{
\frac1{(s+1)(s^2+1)}
\right\}.
$$

Write

$$
F(s)=\frac1{s+1}
$$

and

$$
G(s)=\frac1{s^2+1}.
$$

Therefore,

$$
f(t)=e^{-t}
$$

and

$$
g(t)=\sin t.
$$

By convolution,

$$
\mathcal L^{-1}
\left\{
\frac1{(s+1)(s^2+1)}
\right\}
=
\int_0^t e^{-u}\sin(t-u)\,du.
$$

Evaluating this integral gives

$$
\boxed{
\frac12
\left(
e^{-t}+\sin t-\cos t
\right)
}
$$

The handwritten solution reaches this same form through integration by parts.

---

# 23. Another Convolution Example

Consider

$$
\mathcal L^{-1}
\left\{
\frac{s}{(s+1)(s^2+1)}
\right\}.
$$

Take

$$
F(s)=\frac1{s+1}
$$

and

$$
G(s)=\frac{s}{s^2+1}.
$$

Therefore,

$$
f(t)=e^{-t}
$$

and

$$
g(t)=\cos t.
$$

Thus,

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{s}{(s+1)(s^2+1)}
\right\}
=
\int_0^t e^{-u}\cos(t-u)\,du
}
$$

The handwritten notes evaluate this integral and obtain

$$
\boxed{
\frac12
\left(
e^{-t}+\cos t+\sin t
\right)
}
$$

for the corresponding expression.

---

# 24. Important Worked Integral Results

The handwritten examples also use Laplace properties to evaluate improper integrals.

### Result 1

$$
\boxed{
\int_0^\infty e^{-3t}t\sin t\,dt
=
\frac3{50}
}
$$

Reason:

$$
\mathcal L\{t\sin t\}
=
\frac{2s}{(s^2+1)^2}.
$$

Put $s=3$:

$$
\frac{2(3)}{(3^2+1)^2}
=
\frac6{100}
=
\frac3{50}.
$$

This is worked explicitly in the handwritten notes.

---

### Result 2

The notes also show

$$
\boxed{
\int_0^\infty e^{-t}t^3\sin t\,dt=0
}
$$

because

$$
\mathcal L\{t^3\sin t\}
$$

evaluated at $s=1$ gives zero.

---

# 25. Master Formula Sheet

## Direct Laplace Transform

$$
\boxed{
\mathcal L\{f(t)\}
=
\int_0^\infty e^{-st}f(t)\,dt
}
$$

### Elementary functions

$$
\boxed{\mathcal L\{1\}=\frac1s}
$$

$$
\boxed{\mathcal L\{t^n\}=\frac{n!}{s^{n+1}}}
$$

$$
\boxed{\mathcal L\{e^{at}\}=\frac1{s-a}}
$$

$$
\boxed{\mathcal L\{\sin at\}=\frac{a}{s^2+a^2}}
$$

$$
\boxed{\mathcal L\{\cos at\}=\frac{s}{s^2+a^2}}
$$

$$
\boxed{\mathcal L\{\sinh at\}=\frac{a}{s^2-a^2}}
$$

$$
\boxed{\mathcal L\{\cosh at\}=\frac{s}{s^2-a^2}}
$$

---

## Properties

### Linearity

$$
\boxed{
\mathcal L\{af+bg\}=aF+bG
}
$$

### First shifting

$$
\boxed{
\mathcal L\{e^{at}f(t)\}=F(s-a)
}
$$

### Multiplication by $t^n$

$$
\boxed{
\mathcal L\{t^nf(t)\}
=
(-1)^n\frac{d^nF}{ds^n}
}
$$

### Division by $t$

$$
\boxed{
\mathcal L
\left\{
\frac{f(t)}t
\right\}
=
\int_s^\infty F(u)\,du
}
$$

### Second shifting

$$
\boxed{
\mathcal L\{f(t-a)u(t-a)\}
=
e^{-as}F(s)
}
$$

---

# 26. Inverse Laplace Formula Sheet

$$
\boxed{
\mathcal L^{-1}\left\{\frac1s\right\}=1
}
$$

$$
\boxed{
\mathcal L^{-1}\left\{\frac1{s^{n+1}}\right\}
=
\frac{t^n}{n!}
}
$$

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac1{s-a}
\right\}
=
e^{at}
}
$$

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{a}{s^2+a^2}
\right\}
=
\sin at
}
$$

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{s}{s^2+a^2}
\right\}
=
\cos at
}
$$

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{a}{s^2-a^2}
\right\}
=
\sinh at
}
$$

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{s}{s^2-a^2}
\right\}
=
\cosh at
}
$$

### Division by $s$

$$
\boxed{
\mathcal L^{-1}
\left\{
\frac{F(s)}s
\right\}
=
\int_0^t f(u)\,du
}
$$

### Second shifting

$$
\boxed{
\mathcal L^{-1}
\{e^{-as}F(s)\}
=
f(t-a)u(t-a)
}
$$

### Convolution

$$
\boxed{
\mathcal L^{-1}\{F(s)G(s)\}
=
\int_0^t f(u)g(t-u)\,du
}
$$

---

# 27. How to Recognize Which Formula to Use

When you see a problem, **don't immediately start integrating**.

Look at the form first.

### Type 1 — Ordinary function

Example:

$$
t^3,\quad e^{2t},\quad \sin3t
$$

Use the basic table.

---

### Type 2 — Sum of functions

Example:

$$
3+2e^{5t}-4\sin t
$$

Use **linearity**:

$$
\mathcal L\{f+g\}
=
\mathcal L\{f\}+\mathcal L\{g\}.
$$

---

### Type 3 — $e^{at}$ multiplied by something

Example:

$$
e^{3t}t^2
$$

Think:

$$
\boxed{\text{First shifting}}
$$

Find $F(s)$ for $t^2$, then replace:

$$
s\rightarrow s-3.
$$

---

### Type 4 — $t^n$ multiplied by something

Example:

$$
t^2\sin t
$$

Think:

$$
\boxed{\text{Multiplication by }t^n}
$$

Differentiate $F(s)$ $n$ times.

---

### Type 5 — Function divided by $t$

Example:

$$
\frac{\sin t}{t}
$$

Think:

$$
\boxed{\text{Division by }t}
$$

Integrate $F(s)$ from $s$ to $\infty$.

---

### Type 6 — Function starts after $t=a$

Example:

$$
f(t-a)u(t-a)
$$

Think:

$$
\boxed{\text{Second shifting}}
$$

Multiply the transform by:

$$
e^{-as}.
$$

---

### Type 7 — Product of two $s$-domain functions

Example:

$$
\frac1{(s+1)(s^2+1)}
$$

If partial fractions are inconvenient, think:

$$
\boxed{\text{Convolution theorem}}
$$

---

### Type 8 — Inverse Laplace

Example:

$$
\frac{6s-4}{s^2-4s+20}
$$

Think:

1. Complete the square.
2. Rewrite the numerator.
3. Match the standard formula.
4. Apply first shifting if necessary.

---

# 28. The Most Important Things to Memorize

If you're preparing for an exam, memorize these **first**:

$$
\boxed{\mathcal L\{1\}=\frac1s}
$$

$$
\boxed{\mathcal L\{t^n\}=\frac{n!}{s^{n+1}}}
$$

$$
\boxed{\mathcal L\{e^{at}\}=\frac1{s-a}}
$$

$$
\boxed{\mathcal L\{\sin at\}=\frac{a}{s^2+a^2}}
$$

$$
\boxed{\mathcal L\{\cos at\}=\frac{s}{s^2+a^2}}
$$

Then:

$$
\boxed{\mathcal L\{e^{at}f(t)\}=F(s-a)}
$$

$$
\boxed{
\mathcal L\{t^nf(t)\}
=
(-1)^nF^{(n)}(s)
}
$$

$$
\boxed{
\mathcal L\left\{\frac{f(t)}t\right\}
=
\int_s^\infty F(u)\,du
}
$$

$$
\boxed{
\mathcal L\{f(t-a)u(t-a)\}
=
e^{-as}F(s)
}
$$

$$
\boxed{
\mathcal L^{-1}\{F(s)G(s)\}
=
\int_0^t f(u)g(t-u)\,du
}
$$

---

# 29. One-Page Mental Map

```text
                    LAPLACE TRANSFORM
                           │
             ┌─────────────┴─────────────┐
             │                           │
        DIRECT LAPLACE              INVERSE LAPLACE
             │                           │
       f(t) → F(s)                 F(s) → f(t)
             │                           │
     ┌───────┼────────┐          ┌───────┼────────┐
     │       │        │          │       │        │
   Basic   Properties  Special   Basic  Shifting Convolution
   table              forms      table
     │       │
     │       ├── Linearity
     │       ├── First shifting
     │       ├── × tⁿ
     │       ├── ÷ t
     │       └── Second shifting
     │
     ├── 1
     ├── tⁿ
     ├── eᵃᵗ
     ├── sin at
     ├── cos at
     ├── sinh at
     └── cosh at
```

## The four transformations you absolutely must distinguish

$$
\boxed{
e^{at}f(t)
\quad\longrightarrow\quad
F(s-a)
}
$$

**First shifting**

---

$$
\boxed{
t^nf(t)
\quad\longrightarrow\quad
(-1)^nF^{(n)}(s)
}
$$

**Multiplication by $t^n$**

---

$$
\boxed{
\frac{f(t)}t
\quad\longrightarrow\quad
\int_s^\infty F(u)\,du
}
$$

**Division by $t$**

---

$$
\boxed{
f(t-a)u(t-a)
\quad\longrightarrow\quad
e^{-as}F(s)
}
$$

**Second shifting**

---

# 30. Final Exam Strategy

For every Laplace problem:

### Step 1 — Look at the shape

Ask:

> "Does this look like a standard formula?"

### Step 2 — Break sums apart

$$
\mathcal L\{f+g\}
=
\mathcal L\{f\}+\mathcal L\{g\}.
$$

### Step 3 — Look for $e^{at}$

If you see it multiplying the function:

$$
\boxed{s\to s-a}
$$

### Step 4 — Look for $t^n$

If you see $t^n f(t)$:

$$
\boxed{(-1)^n\frac{d^n}{ds^n}}
$$

### Step 5 — Look for division by $t$

$$
\boxed{\int_s^\infty F(u)\,du}
$$

### Step 6 — For inverse Laplace, complete the square

For example:

$$
s^2-4s+20
$$

becomes

$$
(s-2)^2+16.
$$

Then match it with:

$$
s^2+a^2.
$$

### Step 7 — Look for a delay

If the function is zero until $t=a$:

$$
\boxed{e^{-as}}
$$

is probably involved.

### Step 8 — If you have a product in $s$

Try partial fractions first; if that is inconvenient or the form matches the theorem, use:

$$
\boxed{\text{Convolution}}
$$

---

## Final Formula Sheet

$$
\boxed{
\begin{aligned}
\mathcal L\{1\}&=\frac1s\\[2mm]
\mathcal L\{t^n\}&=\frac{n!}{s^{n+1}}\\[2mm]
\mathcal L\{e^{at}\}&=\frac1{s-a}\\[2mm]
\mathcal L\{\sin at\}&=\frac{a}{s^2+a^2}\\[2mm]
\mathcal L\{\cos at\}&=\frac{s}{s^2+a^2}\\[2mm]
\mathcal L\{\sinh at\}&=\frac{a}{s^2-a^2}\\[2mm]
\mathcal L\{\cosh at\}&=\frac{s}{s^2-a^2}\\[2mm]
\mathcal L\{e^{at}f(t)\}&=F(s-a)\\[2mm]
\mathcal L\{t^nf(t)\}&=(-1)^nF^{(n)}(s)\\[2mm]
\mathcal L\left\{\frac{f(t)}t\right\}
&=\int_s^\infty F(u)\,du\\[2mm]
\mathcal L\{f(t-a)u(t-a)\}
&=e^{-as}F(s)\\[2mm]
\mathcal L^{-1}\left\{\frac{F(s)}s\right\}
&=\int_0^t f(u)\,du\\[2mm]
\mathcal L^{-1}\{F(s)G(s)\}
&=\int_0^t f(u)g(t-u)\,du
\end{aligned}
}
$$

