# Kinetic Theory of Gases and Related Thermal Physics

**Physics-II · Exam-oriented Q&A chapter**

## 1. Introduction

This chapter builds thermal physics from the molecular picture upward:

1. a molecular model of a gas (postulates, degrees of freedom, mean free path),
2. the kinetic origin of **pressure** and of **temperature**,
3. heat, temperature and Newton's law of cooling,
4. thermodynamic processes (isothermal, adiabatic), heat capacities and Mayer's relation,
5. departures from ideal behaviour (van der Waals equation, critical constants),
6. a practical thermometer (platinum resistance thermometer).

### Notation used throughout

| Symbol | Meaning |
|---|---|
| $N$ | number of molecules |
| $n$ | number of **moles** (thermodynamic sections) |
| $n_v = N/V$ | **number density** (molecules per unit volume) |
| $m$ | mass of **one molecule** |
| $M$ | **molar mass** ($M = N_A m$) |
| $k_B$ | Boltzmann constant, $1.38\times10^{-23}\ \mathrm{J\,K^{-1}}$ ($=1.38\times10^{-16}\ \mathrm{erg\,K^{-1}}$) |
| $R$ | universal gas constant, $R = N_A k_B = 8.314\ \mathrm{J\,mol^{-1}K^{-1}}$ |
| $c$ | molecular speed; $c_x, c_y, c_z$ are components |
| $c_{\rm rms}$ | $\sqrt{\overline{c^2}}$ |
| $\rho$ | mass density, $\rho = Nm/V$ |
| $f$ | number of degrees of freedom |
| $W$ | work done **by** the gas |

**Sign convention (whole chapter):** $\Delta U = Q - W$, with $Q>0$ for heat absorbed by the gas and $W>0$ for work done **by** the gas.

---

## 2. Basic Assumptions of Kinetic Theory

### Question
State the fundamental postulates of the kinetic theory of gases.

### Answer
1. A gas consists of a very large number of identical, tiny molecules.
2. The molecules are in continuous, random motion and move in straight lines between collisions.
3. Molecular speeds are distributed over a wide range (from near zero to very large values), with a well-defined mean.
4. The average translational kinetic energy per molecule increases with the absolute temperature of the gas.
5. The molecules are spread through the whole available volume. At equilibrium the *average* number density is uniform, and there is no preferred direction of motion.
6. **Ideal-gas model:** the molecular size is negligible compared with the average spacing, and there are no intermolecular forces except during collisions.
7. Collisions between molecules and with the walls are perfectly elastic. The time of a collision is negligible compared with the time between collisions.
8. Gravity is neglected.

### Exam Note
Postulate 6 is what makes a gas *ideal*. Dropping it (finite size, attraction) leads to the van der Waals equation (Section 14).

---

## 3. Degrees of Freedom

### Question
What are degrees of freedom? How are they related to molecular energy and heat capacity?

### Answer
The **degrees of freedom** $f$ of a molecule is the number of independent coordinates (independent modes of motion) needed to specify its configuration and energy.

| Type | Mode | Example contribution |
|---|---|---|
| Translational | motion of the centre of mass along $x, y, z$ | 3 for every molecule |
| Rotational | rotation about axes through the centre of mass | 2 (linear), 3 (non-linear) |
| Vibrational | oscillation of atoms along bonds | 2 per vibrational mode (kinetic + potential), active only at high temperature |

Typical values at ordinary temperatures:

| Gas type | Translational | Rotational | $f$ |
|---|---|---|---|
| Monatomic (He, Ar) | 3 | 0 | 3 |
| Diatomic (N₂, O₂), rigid | 3 | 2 | 5 |
| Non-linear polyatomic (rigid) | 3 | 3 | 6 |

### Equipartition and heat capacity
By the **equipartition theorem**, each quadratic degree of freedom carries on average $\tfrac12 k_B T$ per molecule, i.e. $\tfrac12 RT$ per mole. For an ideal gas whose internal energy is purely kinetic:

```math
U = \frac{f}{2}\,nRT,
\qquad
C_v=\frac{f}{2}R .
```

### Exam Note
Vibrational modes are "frozen out" at room temperature for most diatomic gases. Hence $f=5$ is the usual value for N₂ and O₂ unless the question says otherwise. State the assumed $f$ whenever you use $C_v = \tfrac f2 R$.

---

## 4. Mean Free Path

### Question
Define mean free path and derive an expression for it.

### Answer
The **mean free path** $\lambda$ is the average distance travelled by a molecule between two successive collisions.

![Mean free path](../../assets/kinetic-theory-mean-free-path.svg)

### Derivation
Treat molecules as hard spheres of diameter $d$.

1. A molecule collides with any other molecule whose centre comes within a distance $d$ of its own centre. Its path therefore sweeps a cylinder of cross-section $\pi d^2$.
2. In time $t$, a molecule moving at mean speed $\bar c$ sweeps a volume $\pi d^2\,\bar c\,t$. If the other molecules were at rest, the number of collisions would be $\pi d^2\,\bar c\,t\,n_v$.
3. The other molecules also move. The relevant speed is the **mean relative speed**, $\bar c_{\rm rel}=\sqrt2\,\bar c$ for a Maxwellian distribution.
4. Number of collisions per unit time: $\sqrt2\,\pi d^2\,\bar c\, n_v$.
5. Distance travelled per unit time is $\bar c$, so

