# 12. L-C Oscillations

**Course:** PHY-103 (Physics–II) · **Unit:** Magnetism · **Topic 12 of 13**

---

## A. Physical Idea

Topic 11 established qualitatively that energy oscillates between a capacitor and an inductor in a closed LC loop. Here, we derive the precise mathematical law governing this oscillation, starting from Kirchhoff's voltage law, and show that charge (and current) vary **sinusoidally** in time with a specific angular frequency determined entirely by $L$ and $C$.

## B. Definition

**L-C oscillation:** the free, undriven, periodic variation of charge and current in a closed loop containing only an inductor and a capacitor (idealized, zero resistance).

> **Plain-English meaning:** connect a charged capacitor directly to an inductor, and the current and charge will oscillate sinusoidally forever (in the ideal case), at a frequency set purely by the circuit's own $L$ and $C$ values.

## C. Governing Equation

$$
\frac{d^2q}{dt^2}+\frac{1}{LC}q=0, \qquad \omega=\frac{1}{\sqrt{LC}}, \qquad T=2\pi\sqrt{LC}
$$

| Symbol | Meaning |
|---|---|
| $q$ | Instantaneous charge on the capacitor (C) |
| $L$ | Inductance (H) |
| $C$ | Capacitance (F) |
| $\omega$ | Angular frequency of oscillation (rad/s) |
| $T$ | Period of oscillation (s) |

## D. Derivation — From Kirchhoff's Law to the LC Differential Equation

**Step 1.** Consider a loop containing a capacitor of capacitance $C$ (instantaneous charge $q$) connected directly to an inductor of inductance $L$ carrying instantaneous current $I=dq/dt$. There is no battery and no resistor.

**Step 2.** Apply Kirchhoff's voltage law around the loop. Going around the loop, the voltage drop across the capacitor is $q/C$, and the voltage across the inductor (self-induced emf opposing the current's tendency to change) is $L\,dI/dt$. Since the loop has no external source, the sum of voltage changes around the loop must equal zero:

$$
\frac{q}{C} + L\frac{dI}{dt} = 0
$$

(The precise sign convention depends on the chosen positive direction for current relative to increasing charge, but the physics — energy sloshing between $C$ and $L$ — is unaffected. We adopt the convention that gives the standard oscillator equation below.)

**Step 3.** Express current in terms of charge: $I = dq/dt$, so $dI/dt = d^2q/dt^2$. Substituting:

$$
\frac{q}{C} + L\frac{d^2q}{dt^2} = 0
$$

**Step 4.** Divide through by $L$:

$$
\frac{d^2q}{dt^2} + \frac{q}{LC} = 0
$$

$$
\boxed{\frac{d^2q}{dt^2}+\frac{1}{LC}q=0}
$$

**Step 5 — Recognizing the form.** This equation has exactly the same mathematical form as the equation of **simple harmonic motion**, $\dfrac{d^2x}{dt^2}+\omega^2x=0$, with $q$ playing the role of $x$ and the coefficient $1/LC$ playing the role of $\omega^2$.

**Step 6 — Reading off the angular frequency.** Comparing term by term:

$$
\omega^2 = \frac{1}{LC} \implies \boxed{\omega = \frac{1}{\sqrt{LC}}}
$$

**Step 7 — Period.** Since $\omega = 2\pi/T$, rearranging gives:

$$
T = \frac{2\pi}{\omega} = 2\pi\sqrt{LC}
$$

$$
\boxed{T = 2\pi\sqrt{LC}}
$$

**Step 8 — General solution.** The general solution to this differential equation (by direct analogy with SHM) is:

$$
q(t) = Q_{max}\cos(\omega t + \phi)
$$

where $Q_{max}$ is the amplitude (maximum charge) and $\phi$ is a phase constant set by initial conditions (e.g., $\phi=0$ if the capacitor starts fully charged at $t=0$).

**Step 9 — Current from charge.** Differentiating:

$$
I(t) = \frac{dq}{dt} = -\omega Q_{max}\sin(\omega t+\phi)
$$

This shows $I(t)$ is $90^\circ$ **out of phase** with $q(t)$ — confirming the qualitative observation from Topic 11 that current is maximum exactly when charge is zero.

## E. Energy Expressions

**Electric energy:**

$$
U_E = \frac{q^2}{2C} = \frac{Q_{max}^2}{2C}\cos^2(\omega t+\phi)
$$

**Magnetic energy:** substituting $I(t)$ into $U_B=\frac12LI^2$:

$$
U_B = \frac12L\omega^2Q_{max}^2\sin^2(\omega t+\phi)
$$

Using $\omega^2=1/LC$:

$$
U_B = \frac{Q_{max}^2}{2C}\sin^2(\omega t+\phi)
$$

**Total energy:**

