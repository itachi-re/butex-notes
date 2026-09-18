# Formula Sheet — Thermodynamics (Part 1)

> Sign convention throughout: $\Delta Q = \Delta U + W$, where $W$ is work done **BY** the system.

## 1. System & Thermodynamic Functions

| Equation | Meaning | Variables | SI Units | Conditions |
|---|---|---|---|---|
| $PV = nRT$ | Ideal gas equation of state | $P$=pressure, $V$=volume, $n$=moles, $R$=8.314 J/mol·K, $T$=temperature | Pa, m³, mol, J/mol·K, K | Ideal gas, equilibrium state |
| $\oint df = 0$ | Defining test for a state function $f$ | $f$ = any state function | — | Any closed cycle |

## 2. Internal Energy

| Equation | Meaning | Variables | SI Units | Conditions |
|---|---|---|---|---|
| $U=\tfrac{f}{2}nRT$ | Internal energy via equipartition | $f$=degrees of freedom | J | Ideal gas |
| $U=\tfrac32nRT$ | Monatomic ideal gas internal energy | $n,R,T$ as above | J | Monatomic ideal gas ($f=3$) |
| $U=\tfrac52nRT$ | Diatomic ideal gas internal energy | — | J | Diatomic ideal gas near room T ($f=5$) |
| $U=U(T)$ | Joule's law of internal energy | — | — | Ideal gas only |

## 3. Work Done by a Gas

| Equation | Meaning | Variables | SI Units | Conditions |
|---|---|---|---|---|
| $W=\displaystyle\int_{V_1}^{V_2}P\,dV$ | General work done by a gas | $P$=pressure (function of $V$) | J | Quasi-static process |
| $W=P(V_2-V_1)$ | Work at constant pressure | $P$=const pressure | J | Isobaric process |

## 4. First Law of Thermodynamics

| Equation | Meaning | Variables | SI Units | Conditions |
|---|---|---|---|---|
| $\Delta Q=\Delta U+W$ | First Law (integrated form) | $\Delta Q$=heat in, $\Delta U$=internal energy change, $W$=work by system | J | Closed system, any process |
| $dQ=dU+dW$ | First Law (differential form) | — | J | Closed system, any process |

## 5. Thermodynamic Processes

