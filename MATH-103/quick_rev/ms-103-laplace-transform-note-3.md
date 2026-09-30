# Laplace Transform

*Reconstructed from handwritten lecture notes (pp. 51–84). Source-derived material is presented as in the notes; corrections to apparent handwriting/algebra slips are explicitly marked; anything not confidently recoverable from the source is marked **uncertain**.*

> **Note on formatting:** this file uses plain Unicode math (∫, √, Γ, π, superscript/subscript digits, `^(...)` for compound exponents) instead of LaTeX `$...$` delimiters, since GitHub's math renderer does not reliably render multi-line environments (`\begin{cases}...\end{cases}`, `\boxed{}`) inside inline math. Display equations are placed in fenced code blocks so spacing and line breaks always render correctly.

---

## 1. Definition of Laplace Transform

**Definition.** Let F(t) be a function of t, defined for all t > 0. The Laplace transform of F(t), denoted L{F(t)} or f(s), is defined by

```
L{F(t)} = f(s) = ∫₀^∞ e^(-st) F(t) dt
```

where s is a parameter (real or complex), chosen so the integral converges.

*Source: PDF 1, p. 51.*

**The Gamma function** (used repeatedly below):

```
Γ(n) = ∫₀^∞ e^(-t) t^(n-1) dt,      Γ(n+1) = n!
```

with the special value Γ(1/2) = √π.

---

## 2. Laplace Transforms of Elementary Functions

*Source: PDF 1, pp. 51–54.*

### (i) F(t) = 1

```
L{1} = ∫₀^∞ e^(-st) dt = lim[P→∞] [-e^(-st)/s]₀^P = 1/s,   s > 0
```

### (ii) F(t) = t

Using the substitution st = y (dt = dy/s):

```
L{t} = ∫₀^∞ e^(-st) t dt = (1/s²) ∫₀^∞ e^(-y) y dy = Γ(2)/s² = 1/s²
```

### (iii) F(t) = tⁿ

With the same substitution st = y:

```
L{tⁿ} = ∫₀^∞ e^(-st) tⁿ dt = (1/s^(n+1)) ∫₀^∞ e^(-y) yⁿ dy = Γ(n+1)/s^(n+1) = n!/s^(n+1)
```

(valid for integer n ≥ 0; the Gamma-function form extends this to non-integer n > -1.)

### (iv) F(t) = e^(at)

```
L{e^(at)} = ∫₀^∞ e^(-(s-a)t) dt = 1/(s-a),   s > a
```

### (v) F(t) = e^(-at)

```
L{e^(-at)} = ∫₀^∞ e^(-(s+a)t) dt = 1/(s+a),   s > -a
```

### (vi) F(t) = sin(at)  (derivation by repeated integration by parts)

Let I = ∫ e^(-st) sin(at) dt. Integrating by parts twice and solving for I:

```
I · (s² + a²)/a² = -(1/a²) [ s·e^(-st)·sin(at) + a·e^(-st)·cos(at) ]

⇒  I = -1/(a²+s²) · [ s·e^(-st)·sin(at) + a·e^(-st)·cos(at) ]
```

Evaluating from 0 to ∞:

```
L{sin(at)} = ∫₀^∞ e^(-st) sin(at) dt = a/(s²+a²)
```

### (vii) F(t) = cos(at)

By the same method (integration by parts):

```
L{cos(at)} = s/(s²+a²)
```

### (viii) F(t) = sinh(at)

Using sinh(at) = (e^(at) - e^(-at))/2 and linearity:

```
L{sinh(at)} = (1/2)·[ 1/(s-a) - 1/(s+a) ] = a/(s²-a²),   s > |a|
```

### (ix) F(t) = cosh(at)

Using cosh(at) = (e^(at) + e^(-at))/2:

```
L{cosh(at)} = (1/2)·[ 1/(s-a) + 1/(s+a) ] = s/(s²-a²),   s > |a|
```

### (x) F(t) = t·sin(at)

Derived (see §3.2 below, via multiplication by t) or directly by parts using L{sin(at)}:

```
L{t·sin(at)} = 2as/(a²+s²)²
```

### (xi) F(t) = t·cos(at)

```
L{t·cos(at)} = (s²-a²)/(a²+s²)²
```

### Piecewise-defined function

**Worked problem** (*Source: PDF 1, pp. 55–56*):

```
        ⎧ t,   0 < t < 2
F(t) =  ⎨
        ⎩ 3,   t > 2
```

```
L{F(t)} = ∫₀² e^(-st)·t dt + ∫₂^∞ e^(-st)·3 dt
```

Using ∫ e^(-st)·t dt = -t·e^(-st)/s - e^(-st)/s²  (by parts):

```
L{F(t)} = [ -t·e^(-st)/s - e^(-st)/s² ]₀²  +  [ -3·e^(-st)/s ]₂^∞

        = 1/s² - 2e^(-2s)/s - e^(-2s)/s² + 3e^(-2s)/s
```

**Result:**