$$
U_E+U_B = \frac{Q_{max}^2}{2C}\left[\cos^2(\omega t+\phi)+\sin^2(\omega t+\phi)\right] = \frac{Q_{max}^2}{2C}
$$

using the identity $\cos^2\theta+\sin^2\theta=1$. The total energy is **constant** in time, as required — a direct mathematical confirmation of the energy-conservation picture developed qualitatively in Topic 11.

## F. Phase Relationship Between Charge and Current

| Quantity | Expression | Behavior |
|---|---|---|
| Charge | $q(t)=Q_{max}\cos(\omega t)$ | Maximum at $t=0$ |
| Current | $I(t)=-\omega Q_{max}\sin(\omega t)$ | Zero at $t=0$; maximum a quarter-period later |

Charge and current are $90^\circ$ ($\pi/2$ radians) out of phase — this phase relationship is a direct mathematical signature of the same underlying energy-exchange process described qualitatively in Topic 11.

## Units and Dimensions

| Quantity | Symbol | SI Unit | Dimension |
|---|---|---|---|
| Angular frequency | $\omega$ | rad/s | $\text{T}^{-1}$ |
| Period | $T$ | s | $\text{T}$ |
| Capacitance | $C$ | farad (F) | $\text{M}^{-1}\text{L}^{-2}\text{T}^4\text{I}^2$ |
| Inductance | $L$ | henry (H) | $\text{M L}^2\text{T}^{-2}\text{I}^{-2}$ |

**Check of $\omega=1/\sqrt{LC}$:** $[LC] = (\text{M L}^2\text{T}^{-2}\text{I}^{-2})(\text{M}^{-1}\text{L}^{-2}\text{T}^4\text{I}^2) = \text{T}^2$, so $[1/\sqrt{LC}] = \text{T}^{-1}$ = rad/s ✅

---

## Definitions & Key Terms

1. **Angular frequency of LC oscillation ($\omega$)** — $\omega=1/\sqrt{LC}$, the rate (in rad/s) at which charge and current oscillate.
   > Plain-English: how "fast" the electrical sloshing between capacitor and inductor happens.

2. **Resonant/natural frequency** — the frequency at which an LC circuit naturally oscillates when left undriven; this frequency reappears as the resonant frequency in driven AC circuits (RLC circuits, radio tuning, etc.).

---

## Worked Examples

### Example 1 — Foundational

An LC circuit has $L=0.2\ \text{H}$ and $C=5\times10^{-6}\ \text{F}$. Find the angular frequency and period of oscillation.

1. **Given:** $L=0.2\ \text{H}$, $C=5\times10^{-6}\ \text{F}$.
2. **Required:** $\omega$, $T$.
3. **Equation:** $\omega=1/\sqrt{LC}$.
4. **Substitution:** $LC = 0.2\times5\times10^{-6}=1\times10^{-6}$.
5. **Algebra:** $\sqrt{LC}=1\times10^{-3}$; $\omega = 1/10^{-3}=1000$.
6. **Unit check:** rad/s ✅
7. **Final answer:** $\boxed{\omega = 1000\ \text{rad/s}}$; $T=2\pi/\omega = 2\pi/1000 \approx \boxed{6.28\times10^{-3}\ \text{s}}$
8. **Interpretation:** This circuit oscillates roughly 159 times per second ($f=1/T\approx159\ \text{Hz}$).

### Example 2 — Intermediate

For the same circuit, if the maximum charge is $Q_{max}=2\times10^{-4}\ \text{C}$, find the maximum current.

1. **Given:** $\omega=1000\ \text{rad/s}$, $Q_{max}=2\times10^{-4}\ \text{C}$.
2. **Required:** $I_{max}$.
3. **Equation:** $I_{max}=\omega Q_{max}$ (from $I(t)=-\omega Q_{max}\sin(\omega t)$, magnitude at extremum).
4. **Substitution:** $I_{max} = 1000\times2\times10^{-4}$.
5. **Algebra:** $I_{max}=0.2$.
6. **Unit check:** (rad/s)(C) = A ✅
7. **Final answer:** $\boxed{I_{max}=0.2\ \text{A}}$

### Example 3 — Advanced / Exam-Level

An LC circuit with $L=0.4\ \text{H}$, $C=10\times10^{-6}\ \text{F}$, and $Q_{max}=3\times10^{-4}\ \text{C}$ starts with the capacitor fully charged at $t=0$. Find (a) the charge, and (b) the current, at $t=T/8$ (one-eighth of a period).

