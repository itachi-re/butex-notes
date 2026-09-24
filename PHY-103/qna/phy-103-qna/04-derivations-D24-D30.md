# Physics-II (PHY-103) — Standard Derivations D-24 to D-30

[← Index](README.md) · [Previous](03-derivations-D18-D23.md) · [Next →](05-derivations-D31-D39.md)

## [D-24] R–L Circuit: Growth and Decay of Current

Circuit with EMF $\mathcal{E}$, resistance $R$, inductance $L$ in series, switch closed at $t=0$.

**Growth:** $\mathcal{E}=iR+L\dfrac{di}{dt}$. Solving (same method as D-23):

$$
i(t)=\frac{\mathcal{E}}{R}\left(1-e^{-Rt/L}\right)=I_0(1-e^{-t/\tau}),\qquad \tau=\frac{L}{R}
$$

**Decay** (EMF removed, current decays from $I_0$):

$$
L\frac{di}{dt}+iR=0\ \Rightarrow\ i(t)=I_0e^{-Rt/L}
$$

```text
Growth: i(t)                   Decay: i(t)
   |   _____---                |\
I0 |-/                      I0 |  \___
   | /  (63% at t=L/R)         |      \---___
   |/___________ t             |___________ t
```

This shows the current in an L–R circuit rises (or falls) exponentially, approaching (or leaving) its steady value $I_0=\mathcal{E}/R$, with time constant $\tau=L/R$ — analogous to, and derived the same way as, the R–C case, confirming the current increases/decreases exponentially rather than linearly.

## [D-25] Resonant Frequency of a Series R-L-C Circuit

In a series RLC circuit driven by AC of angular frequency $\omega$, the impedance is

$$
Z=\sqrt{R^2+\left(\omega L-\frac{1}{\omega C}\right)^2}
$$

**Resonance** occurs when the inductive and capacitive reactances are equal, $X_L=X_C$, so $Z=R$ is minimum and current is maximum:

$$
\omega_0 L=\frac{1}{\omega_0 C}\ \Rightarrow\ \omega_0^2=\frac{1}{LC}\ \Rightarrow\ \omega_0=\frac{1}{\sqrt{LC}}
$$

$$
f_0=\frac{1}{2\pi\sqrt{LC}}
$$

## [D-26] Distinguish Between Reversible and Irreversible Processes

| Reversible | Irreversible |
|---|---|
| Occurs infinitely slowly (quasi-static); system always in equilibrium | Occurs at finite rate; passes through non-equilibrium states |
| Can be exactly retraced, restoring both system and surroundings to initial state | Cannot be exactly retraced without a net change somewhere |
| No dissipative effects (friction, etc.) | Involves dissipation (friction, free expansion, heat flow across finite $\Delta T$) |
| Entropy of universe unchanged ($\Delta S_{univ}=0$) | Entropy of universe increases ($\Delta S_{univ}>0$) |
| An idealisation; never perfectly achieved | All natural/real processes are irreversible |

## [D-27] Internal Energy and Thermodynamical Function

**Internal energy ($U$):** The total energy (kinetic + potential, at the molecular level) contained within a system due to the random motion and configuration of its molecules. It is a **state function** — depends only on the state of the system, not the path taken.

**Thermodynamical function:** A quantity (like $U$, enthalpy $H$, entropy $S$, Gibbs free energy $G$, Helmholtz free energy $F$) whose value depends only on the state of the system (state variables such as $P,V,T$), not on how that state was reached; its change over a cyclic process is zero, $\oint dU=0$.

## [D-28] Zeroth Law of Thermodynamics; First Law = Conservation of Energy

**Zeroth law:** If two systems are each in thermal equilibrium with a third system, they are in thermal equilibrium with each other. (This law establishes temperature as a well-defined property and underlies the use of thermometers.)

**First law:** Heat supplied to a system equals the increase in internal energy plus the work done by the system:

$$
dQ=dU+dW
$$

**Show the first law is the law of conservation of energy:** Here $dQ$ is energy added to the system (as heat), $dW=PdV$ is energy leaving the system as work, and $dU$ is the resulting change in the system's stored (internal) energy. Rearranging: $dU=dQ-dW$ — the change in the system's energy content equals energy in minus energy out. No energy is created or destroyed; it is merely converted between heat, work, and internal (stored) energy. This is exactly the statement of conservation of energy applied to thermal systems.

## [D-29] Adiabatic Curves are Steeper (Higher slope) than Isothermal Curves

For an **isothermal** process ($PV=$ const): differentiating, $PdV+VdP=0\Rightarrow \left(\dfrac{dP}{dV}\right)_{iso}=-\dfrac{P}{V}$

For an **adiabatic** process ($PV^\gamma=$ const): differentiating, $P\gamma V^{\gamma-1}dV+V^\gamma dP=0\Rightarrow\left(\dfrac{dP}{dV}\right)_{adia}=-\gamma\frac{P}{V}$

Since $\gamma=C_p/C_v>1$ for all gases,

$$
\left|\left(\frac{dP}{dV}\right)_{adia}\right|=\gamma\left|\left(\frac{dP}{dV}\right)_{iso}\right|>\left|\left(\frac{dP}{dV}\right)_{iso}\right|
$$

**Adiabatic curve is steeper (higher slope) than the isothermal curve at any common point.**

```text
P
|\   \  <- adiabatic (steeper)
| \   \
|  \   \<- isothermal
|   \   \
|____\___\______ V
```

Physically: in adiabatic compression, no heat escapes, so all the work done raises both $P$ and $T$, making $P$ rise faster with decreasing $V$ than in the isothermal case (where $T$, and hence the $P$–$V$ product, stays fixed).

## [D-30] Prove $PV^\gamma=$ Constant (Adiabatic Process)

For an adiabatic process, $dQ=0$, so from the first law: $dU=-dW=-PdV$. For an ideal gas, $dU=C_vdT$ (per mole), so

$$
C_vdT=-PdV \quad\text{...(1)}
$$

From ideal gas law $PV=RT\Rightarrow PdV+VdP=RdT\Rightarrow dT=\dfrac{PdV+VdP}{R}$. Substituting in (1):

$$
C_v\frac{PdV+VdP}{R}=-PdV
$$

$$
C_vPdV+C_vVdP=-RPdV
$$

$$
(C_v+R)PdV=-C_vVdP
$$

Since $C_p=C_v+R$:

$$
C_pPdV=-C_vVdP\ \Rightarrow\ \frac{C_p}{C_v}\frac{dV}{V}=-\frac{dP}{P}
$$

With $\gamma=C_p/C_v$:

$$
\gamma\frac{dV}{V}+\frac{dP}{P}=0
$$

Integrating: $\gamma\ln V+\ln P=$ const, i.e., $\ln(PV^\gamma)=$ const

$$
PV^\gamma=\text{constant}
$$

where $P,V$ are pressure and volume, $\gamma=C_p/C_v$ is the ratio of specific heats (symbols have their usual meaning).

---

[← Index](README.md) · [Previous](03-derivations-D18-D23.md) · [Next →](05-derivations-D31-D39.md)
