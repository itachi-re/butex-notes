# 10. Hysteresis Curve

**Course:** PHY-103 (Physics–II) · **Unit:** Magnetism · **Topic 10 of 13**

---

## A. Physical Idea

In ferromagnetic materials, magnetization $M$ (or the resulting field $B$ inside the material) does not respond instantly and reversibly to the applied field $H$ — it "lags behind," a phenomenon called **hysteresis** (from the Greek for "lagging" or "coming later"). This lag arises because domain walls (the boundaries between differently oriented magnetic domains) do not move perfectly reversibly; they get temporarily "pinned" by microscopic defects and must be forced past these obstacles, dissipating energy as heat each cycle. The resulting plot of $B$ versus $H$ traces a closed loop rather than a single curve — the **hysteresis loop**.

## B. Definition

**Hysteresis:** the phenomenon in which the magnetization of a ferromagnetic material depends not only on the current applied field but also on its magnetic history.

> **Plain-English meaning:** a ferromagnet "remembers" how it was magnetized before — you can't predict its current magnetization just from the current field; you also need to know what field it experienced most recently.

## C. Key Quantities on the $B$–$H$ Curve

| Term | Definition | Plain-English |
|---|---|---|
| **Saturation ($B_s$)** | The maximum magnetization achieved when essentially all domains are aligned with $H$; further increases in $H$ produce negligible increase in $B$. | The material is "maxed out" — no more domains left to align. |
| **Retentivity / Remanence ($B_r$)** | The residual magnetic field $B$ that remains when $H$ is reduced to zero after saturation. | How much "memory" of magnetization is left when you turn the field off. |
| **Coercivity ($H_c$)** | The reverse field strength required to bring $B$ back to zero after saturation. | How hard you have to "push backward" to erase the retained magnetization. |
| **Hysteresis loss** | Energy dissipated as heat per unit volume per cycle, equal to the area enclosed by the $B$–$H$ loop. | Energy "wasted" every time the material is cycled through magnetization and demagnetization. |

## D. Tracing the Complete $B$–$H$ Curve

**Step 1 — Initial magnetization curve.** Starting from an unmagnetized sample ($B=H=0$), as $H$ increases, $B$ rises steeply at first (domain walls sweep rapidly), then more slowly, and finally flattens as the sample approaches **saturation** $B_s$. This initial curve is *not* retraced on subsequent cycles.

**Step 2 — Decreasing $H$ from saturation.** As $H$ is reduced from its maximum value back toward zero, $B$ decreases but lags *above* the initial magnetization curve (domain walls resist moving back). When $H=0$, $B$ does not return to zero but remains at the **retentivity** $B_r$ — the sample is now a permanent magnet.

**Step 3 — Reversing $H$ (negative direction).** As $H$ is made increasingly negative, $B$ continues to decrease, crossing zero at $H=-H_c$, the **coercivity**. Continuing further, $B$ eventually reaches $-B_s$ (saturation in the reverse direction).

**Step 4 — Increasing $H$ back from $-B_s$.** As $H$ increases from its most negative value back toward and through zero, $B$ again lags, now *below* the path it took in Step 2, reaching $+B_r$ at $H=0$, then crossing zero at $H=+H_c$, and finally returning to $+B_s$ — closing the loop.

**Step 5 — The closed loop.** Subsequent cycles retrace this same closed curve (the "major loop"), which is symmetric about the origin. The curve never retraces itself along a single path except at the extreme (saturation) points — this path-dependence is the defining signature of hysteresis.

## E. Physical Meaning of the Enclosed Area

**Derivation sketch.** The work done per unit volume to change the magnetization by $dB$ against the material's internal resistance is $H\,dB$ (this follows from the energy density of the magnetic field, $u = \int H\,dB$, generalized to include the material response). Over one complete cycle around the closed hysteresis loop:

$$
W_{\text{cycle}} = \oint H\,dB
$$

Since the loop is traversed in a definite sense (not reversible), this closed-loop integral is **non-zero** and equals the **area enclosed by the loop**. Physically, this represents energy irreversibly converted to heat (via microscopic friction-like domain-wall motion and eddy currents) during each magnetization cycle — it cannot be recovered.

$$
\boxed{W_{\text{cycle}} = \oint H\,dB = \text{Area of hysteresis loop (energy loss per unit volume per cycle)}}
$$

## F. Soft vs. Hard Magnetic Materials