1. **Given:** $L=0.4$ H, $C=10^{-5}$ F, $Q_{max}=3\times10^{-4}$ C, $\phi=0$ (fully charged at $t=0$).
2. **Required:** $q$ and $I$ at $t=T/8$.
3. **Step 1 — Find $\omega$:** $LC = 0.4\times10^{-5}=4\times10^{-6}$; $\sqrt{LC}=2\times10^{-3}$; $\omega=1/(2\times10^{-3})=500\ \text{rad/s}$.
4. **Step 2 — Find $\omega t$ at $t=T/8$:** Since $\omega T=2\pi$, $\omega(T/8) = 2\pi/8=\pi/4$ (i.e. $45^\circ$).
5. **Step 3 — (a) Charge:** $q=Q_{max}\cos(\pi/4) = 3\times10^{-4}\times0.7071$.
6. **(a) Final answer:** $\boxed{q\approx2.12\times10^{-4}\ \text{C}}$
7. **Step 4 — (b) Current:** $I=-\omega Q_{max}\sin(\pi/4) = -500\times3\times10^{-4}\times0.7071$.
8. **(b) Algebra:** $500\times3\times10^{-4}=0.15$; $0.15\times0.7071\approx0.106$.
9. **(b) Final answer:** $\boxed{I \approx -0.106\ \text{A}}$ (magnitude $0.106$ A; negative sign indicates direction relative to the chosen positive convention — the capacitor is discharging at this instant).

---

## Diagram

![LC circuit and sinusoidal charge/current oscillation](../../assets/12_lc_oscillations.svg)

*Figure 1: An ideal LC circuit (top) and the resulting sinusoidal, 90°-out-of-phase variation of charge $q(t)$ and current $I(t)$ over one period (bottom).*

---

## Common Mistakes

- ❌ **Mistake:** Forgetting the negative sign or the $LC$ product structure when writing the governing differential equation.
  ✅ **Correct:** The correct form is $\dfrac{d^2q}{dt^2}+\dfrac{1}{LC}q=0$; the coefficient of $q$ is $1/LC$, not $LC$ or $1/(LC)^2$.

- ❌ **Mistake:** Computing $\omega=1/(LC)$ instead of $\omega=1/\sqrt{LC}$.
  ✅ **Correct:** Always take the square root: $\omega^2=1/LC$, so $\omega=1/\sqrt{LC}$; a very common algebra slip.

- ❌ **Mistake:** Assuming $q(t)$ and $I(t)$ reach their maxima at the same time.
  ✅ **Correct:** $q(t)$ and $I(t)$ are $90^\circ$ out of phase — $I$ is zero when $q$ is maximum, and vice versa.

- ❌ **Mistake:** Using the period formula for a mechanical pendulum ($T=2\pi\sqrt{l/g}$) by analogy instead of the correct LC formula.
  ✅ **Correct:** The correct LC period is $T=2\pi\sqrt{LC}$ — analogous to the mass-spring oscillator $T=2\pi\sqrt{m/k}$, not the pendulum.

---

## Practice Problems

1. Derive the differential equation for an ideal LC circuit starting from Kirchhoff's voltage law, showing every step.
2. An LC circuit has $L=0.05\ \text{H}$ and $C=2\times10^{-6}\ \text{F}$. Find its natural frequency $f=\omega/2\pi$.
3. Show, using the energy expressions for $U_E(t)$ and $U_B(t)$, that the total energy $U_E+U_B$ is constant in time.
4. Explain the physical significance of the $90^\circ$ phase difference between charge and current in an LC oscillator.
5. **(Exam-style, no scaffolding)** An LC circuit has capacitance $4\times10^{-6}\ \text{F}$ and oscillates with period $2\times10^{-3}\ \text{s}$. Find the inductance $L$.

<details>
<summary>Solution (Problem 5)</summary>

Step 1: $T=2\pi\sqrt{LC} \implies \sqrt{LC} = T/(2\pi)$.

Step 2: $\sqrt{LC} = 2\times10^{-3}/(2\pi) \approx 3.183\times10^{-4}$.

Step 3: $LC = (3.183\times10^{-4})^2 \approx 1.013\times10^{-7}$.

Step 4: $L = (LC)/C = 1.013\times10^{-7}/(4\times10^{-6})$.

**Answer:** $L \approx 0.0253\ \text{H}$

</details>

---

## Summary

| Concept | Key Result | Condition / Limit |
|---|---|---|
| Governing equation | $\ddot{q}+\dfrac{1}{LC}q=0$ | Ideal (resistanceless) LC circuit |
| Angular frequency | $\omega=1/\sqrt{LC}$ | — |
| Period | $T=2\pi\sqrt{LC}$ | — |
| Solutions | $q(t)=Q_{max}\cos(\omega t+\phi)$, $I(t)=-\omega Q_{max}\sin(\omega t+\phi)$ | — |
| Total energy | $U_E+U_B=Q_{max}^2/2C$ = constant | Energy conservation |

Having derived the mathematics of LC oscillation and noted its identical form to the simple-harmonic-motion equation, the final topic makes this **analogy with SHM** fully explicit, term by term.