| Equation | Meaning | Variables | SI Units | Conditions |
|---|---|---|---|---|
| $PV=\text{const}$ | Isothermal P–V relation | — | — | Ideal gas, $T$ const |
| $W=nRT\ln(V_2/V_1)$ | Isothermal work | — | J | Ideal gas, $T$ const |
| $PV^{\gamma}=\text{const}$ | Adiabatic P–V relation (Poisson's relation) | $\gamma=C_P/C_V$ | — | Ideal gas, $Q=0$, quasi-static |
| $W=\dfrac{P_1V_1-P_2V_2}{\gamma-1}$ | Adiabatic work | — | J | Ideal gas, $Q=0$ |
| $V/T=\text{const}$ | Isobaric V–T relation (Charles's Law) | — | — | Ideal gas, $P$ const |
| $P/T=\text{const}$ | Isochoric P–T relation (Gay-Lussac's Law) | — | — | Ideal gas, $V$ const |

## 6. Mechanical Equivalent of Heat

| Equation | Meaning | Variables | SI Units | Conditions |
|---|---|---|---|---|
| $W=JQ$ | Mechanical equivalent of heat relation | $J\approx4.186$ J/cal | J (W), cal (Q) | Mixed-unit (historical) usage; $J=1$ in pure SI |

## 7. Cyclic Process

| Equation | Meaning | Variables | SI Units | Conditions |
|---|---|---|---|---|
| $\Delta U_{\text{cycle}}=0$ | Net internal-energy change over a cycle | — | J | Any complete cyclic process |
| $Q_{\text{net}}=W_{\text{net}}$ | Net heat equals net work over a cycle | — | J | Any complete cyclic process |

## 8. Difference Between Specific Heats

| Equation | Meaning | Variables | SI Units | Conditions |
|---|---|---|---|---|
| $C_P-C_V=R$ | Mayer's relation | $C_P,C_V$=molar heat capacities | J/mol·K | Ideal gas, per mole |
| $\gamma=C_P/C_V$ | Adiabatic index | — | dimensionless | Ideal gas |
| $C_V=\dfrac{R}{\gamma-1}$ | $C_V$ in terms of $\gamma$ | — | J/mol·K | Derived from Mayer's relation |
| $C=Mc$ | Molar vs specific (per mass) heat capacity | $M$=molar mass, $c$=specific heat | J/mol·K = (kg/mol)(J/kg·K) | General conversion |

## 9. Reversible and Irreversible Processes

| Equation | Meaning | Variables | SI Units | Conditions |
|---|---|---|---|---|
| $dW_{\text{rev}}=P\,dV$ | Reversible work using system's own pressure | — | J | Reversible, quasi-static |
| $W_{\text{irrev}}=P_{\text{ext}}(V_2-V_1)$ | Irreversible work against constant external pressure | $P_{\text{ext}}$=external pressure | J | Irreversible, e.g. sudden expansion/compression |

---

**Universal constant used throughout:** $R = 8.314\ \mathrm{J\,mol^{-1}K^{-1}}$ (universal gas constant); $1\ \mathrm{cal}=4.186\ \mathrm{J}$.
# Formula Sheet — Thermodynamics Part 2

Quick-reference sheet for [10](10_second_law_of_thermodynamics.md)–[19](19_maxwells_thermodynamic_relations.md). See each chapter for derivations, symbol definitions, and worked examples.

## Second Law

- Clausius inequality: $\displaystyle \oint \frac{\delta Q}{T}\leq0$ (equality iff reversible)
- Entropy (reversible heat exchange): $\displaystyle dS=\frac{\delta Q_{\mathrm{rev}}}{T}$
- Isolated system: $\Delta S \geq 0$
- Kelvin–Planck: no cyclic device converts heat from a single reservoir completely to work.
- Clausius: no cyclic device transfers heat from cold to hot with no other effect.

## Entropy

- Ideal gas, isothermal/free expansion: $\displaystyle \Delta S = nR\ln\frac{V_2}{V_1}$
- Reversible cycle: $\displaystyle \oint \frac{\delta Q_{\mathrm{rev}}}{T}=0$

## Heat Engines

- Efficiency: $\displaystyle \eta=\frac{W}{Q_H}=1-\frac{Q_C}{Q_H}$
- First Law over a cycle: $W = Q_H - Q_C$

## Carnot Engine

- Carnot efficiency (T in Kelvin): $\displaystyle \eta_C=1-\frac{T_C}{T_H}$
- Reservoir heat ratio: $\displaystyle \frac{Q_C}{Q_H}=\frac{T_C}{T_H}$
- Carnot's theorem: $\eta_I \leq \eta_R = \eta_C$ for any engine $I$ between the same reservoirs; equality iff $I$ reversible.

## Thermodynamic Potentials

| Potential | Definition | Differential | Natural Variables |
|---|---|---|---|
| $U$ | — | $dU=TdS-PdV$ | $S,V$ |
| $H$ | $U+PV$ | $dH=TdS+VdP$ | $S,P$ |
| $F$ | $U-TS$ | $dF=-SdT-PdV$ | $T,V$ |
| $G$ | $H-TS=F+PV$ | $dG=-SdT+VdP$ | $T,P$ |

## Third Law

- $S \to 0$ as $T \to 0$ for a perfect crystal in true equilibrium (Planck formulation).
- $\displaystyle \lim_{T\to0}\Delta S = 0$ (Nernst heat theorem).
- $C_V \to 0$ as $T\to0$.
- Absolute entropy: $\displaystyle S(T_1)=\int_0^{T_1}\frac{C_p}{T}dT$ (plus $\Delta H_{\text{trans}}/T_{\text{trans}}$ for any phase changes crossed).
- Reaction entropy: $\displaystyle \Delta S^\circ_{\text{rxn}}=\sum \nu_i S^\circ_{\text{products}}-\sum \nu_i S^\circ_{\text{reactants}}$

## Maxwell Relations

$$
\left(\frac{\partial T}{\partial V}\right)_S=-\left(\frac{\partial P}{\partial S}\right)_V \qquad (\text{from } U)
$$
$$
\left(\frac{\partial T}{\partial P}\right)_S=\left(\frac{\partial V}{\partial S}\right)_P \qquad (\text{from } H)
$$
$$
\left(\frac{\partial S}{\partial V}\right)_T=\left(\frac{\partial P}{\partial T}\right)_V \qquad (\text{from } F)
$$
$$
\left(\frac{\partial S}{\partial P}\right)_T=-\left(\frac{\partial V}{\partial T}\right)_P \qquad (\text{from } G)
$$

**Mnemonic:** thermodynamic square — see [19_maxwells_thermodynamic_relations.md](19_maxwells_thermodynamic_relations.md).
