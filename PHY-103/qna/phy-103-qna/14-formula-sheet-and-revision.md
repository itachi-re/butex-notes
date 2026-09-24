# High-Frequency / Repeated Topics

[← Index](README.md) · [Previous](13-2018-2017-exams.md)

| Topic | Years Appeared |
|---|---|
| Gauss's law / Ohm's law / Capacitor definitions + Wheatstone bridge derivation + $1/C_s$ formula | 2023, 2018 |
| Wheatstone bridge balance numerical (8,16,12,48 Ω) | 2022, 2017 |
| Hall effect & Hall voltage derivation | 2023, 2021 (implicit via bridge topic set), 2020, 2018 |
| Torque on current-carrying loop | 2023, 2018, 2017 |
| Faraday's law & Lenz's law (+ conservation of energy) | 2023, 2022, 2021, 2020, 2018, 2017 |
| Hysteresis / hysteresis curve | 2023, 2021, 2020 |
| RC circuit — time constant & charging equation | 2023, 2018, 2017 |
| Resonant frequency of RLC + numerical (50 µH, 5×10⁻⁴ µF, 100 Ω) | 2023, 2018 |
| LR circuit growth/decay of current | 2021, 2020, 2019 (qualitatively via topic), 2017 |
| LR time-constant numerical (1/3 max value in 5 s) | 2022, 2020 |
| Adiabatic curve higher than isothermal (proof) | 2023, 2022, 2018 |
| $PV^\gamma=$ constant proof | 2023 |
| Carnot engine / cycle definition & reversibility proof | 2023, 2022, 2020, 2018 |
| Efficiency of Carnot engine ($\eta=1-T_2/T_1$) | 2023, 2021, 2017, 2020, 2022 |
| Carnot numerical (T1=450K,T2=350K / 177°C,77°C) | 2023, 2017 |
| $C_p-C_v=R$ derivation | 2023, 2021 (via molar specific heat), 2019, 2018 |
| Distinguish 1st & 2nd law of thermodynamics | 2023, 2021, 2020 (implicit), 2017 |
| Second law of thermodynamics — statement | 2023, 2021, 2020, 2018 |
| Mean free path derivation + molecular-diameter numerical (N₂, 0.8×10⁻⁷ m) | 2023, 2020, 2018 |
| Degrees of freedom + kinetic theory postulates | 2023, 2022, 2018 |
| Entropy constant in reversible process | 2023, 2022, 2021, 2018 |
| Photoelectric effect & Einstein's equation | 2023, 2022, 2021, 2020, 2017 |
| Work-function numerical (Na, λ₀=6800 Å) | 2021, 2020 |
| Compton effect | 2023, 2022, 2017 |
| Newton's law of cooling | 2023, 2022, 2021, 2020, 2018 |
| Van der Waals equation / critical constants | 2020, 2018 |
| Blackbody / emissive / absorptive power / Kirchhoff's radiation law | 2022, 2018, 2017 |
| Isothermal work-done derivation | 2021, 2017 |
| Average KE of a molecule at 300 K (numerical) | 2021, 2019 |
| Pressure of a perfect gas from kinetic theory ($P=\frac{1}{3}\rho\overline{c^2}$ or $\frac{2}{3}$KE form) | 2019, 2018 |
| Clausius–Clapeyron equation | 2018, 2017 |
| Maxwell's thermodynamic relations | 2020 |
| Zeroth law / first law = conservation of energy | 2022 |
| Isentropic process — work done | 2022 |
| Platinum resistance thermometer | 2020 |
| Coulomb's law + parallel-plate capacitor numerical | 2022, 2017 |
| Electric dipole field ($\propto 2p/r^3$) | 2022 |
| Self-induction numerical (400 turns, flux) | 2021 |

# Physics-II Formula Sheet

## Electricity