```math
\lambda=\frac{\bar c}{\sqrt2\,\pi d^2\,\bar c\,n_v}.
```

### Result

```math
\boxed{\lambda=\frac{1}{\sqrt2\,\pi d^2\,n_v}}
```

Using $P = n_v k_B T$, the equivalent form is

```math
\lambda=\frac{k_B T}{\sqrt2\,\pi d^2\,P}.
```

### Exam Note
$\lambda\propto 1/n_v$: at fixed $T$, $\lambda\propto 1/P$. At fixed $P$, $\lambda\propto T$. The factor $\sqrt2$ comes from the relative motion of the molecules.

### Numerical 1 — Molecular diameter from mean free path

**Question.** The mean free path of a nitrogen molecule at $0^\circ\mathrm{C}$ and $1\ \mathrm{atm}$ is $0.8\times10^{-5}$ cm. At this temperature and pressure the **number density** is $2.7\times10^{19}$ molecules/cm³. Find the molecular diameter.

**Solution.**

```math
\lambda=\frac{1}{\sqrt2\,\pi d^2 n_v}
\;\Longrightarrow\;
d=\sqrt{\frac{1}{\sqrt2\,\pi\, n_v\,\lambda}}
```

```math
\begin{aligned}
n_v\lambda &= (2.7\times10^{19}\ \mathrm{cm^{-3}})(0.8\times10^{-5}\ \mathrm{cm}) = 2.16\times10^{14}\ \mathrm{cm^{-2}}\\
\sqrt2\,\pi\,n_v\lambda &= 4.443\times 2.16\times10^{14}=9.60\times10^{14}\ \mathrm{cm^{-2}}\\
d^2 &= \frac{1}{9.60\times10^{14}} = 1.04\times10^{-15}\ \mathrm{cm^2}\\
d &= 3.23\times10^{-8}\ \mathrm{cm}
\end{aligned}
```

```math
\boxed{d\approx3.23\times10^{-8}\ \mathrm{cm}=3.23\times10^{-10}\ \mathrm{m}=3.23\ \text{Å}}
```

**Exam Note.**
- $2.7\times10^{19}$ cm⁻³ is a *number density*, not a mass density.
- Keep $\lambda$ and $n_v$ in the same length unit. Here $\lambda = 0.8\times10^{-5}$ cm $=8\times10^{-8}$ m, which is the physically consistent value for N₂ at STP. Reading it as $10^{-5}$ **m** would give $d\sim10^{-11}$ m, far smaller than any atom.

---

## 5. Pressure of an Ideal Gas from Kinetic Theory

### Question
According to the kinetic theory of gases, prove that the pressure exerted by a perfect gas is
$P=\dfrac13\dfrac{Nm}{V}\overline{c^2}$.

### Answer
Gas pressure is the average force per unit area produced by the continual elastic collisions of molecules with the container wall.

![Molecule colliding with a wall](../../assets/kinetic-theory-wall-collision.svg)

### Derivation
Take a cube of side $L$ ($V=L^3$) containing $N$ molecules of mass $m$.

**Step 1 — one molecule, one collision.** Consider a molecule with velocity components $(c_x,c_y,c_z)$ striking the wall perpendicular to $x$ (area $L^2$). The collision is elastic, so $c_x\to -c_x$ while $c_y, c_z$ are unchanged.

```math
\Delta p_x = (-mc_x)-(mc_x) = -2mc_x
```

The wall receives momentum $2mc_x$.

**Step 2 — collision rate.** To return to the same wall, the molecule travels $2L$ along $x$ (neglecting collisions with other molecules, which only exchange velocities on average):

```math
\Delta t=\frac{2L}{c_x}
```

**Step 3 — average force from one molecule.**

```math
F_1=\frac{2mc_x}{2L/c_x}=\frac{mc_x^2}{L}
```

**Step 4 — all $N$ molecules.**

```math
F=\frac{m}{L}\left(c_{x1}^2+c_{x2}^2+\dots+c_{xN}^2\right)=\frac{Nm}{L}\,\overline{c_x^2}
```

**Step 5 — pressure.**

```math
P=\frac{F}{L^2}=\frac{Nm\,\overline{c_x^2}}{L^3}=\frac{Nm}{V}\,\overline{c_x^2}
```

**Step 6 — isotropy.** For every molecule $c^2=c_x^2+c_y^2+c_z^2$. Averaging over all molecules gives $\overline{c^2}=\overline{c_x^2}+\overline{c_y^2}+\overline{c_z^2}$. Because the motion is random with no preferred direction,

```math
\overline{c_x^2}=\overline{c_y^2}=\overline{c_z^2}=\frac{1}{3}\overline{c^2}
```

### Result

```math
\boxed{P=\frac{1}{3}\frac{Nm}{V}\,\overline{c^2}},
\qquad
PV=\frac{1}{3}Nm\,\overline{c^2}
```

