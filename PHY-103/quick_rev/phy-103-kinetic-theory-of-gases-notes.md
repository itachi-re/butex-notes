# Quick Revision — Kinetic Theory of Gases · PHY-103

---

## Key Definitions

- **Heat:** Energy in transit due to temperature difference. Not stored as "heat."
- **Temperature:** Determines direction of heat flow. Kelvin scale: $T(\text{K}) = T(°C) + 273.15$.
- **Newton's Law of Cooling:** $T(t) = T_s + (T_0 - T_s)e^{-kt}$; valid for small $\Delta T$.
- **Isothermal:** $T = \text{const}$, $\Delta U = 0$, $PV = \text{const}$.
- **Adiabatic:** $Q = 0$, $\Delta U = -W$, $PV^\gamma = \text{const}$.
- **KTG Postulate (key):** $T \propto \langle KE\rangle = \frac{3}{2}k_BT$ per molecule.
- **Degrees of freedom ($f$):** monoatomic = 3; diatomic = 5; non-linear polyatomic = 6.
- **Mean free path:** Average distance between collisions.
- **Van der Waals:** Corrects ideal gas for molecular volume ($b$) and attraction ($a$).
- **Critical coefficient:** $Z_c = P_cV_c/(RT_c) = 3/8$ (VdW prediction).

---

## Key Formulae

| # | Formula | Condition |
|---|---------|-----------|
| 1 | $Q = mc\Delta T$ | No phase change |
| 2 | $Q = mL$ | Phase change at const. $T$ |
| 3 | $T(t) = T_s + (T_0-T_s)e^{-kt}$ | Newton's cooling |
| 4 | $W_{\text{iso}} = nRT\ln(V_f/V_i)$ | Isothermal |
| 5 | $PV^\gamma = \text{const}$ | Adiabatic (ideal gas) |
| 6 | $W_{\text{adia}} = (P_iV_i - P_fV_f)/(\gamma-1)$ | Adiabatic |
| 7 | $\gamma = (f+2)/f$ | Equipartition |
| 8 | $P = \frac{1}{3}\rho v_{\text{rms}}^2$ | KTG pressure |
| 9 | $v_{\text{rms}} = \sqrt{3RT/M}$ | Ideal gas |
| 10 | $\langle KE\rangle = \frac{3}{2}k_BT$ | Per molecule |
| 11 | $\lambda = \frac{k_BT}{\sqrt{2}\pi d^2 P}$ | Mean free path |
| 12 | $(P + a/V_m^2)(V_m - b) = RT$ | Van der Waals |
| 13 | $V_c = 3b$, $T_c = 8a/(27Rb)$, $P_c = a/(27b^2)$ | Critical constants |
| 14 | $Z_c = 3/8$ | VdW universal |

---

## Common Exam Question Types

**Type 1 — Calorimetry / heat balance:**
Set up $\sum Q_i = 0$, include phase changes if temperature reaches 0 °C or 100 °C,
use correct $L$ for the phase involved.
*Answer skeleton:* $m_1c_1(T_f - T_1) + m_2c_2(T_f - T_2) + \ldots = 0$ → solve for $T_f$.

**Type 2 — Newton's cooling:**
Given temperatures at two times, find $k$; then use $T(t)$ to find unknown time or temperature.
*Answer skeleton:* Sub into $T(t) = T_s + (T_0-T_s)e^{-kt}$ → take $\ln$ → solve linearly.

**Type 3 — Adiabatic / isothermal P-V-T problems:**
Identify process, apply correct $P$–$V$ law, find $W$ with correct formula, apply
First Law to get $Q$ and $\Delta U$.
*Answer skeleton:* State process → write constraint → compute final state → compute work.

**Type 4 — KTG and speed:**
$v_{\text{rms}} = \sqrt{3RT/M}$; $\langle KE\rangle = \frac{3}{2}k_BT$;
pressure check via $P = \frac{1}{3}\rho v_{\text{rms}}^2$.

**Type 5 — Van der Waals / critical:**
Given $a$, $b$: find $T_c$, $P_c$, $V_c$, $Z_c$. Or: compare $P_{\text{ideal}}$ vs
$P_{\text{VdW}}$ at given $V_m$, $T$.