```
L{F(t)} = 1/s² + e^(-2s)/s - e^(-2s)/s²
```

*(Simplified from the source's combined fraction (1 + s·e^(-2s) - e^(-2s)) / s²; algebraically equivalent.)*

---

## 3. Properties of Laplace Transform

*Source: PDF 1, pp. 56–58; PDF 2, pp. 59–65, 68–69.*

### 3.1 Linearity Property

```
L{λ₁F₁(t) + λ₂F₂(t) + λ₃F₃(t) + ...} = λ₁L{F₁(t)} + λ₂L{F₂(t)} + λ₃L{F₃(t)} + ...
```

where F₁, F₂, F₃, ... are functions of t and λ₁, λ₂, λ₃, ... are constants.

**Example 1.** L{3t² + 5e^(-2t) + 7sin(2t)}

```
= 3L{t²} + 5L{e^(-2t)} + 7L{sin(2t)}
= 3·(2!/s³) + 5·(1/(s+2)) + 7·(2/(s²+2²))
= 6/s³ + 5/(s+2) + 14/(s²+4)
```

**Example 2.** L{(t⁴+1)²} = L{t⁸+2t⁴+1} = 8!/s⁹ + 2·4!/s⁵ + 1/s

### 3.2 Multiplication by tⁿ (Derivative of the Transform)

If L{F(t)} = f(s), then

```
L{tⁿ F(t)} = (-1)ⁿ · dⁿf(s)/dsⁿ
```

**Example 1.** L{t²e^(5t)}: with F(t) = e^(5t), f(s) = 1/(s-5),

```
L{t²e^(5t)} = d²/ds² [ 1/(s-5) ] = 2/(s-5)³
```

*(An alternative computation appears in the source ending in 2/(s-3)³ — this is an apparent transcription slip; the algebra shown throughout uses s-5 consistently, and the correct result is 2/(s-5)³, matching the first method.)*

**Example 2.** L{t²sin(at)}: with f(s) = a/(s²+a²),

```
L{t²sin(at)} = d²/ds² [ a/(s²+a²) ]

  = [ (a²+s²)²·(-2a) - (-2as)·2(a²+s²)·2s ] / (a²+s²)⁴

  = [ 8as² - 2a(a²+s²) ] / (a²+s²)³
```

**Example 3.** L{t²cos(at)}: with f(s) = s/(a²+s²),

```
L{t²cos(at)} = d²/ds² [ s/(a²+s²) ] = (2s³-6a²s)/(a²+s²)³
```

**Example 4.** L{sin(3t)·(t²-3t+2)} = L{t²sin(3t)} - 3L{t·sin(3t)} + 2L{sin(3t)}

```
= (18s²-54)/(s²+9)³ - 18s/(s²+9)² + 6/(s²+9)
```

**Example 5.** ∫₀^∞ e^(-3t)·t·sin(t) dt: with F(t) = t·sin(t),

```
L{t·sin(t)} = -d/ds [ 1/(s²+1) ] = 2s/(s²+1)²

⇒ ∫₀^∞ e^(-st)·t·sin(t) dt = 2s/(s²+1)²
```

At s=3:  2·3 / (3²+1)² = 6/100 = 3/50.

**Example 6.** ∫₀^∞ t³e^(-t)sin(t) dt = 0  (evaluated at s=1):

```
L{t³sin(t)} = -d³/ds³ [ 1/(s²+1) ]

  = [ (s²+1)³·(-12s) - (2-6s²)·3(s²+1)²·2s ] / (s²+1)⁶
```

At s=1: numerator = (2)³·(-12) - (2-6)·(3)·(2)²·(2) = -96 - (-96) = 0, so the integral equals 0.

### 3.3 First Translation (Shifting) Property

If L{F(t)} = f(s), then

```
L{e^(at)F(t)} = f(s-a)         L{e^(-at)F(t)} = f(s+a)
```

**Example 1.** L{t²e^(5t)} = 2/(s-5)³  (as above, from f(s) = 2/s³).

**Example 2.** L{e^(2t)cos(5t)}: f(s) = s/(s²+25) ⇒ L{e^(2t)cos(5t)} = (s-2)/((s-2)²+25)

**Example 3.** L{e^(-2t)·(3cos(6t) - 5sin(5t))}:

```
f(s) = 3s/(s²+36) - 25/(s²+25)

⇒ L{...} = 3(s+2)/((s+2)²+36) - 5/((s+2)²+25)
```

**Example 4.** L{e^(-t)sin²(t)}: using sin²(t) = (1-cos(2t))/2,

```
f(s) = 1/(2s) - s/(2(s²+4))

⇒ L{e^(-t)sin²(t)} = 1/(2(s+1)) - (s+1)/(2[(s+1)²+4])
```

### 3.4 Second Translation (Shifting) Property

If L{F(t)} = f(s) and

```
        ⎧ F(t-a),  t > a
G(t) =  ⎨
        ⎩ 0,       t < a
```

then

```
L{G(t)} = e^(-as)·f(s)
```

**Proof.**

```
L{G(t)} = ∫₀ᵃ e^(-st)·0 dt + ∫ₐ^∞ e^(-st)·F(t-a) dt
```

Substituting u = t-a:

```
= ∫₀^∞ e^(-s(u+a))·F(u) du = e^(-as) ∫₀^∞ e^(-su)·F(u) du = e^(-as)·f(s)
```

**Example 1.**

```
        ⎧ cos(t - 2π/3),  t > 2π/3
F(t) =  ⎨
        ⎩ 0,               t < 2π/3
```

With u = t - 2π/3:  L{F(t)} = e^(-2πs/3)·L{cos(u)} = e^(-2πs/3) · s/(s²+1)

**Example 2.**

```
        ⎧ (t-1)²,  t > 1
F(t) =  ⎨
        ⎩ 0,       t < 1
```

With u = t-1:  L{F(t)} = e^(-s) ∫₀^∞ e^(-su)·u² du = e^(-s) · 2!/s³ = 2e^(-s)/s³

### 3.5 Division by t

If L{F(t)} = f(s), then

```
L[ F(t)/t ] = ∫ₛ^∞ f(u) du
```

(provided lim[t→0] F(t)/t exists.)

**Example 1.** L[ ∫₀ᵗ sin(t)/t dt ]: with F(t) = sin(t), f(s) = 1/(s²+1),

```
L[ sin(t)/t ] = ∫ₛ^∞ du/(u²+1) = tan⁻¹(∞) - tan⁻¹(s) = π/2 - tan⁻¹(s) = cot⁻¹(s) = tan⁻¹(1/s)
```

Then using the Laplace-of-integral rule (§3.7):

```
L[ ∫₀ᵗ sin(t)/t dt ] = (1/s)·tan⁻¹(1/s)
```

**Example 2.** L[ (e^(-at) - e^(-bt))/t ] = ln[ (s+b)/(s+a) ]

```
f(s) = 1/(s+a) - 1/(s+b)

⇒ ∫ₛ^∞ [ 1/(u+a) - 1/(u+b) ] du = [ ln(u+a) - ln(u+b) ]ₛ^∞ = ln[ (s+b)/(s+a) ]
```

**Example 3.** L[ (cos(at) - cos(bt))/t ] = (1/2)·ln[ (b²+s²)/(a²+s²) ]

**Example 4.** ∫₀^∞ sin(t)/t dt = π/2 — from Example 1 at s=0:  π/2 - tan⁻¹(0) = π/2.

**Example 5.** ∫₀^∞ (e^(-3t) - e^(-6t))/t dt = ln(2) — from Example 2 at s=0:  ln(6/3) = ln(2).

**Example 6.** ∫₀^∞ (cos(6t) - cos(4t))/t dt = ln(2/3) — from Example 3 at s=0:  (1/2)·ln(4²/6²) = ln(2/3).

**Example 7.** ∫₀^∞ e^(-t)sin(t)/t dt = π/4 — with F(t) = sin(t), L[sin(t)/t] = π/2 - tan⁻¹(s); at s=1:  π/2 - π/4 = π/4.

### 3.6 Change of Scale Property

If L{F(t)} = f(s), then

```
L{F(at)} = (1/a)·f(s/a)
```

**Example.** L{sin(at)}: with F(t) = sin(t), f(s) = 1/(s²+1),

```
L{sin(at)} = (1/a) · 1/((s/a)²+1) = a/(s²+a²)
```

(This reproduces the elementary transform of §2(vi) via the scaling rule.)

### 3.7 Laplace Transform of an Integral

If L{F(t)} = f(s), then

```
L[ ∫₀ᵗ F(u) du ] = f(s)/s
```

### 3.8 Laplace Transform of Derivatives

If L{F(t)} = f(s), then

```
L{F'(t)}   = s·f(s) - F(0)
L{F''(t)}  = s²·f(s) - s·F(0) - F'(0)
L{F'''(t)} = s³·f(s) - s²·F(0) - s·F'(0) - F''(0)
L{F⁽ⁿ⁾(t)} = sⁿ·f(s) - s^(n-1)·F(0) - s^(n-2)·F'(0) - ... - F⁽ⁿ⁻¹⁾(0)
```

**Proof (for n=1).**

```
L{F'(t)} = ∫₀^∞ e^(-st)F'(t) dt = [ e^(-st)F(t) ]₀^∞ + s∫₀^∞ e^(-st)F(t) dt = -F(0) + s·f(s)
```

**Example (deriving L{sin(at)} and L{cos(at)} from the derivative rule).**

Let F(t) = sin(at): F'(t) = a·cos(at), F(0) = 0. Then L{a·cos(at)} = s·L{sin(at)} - 0, giving L{cos(at)} = s/(a²+s²) once L{sin(at)} = a/(a²+s²) is known.

Let F(t) = cos(at): F'(t) = -a·sin(at), F(0) = 1. Then L{-a·sin(at)} = s·L{cos(at)} - 1 ⇒ L{cos(at)} = (1/s)[1 - a·L{sin(at)}] = s/(a²+s²) — consistent with the direct derivation in §2.

### 3.9 Periodic Functions

**Definition.** F(t) is periodic with period T > 0 if F(t+T) = F(t) for all t.

**Formula.**

```
L{F(t)} = [ ∫₀ᵀ e^(-st)F(t) dt ] / (1 - e^(-sT))
```

**Example 1** (*Source: PDF 4, pp. 76–77*).

```
        ⎧ 3t,  0 < t < 2
F(t) =  ⎨
        ⎩ 6,   2 < t < 4
```

with F(t+4) = F(t). Here T = 4.

```
L{F(t)} = [ ∫₀² e^(-st)·3t dt + ∫₂⁴ e^(-st)·6 dt ] / (1 - e^(-4s))
```

Working through the parts-integration and evaluating the limits:

```
L{F(t)} = (3 - 3e^(-2s) - 6s·e^(-4s)) / (s²·(1 - e^(-4s)))
```

**Example 2.** F(t) = t², 0 < t < 2, with F(t+2) = F(t). Here T = 2.

```
L{F(t)} = [ ∫₀² e^(-st)t² dt ] / (1 - e^(-2s))
```

Integrating by parts (three integrations in succession, or using tabular integration) and evaluating between 0 and 2:

```
L{F(t)} = (2 - 2e^(-2s) - 4s·e^(-2s) - 4s²·e^(-2s)) / (s³·(1 - e^(-2s)))
```

*(Rearranged from the source's -4s²e^(-2s) - 4se^(-2s) - 2e^(-2s) + 2, all over s³(1-e^(-2s)) — same expression, terms reordered.)*

---

## 4. Important Formula Sheet — Direct Laplace Transforms

| F(t) | L{F(t)} = f(s) | Conditions |
|---|---|---|
| 1 | 1/s | s > 0 |
| t | 1/s² | s > 0 |
| tⁿ (n a non-negative integer) | n!/s^(n+1) | s > 0 |
| tⁿ (n non-integer, n > -1) | Γ(n+1)/s^(n+1) | s > 0 |
| e^(at) | 1/(s-a) | s > a |
| e^(-at) | 1/(s+a) | s > -a |
| sin(at) | a/(s²+a²) | s > 0 |
| cos(at) | s/(s²+a²) | s > 0 |
| sinh(at) | a/(s²-a²) | s > \|a\| |
| cosh(at) | s/(s²-a²) | s > \|a\| |
| t·sin(at) | 2as/(s²+a²)² | s > 0 |
| t·cos(at) | (s²-a²)/(s²+a²)² | s > 0 |

---

## 5. Inverse Laplace Transform

*Source: PDF 4, pp. 66–75.*

### 5.1 Definition

If L{F(t)} = f(s), then F(t) is called the **inverse Laplace transform** of f(s):

```
F(t) = L⁻¹{f(s)}
```

### 5.2 Standard Inverse-Transform Formulas

```
L⁻¹[ 1/s^(n+1) ] = tⁿ/n!             (n integer)
L⁻¹[ 1/s^(n+1) ] = tⁿ/Γ(n+1)          (n fractional)

L⁻¹[ 1/(s-a) ]     = e^(at)
L⁻¹[ a/(s²+a²) ]   = sin(at)
L⁻¹[ s/(s²+a²) ]   = cos(at)
L⁻¹[ a/(s²-a²) ]   = sinh(at)
L⁻¹[ s/(s²-a²) ]   = cosh(at)
```

Useful Gamma-function identities used with fractional powers: Γ(n+1) = n·Γ(n), and Γ(1/2) = √π.

### 5.3 Properties of Inverse Laplace Transform

**(1) Linearity.**
```
L⁻¹{λ₁f₁(s) + λ₂f₂(s)} = λ₁L⁻¹{f₁(s)} + λ₂L⁻¹{f₂(s)}
```

**(2) First shifting property.**
```
L⁻¹{f(s-a)} = e^(at)·L⁻¹{f(s)}
```

**(3) Second shifting property.** If L⁻¹{f(s)} = F(t), then
```
                            ⎧ F(t-a),  t > a
L⁻¹{e^(-as)f(s)} =          ⎨
                            ⎩ 0,       t < a
```

**(4) Division by s.** If L⁻¹{f(s)} = F(t), then
```
L⁻¹[ f(s)/s ] = ∫₀ᵗ F(u) du
```

**(5) Convolution theorem.** If L⁻¹{f(s)} = F(t) and L⁻¹{g(s)} = G(t), then
```
L⁻¹{f(s)·g(s)} = ∫₀ᵗ F(u)·G(t-u) du
```

**(6) Inverse Laplace transform of derivatives.** If L⁻¹{f(s)} = F(t), then
```
L⁻¹{f⁽ⁿ⁾(s)} = L⁻¹[ dⁿf(s)/dsⁿ ] = (-1)ⁿ·tⁿ·F(t)
```

### 5.4 Worked Examples

**Ex-1.** L⁻¹[ 5/(s-2) + 1/(s²+4) ] = 5e^(2t) + (1/2)sin(2t)

**Ex-2.** L⁻¹[ (5s+4)/s³ - (2s-18)/(s²+9) + (24-30√5)/s⁴ ]

```
= 5t + 2t² - 2cos(3t) + 6sin(3t) + 4t³ - 16·t^(5/2)/√π
```

(using L⁻¹[1/s^(7/2)] = t^(5/2)/Γ(7/2), and Γ(7/2) = (5/2)·(3/2)·(1/2)·√π.)

**Ex-3.** L⁻¹[ (3s-2)/s^(5/2) - 7/(3s+2) ] = 6√t/√π - 8t^(3/2)/(3√π) - (7/3)e^(-2t/3)

**Ex-4.** L⁻¹[ 5/(s+1)⁵ ]: write 5 = 5(s+1-1)..., using 1/(s+1)⁴ - 1/(s+1)⁵ split:

```
L⁻¹[ (s+1-1)/(s+1)⁵ ] = e^(-t)L⁻¹[1/s⁴] - e^(-t)L⁻¹[1/s⁵] = t³/(6e^t) - t⁴/(12e^t)
```

**Ex-5.** L⁻¹[ 1/((s-2)²+4²) ] = (1/4)e^(2t)sin(4t)

**Ex-6.** L⁻¹[ (5s-6)/(s²+9) - (s-15)/(s²-25) ] = 5cos(3t) - 2sin(3t) - cosh(5t) + 3sinh(5t)

**Ex-7.** L⁻¹[ (6s-4)/(s²-4s+20) ]: complete the square, s²-4s+20 = (s-2)²+4², and 6s-4 = 6(s-2)+8:

```
= 6e^(2t)cos(4t) + 2e^(2t)sin(4t)
```

**Ex-8.** L⁻¹[ (4s+12)/(s²+8s+16) ]: s²+8s+16 = (s+4)², and 4s+12 = 4(s+4)-4:

```
= 4e^(-4t) - 4e^(-4t)·t = 4e^(-4t)(1-t)
```

**Ex-9.** L⁻¹[ (3s+7)/(s²-2s-3) ]: s²-2s-3 = (s-1)²-2², 3s+7 = 3(s-1)+10:

```
= 3e^t·cosh(2t) + 5e^t·sinh(2t)
```

**Ex-10.** L⁻¹[ e^(-5s)/(s-2)⁴ ]: first L⁻¹[1/(s-2)⁴] = e^(2t)·t³/3! = t³e^(2t)/6 = F(t). Then by second shifting (a=5):

```
                                    ⎧ (1/6)(t-5)³e^(2(t-5)),  t > 5
L⁻¹[ e^(-5s)·1/(s-2)⁴ ] =           ⎨
                                    ⎩ 0,                      t < 5
```

**Ex-11.** L⁻¹[ e^(-4πs/5)/(s²+25) ]: F(t) = (1/5)sin(5t), a = 4π/5:

```
                              ⎧ (1/5)sin(5(t - 4π/5)),  t > 4π/5
L⁻¹[...] =                    ⎨
                              ⎩ 0,                       t < 4π/5
```

**Ex-12.** L⁻¹[ (s+1)e^(-πs)/(s²+s+1) ]: complete the square, s²+s+1 = (s+1/2)²+3/4:

```
F(t) = e^(-t/2)·[ cos(√3·t/2) + (1/√3)·sin(√3·t/2) ]

                                          ⎧ e^(-(t-π)/2)·[cos(√3(t-π)/2) + (1/√3)sin(√3(t-π)/2)],  t > π
L⁻¹[ e^(-πs)·(s+1)/(s²+s+1) ] =           ⎨
                                          ⎩ 0,                                                       t < π
```

**Ex-13 (Partial fractions).** L⁻¹[ (2s-1)/((s-1)(s-2)) ]: writing (2s-1)/((s-1)(s-2)) ≡ A/(s-1) + B/(s-2) gives A=-1, B=3:

```
= 3e^(2t) - e^t
```

**Ex-14 (Division by s, repeated).** L⁻¹[ 1/(s²(s-1)) ]: with F(t) = e^t from f(s) = 1/(s-1),

```
L⁻¹[ f(s)/s ]  = ∫₀ᵗ e^u du = e^t - 1
L⁻¹[ f(s)/s² ] = ∫₀ᵗ (e^u - 1) du = e^t - t - 1
```

**Ex-15.** L⁻¹[ 1/(s³(s²+1)) ]: with F(t) = sin(t) from f(s) = 1/(s²+1), repeated division by s:

```
L⁻¹[ f(s)/s ]  = 1 - cos(t)
L⁻¹[ f(s)/s² ] = t - sin(t)
L⁻¹[ f(s)/s³ ] = t²/2 + cos(t) - 1
```

**Ex-16.** L⁻¹[ 1/(s²(s²+4)) ]: with F(t) = (1/2)sin(2t),

```
L⁻¹[ f(s)/s ]        = 1/4 - (1/4)cos(2t)
L⁻¹[ 1/(s²(s²+4)) ]  = t/4 - sin(2t)/8
```

**Ex-17.** L⁻¹[ ln((s+2)/(s+1)) ] = (e^(-t) - e^(-2t)) / t

Derivation: let f(s) = ln((s+2)/(s+1)). Then f'(s) = 1/(s+2) - 1/(s+1), so L⁻¹{f'(s)} = e^(-2t) - e^(-t). Since L⁻¹{f'(s)} = -t·F(t),

```
F(t) = (e^(-2t) - e^(-t)) / (-t) = (e^(-t) - e^(-2t)) / t
```

**Ex-18.** L⁻¹[ ln(1 + 1/s²) ] = (2 - 2cos(t)) / t

Derivation: f'(s) = -2/(s(s²+1)) = -2·(1/s - s/(s²+1)), so L⁻¹{f'(s)} = 2cos(t) - 2 = -t·F(t), giving F(t) = (2 - 2cos(t)) / t.

### 5.5 Convolution Theorem — Worked Examples

**Statement.** If L⁻¹{f(s)} = F(t) and L⁻¹{g(s)} = G(t), then

```
L⁻¹{f(s)·g(s)} = (F*G)(t) = ∫₀ᵗ F(u)·G(t-u) du
```

**Ex-19.** L⁻¹[ 1/(s-3) · 1/(s-1) ]: F(t) = e^(3t), G(t) = e^t.

```
∫₀ᵗ e^(3u)·e^(t-u) du = e^t ∫₀ᵗ e^(2u) du = e^t·[e^(2u)/2]₀ᵗ = (e^(3t) - e^t) / 2
```

**Ex-20.** L⁻¹[ 1/((s+2)²(s-2)) ]: F(t) = t·e^(-2t), G(t) = e^(2t).

```
∫₀ᵗ u·e^(-2u)·e^(2(t-u)) du = e^(2t) ∫₀ᵗ u·e^(-4u) du = e^(2t)/16 - t·e^(-2t)/4 - e^(-2t)/16
```

**Ex-21.** L⁻¹[ 1/((s+1)(s²+1)) ]: F(t) = sin(t), G(t) = e^(-t).

```
e^(-t) ∫₀ᵗ sin(u)·e^u du = e^(-t)·(1/2)[e^u·sin(u) - e^u·cos(u)]₀ᵗ
                          = (1/2)sin(t) - (1/2)cos(t) + (1/2)e^(-t)
```

**Ex-22.** L⁻¹[ s/((s+1)(s²+1)) ]: F(t) = cos(t), G(t) = e^(-t).

```
e^(-t) ∫₀ᵗ e^u·cos(u) du = (e^(-t)/2)[e^u·sin(u) + e^u·cos(u)]₀ᵗ
                          = (1/2)sin(t) + (1/2)cos(t) - (1/2)e^(-t)
```

**Ex-23.** L⁻¹[ 1/(s²(s-1)) ] (via convolution, cross-checking Ex-14): F(t) = e^t, G(t) = t.

```
∫₀ᵗ e^u·(t-u) du = t(e^t-1) - [u·e^u - e^u]₀ᵗ = t·e^t - t - (t·e^t - e^t - 1) = e^t - t - 1
```

*(Matches Ex-14 exactly — a good internal consistency check.)*

**Ex-24.** L⁻¹[ 2/((s-1)(s²+4)) ]: F(t) = sin(2t), G(t) = e^t.

```
e^t ∫₀ᵗ sin(2u)·e^(-u) du,    ∫ e^(-u)sin(2u) du = (1/5)e^(-u)sin(2u) - (2/5)e^(-u)cos(2u)

L⁻¹[ 2/((s-1)(s²+4)) ] = (1/5)sin(2t) - (2/5)cos(2t) + (2/5)e^t
```

**Ex-25.** L⁻¹[ 1/(s-4)³ ] (first shifting, not convolution): = e^(4t)·t²/2! = (t²/2)e^(4t)

**Ex-26.** L⁻¹[ (4s+12)/(s²+8s+16) ] (repeat of Ex-8): = 4e^(-4t)(1-t)

**Ex-27 (Combined partial fractions with a quadratic factor).** L⁻¹[ (s-1)/((s+3)(s²+2s+2)) ]

Let (s-1)/((s+3)(s²+2s+2)) ≡ A/(s+3) + (Bs+C)/(s²+2s+2). Putting s=-3: A=-4/5. Comparing coefficients: B=4/5, and putting s=0: C=1/5. Completing the square s²+2s+2 = (s+1)²+1:

```
L⁻¹[...] = -(4/5)e^(-3t) + (4/5)e^(-t)cos(t) - (3/5)e^(-t)sin(t)
```

---

## 6. Laplace Transform of Differential Equations

*Source: PDF 5, pp. 80–81.*

**General method.** Apply L to both sides using L{F'(t)} = s·f(s) - F(0), L{F''(t)} = s²·f(s) - s·F(0) - F'(0), substitute initial conditions, solve algebraically for Y(s) = L{y(t)}, decompose into partial fractions, and take L⁻¹.

### Ex-1

```
dy/dt + 2y = e^t,      y(0) = 1
```

Taking L:  s·Y(s) - y(0) + 2Y(s) = 1/(s-1)

```
Y(s)·(s+2) = 1/(s-1) + 1 = s/(s-1)  ⇒  Y(s) = s / ((s-1)(s+2))
```

Partial fractions: Y(s) = 1/(3(s-1)) + 2/(3(s+2))  *(reconciled from the source's numerator 1+s-1=s)*

```
y(t) = (1/3)e^t + (2/3)e^(-2t)
```

### Ex-2

```
y'' - 3y' + 2y = e^(2t),      y(0) = -3,  y'(0) = 5
```

Taking L:

```
s²Y(s) - s·y(0) - y'(0) - 3[s·Y(s) - y(0)] + 2Y(s) = 1/(s-2)
```

Substituting y(0)=-3, y'(0)=5:

```
Y(s)·(s²-3s+2) = 1/(s-2) - 3s + 14
```

Since s²-3s+2 = (s-2)(s-1):

```
Y(s) = (-3s²+20s-27) / ((s-2)²(s-1))
```

Partial fractions (-3s²+20s-27)/((s-1)(s-2)²) ≡ A/(s-1) + B/(s-2) + C/(s-2)²: putting s=1 gives A=-10; putting s=2 gives C=1; comparing s²-coefficients gives B=7.

```
Y(s) = -10/(s-1) + 7/(s-2) + 1/(s-2)²
```

```
y(t) = -10e^t + 7e^(2t) + t·e^(2t)
```

### Ex-3

```
y'' - 9y = e^t,      y(0) = -3,  y'(0) = 5
```

Taking L:  s²Y(s) - s·y(0) - y'(0) - 9Y(s) = 1/(s-1)

```
Y(s)·(s²-9) = 1/(s-1) - 3s + 5

⇒ Y(s) = (-3s²+8s-4) / ((s-1)(s²-9)) = (-3s²+8s-4) / ((s-1)(s+3)(s-3))
```

Partial fractions (evaluating the numerator at s=1, -3, 3):

```
Y(s) = -(1/8)·1/(s-1) - (55/24)·1/(s+3) - (7/12)·1/(s-3)
```

```
y(t) = -(1/8)e^t - (55/24)e^(-3t) - (7/12)e^(3t)
```

### Linear ODE with variable coefficients

**Problem.** t·y'' + (1-2t)·y' - 2y = 0,      y(0) = 1,  y'(0) = 2

Taking L on both sides and using L{tG(t)} = -d/ds L{G(t)} on the terms containing t:

```
L{ty''} + L{y'} - 2L{ty'} - 2L{y} = 0
```

```
-d/ds[ s²Y - s·y(0) - y'(0) ] + [ sY - y(0) ] + 2·d/ds[ sY - y(0) ] - 2Y = 0
```

Expanding the derivatives and simplifying (the constant terms cancel):

```
-s²·dY/ds - sY + 2s·dY/ds = 0
⇒ s·dY/ds - 2·dY/ds + Y = 0
⇒ (s-2)·dY/ds + Y = 0
```

This is a first-order separable ODE in Y(s):

```
dY/Y = -ds/(s-2)
⇒ ln(Y) = -ln(s-2) + ln(c)
⇒ Y(s) = c/(s-2)
```

```
y(t) = L⁻¹[ c/(s-2) ] = c·e^(2t)
```

Applying y(0)=1 gives c=1:

```
y(t) = e^(2t)
```

---

## 7. Applications to Partial Differential Equations

*Source: PDF 6, pp. 83–84.*

For a function U(x,t), with L{U(x,t)} = u(x,s) (Laplace transform taken with respect to t, treating x as a parameter):

```
L[ ∂U/∂t ]  = s·u(x,s) - U(x,0)             L[ ∂U/∂x ]  = du/dx

L[ ∂²U/∂t² ] = s²u(x,s) - s·U(x,0) - Uₜ(x,0),   Uₜ = ∂U/∂t

L[ ∂²U/∂x² ] = d²u/dx²
```

### Worked problem (heat equation)

```
∂U/∂t = ∂²U/∂x²,      0 < x < 1,  t > 0
```

with U(x,0) = 3sin(2πx), U(0,t) = 0, U(1,t) = 0.

Taking L (in t) of the PDE:

```
s·u(x,s) - U(x,0) = d²u/dx²
⇒ d²u/dx² - s·u = -3sin(2πx)          (★)
```

**Auxiliary equation:** m² - s = 0 ⇒ m = ±√s.

**Complementary function:** u_c = c₁e^(√s·x) + c₂e^(-√s·x)

**Particular integral** (undetermined coefficients on the RHS -3sin(2πx)):

```
u_p = 1/(D²-s) · (-3sin(2πx)) = -3sin(2πx)/(-4π²-s) = 3sin(2πx)/(s+4π²)
```

**General solution:**

```
u(x,s) = c₁e^(√s·x) + c₂e^(-√s·x) + 3sin(2πx)/(s+4π²)          (iii)
```

Transforming the boundary conditions: u(0,s)=0 and u(1,s)=0. Substituting x=0 into (iii):

```
0 = c₁ + c₂          (iv)
```

Substituting x=1 (noting sin(2π)=0):

```
0 = c₁e^(√s) + c₂e^(-√s)          (v)
```

Equations (iv) and (v) together force c₁=c₂=0. Hence

```
u(x,s) = 3sin(2πx) / (s+4π²)
```

Taking the inverse Laplace transform (in s, treating x as a parameter):

```
U(x,t) = 3sin(2πx) · L⁻¹[ 1/(s+(2π)²) ]
```

```
U(x,t) = 3·sin(2πx)·e^(-4π²t)
```

---

## 8. Periodic Functions — Formula Recap

```
L{F(t)} = [ ∫₀ᵀ e^(-st)F(t) dt ] / (1 - e^(-sT)),      F(t+T) = F(t)
```

See §3.9 for the two fully worked examples.

---

## 9. Exam-Oriented Quick Reference

**Core transform pairs to memorize:**

| F(t) | f(s) |
|---|---|
| 1 | 1/s |
| tⁿ | n!/s^(n+1) |
| e^(±at) | 1/(s∓a) |
| sin(at), cos(at) | a/(s²+a²), s/(s²+a²) |
| sinh(at), cosh(at) | a/(s²-a²), s/(s²-a²) |

**Common technique patterns from the source notes:**

- **tⁿ × trig/exponential** → differentiate f(s) with respect to s, n times, with sign (-1)ⁿ (§3.2).
- **e^(at) × F(t)** → shift s → s-a in f(s) (§3.3). Very often faster than direct integration.
- **Piecewise / delayed functions** (`t > a`) → recognize as F(t-a)u(t-a) and apply the second shifting property, multiplying by e^(-as) (§3.4).
- **F(t)/t** → integrate f(u) from s to ∞; setting s=0 afterward evaluates classic integrals like ∫₀^∞ sin(t)/t dt = π/2 (§3.5).
- **Denominator is a repeated linear or irreducible quadratic factor with no clean partial fraction** → try **convolution** instead of partial fractions (§5.5).
- **Denominator is a quadratic s²+bs+c** → always **complete the square** first: s²+bs+c = (s+b/2)² + (c-b²/4), then match to shifted sin/cos or sinh/cosh forms.
- **Repeated division by s** (i.e. dividing by s, s², s³, ...) corresponds to repeated integration of F(t) from 0 to t — used heavily in Ex-14 to Ex-16.
- **Solving ODEs**: transform → substitute initial conditions immediately → solve the resulting *algebraic* equation for Y(s) → partial fractions → inverse transform. The differential equation becomes algebra.
- **Variable-coefficient ODEs** (t·y'', t·y' terms) → these become *first-order ODEs in Y(s)* after using the tⁿF(t) ↔ (-1)ⁿf⁽ⁿ⁾(s) rule; solve that ODE in s, then invert.
- **PDEs**: transform in t only, turning the PDE into an ODE in x with s as a parameter; solve using auxiliary equation + particular integral; then apply the (transformed) boundary conditions to fix constants; invert last.

**Typical mistakes to avoid (evident from the source's self-corrections):**

- Keep careful track of the sign when integrating by parts twice to solve for I (as in L{sin(at)}, L{cos(at)}) — a sign slip flips the final answer.
- When shifting s → s-a, **substitute consistently everywhere**, including inside already-simplified fractions (the notes contain one likely slip of this kind, corrected in §3.2 Example 1).
- Always double-check partial-fraction constants by re-substituting convenient values of s (e.g. the roots of the denominator), as done throughout §6.
- For periodic functions, correctly identify T from the *stated* recurrence F(t+T)=F(t) before setting up the integral.

---

## Notes on Source Traceability

- **§2 (Elementary transforms):** PDF 1, pp. 51–54.
- **§3.1–3.2 (Linearity, multiplication by tⁿ):** PDF 1, pp. 56–58.
- **§3.3–3.9 (Shifting, division by t, scaling, integrals/derivatives, periodic functions):** PDF 2 (pp. 59–65) and PDF 4 (pp. 76–77).
- **§5 (Inverse Laplace transform, all examples):** PDF 4, pp. 66–75.
- **§6 (ODEs via Laplace transform):** PDF 5, pp. 80–81, including the variable-coefficient example, pp. 82–83.
- **§7 (PDE application):** PDF 5–6, pp. 83–84.

One handwritten aside on p. 82 ("Waste of time. You will fail either way.") is a margin note unrelated to the mathematics and has been omitted from the reconstructed notes.