With $\rho=Nm/V$ and $c_{\rm rms}=\sqrt{\overline{c^2}}$:

```math
\boxed{P=\frac{1}{3}\,\rho\,c_{\rm rms}^2}
```

### Exam Note
The result does not depend on the shape of the container. A cube is used for convenience. $\overline{c^2}$ is the **mean of the squares**, so $c_{\rm rms}\ne\bar c$ in general.

---

## 6. Kinetic Energy and Pressure

### Question
Show that the pressure exerted by a perfect gas is $\tfrac23$ of the kinetic energy of the gas molecules per unit volume.

### Answer
Distinguish three quantities (translational kinetic energy only):

| Quantity | Expression |
|---|---|
| per molecule | $\tfrac12 m\,\overline{c^2}$ |
| all molecules | $K=\tfrac12 Nm\,\overline{c^2}$ |
| per unit volume (energy density) | $u=K/V=\tfrac12\,n_v m\,\overline{c^2}$ |

### Derivation
Start from $PV=\tfrac13Nm\overline{c^2}$ (Section 5) and write $Nm\overline{c^2}=2K$:

```math
PV=\frac{1}{3}(2K)=\frac{2}{3}K
```

### Result

```math
\boxed{P=\frac{2}{3}\,\frac{K}{V}=\frac{2}{3}\,u}
```

### Exam Note
Pressure $=\tfrac23\times$ (translational kinetic energy per unit volume). The factor $\tfrac23$ comes from $\tfrac13$ (isotropy) $\times$ $2$ (from $\tfrac12 mc^2$). Do not confuse $K$ (total) with the energy per molecule.

---

## 7. Average Kinetic Energy and Temperature

### Question
Relate the average molecular kinetic energy to the absolute temperature.

### Derivation
Compare the kinetic result $PV=\tfrac23K$ with the ideal-gas law $PV=Nk_BT$:

```math
\frac{2}{3}K=Nk_BT\;\Longrightarrow\;K=\frac{3}{2}Nk_BT
```

Dividing by $N$:

```math
\boxed{\overline K=\frac{1}{2}m\overline{c^2}=\frac{3}{2}k_BT}
```

Hence

```math
c_{\rm rms}=\sqrt{\frac{3k_BT}{m}}=\sqrt{\frac{3RT}{M}}
```

### Exam Note
$\overline K=\tfrac32k_BT$ is the average **translational** energy per molecule. It depends only on $T$, not on the type of gas. This is the kinetic meaning of temperature for an ideal gas.

### Numerical 2 — Average kinetic energy at 300 K

**Question.** Calculate the average kinetic energy of a molecule of a gas at 300 K.

**Solution (CGS).**

```math
\overline K=\frac{3}{2}k_BT=\frac{3}{2}(1.38\times10^{-16}\ \mathrm{erg\,K^{-1}})(300\ \mathrm{K})
=6.21\times10^{-14}\ \mathrm{erg}
```

**SI check.** $1\ \mathrm{erg}=10^{-7}$ J:

```math
\boxed{\overline K\approx6.21\times10^{-14}\ \mathrm{erg}=6.21\times10^{-21}\ \mathrm{J}\ (\approx0.039\ \mathrm{eV})}
```

---

## 8. Heat and Temperature

### Question
(a) Define heat and temperature. (b) Differentiate between heat and temperature.

### Answer
- **Heat** is energy in transit between two systems (or a system and its surroundings) because of a temperature difference. Heat is a *process quantity*. A body does not "contain" heat. It has internal energy.
- **Temperature** is a thermodynamic state variable that determines the direction of heat flow between bodies in thermal contact (zeroth law). For an ideal gas it is proportional to the average translational kinetic energy per molecule, $\overline K=\tfrac32k_BT$.

### Comparison table

| Basis | Heat | Temperature |
|---|---|---|
| Physical meaning | Energy transferred because of a temperature difference | Measure of the thermal state; determines the direction of heat flow |
| Nature | Process (path-dependent) quantity | State (intensive) variable |
| Unit | joule (J); calorie | kelvin (K); °C |
| Dependence on amount of substance | Depends on mass (heat needed $Q=mc\,\Delta T$) | Independent of the amount (intensive) |
| Transfer | Flows from higher to lower temperature | Is *not* transferred. It equalises at thermal equilibrium |
| Relation to molecular motion | Corresponds to a change in the total (microscopic) energy of the molecules | For an ideal gas, proportional to the mean translational KE per molecule |
| Conversion to work | Can be partially converted to work (second law limits it) | Not an energy, so not convertible |
| Measuring device | Calorimeter | Thermometer |

### Exam Note
A large iceberg at 0 °C has far more internal energy than a cup of boiling water, but a lower temperature. Heat flows by temperature difference, not by the amount of energy stored.

---

## 9. Newton's Law of Cooling

### Question
State Newton's law of cooling.

### Answer
For a small temperature difference, the rate at which a body loses heat is proportional to the difference between the temperature of the body and that of its surroundings.

### Derivation
Let $T$ be the temperature of the body, $T_0$ that of the surroundings (constant), and $T_i$ the initial temperature.

