# Physics-II (PHY-103) — Standard Derivations D-31 to D-39

[← Index](README.md) · [Previous](04-derivations-D24-D30.md) · [Next →](06-derivations-D40-D42.md)

## [D-31] Relation Between Two Specific Heats: $C_p-C_v=R$

Consider 1 mole of an ideal gas. At constant volume, heat supplied raises only internal energy: $dQ_v=C_vdT=dU$ (since $dW=0$).

At constant pressure, heat supplied raises internal energy **and** does external work of expansion:

$$
dQ_p=C_pdT=dU+PdV
$$

For an ideal gas, $PV=RT\Rightarrow PdV=RdT$ (at constant $P$). Also $dU=C_vdT$ regardless of process (internal energy of ideal gas depends only on $T$). So:

$$
C_pdT=C_vdT+RdT
$$

$$
C_p-C_v=R
$$

where $C_p,C_v$ are molar specific heats at constant pressure and volume, and $R$ is the universal gas constant ($8.314\,\text{J mol}^{-1}\text{K}^{-1}$).

## [D-32] Entropy Remains Constant in a Reversible Process (Adiabatic)

**Entropy ($S$):** A state function measuring the degree of disorder/unavailability of energy for work; $dS=dQ_{rev}/T$.

For a reversible adiabatic process, $dQ_{rev}=0$ at every stage, so

$$
dS=\frac{dQ_{rev}}{T}=0
$$

$$
S=\text{constant (reversible adiabatic = isentropic)}
$$

More generally, for any reversible cyclic process, $\oint \dfrac{dQ_{rev}}{T}=0$ (Clausius theorem), so entropy is a state function and its net change around any reversible cycle is zero — i.e., entropy of the system (and, together with surroundings, of the universe) does not increase in a reversible process, unlike an irreversible one where $\Delta S_{univ}>0$.

## [D-33] Entropy and Unavailable Energy

**Entropy:** as above, $dS=dQ_{rev}/T$; it is a measure of the unavailability/degradation of a system's energy for conversion into useful work.

**Unavailable energy:** That part of a system's total energy which cannot be converted into useful work, even by an ideal (Carnot) engine, because of the necessity of rejecting heat to a sink at temperature $T_0$. If entropy increases by $\Delta S$ during a process, the energy rendered unavailable for work is

$$
E_{unavailable}=T_0\,\Delta S
$$

where $T_0$ is the temperature of the coldest available reservoir (sink). This follows because a Carnot engine operating between the system and the sink could have extracted work $T_0\Delta S$ from the heat that instead becomes "locked" due to the entropy increase.

## [D-34] Distinguish First and Second Law of Thermodynamics

| First Law | Second Law |
|---|---|
| Statement of conservation of energy: $dQ=dU+dW$ | Statement about direction/quality of energy flow |
| Says heat and work are equivalent and interconvertible | Says heat cannot spontaneously flow from cold to hot, and no engine can convert heat entirely into work (Kelvin–Planck), or heat must flow from hot to cold spontaneously (Clausius) |
| Does not forbid a 100% efficient heat engine | Forbids a 100% efficient heat engine (some heat must be rejected to a sink) |
| Does not specify direction of a process | Specifies the direction — introduces entropy, which increases for spontaneous (irreversible) processes |
| Quantitative — energy accounting | Qualitative and quantitative — restricts which energy transformations are possible |

## [D-35] Second Law of Thermodynamics — Statement

**Kelvin–Planck statement:** It is impossible to construct a heat engine operating in a cycle that converts heat completely into work with no other effect (i.e., without rejecting some heat to a sink).

**Clausius statement:** It is impossible for heat to flow, of itself (without external work), from a colder body to a hotter body.

Both statements are equivalent; each implies that some energy is always degraded (unavailable for work) and that entropy of an isolated system never decreases.

## [D-36] Carnot's Engine and the Carnot Cycle

**Carnot's engine:** An ideal, reversible heat engine operating between two heat reservoirs at temperatures $T_1$ (source, hot) and $T_2$ (sink, cold), that has the maximum possible efficiency for those two temperatures.