$$
F=\frac{1}{4\pi\epsilon_0}\frac{q_1q_2}{r^2}\quad\text{(Coulomb's law)}\qquad \vec{E}=\frac{\vec{F}}{q_0}=\frac{1}{4\pi\epsilon_0}\frac{q}{r^2}\hat{r}\quad\text{(field intensity)}
$$

$$
\oint\vec{E}\cdot d\vec{A}=\frac{q_{enc}}{\epsilon_0}\quad\text{(Gauss's law)}\qquad E_{axial\ dipole}=\frac{1}{4\pi\epsilon_0}\frac{2p}{r^3}\quad(p=q\cdot2a)
$$

$$
C=\frac{Q}{V}\qquad C_{\text{parallel plate}}=\frac{\epsilon_0\epsilon_rA}{d}\qquad \frac{1}{C_s}=\frac{1}{C_1}+\frac{1}{C_2}+\frac{1}{C_3}\ (\text{series})\qquad C_p=C_1+C_2+C_3\ (\text{parallel})
$$

$$
U=\frac{1}{2}CV^2=\frac{Q^2}{2C}=\frac{1}{2}QV\qquad V=IR\qquad \rho=\frac{RA}{l}
$$

Wheatstone bridge balance: $\dfrac{P}{Q}=\dfrac{R}{S}$

where $\epsilon_0=8.854\times10^{-12}\,\text{F/m}$, $p$ = dipole moment, $R$ = resistance, $\rho$ = resistivity.

## Magnetism

$$
\vec{F}=q(\vec{v}\times\vec{B})\qquad F=BIl\sin\theta\qquad \tau=NIAB\sin\theta
$$

$$
V_H=\frac{IB}{nqt}\qquad L=\frac{N\phi}{I}\qquad\mathcal{E}=-N\frac{d\phi}{dt}\ \text{(Faraday's law)}
$$

where $B$ = magnetic flux density, $I$ = current, $l$ = length, $A$ = loop area, $\theta$ = angle, $n$ = carrier density, $t$ = thickness, $L$ = self-inductance, $N$ = turns, $\phi$ = flux/turn.

## Electromagnetic Induction

$$
\mathcal{E}=-L\frac{dI}{dt}\ \text{(self)}\qquad \mathcal{E}_2=-M\frac{dI_1}{dt}\ \text{(mutual)}
$$

Lenz's law: opposes flux change (energy conservation).

## AC / RLC Circuits

$$
q(t)=Q_0(1-e^{-t/RC})\ \text{(RC charging)}\qquad q(t)=Q_0e^{-t/RC}\ \text{(RC discharging)}\qquad \tau_{RC}=RC
$$

$$
i(t)=I_0(1-e^{-Rt/L})\ \text{(LR growth)}\qquad i(t)=I_0e^{-Rt/L}\ \text{(LR decay)}\qquad \tau_{LR}=\frac{L}{R}
$$

$$
f_0=\frac{1}{2\pi\sqrt{LC}}\quad\text{(resonant frequency of series RLC)}
$$

## Kinetic Theory of Gases

$$
P=\frac{1}{3}\frac{nm\overline{c^2}}{V}=\frac{1}{3}\rho\overline{c^2}=\frac{2}{3}(\text{KE per unit volume})\qquad \overline{KE}=\frac{1}{2}m\overline{c^2}=\frac{3}{2}kT
$$

$$
\lambda=\frac{1}{\sqrt{2}\,n\pi d^2}\quad\text{(mean free path)}\qquad k=1.38\times10^{-23}\,\text{J K}^{-1}
$$

## Thermodynamics

$$
dQ=dU+dW\ \text{(1st law)}\qquad C_p-C_v=R\qquad PV^\gamma=\text{const (adiabatic)}\qquad PV=RT\ (\text{ideal gas, 1 mole})
$$

$$
W_{isothermal}=RT\ln\frac{V_2}{V_1}\qquad W_{isentropic}=\frac{R(T_1-T_2)}{\gamma-1}=\frac{P_1V_1-P_2V_2}{\gamma-1}
$$

$$
\eta_{Carnot}=1-\frac{T_2}{T_1}\qquad \frac{Q_2}{Q_1}=\frac{T_2}{T_1}\qquad dS=\frac{dQ_{rev}}{T}\qquad E_{unavailable}=T_0\Delta S
$$

$$
\frac{dP}{dT}=\frac{L}{T(V_2-V_1)}\quad\text{(Clausius–Clapeyron)}\qquad \left(P+\frac{a}{V^2}\right)(V-b)=RT\quad\text{(van der Waals)}
$$

$$
V_c=3b,\quad P_c=\frac{a}{27b^2},\quad T_c=\frac{8a}{27Rb}\qquad R=8.314\,\text{J mol}^{-1}\text{K}^{-1}
$$

Maxwell relations: $\left(\dfrac{\partial T}{\partial V}\right)_S=-\left(\dfrac{\partial P}{\partial S}\right)_V$, $\left(\dfrac{\partial T}{\partial P}\right)_S=\left(\dfrac{\partial V}{\partial S}\right)_P$, $\left(\dfrac{\partial S}{\partial V}\right)_T=\left(\dfrac{\partial P}{\partial T}\right)_V$, $\left(\dfrac{\partial S}{\partial P}\right)_T=-\left(\dfrac{\partial V}{\partial T}\right)_P$

## Radiation

$$
\frac{e_\lambda}{a_\lambda}=E_\lambda(\text{black body})\quad\text{(Kirchhoff's law of radiation)}
$$

## Quantum Physics

$$
h\nu=h\nu_0+\frac{1}{2}mv_{max}^2\quad\text{(Einstein photoelectric equation)}\qquad W_0=h\nu_0=\frac{hc}{\lambda_0}
$$

$$
\lambda'-\lambda=\frac{h}{m_0c}(1-\cos\varphi)\quad\text{(Compton shift)}
$$

where $h=6.626\times10^{-34}\,\text{J s}$, $c=3\times10^8\,\text{m/s}$.

# Final Exam Preparation Section

## Most Important Topics (by frequency across 2017–2023)

1. Faraday's/Lenz's law and conservation of energy — appeared **6 of 7** years
2. Carnot engine/cycle: definition, reversibility, efficiency — **5–6** years
3. Newton's law of cooling — **5** years
4. Photoelectric effect & Einstein's equation — **5** years
5. Adiabatic vs isothermal curves, $C_p-C_v=R$, entropy-constant-in-reversible-process, 2nd law statement/distinction — **4** years each
6. Hall effect, RC time constant/charging, mean free path, degrees-of-freedom/kinetic postulates — **3** years each
7. Wheatstone bridge (derivation + numerical), torque on loop, hysteresis, Compton effect, LR growth/decay — **2–3** years each

## Most Important Derivations (memorize/practice first)

- Wheatstone bridge balance condition **[D-14]**
- Hall voltage **[D-17]**
- Torque on current loop **[D-18]**
- RC charging equation & time constant **[D-23]**
- LR growth/decay **[D-24]**
- $PV^\gamma=$ constant and adiabatic-steeper-than-isothermal **[D-29], [D-30]**
- $C_p-C_v=R$ **[D-31]**
- Carnot efficiency $\eta=1-T_2/T_1$ and reversibility of the cycle **[D-37], [D-38]**
- Mean free path **[D-45]**
- Einstein's photoelectric equation **[D-47]**
- Compton shift formula **[D-48]**

## Most Important Numerical Problem Types

- Wheatstone bridge: finding series/parallel resistance for balance (8,16,12,48 Ω pattern)
- RLC resonant frequency (50 µH, $5\times10^{-4}$ µF, 100 Ω pattern)
- Carnot engine heat-rejected/efficiency (450 K & 350 K, or 177 °C & 77 °C pattern)
- LR time constant from "reaches 1/3 (or 1/2) of max current in given time"
- Mean free path → molecular diameter (N₂ gas pattern)
- Photoelectric work function from threshold wavelength (Na, 6800 Å pattern)
- Adiabatic $T$–$P$ or $T$–$V$ relations (tyre-burst / air-expansion pattern)
- Average KE of a gas molecule at a given $T$ ($\frac{3}{2}kT$)
- Parallel-plate capacitor with/without dielectric slab

## Last-Minute Revision Checklist

- [ ] Gauss's law statement + point-charge proof
- [ ] Coulomb's law statement, and its deduction from Gauss's law
- [ ] Capacitor/capacitance definitions; parallel-plate formula; series combination formula
- [ ] Ohm's law, specific resistance, Kirchhoff's two laws
- [ ] Wheatstone bridge balance condition derivation
- [ ] Hall effect & Hall voltage formula
- [ ] Torque on a current loop; force on a conductor; Lorentz force
- [ ] Faraday's & Lenz's laws; hysteresis curve; self/mutual induction
- [ ] RC and LR transient equations, both forms (growth/charging, decay/discharging), and time constants $RC$, $L/R$
- [ ] Resonant frequency formula $f_0=1/(2\pi\sqrt{LC})$
- [ ] $PV^\gamma=$const, adiabatic vs isothermal slope comparison
- [ ] $C_p-C_v=R$; molar specific heat; degrees of freedom
- [ ] Zeroth, first, second laws of thermodynamics; reversible vs irreversible
- [ ] Entropy definition, "constant in reversible process," unavailable energy $T_0\Delta S$
- [ ] Carnot cycle diagram, efficiency formula, reversibility proof
- [ ] Clausius–Clapeyron equation; Maxwell's relations (four boxed forms)
- [ ] Kinetic theory postulates; pressure formula $P=\frac{1}{3}\rho\overline{c^2}$; mean free path formula
- [ ] Van der Waals equation and critical constants $V_c=3b,\ P_c=a/27b^2,\ T_c=8a/27Rb$
- [ ] Blackbody radiation, emissive/absorptive power, Kirchhoff's radiation law
- [ ] Einstein's photoelectric equation and work function formula $W_0=hc/\lambda_0$
- [ ] Compton effect and shift formula with Compton wavelength value $2.43\times10^{-12}$ m
- [ ] Standard constants: $h,\ c,\ k,\ \epsilon_0,\ \mu_0,\ R$

---

[← Index](README.md) · [Previous](13-2018-2017-exams.md)