```math
-\frac{dT}{dt}\propto(T-T_0)
\;\Longrightarrow\;
\frac{dT}{dt}=-k(T-T_0),\qquad k>0
```

Separate the variables and integrate:

```math
\begin{aligned}
\int_{T_i}^{T}\frac{dT}{T-T_0}&=-k\int_0^t dt\\
\ln\frac{T-T_0}{T_i-T_0}&=-kt
\end{aligned}
```

### Result

```math
\boxed{T-T_0=(T_i-T_0)\,e^{-kt}}
```

### Physical meaning
- When $T-T_0$ is large, cooling is fast.
- As $T\to T_0$ the rate decreases and the body approaches the surroundings' temperature exponentially, with time constant $1/k$.

### Exam Note
The law is an **approximation**. It holds for small temperature differences (and for forced convection). Radiation losses vary as $T^4$, so for large differences the law fails. The constant $k$ depends on surface area, the material and the surroundings.

---

## 10. Thermodynamic Processes

A **thermodynamic process** is a change of the state of a system. For a gas:

- **Work** by the gas for a volume change: $W=\displaystyle\int_{V_1}^{V_2}P\,dV$.
- **Heat** $Q$: energy exchanged through a temperature difference.
- **Internal energy** $U$: a state function. For an ideal gas it depends only on $T$.
- **First law (chapter convention):**

```math
\boxed{\Delta U=Q-W}
```

Work done **on** the gas is $-W$. For an ideal gas, $\Delta U=nC_v\,\Delta T$ in *every* process.

---

## 11. Isothermal Process

### Question
What is an isothermal process? Derive an expression for the work done during an isothermal process.

### Answer
An **isothermal process** is one in which the temperature of the system stays constant. For an ideal gas this gives Boyle's law:

```math
PV=\text{constant}
```

It requires good thermal contact with a reservoir and a slow (quasi-static) change.

### Derivation
For a quasi-static expansion from $V_1$ to $V_2$ of $n$ moles at temperature $T$:

```math
\begin{aligned}
W&=\int_{V_1}^{V_2}P\,dV,\qquad P=\frac{nRT}{V}\\
&=nRT\int_{V_1}^{V_2}\frac{dV}{V}\\
&=nRT\,\ln\frac{V_2}{V_1}
\end{aligned}
```

Since $P_1V_1=P_2V_2$, we have $V_2/V_1=P_1/P_2$.

### Result

```math
\boxed{W=nRT\ln\frac{V_2}{V_1}=nRT\ln\frac{P_1}{P_2}}\qquad(\ln=\log_e)
```

### First law
For an ideal gas, $T$ constant means $\Delta U=0$, so

```math
Q=W
```

All heat absorbed is converted to work by the gas.

### Sign convention
- Expansion ($V_2>V_1$): $W>0$, done **by** the gas. $Q>0$: heat is absorbed.
- Compression ($V_2<V_1$): $W<0$, i.e. work is done **on** the gas, and heat is released.

### Exam Note
Use the *natural* logarithm. If a problem gives $\log_{10}$, multiply by $2.303$. Work done on the gas is the negative of this expression.

---

## 12. Heat Capacities of an Ideal Gas

### Question
Define molar specific heat. Find the relation between $C_p$ and $C_v$.

### Answer
The **molar specific heat** (molar heat capacity) $C$ is the heat required to raise the temperature of one mole of a substance by $1\ \mathrm K$:

```math
C=\frac{1}{n}\frac{dQ}{dT}
```

For a gas it depends on the process:

- $C_v$: at **constant volume**
- $C_p$: at **constant pressure**

### Derivation of Mayer's relation
Consider $1$ mole of an ideal gas.

**Constant volume** ($dV=0$, so $W=0$):

```math
dQ=dU\;\Rightarrow\; C_v=\frac{dU}{dT}\;\Rightarrow\; dU=C_v\,dT
```

For an ideal gas, $U$ depends only on $T$, so $dU=C_v\,dT$ holds in **any** process.

**Constant pressure:**

```math
C_p\,dT=dU+P\,dV=C_v\,dT+P\,dV
```

From $PV=RT$ at constant $P$: $P\,dV=R\,dT$. Therefore

```math
C_pdT=C_vdT+RdT
```

### Result

```math
\boxed{C_p-C_v=R}
```

Define

```math
\gamma=\frac{C_p}{C_v}
```

### Link to degrees of freedom
Assuming equipartition with $f$ active quadratic modes:

```math
C_v=\frac{f}{2}R,\qquad C_p=\left(\frac{f}{2}+1\right)R,\qquad \gamma=1+\frac{2}{f}
```

| Gas | $f$ | $C_v$ | $C_p$ | $\gamma$ |
|---|---|---|---|---|
| Monatomic | 3 | $\tfrac32R$ | $\tfrac52R$ | $1.67$ |
| Diatomic (rigid) | 5 | $\tfrac52R$ | $\tfrac72R$ | $1.40$ |

### Exam Note
$C_p>C_v$ because at constant pressure part of the heat goes into expansion work. Mayer's relation holds for an *ideal* gas.

