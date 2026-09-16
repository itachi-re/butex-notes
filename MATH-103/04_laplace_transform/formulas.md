### 1. The "Dictionary" (Standard Transforms of Basic Functions)

These formulas look like specific algebraic fractions because they are the direct results of plugging a specific time-domain function $f(t)$ into the core Laplace integral definition: $\int_0^\infty f(t)e^{-st} dt$. They transform specific "shapes" of signals into the frequency domain.

* **Constant / Step:** $\mathcal{L}\{1\} = \frac{1}{s}$
* **Power Rule:** $\mathcal{L}\{t^n\} = \frac{n!}{s^{n+1}}$
* **Exponential:** $\mathcal{L}\{e^{at}\} = \frac{1}{s - a}$
* **Sine:** $\mathcal{L}\{\sin(at)\} = \frac{a}{s^2 + a^2}$
* **Cosine:** $\mathcal{L}\{\cos(at)\} = \frac{s}{s^2 + a^2}$
* **Hyperbolic Sine:** $\mathcal{L}\{\sinh(at)\} = \frac{a}{s^2 - a^2}$
* **Hyperbolic Cosine:** $\mathcal{L}\{\cosh(at)\} = \frac{s}{s^2 - a^2}$
* **Delayed Step Function:** $\mathcal{L}\{u(t-a)\} = \frac{e^{-as}}{s}$

### 2. The "Grammar Rules" (Operational Properties)

These formulas look different—often containing $F(s)$ rather than specific fractions—because they do not tell you the transform of a specific signal. Instead, they tell you what happens to an *already known* transform $F(s)$ if you perform a mathematical operation (like multiplying, shifting, or differentiating) on the original function $f(t)$.

* **Linearity:** $\mathcal{L}\{a f(t) + b g(t)\} = a F(s) + b G(s)$
* *Why it looks like this:* It shows you can break apart sums and factor out constants.


* **First Shifting Theorem (Multiplying by an exponential):** $\mathcal{L}\{e^{at} f(t)\} = F(s - a)$
* *Why it looks like this:* Multiplying by $e^{at}$ in time causes the entire frequency spectrum to simply shift to the right by $a$.


* **Second Shifting Theorem (Time Delay):** $\mathcal{L}\{u(t-a) f(t-a)\} = e^{-as} F(s)$
* *Why it looks like this:* Delaying a signal in time (turning it on at time $a$) multiplies its frequency-domain representation by a phase shift factor of $e^{-as}$.


* **Multiplication by $t$:** $\mathcal{L}\{t f(t)\} = -\frac{d}{ds} F(s)$
* *Why it looks like this:* Multiplying by time $t$ maps exactly to taking the negative derivative of the $s$-domain function.


* **Differentiation in $t$:** $\mathcal{L}\{f'(t)\} = s F(s) - f(0)$
* *Why it looks like this:* Taking a derivative in time maps to simply multiplying by $s$ in frequency (minus the initial condition). This specific rule is the reason Laplace transforms are used to turn differential equations into simple algebra.


* **Integration in $t$:** $\mathcal{L}\left\{\int_0^t f(u) \, du\right\} = \frac{F(s)}{s}$
* *Why it looks like this:* Since differentiation is multiplication by $s$, integration (the opposite operation) is division by $s$.



### 3. The Limit Theorems

These look like limits because they are analytical shortcuts. They allow you to find the starting or ending values of a system directly from $F(s)$ without having to do the hard work of calculating the inverse Laplace transform back to $f(t)$.

* **Initial Value Theorem:** $f(0^+) = \lim_{s \to \infty} s F(s)$
* **Final Value Theorem:** $\lim_{t \to \infty} f(t) = \lim_{s \to 0} s F(s)$

**Summary of the Difference:**
When you see a formula resulting in fractions containing $(s^2 + a^2)$ or $s^{n+1}$, you are looking at the translation of a **specific signal**. When you see formulas containing $F(s-a)$, $e^{-as}$, or derivatives like $\frac{d}{ds}F(s)$, you are looking at an **operation** applied to a signal.

To solve complex exam problems, you will always identify the base signal first (using Category 1), and then apply the operational modifications (using Category 2).