**Carnot cycle** (four reversible steps, working substance ideal gas):

1. Isothermal expansion at $T_1$ (absorbs heat $Q_1$)
2. Adiabatic expansion ($T_1\to T_2$)
3. Isothermal compression at $T_2$ (rejects heat $Q_2$)
4. Adiabatic compression ($T_2\to T_1$, back to start)

```text
P
|\_
| \  1 (isothermal, T1)
|  \___
|4 |   \___2 (adiabatic)
|  |3      \
|  \________\____ V
     (isothermal, T2)
```

## [D-37] Efficiency of Carnot's Engine, $\eta=1-T_2/T_1$

Heat absorbed isothermally at $T_1$: $Q_1=RT_1\ln(V_2/V_1)$. Heat rejected isothermally at $T_2$: $Q_2=RT_2\ln(V_3/V_4)$.

For the two adiabatic steps (2 and 4), using $TV^{\gamma-1}=$ const:

$$
T_1V_2^{\gamma-1}=T_2V_3^{\gamma-1}\qquad\text{and}\qquad T_1V_1^{\gamma-1}=T_2V_4^{\gamma-1}
$$

Dividing: $\left(\dfrac{V_2}{V_1}\right)^{\gamma-1}=\left(\dfrac{V_3}{V_4}\right)^{\gamma-1}\Rightarrow \dfrac{V_2}{V_1}=\dfrac{V_3}{V_4}$

So $Q_2/Q_1=T_2/T_1$. Efficiency:

$$
\eta=\frac{\text{Work done}}{\text{Heat absorbed}}=\frac{Q_1-Q_2}{Q_1}=1-\frac{Q_2}{Q_1}
$$

$$
\eta=1-\frac{T_2}{T_1}=\frac{T_1-T_2}{T_1}
$$

where $T_1,T_2$ are the source and sink absolute temperatures. This shows the efficiency depends only on the two temperatures, not on the working substance.

## [D-38] Show the Carnot Cycle is a Reversible Process

Each of the four steps of the Carnot cycle (isothermal expansion, adiabatic expansion, isothermal compression, adiabatic compression) is carried out **quasi-statically** (infinitely slowly), so the working substance is always infinitesimally close to equilibrium, and there is no friction or other dissipative effect. Each step can therefore be exactly retraced in the opposite direction by an infinitesimal change in the external conditions (e.g., temperature of the reservoir, or piston pressure), restoring both the system and surroundings to their original states with no net change anywhere. Since every individual step is reversible, and the cycle is simply these steps performed in sequence and then reverse sequence, the entire Carnot cycle is reversible. (Operating the Carnot engine in reverse gives a Carnot refrigerator/heat pump, absorbing $Q_2$ from the cold reservoir and rejecting $Q_1$ to the hot one while consuming work $W=Q_1-Q_2$ — confirming reversibility.)

## [D-39] Clausius–Clapeyron (First Latent Heat) Equation

Consider a substance in phase equilibrium (e.g., liquid–vapour) undergoing a small reversible Carnot cycle between temperatures $T$ and $T-dT$, with the two isothermal steps being the phase change itself (absorbing latent heat $L$ at $T$, at pressure $P$; volume changes by $V_2-V_1$) and the two adiabatic steps connecting them, so that $dP$ is the corresponding change in the equilibrium (saturation) vapour pressure over $dT$. Efficiency of this Carnot cycle:

$$
\eta=\frac{dT}{T}=\frac{\text{Work done in cycle}}{\text{Heat absorbed}}=\frac{(V_2-V_1)dP}{L}
$$

$$
\frac{dP}{dT}=\frac{L}{T(V_2-V_1)}
$$

This is the Clausius–Clapeyron equation, relating the slope of the phase boundary (P–T diagram) to the latent heat $L$ and the volume change $V_2-V_1$ during the phase transition, at temperature $T$.

---

[← Index](README.md) · [Previous](04-derivations-D24-D30.md) · [Next →](06-derivations-D40-D42.md)