### Q1 — Work done and kinetic energy

**Question.** Show that the work done by an ideal gas is directly proportional to the kinetic energy of the gas molecules.

**Answer.** In an adiabatic expansion, the work done by the gas is supplied entirely by the kinetic energy of its molecules. It is proportional to the change in kinetic energy.

**Derivation.** For $n$ moles of an ideal gas in an adiabatic process, $Q=0$, so the first law gives

```math
W=-\Delta U=nC_v(T_1-T_2)=n\,\frac{f}{2}R\,(T_1-T_2)
```

For an ideal gas, the internal energy is the total molecular kinetic energy:

```math
K=\frac{f}{2}\,nRT
```

(for a monatomic gas, $K=\tfrac32nRT=\tfrac32Nk_BT$). Hence

```math
W=K_1-K_2=-\Delta K
```

For a monatomic gas, using $PV=\tfrac23K$ and $PV=nRT$:

```math
W=\tfrac{3}{2}\,nR\,(T_1-T_2)=\tfrac{3}{2}\,(P_1V_1-P_2V_2)=K_1-K_2
```

**Result.**

```math
\boxed{W=-\Delta K,\qquad W\propto(T_1-T_2)\propto\Delta K}
```

**Exam Note.** The proportionality constant is $1$ (energy conservation) in an adiabatic process. In a general process, $W=Q-\Delta U$, so $W$ also depends on the heat exchanged. An isothermal process has $\Delta K=0$, yet $W\neq0$ because heat supplies the work.

---

## 13. Adiabatic Process

### Question
What is an adiabatic process? Derive $PV^\gamma=\text{const}$ and show that adiabatic curves are steeper than isothermal curves.

### Answer
An **adiabatic process** is one in which no heat is exchanged with the surroundings: $Q=0$ (well-insulated system, or a process too fast for heat flow).

### Derivation of $PV^\gamma=\text{const}$
For $n$ moles of an ideal gas with $Q=0$: $dU=-P\,dV$, and $dU=nC_v\,dT$.

```math
nC_v\,dT=-P\,dV
```

Differentiate $PV=nRT$: $P\,dV+V\,dP=nR\,dT$, so $dT=\dfrac{P\,dV+V\,dP}{nR}$. Substitute:

```math
\begin{aligned}
\frac{C_v}{R}\,(P\,dV+V\,dP)&=-P\,dV\\
C_v\,V\,dP+(C_v+R)\,P\,dV&=0\\
C_v\,V\,dP+C_p\,P\,dV&=0
\end{aligned}
```

Divide by $C_vPV$:

```math
\frac{dP}{P}+\gamma\frac{dV}{V}=0
\;\Longrightarrow\;
\ln P+\gamma\ln V=\text{const}
```

```math
\boxed{PV^\gamma=\text{constant}}
```

Equivalent forms: $TV^{\gamma-1}=\text{const}$, $P^{1-\gamma}T^\gamma=\text{const}$.

### Work in an adiabatic expansion

```math
W=\int_{V_1}^{V_2}P\,dV=\frac{P_1V_1-P_2V_2}{\gamma-1}=\frac{nR\,(T_1-T_2)}{\gamma-1}
```

### Q11 — Adiabatic curves are steeper than isothermal curves

**Isothermal:** $PV=\text{const}$. Differentiating, $P\,dV+V\,dP=0$:

```math
\left(\frac{dP}{dV}\right)_T=-\frac{P}{V}
```

**Adiabatic:** $PV^\gamma=\text{const}$. Differentiating, $V^\gamma dP+\gamma PV^{\gamma-1}dV=0$:

```math
\left(\frac{dP}{dV}\right)_{\rm ad}=-\gamma\frac{P}{V}
```

At the same point $(P,V)$:

```math
\left\lvert\frac{dP}{dV}\right\rvert_{\rm ad}=\gamma\left\lvert\frac{dP}{dV}\right\rvert_{T}
```

Because $\gamma>1$ (since $C_p>C_v$), the adiabatic slope is steeper.

![Isothermal vs adiabatic curves](../../assets/isothermal-vs-adiabatic-pv.svg)

**Physical reason.** In an adiabatic expansion the gas does work at the expense of its own internal energy, so $T$ falls and $P$ drops faster than in the isothermal case, where heat inflow keeps $T$ constant.

### Exam Note
Do not use $PV^\gamma=\text{const}$ for irreversible or free expansions. It applies to **quasi-static** adiabatic processes of an ideal gas.

---

## 14. van der Waals Equation

### Q13 — Question
Discuss the corrections of van der Waals' equation of state.

### Answer
The ideal-gas law $PV=nRT$ assumes point molecules with no intermolecular forces. It fails for real gases, particularly at **high pressure** (molecules are close together, so their size matters) and **low temperature** (molecules move slowly, so attractions matter). van der Waals introduced two corrections.

![van der Waals corrections](../../assets/vdw-corrections.svg)

### (i) Volume correction
Molecules have a finite size, so the volume available for their motion is smaller than the container volume $V$:

```math
V_{\rm available}=V-nb
```