| Property | Soft Magnetic Materials | Hard Magnetic Materials |
|---|---|---|
| Loop shape | Thin, tall (narrow area) | Wide, fat (large area) |
| Coercivity $H_c$ | Low | High |
| Retentivity $B_r$ | Can be high, but easily demagnetized | High and hard to demagnetize |
| Hysteresis loss | Low | High |
| Examples | Soft iron, mu-metal, silicon steel | Steel, alnico, ferrite (ceramic magnets), neodymium |
| Applications | Transformer cores, motor cores, relays (needs frequent, low-loss re-magnetization) | Permanent magnets, magnetic recording media (needs to *retain* magnetization stably) |

**Reasoning:** transformers and motors are cycled through magnetization many times per second (e.g., 50–60 Hz AC), so a **soft** material with a thin loop minimizes hysteresis loss (heat, wasted energy) per cycle. Permanent magnets, by contrast, need to hold their magnetization robustly against demagnetizing influences, so a **hard** material with high coercivity and retentivity is preferred, even though it would be wasteful to cycle repeatedly.

## Units and Dimensions

| Quantity | Symbol | SI Unit | Dimension |
|---|---|---|---|
| Saturation field | $B_s$ | T | $\text{M T}^{-2}\text{I}^{-1}$ |
| Retentivity | $B_r$ | T | $\text{M T}^{-2}\text{I}^{-1}$ |
| Coercivity | $H_c$ | A/m | $\text{I L}^{-1}$ |
| Hysteresis loss (per cycle, per volume) | $W$ | $\text{J/m}^3$ | $\text{M L}^{-1}\text{T}^{-2}$ |

**Check:** $[H][B] = (\text{I L}^{-1})(\text{M T}^{-2}\text{I}^{-1}) = \text{M L}^{-1}\text{T}^{-2}$ = J/m³ ✅

---

## Definitions & Key Terms

1. **Saturation** — the state in which nearly all magnetic domains are aligned; further increase in $H$ produces negligible increase in $B$.

2. **Retentivity (remanence)** — the residual field $B_r$ remaining when $H$ returns to zero after saturation.

3. **Coercivity** — the reverse field $H_c$ needed to reduce $B$ to zero after saturation.

4. **Hysteresis loop** — the closed $B$–$H$ curve traced over a full magnetization cycle; its enclosed area represents energy loss per cycle.

---

## Worked Examples

### Example 1 — Foundational

For a certain sample, the hysteresis loop has retentivity $B_r = 1.2\ \text{T}$ and coercivity $H_c = 800\ \text{A/m}$. State, with reasoning, whether this is more characteristic of a soft or hard magnetic material.

1. **Given:** $B_r=1.2\ \text{T}$ (high), $H_c=800\ \text{A/m}$.
2. **Required:** Classification.
3. **Reasoning:** Typical soft magnetic materials have $H_c$ well below $100\ \text{A/m}$ (often just a few A/m), while hard magnetic materials typically have $H_c$ in the hundreds to thousands of A/m range.
4. **Final answer:** $\boxed{\text{This is a hard magnetic material}}$ — the high coercivity and high retentivity together indicate the material strongly resists demagnetization, suitable for permanent-magnet applications.

### Example 2 — Intermediate

The area enclosed by a hysteresis loop for a transformer core material is measured as $250\ \text{J/m}^3$ per cycle. If the core has volume $0.002\ \text{m}^3$ and operates at $50\ \text{Hz}$, find the power lost to hysteresis.

1. **Given:** Loss per cycle per volume $=250\ \text{J/m}^3$, $V=0.002\ \text{m}^3$, $f=50\ \text{Hz}$.
2. **Required:** Power lost.
3. **Reasoning:** Energy lost per cycle (total) $= 250\times0.002$. Power = energy per cycle × cycles per second.
4. **Substitution:** Energy/cycle $= 0.5\ \text{J}$; Power $= 0.5\times50$.
5. **Algebra:** Power $=25$.
6. **Unit check:** J × Hz = J/s = W ✅
7. **Final answer:** $\boxed{P = 25\ \text{W}}$
8. **Interpretation:** This power is continuously dissipated as heat in the core — a major reason transformer cores are made from carefully chosen low-hysteresis-loss (soft) materials.

### Example 3 — Advanced / Exam-Level