$b$ is the excluded volume per mole. It is about four times the actual volume of the molecules in a mole.

### (ii) Pressure correction
A molecule inside the gas is pulled equally in all directions. A molecule about to strike the wall is pulled **inward** by the others, so it hits the wall with less momentum. The measured pressure $P$ is therefore *lower* than the ideal collision pressure. The deficit is proportional to the number density of the attracting molecules *and* the number density of the molecules striking the wall, so it scales as $(n/V)^2$:

```math
P_{\rm ideal}=P+a\left(\frac{n}{V}\right)^2
```

### Result
Substituting into $P_{\rm ideal}V_{\rm available}=nRT$:

```math
\boxed{\left[P+a\left(\frac{n}{V}\right)^2\right] (V-nb)=nRT}
```

For one mole ($V$ = molar volume):

```math
\boxed{\left(P+\frac{a}{V^2}\right)(V-b)=RT}
\qquad\Longleftrightarrow\qquad
P=\frac{RT}{V-b}-\frac{a}{V^2}
```

### Meaning of $a$ and $b$
| Constant | Meaning | Unit (SI) |
|---|---|---|
| $a$ | measures the strength of intermolecular attraction | $\mathrm{Pa\,m^6\,mol^{-2}}$ |
| $b$ | excluded volume per mole (finite molecular size) | $\mathrm{m^3\,mol^{-1}}$ |

### Exam Note
The van der Waals equation is an **approximate model**, not an exact law. It reproduces qualitative behaviour (condensation, critical point) but is not quantitatively accurate everywhere. It reduces to the ideal-gas law for $a,b\to0$ (or at low density and high temperature).

---

## 15. Critical Constants

### Q12 — Question
What are the critical constants of a gas?

### Answer
Below a certain temperature a gas can be liquefied by pressure alone. Above it, no amount of pressure can liquefy it. This temperature is the **critical temperature** $T_c$. The state at $T_c$ where liquid and vapour become indistinguishable is the **critical point**. The critical constants are:

| Constant | Meaning |
|---|---|
| $T_c$ | highest temperature at which the gas can be liquefied by pressure |
| $P_c$ | pressure needed to liquefy the gas at $T_c$ |
| $V_c$ | volume (molar volume) of the substance at $T_c$ and $P_c$ |
| $\rho_c=M/V_c$ | critical density (optional) |
| $Z_c=\dfrac{P_cV_c}{RT_c}$ | critical compressibility factor (optional) |

At the critical point the liquid–vapour meniscus disappears and the densities of liquid and vapour become equal.

### Exam Note
Critical constants ($T_c,P_c,V_c$) are properties of the gas. The van der Waals constants ($a,b$) are parameters of the model. They are related, but are not the same thing.

### Q2 and Q14 — Question
Calculate (deduce) the critical constants of a van der Waals gas in terms of the van der Waals constants $a$ and $b$.

### Answer
On the critical isotherm of the $P$–$V$ diagram, the critical point is an **inflection point with a horizontal tangent**:

```math
\left(\frac{\partial P}{\partial V}\right)_T=0,\qquad
\left(\frac{\partial^2P}{\partial V^2}\right)_T=0
```

### Derivation
For one mole:

```math
P=\frac{RT}{V-b}-\frac{a}{V^2}
```

Differentiate:

```math
\begin{aligned}
\frac{\partial P}{\partial V}&=-\frac{RT}{(V-b)^2}+\frac{2a}{V^3}\\[4pt]
\frac{\partial^2P}{\partial V^2}&=\frac{2RT}{(V-b)^3}-\frac{6a}{V^4}
\end{aligned}
```

At the critical point ($T=T_c$, $V=V_c$) both vanish:

```math
\frac{RT_c}{(V_c-b)^2}=\frac{2a}{V_c^3}\quad(1),
\qquad
\frac{2RT_c}{(V_c-b)^3}=\frac{6a}{V_c^4}\quad(2)
```

**Critical volume.** Divide (1) by (2):

```math
\frac{V_c-b}{2}=\frac{V_c}{3}\;\Rightarrow\;3V_c-3b=2V_c\;\Rightarrow\;V_c=3b
```

**Critical temperature.** Substitute $V_c=3b$ into (1):

```math
RT_c=\frac{2a(V_c-b)^2}{V_c^3}=\frac{2a(2b)^2}{27b^3}=\frac{8a}{27b}
\;\Rightarrow\;T_c=\frac{8a}{27Rb}
```

**Critical pressure.** Substitute into the equation of state:

```math
P_c=\frac{RT_c}{V_c-b}-\frac{a}{V_c^2}
=\frac{8a/(27b)}{2b}-\frac{a}{9b^2}
=\frac{4a}{27b^2}-\frac{3a}{27b^2}
=\frac{a}{27b^2}
```

### Result

```math
\boxed{V_c=3b,\qquad T_c=\frac{8a}{27Rb},\qquad P_c=\frac{a}{27b^2}}
```

**Critical compressibility factor:**

```math
\frac{P_cV_c}{RT_c}=\frac{(a/27b^2)(3b)}{R\cdot 8a/(27Rb)}=\boxed{\frac{3}{8}=0.375}
```

Conversely, $a=3P_cV_c^2$ and $b=V_c/3$.

### Exam Note
Real gases have $Z_c\approx0.27$–$0.29$, not $0.375$. This is an example of the model's limits. The equation of the critical point only needs conditions (1) and (2). Quote them in the exam.

---

## 16. Platinum Resistance Thermometer

### Q10 — Question
Describe the principle of the platinum resistance thermometer. Discuss its advantages and disadvantages.

### Principle
The electrical resistance of a metal (here **platinum**) increases with temperature in a reproducible way. Measuring the resistance $R_t$ of a platinum wire therefore gives the temperature.

![Platinum resistance thermometer and bridge](../../assets/platinum-resistance-thermometer.svg)

**Construction.** A fine, strain-free coil of pure platinum wire is wound on a mica or ceramic frame in a protective tube and connected through lead wires to a **Wheatstone/resistance bridge** (or a precision ohmmeter). Compensating (dummy) leads cancel the lead resistance.

### Why platinum?
- chemically inert and resistant to oxidation,
- high melting point ($1768\ ^\circ\mathrm C$),
- can be drawn into fine wire and obtained in high purity,
- stable, reproducible resistance–temperature behaviour.

### Resistance–temperature relation
Simplified linear form:

```math
R_t=R_0\,(1+\alpha t)
```

where $R_0$ is the resistance at $0^\circ\mathrm C$ and $\alpha$ is the temperature coefficient of resistance. The relation is only approximately linear.

### Calibration and the platinum scale
Measure $R_0$ at the ice point ($0^\circ\mathrm C$) and $R_{100}$ at the steam point ($100^\circ\mathrm C$). The **platinum-scale temperature** $t_p$ assumes resistance is exactly linear in temperature:

```math
\boxed{t_p=100\,\frac{R_t-R_0}{R_{100}-R_0}}
```

### Gas scale and the Callendar correction
Platinum's resistance is not exactly linear in $t$, so $t_p$ differs from the true (gas-scale) temperature $t$. Callendar's relation connects them:

```math
\boxed{t-t_p=\delta\left[\left(\frac{t}{100}\right)^2-\frac{t}{100}\right]}
```

- $t$: temperature on the **gas scale** (the quantity we want),
- $t_p$: temperature on the **platinum scale** (from the resistances),
- $\delta$: constant for the wire ($\approx1.5$ for pure platinum).

The bracket vanishes at $t=0$ and $t=100$, so the two scales agree at both fixed points, as they must.

### Advantages
- High accuracy and precision over a wide range (roughly $-200^\circ\mathrm C$ to above $600^\circ\mathrm C$; standard-grade types serve as interpolating instruments of the International Temperature Scale).
- Very stable and reproducible over long periods, so suitable for long-term monitoring.
- Nearly linear response, and small corrections.
- The sensing element is small, so temperature at a point can be measured.

### Disadvantages
- Expensive (platinum and precision electronics).
- Delicate: strain or contamination of the wire changes its resistance, and the unit can be mechanically fragile.
- Slower response than a thermocouple because of the protective sheath and thermal mass.
- Needs a current source/bridge; self-heating by the measuring current must be kept small.
- Not suitable above the useful range of platinum and its supports.

### Exam Note
Always say which scale a temperature belongs to. $t_p$ comes from the resistances alone. Only after the Callendar correction do we get the gas-scale $t$.

### Numerical 3 — Gas-scale temperature of a hot bath

**Question.** A platinum resistance thermometer has $R_0=2.585\ \Omega$ at $0^\circ\mathrm C$ and $R_{100}=3.510\ \Omega$ at $100^\circ\mathrm C$. In a hot bath its resistance is $R_t=9.098\ \Omega$. Find the temperature of the bath on the **gas scale**. Take $\delta=1.5$.

**Step 1 — platinum-scale temperature.**

```math
t_p=100\times\frac{9.098-2.585}{3.510-2.585}=100\times\frac{6.513}{0.925}\approx704.1^\circ\mathrm C
```

> $704^\circ\mathrm C$ is the **platinum-scale** value. It is *not* the final answer.

**Step 2 — Callendar correction.** Put $x=t/100$, so $t=100x$:

```math
\begin{aligned}
100x-704.1&=1.5\,(x^2-x)\\
1.5x^2-101.5x+704.1&=0
\end{aligned}
```

```math
x=\frac{101.5\pm\sqrt{101.5^2-4(1.5)(704.1)}}{2(1.5)}
=\frac{101.5\pm\sqrt{6077.6}}{3}
=\frac{101.5\pm77.96}{3}
```