Explain, using the concept of the hysteresis loop area, why using a **hard** magnetic material for a transformer core (instead of a soft one) would be a poor engineering choice, even though hard materials retain magnetization more strongly.

1. **Given:** Choice between hard and soft core material for an AC transformer (cycled at mains frequency).
2. **Required:** Explanation.
3. **Reasoning:** A transformer core is magnetized and demagnetized on every AC cycle (e.g. 50 or 60 times per second). Each cycle traces out the material's hysteresis loop, dissipating energy proportional to the loop's enclosed area. A hard magnetic material has a **wide** loop (high coercivity, high retentivity), meaning a large area and hence large energy loss **per cycle**; at mains frequency, this loss is incurred 50–60 times every second, producing substantial continuous heating and wasted electrical energy (reduced efficiency), and potentially even damaging overheating.
4. **Conclusion:** $\boxed{\text{A soft magnetic material (thin loop, low area) is far preferable for AC transformer cores}}$ — the very property that makes hard materials good for *permanent* magnets (strong retention against demagnetizing influences) makes them poor for repeatedly-cycled applications, since each act of "un-sticking" the domains from their retained state costs proportionally more energy.

---

## Diagram

![B-H hysteresis loop](../../assets/10_hysteresis_curve.svg)

*Figure 1: The B–H hysteresis loop, showing the initial magnetization curve, saturation ($B_s$), retentivity ($B_r$), and coercivity ($H_c$). The enclosed area equals the energy dissipated per unit volume per cycle.*

---

## Common Mistakes

- ❌ **Mistake:** Confusing retentivity (a value of $B$) with coercivity (a value of $H$).
  ✅ **Correct:** Retentivity $B_r$ is measured in tesla (residual field when $H=0$); coercivity $H_c$ is measured in A/m (reverse field needed to bring $B$ to zero). They are different quantities on different axes of the loop.

- ❌ **Mistake:** Assuming the hysteresis loop is retraced along the *same* path in both directions.
  ✅ **Correct:** The increasing-$H$ and decreasing-$H$ branches of the loop are genuinely different curves — that's precisely what makes it a "loop" rather than a single curve, and is the defining signature of hysteresis.

- ❌ **Mistake:** Believing a large hysteresis loss is always undesirable.
  ✅ **Correct:** For permanent magnets, a large (hard) loop is desirable for magnetic stability; large loss/area is only undesirable in repeatedly-cycled applications like transformers and motors.

- ❌ **Mistake:** Treating the initial magnetization curve as part of the repeating hysteresis loop.
  ✅ **Correct:** The initial curve (from the unmagnetized state) is traced only once; all subsequent cycles follow the closed loop, not the initial curve.

---

## Practice Problems

1. Define retentivity and coercivity, including their SI units.
2. Explain, in terms of domain-wall motion, why hysteresis loss occurs in ferromagnetic materials.
3. Sketch (in words) the four key stages of tracing a complete hysteresis loop starting from an unmagnetized sample.
4. Explain why permanent magnets should be made from hard magnetic materials while transformer cores should be made from soft magnetic materials.
5. **(Exam-style, no scaffolding)** A hysteresis loop for a sample encloses an area of 400 J/m³. If the sample has mass 0.5 kg and density 7800 kg/m³, and is cycled at 60 Hz, find the total power dissipated as heat due to hysteresis.

<details>
<summary>Solution (Problem 5)</summary>

Step 1: Volume $= m/\rho = 0.5/7800$.

Step 2: $V \approx 6.41\times10^{-5}\ \text{m}^3$.

Step 3: Energy loss per cycle $= 400\times6.41\times10^{-5} \approx 0.02564\ \text{J}$.

Step 4: Power $=$ energy per cycle $\times$ frequency $= 0.02564\times60$.

**Answer:** $P \approx 1.54\ \text{W}$

</details>

---

## Summary

| Concept | Key Result | Condition / Limit |
|---|---|---|
| Retentivity | $B_r$ at $H=0$ after saturation | Ferromagnetic materials |
| Coercivity | $H_c$: reverse field to zero $B$ | Ferromagnetic materials |
| Loop area | $\oint H\,dB$ = energy loss/volume/cycle | Non-zero due to irreversibility |
| Material choice | Soft → transformers; Hard → permanent magnets | Based on cycling frequency needs |

Having covered static and cyclic magnetic behavior, the unit now turns to **dynamic** magnetic-electric energy exchange, beginning with the general concept of **electromagnetic oscillation**.