- $x=7.847\;\Rightarrow\;t=784.7^\circ\mathrm C$ (physical).
- $x=59.8\;\Rightarrow\;t\approx5980^\circ\mathrm C$ (rejected: unphysical, far above platinum's melting point and not near $t_p$).

**Result.**

```math
\boxed{t\approx785^\circ\mathrm C\ \text{(gas scale)}}
```

**Exam Note.** The correction ($\approx+80^\circ\mathrm C$) is large here because the bath is far from the calibration points. Always reject the root that is far from $t_p$.

---

## 17. Exam-Focused Question Bank

| # | Question | Section |
|---|---|---|
| Q1 | Show that the work done by an ideal gas is proportional to the kinetic energy of the molecules. | [12](#q1--work-done-and-kinetic-energy) |
| Q2 | Calculate the critical constants in terms of the van der Waals constants. | [15](#q2-and-q14--question) |
| Q3 | State Newton's law of cooling. | [9](#9-newtons-law-of-cooling) |
| Q4 | What is an isothermal process? Derive the work done. | [11](#11-isothermal-process) |
| Q5 | Define molar specific heat. Find the relation between $C_p$ and $C_v$. | [12](#12-heat-capacities-of-an-ideal-gas) |
| Q6 | Define heat and temperature. | [8](#8-heat-and-temperature) |
| Q7 | Prove $P=\tfrac13\tfrac{Nm}{V}\overline{c^2}$ from kinetic theory. | [5](#5-pressure-of-an-ideal-gas-from-kinetic-theory) |
| Q8 | Show that pressure is $\tfrac23$ of the kinetic energy per unit volume. | [6](#6-kinetic-energy-and-pressure) |
| Q9 | Differentiate between heat and temperature. | [8](#8-heat-and-temperature) |
| Q10 | Describe the platinum resistance thermometer; advantages and disadvantages. | [16](#16-platinum-resistance-thermometer) |
| Q11 | Show that adiabatic curves are steeper than isothermal curves. | [13](#13-adiabatic-process) |
| Q12 | What are the critical constants of a gas? | [15](#15-critical-constants) |
| Q13 | Discuss the corrections of van der Waals' equation. | [14](#14-van-der-waals-equation) |
| Q14 | Deduce the critical constants of a van der Waals gas (same derivation as Q2). | [15](#q2-and-q14--question) |
| N1 | Molecular diameter from mean free path (N₂, STP). | [4](#numerical-1--molecular-diameter-from-mean-free-path) |
| N2 | Average kinetic energy of a molecule at 300 K. | [7](#numerical-2--average-kinetic-energy-at-300-k) |
| N3 | Gas-scale temperature from a platinum thermometer reading. | [16](#numerical-3--gas-scale-temperature-of-a-hot-bath) |

Also revise: kinetic-theory postulates (§2), degrees of freedom (§3), and mean free path (§4).

---

## 18. Formula Sheet

**Gas laws and kinetic theory**

```math
PV=nRT=Nk_BT,\qquad R=N_Ak_B
```

```math
PV=\frac{1}{3}Nm\overline{c^2},\quad P=\frac{1}{3}\rho c_{\rm rms}^2,\quad P=\frac{2}{3}u,\quad u=\frac{K}{V}
```

```math
\overline K=\frac{3}{2}k_BT,\qquad c_{\rm rms}=\sqrt{\frac{3k_BT}m}=\sqrt{\frac{3RT}M}
```

```math
\lambda=\frac{1}{\sqrt2\pi d^2n_v}=\frac{k_BT}{\sqrt2\pi d^2P}
```

**Energy and heat capacity**

```math
U=\frac{f}{2}nRT,\quad C_v=\frac{f}{2}R,\quad C_p=C_v+R,\quad \gamma=\frac{C_p}{C_v}=1+\frac{2}{f}
```

**Cooling**

```math
\frac{dT}{dt}=-k(T-T_0),\qquad T-T_0=(T_i-T_0)e^{-kt}
```

**First law and processes** ($\Delta U=Q-W$)

```math
\text{Isothermal: } PV=\text{const},\ W=nRT\ln\frac{V_2}{V_1}=nRT\ln\frac{P_1}{P_2},\ Q=W
```

```math
\text{Adiabatic: } PV^\gamma=\text{const},\ TV^{\gamma-1}=\text{const},\ W=\frac{P_1V_1-P_2V_2}{\gamma-1}=-\Delta U
```

```math
\left(\frac{dP}{dV}\right)_{\rm ad}=\gamma\left(\frac{dP}{dV}\right)_T
```

**van der Waals and critical constants**

```math
\left[P+a\left(\frac{n}{V}\right)^2\right] (V-nb)=nRT
```

```math
V_c=3b,\quad T_c=\frac{8a}{27Rb},\quad P_c=\frac{a}{27b^2},\quad \frac{P_cV_c}{RT_c}=\frac{3}{8}
```

**Platinum thermometer**

```math
R_t=R_0(1+\alpha t),\qquad t_p=100\frac{R_t-R_0}{R_{100}-R_0},\qquad t-t_p=\delta\left[\left(\frac{t}{100}\right)^2-\frac{t}{100}\right]
```

**Constants**

| Constant | Value |
|---|---|
| $k_B$ | $1.38\times10^{-23}\ \mathrm{J\,K^{-1}}=1.38\times10^{-16}\ \mathrm{erg\,K^{-1}}$ |
| $R$ | $8.314\ \mathrm{J\,mol^{-1}K^{-1}}$ |
| $N_A$ | $6.022\times10^{23}\ \mathrm{mol^{-1}}$ |
