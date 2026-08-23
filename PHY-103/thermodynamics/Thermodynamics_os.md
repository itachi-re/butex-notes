# Thermodynamics

**PHY 103 — Physics II**

> **Sign convention used throughout this guide:** Work $W$ is taken as **positive when done by the system on the surroundings** (expansion work positive). Heat $Q$ is taken as **positive when absorbed by the system**. The first law is therefore written as
> $$\Delta U = Q - W$$
> Some textbooks (especially chemistry texts, IUPAC convention) instead define $W$ as work done **on** the system and write $\Delta U = Q + W$. Both conventions are physically equivalent; only the sign of $W$ differs. This guide uses the physics convention ($\Delta U = Q - W$) consistently. Wherever the alternative convention is relevant it is mentioned explicitly, but never mixed into a derivation.

---

## 1. Introduction to Thermodynamics

**Thermodynamics** is the branch of physics that studies energy, its transformations (particularly between heat and work), and the macroscopic behaviour of systems in or near equilibrium. It is built on a small number of empirical laws (zeroth, first, second, third) that are independent of any assumption about the microscopic structure of matter.

**Scope of thermodynamics:** heat engines, refrigerators, phase transitions, chemical equilibrium, material properties (compressibility, expansivity), and the general direction of natural processes.

**Macroscopic vs microscopic description**

| Approach | Variables used | Example |
|---|---|---|
| Macroscopic (thermodynamics) | $P, V, T, U, S$ (bulk, measurable) | Pressure of a gas in a cylinder |
| Microscopic (statistical mechanics/kinetic theory) | Positions, velocities of individual particles | Motion of a single gas molecule |

Thermodynamics does not require knowledge of molecular structure; it only assumes the system can be described by a small number of macroscopic variables once it is in equilibrium.

**Thermodynamic equilibrium** exists when a system shows no further tendency to change its macroscopic properties with time. It requires simultaneously:

- **Thermal equilibrium** — no net heat flow; the system has a single, uniform temperature $T$.
- **Mechanical equilibrium** — no unbalanced forces or pressure differences within the system or between system and surroundings; a single, uniform pressure $P$.
- **Chemical equilibrium** — no net chemical reaction or net diffusion of matter; uniform chemical composition and chemical potential.

**Basic thermodynamic variables**

| Symbol | Name | Type |
|---|---|---|
| $P$ | Pressure | Intensive |
| $V$ | Volume | Extensive |
| $T$ | Absolute temperature | Intensive |
| $U$ | Internal energy | Extensive, state function |
| $H$ | Enthalpy | Extensive, state function |
| $S$ | Entropy | Extensive, state function |

$P$ measures the force per unit area exerted by the system on its boundary; $V$ measures the space occupied; $T$ measures the average thermal energy per degree of freedom (and fixes the direction of spontaneous heat flow); $U$ is the total microscopic energy content; $H$ and $S$ are derived functions introduced later to simplify constant-pressure and directionality analysis respectively.

---

# Part I — Thermodynamic System and State

## 2. Thermodynamic System

- **System**: the specific part of the universe chosen for study.
- **Surroundings**: everything external to the system that can interact with it.
- **Boundary**: the real or imaginary surface separating system from surroundings; it may be fixed or movable, real or conceptual, and may permit or forbid the flow of heat, work, or matter.
- **Universe** (in the thermodynamic sense) = System + Surroundings.

### Open system
Exchanges **both matter and energy** with the surroundings. Example: an open cup of boiling water, a running engine with fuel intake and exhaust.

### Closed system
Exchanges **energy but not matter** with the surroundings. Example: gas sealed in a piston–cylinder assembly that can still absorb/reject heat and do work.

### Isolated system
Exchanges **neither matter nor energy**. Example: an ideal, perfectly insulated, sealed thermos flask (idealisation).

| System | Matter exchange | Energy exchange | Example |
|---|---|---|---|
| Open | Yes | Yes | Boiling water in an open pot |
| Closed | No | Yes | Gas in a sealed piston–cylinder |
| Isolated | No | No | Ideal insulated rigid sealed flask |

---

## 3. Thermodynamic State

The **state** of a system is its condition as specified by the values of a set of macroscopic variables (e.g. $P, V, T$) at a given instant, provided the system is in equilibrium.

**State variables** are the measurable quantities ($P$, $V$, $T$, composition, …) that describe the state.

**State functions** depend *only* on the current state, not on the path by which that state was reached. Their change between two states is uniquely fixed:
$$\oint dU = 0 \quad \text{(for any state function, over a closed cycle)}$$

**Path functions** depend on the specific process (path) connecting two states, not merely on the initial and final states.

### State functions
Examples: $P$, $V$, $T$, $U$, $H$, $S$ (and, later, $A$, $G$). For any state function $X$, $\Delta X = X_{\text{final}} - X_{\text{initial}}$ regardless of the path taken.

### Path functions
Examples: **Heat** $Q$ and **Work** $W$.

**Why heat and work are not stored properties:** A system does not "contain" heat or work the way it contains internal energy. Heat and work are modes of *energy transfer across the boundary during a process*; once transferred, the energy becomes part of $U$ (or leaves the system) and loses its identity as "heat" or "work." Two different processes connecting the same initial and final states can involve completely different amounts of $Q$ and $W$, even though $\Delta U$ is identical for both, because $\Delta U = Q - W$ must hold in each case while $Q$ and $W$ individually depend on the path.

---

## 4. Thermodynamic Functions

A **thermodynamic function** (state function) is any quantity that is completely determined by the current equilibrium state of the system. The primary thermodynamic (energy-dimensioned) functions used in this guide are:

- **Internal energy** $U$ — total microscopic energy.
- **Enthalpy** $H = U + PV$ — convenient for constant-pressure processes.
- **Entropy** $S$ — measures energy dispersal / irreversibility (units J K⁻¹).
- **Helmholtz free energy** $A = U - TS$ — useful work available at constant $T, V$.
- **Gibbs free energy** $G = H - TS$ — useful (non-expansion) work available / spontaneity criterion at constant $T, P$.

A **thermodynamic variable** (e.g. $P, V, T, n$) is an independent or directly measurable quantity; a **thermodynamic function** is typically a *derived*, composite quantity built from the variables and other functions (e.g. $H$ is built from $U$, $P$, $V$). All thermodynamic functions are, by construction, state functions.

---

# Part II — Internal Energy

## 5. Internal Energy

**Internal energy** $U$ is the total energy contained within a system due to the microscopic motions and interactions of its constituent particles, excluding any bulk kinetic energy of the system as a whole and any external potential energy (e.g., due to gravity).

Microscopic contributions to $U$:

- **Translational kinetic energy** of molecules
- **Rotational kinetic energy** (for polyatomic/diatomic molecules)
- **Vibrational energy** (kinetic + potential, in molecular bonds)
- **Intermolecular potential energy** (attractive/repulsive interactions between molecules — significant in real gases, liquids, solids; zero for an ideal gas by definition)
- **Electronic and nuclear energy** (usually unchanged in ordinary thermodynamic processes and often excluded unless chemical/nuclear reactions occur)

Thermodynamics has no operational way to measure an **absolute** value of $U$; only **changes** $\Delta U$ between states are physically meaningful and measurable, since only energy *transfers* (heat, work) can be measured.

---

## 6. Internal Energy of an Ideal Gas

For an **ideal gas**, by definition there are no intermolecular forces, so internal energy consists only of translational (and, for diatomic/polyatomic gases, rotational/vibrational) kinetic energy, all of which depends only on temperature:
$$U = U(T) \quad \text{(ideal gas only)}$$

This is a consequence of the ideal-gas equation of state together with the result (from kinetic theory / Joule's free-expansion experiment) that $\left(\dfrac{\partial U}{\partial V}\right)_T = 0$ for an ideal gas.

Consequently:
$$dU = nC_V\,dT \quad \text{(ideal gas)}$$

where $n$ is the number of moles and $C_V$ is the **molar heat capacity at constant volume**. This relation holds for an ideal gas **for any process**, not only constant-volume ones, because $U$ depends on $T$ alone.

For constant $C_V$ (valid over a temperature range where $C_V$ does not vary appreciably):
$$\boxed{\Delta U = nC_V \Delta T} \quad \text{(ideal gas, constant } C_V\text{)}$$

**Physical reason:** since an ideal gas has no intermolecular potential energy, changing its volume at fixed temperature cannot change its internal energy — only changing the thermal agitation (temperature) can.

---

# Part III — Work Done by a Gas

## 7. Work in Thermodynamics

**Work** in thermodynamics refers to energy transferred across the system boundary by any means other than heat, most commonly by the displacement of the boundary against an external pressure (mechanical $PV$-work), but also possibly electrical, magnetic, or other forms.

For a **quasi-static** process — one carried out so slowly that the system remains arbitrarily close to internal equilibrium at every instant, so that a well-defined pressure $P$ exists throughout — the infinitesimal work **done by the gas** is:
$$\delta W = P\,dV$$

(Under the alternative "work done on the system" convention, this would instead be written $\delta W_{\text{on}} = -P\,dV$.)

- **Expansion** ($dV > 0$): the gas does positive work on the surroundings, $\delta W > 0$.
- **Compression** ($dV < 0$): the surroundings do positive work on the gas; $\delta W < 0$ under this convention (work done *by* the gas is negative).
- **Work done by gas**: energy leaving the system via boundary displacement in the expansion direction.
- **Work done on gas**: energy entering the system via boundary displacement in the compression direction; equals $-\delta W$ under the convention above.

---

## 8. Work Done at Constant Pressure

For an **isobaric** (constant-pressure) quasi-static process, $P$ can be taken outside the integral:
$$W = \int_{V_1}^{V_2} P\,dV = P\int_{V_1}^{V_2} dV$$
$$\boxed{W = P(V_2 - V_1)}$$

(work done **by** the gas, positive for expansion, under the stated convention.)

For an ideal gas, using $PV = nRT$ at constant $P$:
$$PV_1 = nRT_1, \qquad PV_2 = nRT_2$$
$$P(V_2 - V_1) = nR(T_2 - T_1)$$
$$\boxed{W = nR(T_2 - T_1)} \quad \text{(ideal gas, constant pressure)}$$

**$P$–$V$ diagram interpretation:** on a $P$–$V$ diagram, a constant-pressure process is a horizontal line segment from $(V_1, P)$ to $(V_2, P)$. The work done equals the (signed) **rectangular area** between this line and the $V$-axis, bounded by $V_1$ and $V_2$.

---

## 9. Work for a General Quasi-Static Process

For an arbitrary quasi-static path along which $P$ varies with $V$, integrate the infinitesimal work:
$$\boxed{W = \int_{V_1}^{V_2} P\,dV}$$

- This integral equals the **area under the $P$–$V$ curve** between $V_1$ and $V_2$.
- If the process expands ($V_2 > V_1$) along a curve lying above the axis, $W > 0$ (work done by the gas).
- If the process compresses ($V_2 < V_1$), $W < 0$ (work done on the gas, i.e., the gas absorbs work).
- **Work is a path function**: two different $P(V)$ curves connecting the same $(P_1,V_1)$ and $(P_2,V_2)$ enclose different areas under them, so $W$ differs even though the endpoints are the same. This directly demonstrates that $W$ is *not* a state function.

---

# Part IV — Heat and Mechanical Equivalent of Heat

## 10. Heat

**Heat** ($Q$) is energy transferred between a system and its surroundings solely as a result of a **temperature difference**, flowing spontaneously from higher to lower temperature.

- Heat transfer occurs only when the system and surroundings (or two systems) are not in thermal equilibrium.
- Once thermal equilibrium is reached, heat flow ceases.
- Heat, like work, is a **mode of energy transfer**, not a substance stored within a body.

**Heat vs. temperature:** temperature is an intensive state variable indicating the *direction* in which heat will spontaneously flow and characterising the thermal state of a body; heat is the *quantity of energy actually transferred* as a result of a temperature difference. A large object at a modest temperature can transfer far more heat than a small object at a very high temperature.

---

## 11. Mechanical Equivalent of Heat

Historically, heat was believed to be a fluid ("caloric"). **James Prescott Joule's** experiments (1840s), using a falling weight to turn a paddle wheel inside an insulated water container, demonstrated that mechanical work could be converted into heat in a fixed, reproducible ratio, establishing that heat is a form of energy rather than a separate substance.

Joule measured the temperature rise of water produced by a known amount of mechanical work and found a constant conversion factor between the mechanical energy unit and the heat unit (calorie), now called the **mechanical equivalent of heat**, denoted $J$:
$$1\ \text{cal} \approx 4.186\ \text{J}$$

(commonly rounded to $4.2\ \text{J}$ in introductory problems; $1\ \text{kcal} = 4186\ \text{J}$.)

**Significance:** Joule's result was pivotal in establishing the **law of conservation of energy**, showing that mechanical energy and heat are interconvertible forms of the same physical quantity (energy), which directly underlies the first law of thermodynamics.

---

# Part V — First Law of Thermodynamics

## 12. First Law of Thermodynamics

The **first law of thermodynamics** is a statement of the **conservation of energy** applied to thermodynamic systems: energy can be converted between heat, work, and internal energy, but the total energy of an isolated system is conserved.

Using the convention that $W$ is work done **by** the system:
$$\boxed{\Delta U = Q - W}$$

where:
- $Q$ = heat **supplied to** the system (positive if absorbed, negative if released)
- $W$ = work **done by** the system (positive if the system expands against surroundings)
- $\Delta U$ = resulting change in internal energy

Equivalently, using the "work done on system" convention ($W_{\text{on}} = -W$):
$$\boxed{\Delta U = Q + W_{\text{on}}}$$

Both forms express the same physics; **this guide uses $\Delta U = Q - W$ exclusively** in all subsequent derivations.

**Physical meaning:** the internal energy of a system increases if heat is added to it, and decreases if the system performs work on its surroundings. No energy is created or destroyed — it is only transformed between heat, work, and stored internal energy.

---

## 13. Differential Form of the First Law

For an infinitesimal process:
$$\boxed{dU = \delta Q - \delta W}$$

For a **reversible** process involving only $PV$-work:
$$\boxed{dU = \delta Q - P\,dV}$$

**Exact vs. inexact differentials:**

- $dU$ is an **exact differential**: $U$ is a state function, so $\displaystyle\oint dU = 0$ around any closed cycle, and $\Delta U$ between two states is path-independent.
- $\delta Q$ and $\delta W$ are **inexact differentials** (denoted with $\delta$ rather than $d$): $Q$ and $W$ are path functions, so $\displaystyle\oint \delta Q \neq 0$ and $\displaystyle\oint \delta W \neq 0$ in general, and their values between two states depend on the specific path taken. Only the particular combination $\delta Q - \delta W$ is guaranteed to be exact.

---

# Part VI — Applications of the First Law

## 14. First Law for Different Thermodynamic Processes

### Isobaric process ($P = \text{constant}$)

- **Condition:** pressure held fixed.
- **Work:** $W = P\,\Delta V = nR\,\Delta T$ (ideal gas).
- **Heat:** $Q = nC_P\,\Delta T$.
- **$\Delta U$:** $\Delta U = nC_V\,\Delta T$ (ideal gas, always holds regardless of process type).
- **Equation:** $\Delta U = Q - W \Rightarrow nC_V\Delta T = nC_P\Delta T - nR\Delta T$, consistent since $C_P - C_V = R$.
- **$P$–$V$ diagram:** horizontal line.
- **Special result:** $Q = \Delta U + W$; heat added is shared between raising internal energy and doing expansion work.

### Isochoric process ($V = \text{constant}$)

- **Condition:** volume held fixed (rigid container).
- **Work:** $W = 0$ (no boundary displacement).
- **Heat:** $Q = nC_V\,\Delta T$.
- **$\Delta U$:** $\Delta U = nC_V\,\Delta T = Q$.
- **Equation:** $\Delta U = Q$ (since $W=0$).
- **$P$–$V$ diagram:** vertical line.
- **Special result:** all heat supplied goes directly into increasing internal energy; this is precisely why $C_V$ is *defined* via $\left(\dfrac{\partial Q}{\partial T}\right)_V$.

### Isothermal process ($T = \text{constant}$)

- **Condition:** temperature held fixed; system typically in contact with a large thermal reservoir.
- **Work (ideal gas):** $W = nRT\ln\!\left(\dfrac{V_2}{V_1}\right)$.
- **$\Delta U$:** $\Delta U = 0$ (ideal gas, since $U = U(T)$ only).
- **Heat:** $Q = W$ (from first law, since $\Delta U = 0$).
- **Equation:** $PV = \text{constant}$.
- **$P$–$V$ diagram:** hyperbola $P \propto 1/V$.
- **Special result:** all heat absorbed is converted entirely into work output (ideal gas only).

### Adiabatic process ($Q = 0$)

- **Condition:** thermally insulated boundary; no heat exchange.
- **Work:** done entirely at the expense of internal energy: $W = -\Delta U$.
- **$\Delta U$:** $\Delta U = -W = nC_V(T_2 - T_1)$.
- **Heat:** $Q = 0$ by definition.
- **Equation:** $\Delta U = -W \Rightarrow$ first law reduces to $dU = -\delta W = -P\,dV$.
- **$P$–$V$ diagram:** steeper curve than isothermal ($PV^\gamma = \text{constant}$, $\gamma > 1$).
- **Special result:** an adiabatic expansion always cools an ideal gas; an adiabatic compression always heats it.

### Cyclic process

- **Condition:** system returns to its initial state after a sequence of processes.
- **$\Delta U$:** $\Delta U_{\text{cycle}} = 0$ (since $U$ is a state function and initial = final state).
- **Equation:** $Q_{\text{net}} = W_{\text{net}}$ (from the first law with $\Delta U = 0$).
- **$P$–$V$ diagram:** closed loop; enclosed area = net work per cycle.
- **Special result:** this is the operating principle of all heat engines and refrigerators.

---

# Part VII — Specific Heats of Gases

## 15. Heat Capacity and Specific Heat

- **Heat capacity** $C$: the heat required to raise the temperature of a given quantity of substance by $1\,\text{K}$ (or $1^\circ\text{C}$), units J K⁻¹. It depends on the amount of substance and the process (constant $P$ or constant $V$).
- **Specific heat capacity** $c$: heat capacity **per unit mass**, units J kg⁻¹ K⁻¹.
- **Molar heat capacity**: heat capacity **per mole**, units J mol⁻¹ K⁻¹; this is the quantity generally denoted $C_P$, $C_V$ in thermodynamic derivations for gases.

For an ideal gas at constant volume, using $\delta Q = dU$ (since $W=0$):
$$C_V = \left(\frac{\partial U}{\partial T}\right)_V$$

which for an ideal gas (where $U=U(T)$ only) simplifies to the ordinary derivative $C_V = \dfrac{dU}{dT}$.

At constant pressure, using the enthalpy (introduced formally in Part XVIII, $H = U+PV$):
$$C_P = \left(\frac{\partial H}{\partial T}\right)_P$$

**Do not confuse:** molar heat capacity (per mole, J mol⁻¹ K⁻¹) with specific heat capacity (per unit mass, J kg⁻¹ K⁻¹). They are related by $C_{\text{molar}} = c_{\text{specific}} \times M$, where $M$ is the molar mass.

---

## 16. Relation Between $C_P$ and $C_V$

**Derivation for an ideal gas** (molar basis, $n=1$ mol for simplicity):

Start from the first law in differential form for a reversible process:
$$dU = \delta Q - P\,dV$$

At **constant volume**: $dV = 0 \Rightarrow \delta Q = dU = C_V\,dT$.

At **constant pressure**: from the first law, $\delta Q = dU + P\,dV$. By definition $\delta Q = C_P\,dT$ at constant pressure, so:
$$C_P\,dT = dU + P\,dV$$

For an ideal gas, $U$ depends only on $T$, so $dU = C_V\,dT$ regardless of the process. Also, differentiating the ideal-gas law $PV = RT$ (1 mole) at constant $P$:
$$P\,dV = R\,dT$$

Substituting:
$$C_P\,dT = C_V\,dT + R\,dT$$
$$\boxed{C_P - C_V = R} \quad \text{(ideal gas, molar heat capacities)}$$

**Physical reason $C_P > C_V$:** at constant volume, all supplied heat increases internal energy (temperature). At constant pressure, the gas must also expand and perform work against the surroundings as it is heated, so additional heat is required beyond that needed to raise $U$ alone — hence $C_P$ exceeds $C_V$ by exactly the work-related term $R$ (per mole, per kelvin) for an ideal gas.

---

## 17. Ratio of Specific Heats

$$\boxed{\gamma = \frac{C_P}{C_V}}$$

$\gamma > 1$ always, since $C_P > C_V$. Typical ideal-gas values: monatomic $\gamma = 5/3 \approx 1.67$; diatomic $\gamma = 7/5 = 1.4$.

From $C_P - C_V = R$ and $\gamma = C_P/C_V \Rightarrow C_P = \gamma C_V$:
$$\gamma C_V - C_V = R \Rightarrow C_V(\gamma - 1) = R$$
$$\boxed{C_V = \frac{R}{\gamma - 1}}$$

And:
$$C_P = \gamma C_V = \frac{\gamma R}{\gamma - 1}$$
$$\boxed{C_P = \frac{\gamma R}{\gamma - 1}}$$

These allow $C_V$ and $C_P$ to be computed for any ideal gas once $\gamma$ (determined by molecular degrees of freedom) is known.

---

## 18. Generalisation of the Relation Between Specific Heats

The relation $C_P - C_V = R$ holds **only for an ideal gas**. For a **general substance** (real gas, liquid, or solid), the difference $C_P - C_V$ must be derived from general thermodynamic relations without assuming the ideal-gas equation of state. Using the general thermodynamic identity (derivable via Maxwell relations, see Part XXI):

$$\boxed{C_P - C_V = T\left(\frac{\partial P}{\partial T}\right)_V \left(\frac{\partial V}{\partial T}\right)_P}$$

**Assumptions:** this expression is a completely general thermodynamic identity, valid for *any* homogeneous substance in equilibrium (not restricted to ideal gases); it follows purely from the definitions of $C_P$, $C_V$ as state-function derivatives and the cyclic rule for partial derivatives, together with a Maxwell relation.

**Reduction to the ideal-gas case:** for an ideal gas, $PV = nRT \Rightarrow \left(\dfrac{\partial P}{\partial T}\right)_V = \dfrac{nR}{V}$ and $\left(\dfrac{\partial V}{\partial T}\right)_P = \dfrac{nR}{P}$. Substituting (molar basis, $n=1$):
$$C_P - C_V = T \cdot \frac{R}{V} \cdot \frac{R}{P} = \frac{R^2 T}{PV} = \frac{R^2T}{RT} = R$$

recovering $\boxed{C_P - C_V = R}$ exactly, confirming consistency between the general and ideal-gas-specific relations.

---

# Part VIII — Thermodynamic Processes

## 19. Thermodynamic Process

A **thermodynamic process** is any change that takes a system from one equilibrium state (the **initial state**) to another (the **final state**), following some **path** in the space of thermodynamic variables (e.g., a curve in the $P$–$V$ plane).

A **quasi-static process** proceeds through a continuous succession of equilibrium (or near-equilibrium) states, slowly enough that the system's properties remain well defined at every instant — an idealisation that allows $P$, $V$, $T$ to be treated as well-defined functions throughout the process, and makes work expressible as $\int P\,dV$.

---

## 20. Isothermal Process

For an ideal gas at constant $T$, from $PV = nRT$:
$$\boxed{PV = \text{constant}}$$

**Work:**
$$W = \int_{V_1}^{V_2} P\,dV = \int_{V_1}^{V_2} \frac{nRT}{V}\,dV = nRT\ln\!\left(\frac{V_2}{V_1}\right)$$
$$\boxed{W = nRT\ln\!\left(\frac{V_2}{V_1}\right)}$$

**Internal energy change:** since $U = U(T)$ for an ideal gas and $T$ is constant:
$$\boxed{\Delta U = 0} \quad \text{(ideal gas, isothermal)}$$

**Heat:** from the first law, $\Delta U = Q - W \Rightarrow 0 = Q - W$:
$$\boxed{Q = W}$$

(under the stated convention.) On a $P$–$V$ diagram this is a downward-sloping hyperbola (rectangular hyperbola, $P \propto 1/V$).

---

## 21. Adiabatic Process

**Definition:** $Q = 0$ throughout the process (thermally insulated system, or a process fast enough that negligible heat is exchanged).

**Derivation of $PV^\gamma = \text{constant}$** (reversible adiabatic, ideal gas):

From the first law with $\delta Q = 0$:
$$dU = -\delta W = -P\,dV$$

For an ideal gas, $dU = nC_V\,dT$, so:
$$nC_V\,dT = -P\,dV$$

From $PV = nRT$: $P = \dfrac{nRT}{V}$. Substitute:
$$nC_V\,dT = -\frac{nRT}{V}\,dV \;\Rightarrow\; C_V\frac{dT}{T} = -R\frac{dV}{V}$$

Integrate both sides:
$$C_V \ln T = -R \ln V + \text{constant}$$

Using $R = C_P - C_V$ and dividing by $C_V$:
$$\ln T = -\frac{C_P - C_V}{C_V}\ln V + \text{constant} = -(\gamma - 1)\ln V + \text{constant}$$
$$\ln T + (\gamma - 1)\ln V = \text{constant} \;\Rightarrow\; TV^{\gamma-1} = \text{constant}$$
$$\boxed{TV^{\gamma - 1} = \text{constant}}$$

Substitute $T = PV/nR$:
$$\frac{PV}{nR}\,V^{\gamma-1} = \text{constant} \;\Rightarrow\; PV^{\gamma} = \text{constant}$$
$$\boxed{PV^{\gamma} = \text{constant}}$$

Eliminating $V$ instead (using $V = nRT/P$) gives the third equivalent form:
$$\boxed{T^{\gamma}P^{1-\gamma} = \text{constant}}$$

**Work done in a reversible adiabatic process:** since $Q = 0$, $W = -\Delta U = -nC_V(T_2 - T_1) = nC_V(T_1 - T_2)$. Using $C_V = R/(\gamma-1)$:
$$W = \frac{nR(T_1 - T_2)}{\gamma - 1} = \frac{P_1V_1 - P_2V_2}{\gamma - 1}$$

**Comparison of adiabatic and isothermal curves:** on a $P$–$V$ diagram, both are downward-sloping curves through a common point, but the adiabatic curve ($PV^\gamma=$const, $\gamma>1$) is **steeper** than the isothermal curve ($PV=$const) at every point, because in an adiabatic expansion the temperature (and hence pressure) falls faster — there is no heat inflow to sustain the pressure the way there is isothermally.

---

## 22. Isobaric and Isochoric Processes

### Isobaric
$$\boxed{W = P\,\Delta V}$$
Heat: $Q = nC_P\,\Delta T$. Internal energy change: $\Delta U = nC_V\,\Delta T$ (general ideal-gas result). Consistency: $Q = \Delta U + W \Rightarrow nC_P\Delta T = nC_V\Delta T + nR\Delta T$, confirming $C_P - C_V = R$.

### Isochoric
$$\boxed{W = 0}$$
Heat: $Q = nC_V\,\Delta T$. Internal energy change: $\Delta U = nC_V\,\Delta T = Q$ (all heat becomes internal energy, since no boundary work is possible).

---

# Part IX — Reversible and Irreversible Processes

## 23. Reversible Process

A process is **reversible** if it can be reversed in direction such that both the system and its surroundings are restored exactly to their original states, with no net change anywhere in the universe.

Requirements for reversibility:

- The process proceeds through a continuous sequence of states each infinitesimally close to equilibrium (**quasi-static**).
- Any pressure or temperature difference driving the process is **infinitesimal**, so the driving imbalance can be reversed by an infinitesimal change in conditions.
- The system remains in essentially continuous **mechanical equilibrium** (uniform pressure) and **thermal equilibrium** (uniform temperature, or exchanging heat with a reservoir at the same temperature) with its surroundings at every stage.
- No dissipative effects (friction, viscosity, turbulence, unrestrained expansion, finite heat-transfer gradients) are present.

**Example:** a gas expanding infinitely slowly against a piston whose external pressure is reduced in infinitesimal steps, always equal to the internal gas pressure; ideal frictionless quasi-static processes generally.

Reversible processes are an idealised limiting case, useful because they allow maximum possible work to be extracted (or minimum work to be required) between two given states.

---

## 24. Irreversible Process

A process is **irreversible** if, once it occurs, the system and surroundings **cannot** both be restored to their exact original states without some permanent change remaining somewhere in the universe.

Causes of irreversibility:

- **Finite pressure or temperature gradients** driving the process (sudden, non-quasi-static changes)
- **Friction** (between moving parts, or within the fluid)
- **Turbulence** in fluid flow
- **Unrestrained (free) expansion** of a gas into vacuum
- **Heat transfer across a finite temperature difference** (e.g., a hot object placed directly in contact with a cold one)

**Examples:** free (Joule) expansion of a gas into a vacuum; a book sliding to rest on a table due to friction; mixing of two different gases; heat flowing from a hot object to a cold one in direct contact.

All naturally occurring, real-world processes are irreversible to some degree; reversibility is an idealisation approached only in the quasi-static, dissipation-free limit.

---

## 25. Reversible vs Irreversible Process

| Property | Reversible | Irreversible |
|---|---|---|
| Equilibrium | Maintained throughout (quasi-static) | System passes through non-equilibrium states |
| Driving force | Infinitesimal (differential) | Finite |
| Entropy production ($\Delta S_{\text{universe}}$) | Zero | Positive ($>0$) |
| Work output | Maximum possible between given states | Less than the reversible maximum |
| Reversal | Can be exactly reversed with no net change to system + surroundings | Cannot be exactly reversed without leaving a permanent change somewhere |
| Example | Infinitely slow, frictionless quasi-static expansion | Free expansion, friction, sudden mixing, finite-gradient heat flow |

**Why reversible processes are an idealised limiting case:** true reversibility requires infinite time (infinitesimally slow driving forces) and the complete absence of dissipative effects, neither of which is achievable in any real, finite-rate process. Reversible processes nonetheless serve as the theoretical benchmark of maximum efficiency/minimum work against which all real (irreversible) processes are compared.

---

# Part X — Cyclic Process

## 26. Cyclic Process

A **cyclic process** is one in which the system undergoes a series of changes and ultimately returns to its original state.

Since $U$ is a state function and the initial and final states coincide:
$$\boxed{\Delta U_{\text{cycle}} = 0}$$

From the first law applied over the full cycle:
$$\Delta U_{\text{cycle}} = Q_{\text{net}} - W_{\text{net}} = 0$$
$$\boxed{Q_{\text{net}} = W_{\text{net}}}$$

i.e., over a complete cycle, the net heat absorbed by the system exactly equals the net work done by it.

**Enclosed area on a $P$–$V$ diagram:** a cyclic process traces a closed loop on the $P$–$V$ diagram. The **net work per cycle equals the area enclosed by the loop.**

- **Clockwise cycle:** net work is done **by** the system on the surroundings ($W_{\text{net}} > 0$) — characteristic of a **heat-engine cycle**, which absorbs net heat and delivers net work.
- **Anticlockwise cycle:** net work is done **on** the system ($W_{\text{net}} < 0$) — characteristic of a **refrigerator/heat-pump cycle**, which consumes work to move heat from a cold reservoir to a hot one.

---

# Part XI — Second Law of Thermodynamics

## 27. Need for the Second Law

The first law only accounts for the **conservation of energy**; it places no restriction on the *direction* in which a process may proceed. According to the first law alone, heat could spontaneously flow from a cold body to a hot one (energy would still be conserved), or a gas could spontaneously compress itself into a corner of a container while absorbing energy from its own random thermal motion — yet neither is ever observed.

The **second law** supplies the missing directional constraint: it identifies which energetically-allowed processes actually occur spontaneously in nature, and sets fundamental limits (e.g., on heat-engine efficiency) that no cyclic device can exceed, regardless of engineering refinement.

**Real examples of directionality not explained by the first law alone:**

- Heat flows spontaneously only from hot to cold, never the reverse (without external work input).
- A gas expands spontaneously to fill an evacuated container, never spontaneously re-compresses itself.
- Friction spontaneously converts organised mechanical energy into disorganised thermal energy, never the reverse.

---

## 28. Statements of the Second Law

### Kelvin–Planck statement
No cyclic heat engine can operate so as to produce a net amount of work while exchanging heat with only a **single** thermal reservoir — that is, it is impossible to construct a device that, operating in a cycle, converts heat absorbed from one reservoir completely into work with no other effect.

### Clausius statement
It is impossible to construct a cyclic device whose sole effect is the transfer of heat from a colder body to a hotter body — heat cannot, of itself (without external work input), pass from a colder to a hotter body.

**Equivalence of the two statements:** the two statements can each be shown to imply the other. If a Clausius-violating device existed (spontaneous heat transfer cold→hot with no work), it could be combined with an ordinary heat engine to produce a net Kelvin–Planck violation (net work from a single reservoir); conversely, if a Kelvin–Planck-violating device existed, it could be combined with a refrigerator to produce a net Clausius violation. Hence violating either statement implies violating the other, so the two formulations are logically equivalent.

---

# Part XII — First Law vs Second Law

## 29. Difference Between First and Second Laws

| First Law | Second Law |
|---|---|
| Statement of **conservation of energy**: energy can be converted between forms but never created or destroyed | Statement about the **direction** of natural processes and the limits on converting heat into work |
| Does not restrict the direction of a process | Forbids certain energetically-possible but directionally-impossible processes |
| Treats heat and work as equivalent, interconvertible forms of energy | Recognises heat and work as **not equivalent in quality** — work can be converted completely to heat, but heat cannot be converted completely to work in a cyclic process |
| No mention of efficiency limits | Sets an absolute upper limit on heat-engine efficiency (Carnot efficiency) |
| No associated state function required for its statement | Introduces the state function **entropy** $S$ as the quantitative measure of irreversibility |

**Why both laws are necessary:** the first law alone permits processes (e.g. spontaneous cold-to-hot heat flow, or 100% heat-to-work conversion) that are never observed to occur; the second law is required to exclude these while remaining fully consistent with energy conservation. For example, a proposed engine that converts 100% of absorbed heat into work without any heat rejection satisfies the first law's energy bookkeeping perfectly, yet the second law (Kelvin–Planck) forbids it.

---

# Part XIII — Heat Engines

## 30. Heat Engine

A **heat engine** is a device that operates in a cycle, absorbing heat from a hot reservoir, converting part of it into net work, and rejecting the remainder to a cold reservoir.

- **Source / hot reservoir** (temperature $T_H$): supplies heat $Q_H$ to the working substance.
- **Working substance**: the material (gas, steam, etc.) undergoing the cyclic process.
- **Sink / cold reservoir** (temperature $T_C$): receives rejected heat $Q_C$.
- **Heat input** $Q_H$: heat absorbed from the source per cycle.
- **Work output** $W$: net work delivered by the engine per cycle.
- **Heat rejected** $Q_C$: heat dumped to the sink per cycle.

Since the working substance returns to its initial state each cycle, $\Delta U_{\text{cycle}} = 0$, so by the first law:
$$\boxed{W = Q_H - Q_C}$$

---

## 31. Efficiency of a Heat Engine

**Thermal efficiency** is defined as the fraction of heat input converted into useful net work:
$$\boxed{\eta = \frac{W}{Q_H}}$$

Substituting $W = Q_H - Q_C$:
$$\boxed{\eta = 1 - \frac{Q_C}{Q_H}}$$

**Why $\eta < 1$ always** (for a real cyclic engine): the Kelvin–Planck statement of the second law forbids converting heat from a single reservoir completely into work with no other effect; therefore some heat $Q_C > 0$ must always be rejected to a cold reservoir, so $Q_C/Q_H > 0$ and $\eta < 1$ strictly.

**Ideal vs real engines:** an ideal (reversible) engine operating between two given reservoirs achieves the theoretical maximum efficiency possible (the Carnot efficiency, Part XIV); real engines always have $\eta$ strictly less than this maximum, due to friction, non-quasi-static heat transfer across finite temperature gradients, turbulence, and other irreversibilities.

**Factors limiting real efficiency:** friction and mechanical losses, heat leakage/losses to the environment, finite-rate (non-quasi-static) heat transfer, incomplete combustion (in fuel-based engines), and departure of the working substance from ideal behaviour.

**Numerical example:** if an engine absorbs $Q_H = 2000\ \text{J}$ per cycle and rejects $Q_C = 1200\ \text{J}$, then $W = 2000 - 1200 = 800\ \text{J}$ and $\eta = 800/2000 = 0.40 = 40\%$.

---

# Part XIV — Carnot Cycle

## 32. Carnot Cycle

The **Carnot cycle** is an idealised, entirely **reversible** cyclic process for a heat engine operating between two fixed-temperature reservoirs, $T_H$ (hot) and $T_C$ (cold), consisting of exactly four reversible stages:

1. **Isothermal expansion** at $T_H$ — the working substance absorbs heat $Q_H$ from the hot reservoir while expanding at constant temperature $T_H$.
2. **Adiabatic expansion** — the working substance expands further with no heat exchange, cooling from $T_H$ to $T_C$.
3. **Isothermal compression** at $T_C$ — the working substance rejects heat $Q_C$ to the cold reservoir while being compressed at constant temperature $T_C$.
4. **Adiabatic compression** — the working substance is compressed further with no heat exchange, heating back from $T_C$ to $T_H$, returning it to its initial state.

**$P$–$V$ diagram:** a closed curve consisting of two isothermal curves (upper one at $T_H$, lower one at $T_C$) connected by two adiabatic curves (each steeper than the isotherms), traced in a clockwise sense for an engine. The four corner states are conventionally labelled $A \to B$ (isothermal expansion), $B \to C$ (adiabatic expansion), $C \to D$ (isothermal compression), $D \to A$ (adiabatic compression).

---

## 33. Detailed Analysis of the Carnot Cycle

| Stage | Process | Heat transfer | Work | Temperature | Volume change | Pressure change |
|---|---|---|---|---|---|---|
| $A \to B$ | Isothermal expansion | $+Q_H$ absorbed from hot reservoir | $W_{AB} = nRT_H\ln(V_B/V_A) > 0$ | Constant at $T_H$ | Increases | Decreases |
| $B \to C$ | Adiabatic expansion | $Q = 0$ | $W_{BC} = nC_V(T_H - T_C) > 0$ | Falls from $T_H$ to $T_C$ | Increases | Decreases |
| $C \to D$ | Isothermal compression | $-Q_C$ rejected to cold reservoir | $W_{CD} = nRT_C\ln(V_D/V_C) < 0$ | Constant at $T_C$ | Decreases | Increases |
| $D \to A$ | Adiabatic compression | $Q = 0$ | $W_{DA} = nC_V(T_C - T_H) < 0$ | Decreases | Rises from $T_C$ to $T_H$ | Increases |

**Direction of each process:** stages 1–2 (expansion) move the system away from the hot state toward the cold state while doing positive net work; stages 3–4 (compression) restore the system to its initial hot state while absorbing net negative work (i.e., work is done on the system), completing the closed loop.

**Total work per cycle:**
$$W_{\text{net}} = W_{AB} + W_{BC} + W_{CD} + W_{DA}$$

The two adiabatic-stage work terms are equal in magnitude and opposite in sign ($W_{BC} = -W_{DA}$, since both connect the same temperatures $T_H \leftrightarrow T_C$ via $TV^{\gamma-1}=$const, and the adiabatic relation makes these volume ratios reciprocal along corresponding legs), so they cancel exactly, leaving:
$$W_{\text{net}} = W_{AB} + W_{CD} = nRT_H\ln\!\left(\frac{V_B}{V_A}\right) + nRT_C\ln\!\left(\frac{V_D}{V_C}\right)$$

Since $V_D/V_C = V_A/V_B$ (a consequence of applying the adiabatic relation $TV^{\gamma-1}=$const to both adiabatic legs between the same two temperatures), this simplifies to:
$$W_{\text{net}} = nR(T_H - T_C)\ln\!\left(\frac{V_B}{V_A}\right)$$

consistent with $W_{\text{net}} = Q_H - Q_C$ from the first law applied to the full cycle.

---

## 34. Efficiency of Carnot Engine

Since $Q_H = nRT_H \ln(V_B/V_A)$ and $|Q_C| = nRT_C\ln(V_D/V_C) = nRT_C \ln(V_B/V_A)$ (using $V_D/V_C = V_A/V_B$ from above),
$$\frac{Q_C}{Q_H} = \frac{T_C}{T_H}$$

Substituting into the general efficiency formula $\eta = 1 - Q_C/Q_H$:
$$\boxed{\eta_C = 1 - \frac{T_C}{T_H}}$$

where $T_H$ and $T_C$ **must be expressed in kelvin** (absolute temperature), since this result derives directly from the ideal-gas equation of state and the isothermal/adiabatic work integrals, both of which require absolute temperature.

**Why $0 < \eta_C < 1$:** for any finite positive absolute temperatures with $T_H > T_C > 0\ \text{K}$, the ratio $T_C/T_H$ satisfies $0 < T_C/T_H < 1$, so $\eta_C = 1 - T_C/T_H$ satisfies $0 < \eta_C < 1$ strictly. $\eta_C \to 1$ only in the unattainable limit $T_C \to 0\ \text{K}$ (consistent with the third law, Part XIX).

> **Common mistake:** substituting Celsius temperatures directly into $\eta_C = 1 - T_C/T_H$ gives an incorrect result. Both temperatures **must** be converted to kelvin first.

---

# Part XV — Carnot Engine as a Reversible Engine

## 35. Carnot Cycle as a Reversible Cycle

Each of the four stages of the Carnot cycle is individually reversible:

- **Isothermal stages:** heat is exchanged with a reservoir at (essentially) the same temperature as the working substance at every instant — an infinitesimal temperature difference is sufficient to drive heat flow in either direction, so these stages satisfy the reversibility criterion of vanishing driving gradients.
- **Adiabatic stages:** no heat is exchanged, and the expansion/compression is carried out quasi-statically (infinitely slowly), with the internal pressure always equal to the external pressure by an infinitesimal margin, so no dissipative work is lost.
- **Absence of friction:** the idealised Carnot cycle assumes a frictionless piston and no viscous or turbulent losses in the working substance.
- **Quasi-static operation throughout:** every stage proceeds through a continuous sequence of equilibrium states.
- **Reversible heat transfer:** because temperature differences between the working substance and each reservoir are infinitesimal during the isothermal stages, the direction of heat flow can be reversed by an infinitesimal change in conditions.

**Why the Carnot engine is an ideal limiting case rather than a practical engine:** achieving truly infinitesimal temperature/pressure differences and zero friction requires the process to run infinitely slowly, yielding zero power output (work per unit time) in the strict limit. Real engines must operate at finite rates to deliver useful power, which inevitably introduces finite gradients and dissipative losses, so no real engine can attain the Carnot efficiency exactly — it serves only as the theoretical upper bound.

---

# Part XVI — Carnot's Theorem

## 36. Carnot's Theorem

> **No engine operating between two given heat reservoirs can be more efficient than a reversible engine operating between the same two reservoirs.**

**Explanation:**

- Consider any reversible engine $R$ and any other engine $X$ (reversible or irreversible), both operating between the same hot reservoir at $T_H$ and cold reservoir at $T_C$.
- If $X$ were more efficient than $R$, then $X$ could be used to drive $R$ in reverse (as a refrigerator), and the combined system could be shown to produce a net transfer of heat from the cold to the hot reservoir with no external work input — a direct violation of the Clausius statement of the second law.
- Since this is forbidden, no engine (of any working substance or design) can exceed the efficiency of a reversible engine operating between the same two reservoirs.
- A direct corollary: **all reversible engines operating between the same two reservoirs have identical efficiency**, regardless of the working substance used — because if two reversible engines had different efficiencies, the more efficient one could, by the same argument, be shown to violate the second law when used to drive the less efficient one in reverse.
- Since the Carnot cycle is one specific example of a reversible engine, its efficiency represents the maximum possible efficiency for **any** engine (reversible or irreversible) operating between $T_H$ and $T_C$, and this maximum depends **only on the reservoir temperatures**, not on the working substance or cycle details:
$$\boxed{\eta_{\text{Carnot}} = 1 - \frac{T_C}{T_H}}$$

**Significance:** Carnot's theorem establishes a fundamental, substance-independent upper limit on the efficiency of heat engines, purely as a consequence of the second law — no amount of engineering improvement can exceed it; only approaching it more closely (by reducing irreversibilities) is possible.

---

# Part XVII — Entropy

## 37. Entropy

**Entropy** $S$ is a thermodynamic state function, introduced via the second law, that quantifies the direction and extent of irreversibility of a process. For a reversible process, the infinitesimal entropy change is defined by:
$$\boxed{dS = \frac{\delta Q_{\text{rev}}}{T}}$$

where $\delta Q_{\text{rev}}$ is the heat exchanged **reversibly** at absolute temperature $T$. (For an irreversible process, the actual heat exchanged $\delta Q_{\text{irr}} < T\,dS$; entropy change must instead be computed along a reversible path connecting the same two endpoints, since $S$ is a state function.)

- **State function:** $\Delta S$ between two states depends only on the states, not the path (unlike $Q$ itself).
- **Extensive property:** entropy scales with the size/amount of the system.
- **Units:** joules per kelvin (J K⁻¹); molar entropy has units J mol⁻¹ K⁻¹.
- **Physical interpretation:** entropy quantifies the extent to which energy in a system has become dispersed/degraded in a way that is unavailable to do useful work; equivalently, it is the thermodynamic quantity whose change over a cycle vanishes only for reversible processes and strictly increases (for the universe as a whole) for irreversible ones.

This guide defines entropy through its rigorous thermodynamic (Clausius) definition above; the statistical-mechanical interpretation of entropy as a measure of the number of accessible microstates ("disorder") is a deeper, complementary picture but is not the starting definition used here.

---

## 38. Entropy Change

**Reversible process, general:** $\displaystyle \Delta S = \int \frac{\delta Q_{\text{rev}}}{T}$.

**Isothermal process** (reservoir at constant $T$): $\displaystyle \Delta S = \frac{Q_{\text{rev}}}{T}$ (since $T$ is constant, it can be taken outside the integral).

**Ideal gas, general process from $(T_1,V_1)$ to $(T_2,V_2)$:**

Starting from $dS = \delta Q_{\text{rev}}/T$ and the first law for a reversible process, $\delta Q_{\text{rev}} = dU + P\,dV = nC_V\,dT + P\,dV$:
$$dS = \frac{nC_V\,dT}{T} + \frac{P\,dV}{T} = \frac{nC_V\,dT}{T} + \frac{nR\,dV}{V}$$

(using $P/T = nR/V$ from the ideal-gas law). Integrating between the two states:
$$\boxed{\Delta S = nC_V \ln\frac{T_2}{T_1} + nR\ln\frac{V_2}{V_1}}$$

**Equivalent form in terms of $T$ and $P$:** starting instead from $\delta Q_{\text{rev}} = nC_P\,dT - V\,dP$ (obtainable from $H = U+PV$, see Part XVIII) and $V/T = nR/P$:
$$\boxed{\Delta S = nC_P \ln\frac{T_2}{T_1} - nR\ln\frac{P_2}{P_1}}$$

Both expressions are valid **for an ideal gas only**, with constant $C_V$, $C_P$ over the temperature range considered.

**Heating/cooling of a substance (no phase change), general (any substance) at constant pressure:**
$$\Delta S = \int_{T_1}^{T_2} \frac{nC_P}{T}\,dT$$
which reduces to $nC_P\ln(T_2/T_1)$ if $C_P$ is constant over the range.

**Phase transitions** (constant $T$, constant $P$, e.g. melting or vaporisation): since the transition occurs reversibly at the constant transition temperature $T_{\text{tr}}$,
$$\Delta S_{\text{transition}} = \frac{\Delta H_{\text{transition}}}{T_{\text{transition}}}$$

---

## 39. Entropy and the Second Law

The second law, expressed in terms of entropy, states that for **any** process:
$$\boxed{\Delta S_{\text{universe}} \geq 0}$$

where $\Delta S_{\text{universe}} = \Delta S_{\text{system}} + \Delta S_{\text{surroundings}}$.

### Reversible process
$$\Delta S_{\text{universe}} = 0$$
The entropy lost (or gained) by the system is exactly compensated by an equal and opposite entropy gain (or loss) in the surroundings — no net entropy is generated.

### Irreversible process
$$\Delta S_{\text{universe}} > 0$$
Irreversibilities (friction, finite-gradient heat flow, free expansion, etc.) always generate **additional** entropy beyond what is exchanged with the surroundings; this extra contribution is called **entropy generation** and is a direct quantitative measure of the process's irreversibility. The second law's inequality $\Delta S_{\text{universe}} \geq 0$ can never be violated — the equality holds only in the reversible limit.

---

# Part XVIII — Thermodynamic Functions

## 40. Enthalpy

$$\boxed{H = U + PV}$$

**Differential form:** differentiating,
$$dH = dU + P\,dV + V\,dP$$

For a reversible process with only $PV$-work, $dU = \delta Q - P\,dV$, so:
$$dH = \delta Q - P\,dV + P\,dV + V\,dP = \delta Q + V\,dP$$

At **constant pressure** ($dP = 0$):
$$dH = \delta Q \quad \Rightarrow \quad \Delta H = Q_P$$

- **Enthalpy as a state function:** since $U$, $P$, $V$ are all state functions, so is their combination $H$.
- **Relation to heat at constant pressure:** the equality $\Delta H = Q_P$ shows that enthalpy change equals the heat exchanged in a constant-pressure process — this is the practical reason enthalpy is introduced, since most laboratory and industrial processes (open to the atmosphere) occur at constant pressure.

---

## 41. Helmholtz Free Energy

$$\boxed{A = U - TS}$$

**Differential form:** for a reversible process with only $PV$-work, using $dU = T\,dS - P\,dV$ (established in Part XXI):
$$dA = dU - T\,dS - S\,dT = (T\,dS - P\,dV) - T\,dS - S\,dT$$
$$\boxed{dA = -S\,dT - P\,dV}$$

**Natural variables:** $A = A(T,V)$ — $T$ and $V$ are the natural independent variables for $A$, since its differential is expressed directly in terms of $dT$ and $dV$.

**Constant-$(T,V)$ processes:** at constant $T$ and $V$, $dA = 0$ is the condition identifying equilibrium; more generally, $A$ represents the maximum work obtainable from a system at constant temperature (the "free," i.e. available, energy for conversion into work under isothermal conditions), which is why it is called the Helmholtz **free energy**.

**Spontaneity criterion (brief):** for a process at constant $T$ and $V$, spontaneous change corresponds to $dA \leq 0$, with equilibrium at $dA = 0$; this follows from combining the second law ($\Delta S_{\text{universe}}\geq0$) with the first law under these constraints.

---

## 42. Gibbs Free Energy

$$\boxed{G = H - TS}$$

**Differential form:** using $dH = T\,dS + V\,dP$ (Part XXI):
$$dG = dH - T\,dS - S\,dT = (T\,dS + V\,dP) - T\,dS - S\,dT$$
$$\boxed{dG = -S\,dT + V\,dP}$$

**Natural variables:** $G = G(T,P)$ — temperature and pressure, the two variables most easily controlled in the laboratory, are the natural independent variables of $G$.

**Constant-$(T,P)$ processes — spontaneity and equilibrium:** for a process occurring at constant temperature and pressure,
$$\Delta G < 0 \quad \text{indicates a spontaneous process}$$
$$\Delta G = 0 \quad \text{indicates equilibrium}$$
$$\Delta G > 0 \quad \text{indicates a non-spontaneous process (spontaneous only in the reverse direction)}$$

This criterion follows from combining the second law with the definitions of $H$ and $G$ under constant-$T$, constant-$P$ constraints, and represents the maximum **non-expansion (useful)** work obtainable from the system under these conditions.

> This guide restricts the discussion of $G$ to its thermodynamic definition and spontaneity criterion as required by the PHY 103 syllabus, without extending into chemical-equilibrium or reaction-thermodynamics applications.

---

# Part XIX — Third Law of Thermodynamics

## 43. Third Law

> **The entropy of a perfect crystalline substance approaches zero as the temperature approaches absolute zero.**

Mathematically:
$$\boxed{S \rightarrow 0 \quad \text{as} \quad T \rightarrow 0\ \text{K}}$$

for a perfect crystal, under the standard assumption that the substance is in complete internal equilibrium with a single, non-degenerate, perfectly ordered ground state.

**Key concepts:**

- **Absolute zero** ($T = 0\ \text{K}$): the theoretical lower limit of temperature, at which the thermal motion contributing to entropy is minimised.
- **Perfect crystal:** an idealised solid with a completely regular, defect-free lattice structure and a single, unique ground-state configuration.
- **Residual entropy:** in real substances that do not form a perfect single-configuration crystal at $T=0$ (e.g., due to molecular disorder frozen in upon rapid cooling, as in carbon monoxide or ordinary ice), a small nonzero entropy may remain even as $T \to 0\ \text{K}$; this is called residual entropy and reflects a departure from the idealised "perfect crystal" assumption of the third law.
- **Why the third law provides a reference for absolute entropy:** unlike $U$, $H$, $A$, $G$ (for which only *changes* are thermodynamically defined), the third law fixes an **absolute zero point** for entropy ($S=0$ at $T=0\ \text{K}$ for a perfect crystal), allowing the **absolute entropy** of a substance at any temperature to be calculated unambiguously by integrating heat-capacity data from $0\ \text{K}$ upward, rather than only being able to compute entropy *differences*.

---

# Part XX — Applications of the Third Law

## 44. Applications

- **Calculation of absolute entropy:** the third law allows the absolute molar entropy of a substance at any temperature $T$ to be obtained by integrating experimentally measured heat-capacity data from $0\ \text{K}$, since the integration constant (entropy at $T=0$) is fixed at zero for a perfect crystal.
- **Entropy changes with temperature:** by measuring $C_P(T)$ over a range of temperatures, the entropy at any point in that range can be computed via integration.
- **Standard molar entropy:** tabulated absolute entropies of substances at a reference (standard) state, made possible only because the third law fixes the zero point.
- **Heat capacity data:** experimental $C_P(T)$ (or $C_V(T)$) measurements, often down to very low temperatures, are the essential input data for third-law entropy calculations.
- **Prediction/calculation of entropy changes:** enables computation of $\Delta S$ for physical and chemical processes using tabulated absolute entropy values, without needing to trace an explicit reversible path for every case.
- **Low-temperature physics:** the third law underlies the practical unattainability of absolute zero (an infinite number of steps would be required to reach $T=0\ \text{K}$ exactly via any finite sequence of processes, closely related to the statement $\eta_C \to 1$ only as $T_C \to 0$), motivating cryogenic research into how closely absolute zero can be approached.
- **Thermodynamic equilibrium calculations:** absolute entropy values (fixed by the third law) are essential inputs for calculating Gibbs free energy changes and hence predicting the spontaneity/equilibrium position of processes.

**Absolute entropy formula:**
$$S(T) = \int_0^T \frac{C_P}{T}\,dT$$

This expression is **schematic**: it assumes $C_P$ is well-defined and finite (or appropriately integrable) all the way down to $T=0$, and it must be supplemented with explicit phase-transition contributions whenever the substance undergoes melting, vaporisation, or a solid-solid phase change between $0\ \text{K}$ and $T$:
$$\Delta S_{\text{transition}} = \frac{\Delta H_{\text{transition}}}{T_{\text{transition}}}$$

each such term must be **added** at the corresponding transition temperature when building up the total absolute entropy at $T$.

---

# Part XXI — Maxwell's Thermodynamic Relations

## 45. Maxwell Relations

**Four fundamental thermodynamic potentials** and their differentials (for a closed system undergoing reversible change with only $PV$-work):

### Internal energy
$$\boxed{dU = T\,dS - P\,dV}$$
Natural variables: $U = U(S,V)$.

*(Derivation: from the first law $dU = \delta Q_{\text{rev}} - \delta W_{\text{rev}} = T\,dS - P\,dV$, using $\delta Q_{\text{rev}} = T\,dS$ from the definition of entropy and $\delta W_{\text{rev}} = P\,dV$.)*

### Enthalpy
$$\boxed{dH = T\,dS + V\,dP}$$
Natural variables: $H = H(S,P)$. *(From $H = U+PV \Rightarrow dH = dU + P\,dV + V\,dP = (T\,dS-P\,dV)+P\,dV+V\,dP = T\,dS+V\,dP$.)*

### Helmholtz free energy
$$\boxed{dA = -S\,dT - P\,dV}$$
Natural variables: $A = A(T,V)$. *(Derived in Part XVIII.)*

### Gibbs free energy
$$\boxed{dG = -S\,dT + V\,dP}$$
Natural variables: $G = G(T,P)$. *(Derived in Part XVIII.)*

---

## 46. Derivation of Maxwell Relations

Each Maxwell relation follows from the mathematical fact that for an exact differential $dZ = M\,dx + N\,dy$ of a state function $Z(x,y)$, the mixed second partial derivatives are equal:
$$\left(\frac{\partial M}{\partial y}\right)_x = \left(\frac{\partial N}{\partial x}\right)_y$$

### From $U(S,V)$: $dU = T\,dS - P\,dV$

Here $M = T = \left(\dfrac{\partial U}{\partial S}\right)_V$ and $N = -P = \left(\dfrac{\partial U}{\partial V}\right)_S$. Equality of mixed partials gives:
$$\left(\frac{\partial T}{\partial V}\right)_S = \left(\frac{\partial(-P)}{\partial S}\right)_V$$
$$\boxed{\left(\frac{\partial T}{\partial V}\right)_S = -\left(\frac{\partial P}{\partial S}\right)_V}$$

### From $H(S,P)$: $dH = T\,dS + V\,dP$

$M = T = \left(\dfrac{\partial H}{\partial S}\right)_P$, $N = V = \left(\dfrac{\partial H}{\partial P}\right)_S$:
$$\boxed{\left(\frac{\partial T}{\partial P}\right)_S = \left(\frac{\partial V}{\partial S}\right)_P}$$

### From $A(T,V)$: $dA = -S\,dT - P\,dV$

$M = -S = \left(\dfrac{\partial A}{\partial T}\right)_V$, $N = -P = \left(\dfrac{\partial A}{\partial V}\right)_T$:
$$\left(\frac{\partial(-S)}{\partial V}\right)_T = \left(\frac{\partial(-P)}{\partial T}\right)_V$$
$$\boxed{\left(\frac{\partial S}{\partial V}\right)_T = \left(\frac{\partial P}{\partial T}\right)_V}$$

### From $G(T,P)$: $dG = -S\,dT + V\,dP$

$M = -S = \left(\dfrac{\partial G}{\partial T}\right)_P$, $N = V = \left(\dfrac{\partial G}{\partial P}\right)_T$:
$$\left(\frac{\partial(-S)}{\partial P}\right)_T = \left(\frac{\partial V}{\partial T}\right)_P$$
$$\boxed{\left(\frac{\partial S}{\partial P}\right)_T = -\left(\frac{\partial V}{\partial T}\right)_P}$$

All four signs above have been derived directly and consistently from the four potential differentials using the equality of mixed partial derivatives; no sign has been inserted arbitrarily.

---

## 47. Applications of Maxwell Relations

Maxwell relations are valuable because they convert **entropy derivatives** (hard to measure directly) into **$P$–$V$–$T$ derivatives** (directly measurable via equations of state or experiments).

- **Entropy changes:** the relation $\left(\dfrac{\partial S}{\partial V}\right)_T = \left(\dfrac{\partial P}{\partial T}\right)_V$ allows $\left(\partial S/\partial V\right)_T$ — otherwise requiring a direct entropy measurement — to be computed instead from how pressure varies with temperature at constant volume, an easily measurable quantity for many substances (e.g., directly from an equation of state).
- **Thermal expansion and compressibility:** Maxwell relations connect entropy derivatives to the **volume expansivity** $\alpha = \dfrac{1}{V}\left(\dfrac{\partial V}{\partial T}\right)_P$ and **isothermal compressibility** $\kappa_T = -\dfrac{1}{V}\left(\dfrac{\partial V}{\partial P}\right)_T$, both routinely tabulated material properties.
- **$C_P - C_V$:** the general relation derived in Part VII (§18), $C_P - C_V = T\left(\dfrac{\partial P}{\partial T}\right)_V\left(\dfrac{\partial V}{\partial T}\right)_P$, is obtained using a Maxwell relation together with the cyclic rule for partial derivatives — directly linking heat-capacity differences to measurable $P$–$V$–$T$ data.
- **Ideal gases:** applying $\left(\dfrac{\partial S}{\partial V}\right)_T = \left(\dfrac{\partial P}{\partial T}\right)_V$ to $PV=nRT$ gives $\left(\dfrac{\partial P}{\partial T}\right)_V = nR/V$, immediately reproducing the ideal-gas entropy formula's volume-dependence term ($nR\ln(V_2/V_1)$) derived directly in Part XVII, §38, confirming internal consistency.

---

# Part XXII — Important Derivations

## 48. Must-Know Derivations

The following derivations are covered in full above; this section indexes them for quick reference.

1. **Work done at constant pressure** — Part III, §8: $W = P(V_2-V_1) = nR(T_2-T_1)$.
2. **Work done in a general reversible process** — Part III, §9: $W = \int P\,dV$.
3. **First law of thermodynamics** — Part V, §12–13: $\Delta U = Q - W$; $dU = \delta Q - P\,dV$.
4. **$C_P - C_V = R$** — Part VII, §16.
5. **General $C_P - C_V$ relation** — Part VII, §18: via Maxwell relation and cyclic rule.
6. **Isothermal work** — Part VIII, §20: $W = nRT\ln(V_2/V_1)$.
7. **Adiabatic equation $PV^\gamma = \text{constant}$** — Part VIII, §21.
8. **Adiabatic temperature–volume relation** — Part VIII, §21: $TV^{\gamma-1} = \text{constant}$.
9. **Heat-engine efficiency** — Part XIII, §31: $\eta = 1 - Q_C/Q_H$.
10. **Carnot efficiency** — Part XIV, §34: $\eta_C = 1 - T_C/T_H$.
11. **Entropy change (ideal gas)** — Part XVII, §38.
12. **Entropy criterion for reversible/irreversible processes** — Part XVII, §39: $\Delta S_{\text{universe}} \geq 0$.
13. **Thermodynamic potentials** — Part XVIII, §40–42: $H$, $A$, $G$ and their differentials.
14. **Four Maxwell relations** — Part XXI, §46.

Each derivation above states its starting equation, assumptions, algebraic steps, physical meaning, and final boxed result in its respective section.

---

# Part XXIII — Numerical Problems

## 49. Solved Numerical Problems

*(Use $R = 8.314\ \text{J mol}^{-1}\text{K}^{-1}$ unless otherwise noted; all temperatures in kelvin.)*

### Basic

**Problem 1 — Work at constant pressure**

1. **Given:** $n = 2\ \text{mol}$ ideal gas expands at constant $P = 1.0\times10^5\ \text{Pa}$ from $V_1 = 0.010\ \text{m}^3$ to $V_2 = 0.020\ \text{m}^3$.
2. **Required:** work done by the gas.
3. **Formula:** $W = P(V_2 - V_1)$.
4. **Substitution:** $W = (1.0\times10^5)(0.020 - 0.010)$.
5. **Calculation:** $W = (1.0\times10^5)(0.010) = 1.0\times10^3$.
6. **Answer:** $W = 1000\ \text{J} = 1\ \text{kJ}$.

**Problem 2 — Heat and internal energy (isochoric)**

1. **Given:** $n=1\ \text{mol}$ monatomic ideal gas ($C_V = \tfrac{3}{2}R$) heated at constant volume from $300\ \text{K}$ to $400\ \text{K}$.
2. **Required:** $Q$ and $\Delta U$.
3. **Formula:** $Q = \Delta U = nC_V\Delta T$.
4. **Substitution:** $\Delta U = (1)\left(\tfrac{3}{2}\times 8.314\right)(400-300)$.
5. **Calculation:** $\Delta U = (12.471)(100) = 1247.1$.
6. **Answer:** $Q = \Delta U \approx 1247\ \text{J}$.

**Problem 3 — Specific heat**

1. **Given:** $500\ \text{g}$ of water ($c = 4186\ \text{J kg}^{-1}\text{K}^{-1}$) heated from $20^\circ\text{C}$ to $80^\circ\text{C}$.
2. **Required:** heat required.
3. **Formula:** $Q = mc\Delta T$.
4. **Substitution:** $Q = (0.500)(4186)(80-20)$.
5. **Calculation:** $Q = (0.500)(4186)(60) = 125{,}580$.
6. **Answer:** $Q \approx 1.256\times10^5\ \text{J} = 125.6\ \text{kJ}$.

### Intermediate

**Problem 4 — Isothermal expansion**

1. **Given:** $n = 1\ \text{mol}$ ideal gas at $T = 300\ \text{K}$ expands isothermally from $V_1 = 0.010\ \text{m}^3$ to $V_2 = 0.030\ \text{m}^3$.
2. **Required:** $W$ and $Q$.
3. **Formula:** $W = nRT\ln(V_2/V_1)$; $Q = W$ (isothermal, ideal gas).
4. **Substitution:** $W = (1)(8.314)(300)\ln(0.030/0.010) = (2494.2)\ln(3)$.
5. **Calculation:** $\ln(3) = 1.0986$; $W = 2494.2 \times 1.0986 \approx 2740.1$.
6. **Answer:** $W = Q \approx 2740\ \text{J}$.

**Problem 5 — Adiabatic expansion**

1. **Given:** $n=1\ \text{mol}$ diatomic ideal gas ($\gamma = 1.4$) expands adiabatically and reversibly from $T_1 = 500\ \text{K}, V_1 = 0.010\ \text{m}^3$ to $V_2 = 0.020\ \text{m}^3$.
2. **Required:** $T_2$.
3. **Formula:** $T_1V_1^{\gamma-1} = T_2V_2^{\gamma-1}$.
4. **Substitution:** $500\times(0.010)^{0.4} = T_2\times(0.020)^{0.4}$.
5. **Calculation:** $T_2 = 500\times\left(\dfrac{0.010}{0.020}\right)^{0.4} = 500\times(0.5)^{0.4}$. $(0.5)^{0.4} = e^{0.4\ln0.5} = e^{-0.2773} \approx 0.7579$. $T_2 \approx 500\times0.7579 = 378.9$.
6. **Answer:** $T_2 \approx 379\ \text{K}$.

**Problem 6 — $C_P$, $C_V$, $\gamma$**

1. **Given:** an ideal gas has $C_V = 20.8\ \text{J mol}^{-1}\text{K}^{-1}$.
2. **Required:** $C_P$ and $\gamma$.
3. **Formula:** $C_P = C_V + R$; $\gamma = C_P/C_V$.
4. **Substitution:** $C_P = 20.8 + 8.314$.
5. **Calculation:** $C_P = 29.114$; $\gamma = 29.114/20.8 = 1.400$.
6. **Answer:** $C_P \approx 29.1\ \text{J mol}^{-1}\text{K}^{-1}$, $\gamma \approx 1.40$ (consistent with a diatomic gas).

**Problem 7 — Cyclic process**

1. **Given:** in one cycle, an engine absorbs $Q_1 = 3000\ \text{J}$ and rejects $Q_2 = 2000\ \text{J}$ over various stages.
2. **Required:** net work per cycle.
3. **Formula:** $W_{\text{net}} = Q_{\text{net}} = Q_1 - Q_2$ (since $\Delta U_{\text{cycle}}=0$).
4. **Substitution:** $W_{\text{net}} = 3000 - 2000$.
5. **Calculation:** $W_{\text{net}} = 1000$.
6. **Answer:** $W_{\text{net}} = 1000\ \text{J}$ per cycle.

**Problem 8 — Heat-engine efficiency**

1. **Given:** an engine absorbs $Q_H = 1500\ \text{J}$ and rejects $Q_C = 900\ \text{J}$ per cycle.
2. **Required:** thermal efficiency $\eta$.
3. **Formula:** $\eta = 1 - Q_C/Q_H$.
4. **Substitution:** $\eta = 1 - 900/1500$.
5. **Calculation:** $\eta = 1 - 0.60 = 0.40$.
6. **Answer:** $\eta = 40\%$.

### Advanced

**Problem 9 — Carnot engine**

1. **Given:** a Carnot engine operates between $T_H = 600\ \text{K}$ and $T_C = 300\ \text{K}$, absorbing $Q_H = 2000\ \text{J}$ per cycle.
2. **Required:** efficiency $\eta_C$, work output $W$, heat rejected $Q_C$.
3. **Formula:** $\eta_C = 1 - T_C/T_H$; $W = \eta_C Q_H$; $Q_C = Q_H - W$.
4. **Substitution:** $\eta_C = 1 - 300/600 = 0.50$.
5. **Calculation:** $W = 0.50\times2000 = 1000\ \text{J}$; $Q_C = 2000 - 1000 = 1000\ \text{J}$.
6. **Answer:** $\eta_C = 50\%$, $W = 1000\ \text{J}$, $Q_C = 1000\ \text{J}$.

**Problem 10 — Entropy change (ideal gas)**

1. **Given:** $n=2\ \text{mol}$ monatomic ideal gas ($C_V = \tfrac{3}{2}R$) taken from $(T_1=300\ \text{K}, V_1 = 0.020\ \text{m}^3)$ to $(T_2 = 450\ \text{K}, V_2 = 0.040\ \text{m}^3)$.
2. **Required:** $\Delta S$.
3. **Formula:** $\Delta S = nC_V\ln(T_2/T_1) + nR\ln(V_2/V_1)$.
4. **Substitution:** $\Delta S = 2\left(\tfrac{3}{2}\times8.314\right)\ln(450/300) + 2(8.314)\ln(0.040/0.020)$.
5. **Calculation:** first term $= 2(12.471)\ln(1.5) = 24.942\times0.4055 = 10.115$. Second term $= 16.628\ln(2) = 16.628\times0.6931 = 11.526$. Sum $= 10.115+11.526 = 21.641$.
6. **Answer:** $\Delta S \approx 21.6\ \text{J K}^{-1}$.

**Problem 11 — Reversible/irreversible entropy comparison**

1. **Given:** $1\ \text{mol}$ ideal gas undergoes free (irreversible) expansion at constant $T$ from $V_1$ to $2V_1$ (into vacuum, $Q=W=0$), then, in a separate reversible process, the same gas is taken isothermally and reversibly between the same two volumes.
2. **Required:** $\Delta S_{\text{system}}$ for the process and comment on $\Delta S_{\text{universe}}$ in each case.
3. **Formula:** $\Delta S$ is a state function, so it is the same for both paths: $\Delta S = nR\ln(V_2/V_1)$ (since $\Delta T=0$, the $C_V\ln(T_2/T_1)$ term vanishes).
4. **Substitution:** $\Delta S = (1)(8.314)\ln(2)$.
5. **Calculation:** $\Delta S = 8.314\times0.6931 = 5.763$.
6. **Answer:** $\Delta S_{\text{system}} \approx 5.76\ \text{J K}^{-1}$ in both cases (state function). For the **reversible** isothermal path, heat $Q_{\text{rev}} = T\Delta S$ flows in from a reservoir, and the reservoir's entropy decreases by exactly the same amount, so $\Delta S_{\text{universe}} = 0$. For the **irreversible** free expansion, no heat is exchanged with any reservoir ($Q=0$), so the surroundings' entropy does not change, giving $\Delta S_{\text{universe}} = \Delta S_{\text{system}} \approx 5.76\ \text{J K}^{-1} > 0$, consistent with the second law.

**Problem 12 — Gibbs free energy / spontaneity**

1. **Given:** a process at constant $T = 298\ \text{K}$ and constant $P$ has $\Delta H = -40{,}000\ \text{J mol}^{-1}$ and $\Delta S = -100\ \text{J mol}^{-1}\text{K}^{-1}$.
2. **Required:** $\Delta G$ and whether the process is spontaneous.
3. **Formula:** $\Delta G = \Delta H - T\Delta S$.
4. **Substitution:** $\Delta G = -40{,}000 - (298)(-100)$.
5. **Calculation:** $\Delta G = -40{,}000 + 29{,}800 = -10{,}200$.
6. **Answer:** $\Delta G \approx -10{,}200\ \text{J mol}^{-1} < 0$, so the process is **spontaneous** at $298\ \text{K}$ under constant $T,P$.

**Problem 13 — Maxwell relation application**

1. **Given:** for an ideal gas, verify $\left(\dfrac{\partial S}{\partial V}\right)_T$ using the Maxwell relation $\left(\dfrac{\partial S}{\partial V}\right)_T = \left(\dfrac{\partial P}{\partial T}\right)_V$, with $P = nRT/V$.
2. **Required:** $\left(\partial S/\partial V\right)_T$ for $n=1\ \text{mol}$, $V = 0.025\ \text{m}^3$.
3. **Formula:** $\left(\dfrac{\partial P}{\partial T}\right)_V = \dfrac{nR}{V}$.
4. **Substitution:** $\left(\dfrac{\partial P}{\partial T}\right)_V = \dfrac{(1)(8.314)}{0.025}$.
5. **Calculation:** $= 332.56$.
6. **Answer:** $\left(\dfrac{\partial S}{\partial V}\right)_T \approx 332.6\ \text{J m}^{-3}\text{K}^{-1}$, matching the coefficient of $dV$ obtained directly from the ideal-gas entropy formula, confirming the Maxwell relation.

---

# Part XXIV — Important Graphs and Diagrams

## 50. Thermodynamic Diagrams

For each diagram below, the **horizontal axis represents volume $V$** and the **vertical axis represents pressure $P$**, unless otherwise stated.

- **$P$–$V$ diagram (general):** any process is a curve from an initial point $(V_1,P_1)$ to a final point $(V_2,P_2)$; the **area under the curve** (between the curve and the $V$-axis, bounded by $V_1,V_2$) equals the work done in that process.
- **Isothermal curve:** a downward-sloping **rectangular hyperbola** ($P \propto 1/V$); different isotherms (different $T$) are nested hyperbolas, with higher-$T$ curves lying further from the origin.
- **Adiabatic curve:** also downward-sloping, but **steeper** than an isothermal curve through the same point (since $PV^\gamma=$const with $\gamma>1$ falls off faster than $PV=$const).
- **Isobaric process:** a **horizontal straight line** at constant $P$.
- **Isochoric process:** a **vertical straight line** at constant $V$.
- **Carnot cycle:** a **closed, roughly leaf-shaped loop** made of two isothermal curves (upper one hotter, at $T_H$; lower one cooler, at $T_C$) connected at their ends by two adiabatic curves (steeper), traced clockwise for a heat engine; the enclosed area equals the net work per cycle.
- **Heat-engine schematic:** conventionally drawn as a circle (representing the engine) connected by an arrow **from** a hot-reservoir box (labelled $T_H$, heat $Q_H$ flowing in) **into** the engine, and a second arrow **from** the engine **to** a cold-reservoir box (labelled $T_C$, heat $Q_C$ flowing out), with a third arrow leaving the engine labelled $W$ (net work output), satisfying $W = Q_H - Q_C$.

*(Where diagrams cannot be rendered reliably in Markdown, the above verbal descriptions specify exactly what should be sketched in an examination: axes, curve shapes, relative steepness, and direction of traversal.)*

---

# Part XXV — Exam Preparation

## 51. Important Definitions

- **Thermodynamic system:** the specific portion of the universe under study, separated from its surroundings by a boundary.
- **Surroundings:** everything external to the system that can interact with it.
- **State function:** a quantity depending only on the current state, not on the path taken to reach it (e.g., $U, H, S, P, V, T$).
- **Path function:** a quantity depending on the specific process/path taken (e.g., $Q, W$).
- **Internal energy ($U$):** total microscopic energy of a system, excluding bulk kinetic and external potential energy.
- **Heat ($Q$):** energy transferred due to a temperature difference.
- **Work ($W$):** energy transferred by means other than heat, e.g. by boundary displacement against pressure.
- **Thermodynamic process:** a change taking a system from an initial to a final equilibrium state along some path.
- **Reversible process:** a process that can be exactly reversed, restoring both system and surroundings to their original states with no net change anywhere.
- **Irreversible process:** a process after which the system and surroundings cannot both be restored exactly to their original states.
- **Cyclic process:** a process in which the system returns to its original state, so $\Delta U_{\text{cycle}}=0$.
- **Entropy ($S$):** a state function measuring irreversibility, with $dS = \delta Q_{\text{rev}}/T$; $\Delta S_{\text{universe}}\geq0$ for any real process.
- **Heat engine:** a cyclic device converting part of the heat absorbed from a hot reservoir into net work, rejecting the rest to a cold reservoir.
- **Carnot engine:** an idealised, fully reversible heat engine operating between two fixed-temperature reservoirs via the Carnot cycle, achieving the maximum possible efficiency $\eta_C = 1-T_C/T_H$.
- **Enthalpy ($H$):** $H = U+PV$; equals heat exchanged at constant pressure.
- **Helmholtz free energy ($A$):** $A = U-TS$; maximum work obtainable at constant $T,V$.
- **Gibbs free energy ($G$):** $G = H-TS$; spontaneity/equilibrium criterion at constant $T,P$.
- **Third law:** entropy of a perfect crystalline substance $\to 0$ as $T \to 0\ \text{K}$.
- **Maxwell relation:** any of the four identities relating partial derivatives of $S, P, V, T$, derived from equality of mixed second partial derivatives of the thermodynamic potentials.

---

## 52. Important Short Questions

**Q1. Why is heat not a state function?** Because the amount of heat exchanged between two given states depends on the specific path (process) followed, not only on the initial and final states — different reversible/irreversible paths between the same endpoints generally involve different $Q$, even though $\Delta U$ is fixed.

**Q2. State the first law of thermodynamics.** $\Delta U = Q - W$ (work done by the system): the change in internal energy equals the heat supplied to the system minus the work done by the system, expressing conservation of energy.

**Q3. Why must Kelvin, not Celsius, be used in $\eta_C = 1 - T_C/T_H$?** Because the Carnot efficiency formula is derived from the ideal-gas law and work integrals that require **absolute** temperature; using Celsius values would give an incorrect, non-physical ratio.

**Q4. Differentiate between $C_P$ and $C_V$.** $C_V$ is the heat capacity at constant volume (all heat raises internal energy only); $C_P$ is the heat capacity at constant pressure (heat raises internal energy **and** performs expansion work), so $C_P > C_V$ for a gas that expands on heating.

**Q5. What does $\Delta S_{\text{universe}}\geq 0$ mean physically?** It expresses the second law: every real process either leaves the total entropy of system + surroundings unchanged (reversible, idealised limit) or increases it (irreversible, all real processes) — total entropy of the universe can never decrease.

**Q6. Why can no real engine reach Carnot efficiency?** Real engines operate at finite rates and involve friction, turbulence, and finite-gradient heat transfer, all of which are irreversibilities that the idealised, infinitely-slow, frictionless Carnot cycle excludes by construction.

**Q7. Distinguish enthalpy and internal energy.** Internal energy $U$ is the system's intrinsic microscopic energy; enthalpy $H=U+PV$ additionally accounts for the energy associated with the volume the system occupies against ambient pressure, making it the natural energy function for constant-pressure processes.

---

## 53. Important 5-Mark Questions

**1. State and explain the first law of thermodynamics.** *(Model answer: state $\Delta U=Q-W$; define each term; explain conservation of energy; give the differential form $dU=\delta Q - P\,dV$; note exact vs inexact differentials.)*

**2. Discuss the applications of the first law to isobaric, isochoric, isothermal, adiabatic, and cyclic processes.** *(Model answer: reproduce the table/derivations of Part VI, §14, covering condition, work, heat, $\Delta U$ for each.)*

**3. Derive the relation $C_P - C_V = R$ for an ideal gas.** *(Model answer: reproduce the derivation of Part VII, §16, from the first law and ideal-gas law.)*

**4. Distinguish between reversible and irreversible processes with examples.** *(Model answer: definitions of Part IX, §23–24, plus the comparison table of §25.)*

**5. State the second law of thermodynamics (Kelvin–Planck and Clausius statements) and show their equivalence.** *(Model answer: reproduce Part XI, §28.)*

**6. Define the efficiency of a heat engine and explain why it is always less than 1.** *(Model answer: $\eta = W/Q_H = 1-Q_C/Q_H$; Kelvin–Planck reasoning, Part XIII, §31.)*

**7. Describe the Carnot cycle and derive its efficiency.** *(Model answer: four stages, Part XIV, §32–34, ending in $\eta_C = 1-T_C/T_H$.)*

**8. State and explain Carnot's theorem.** *(Model answer: reproduce Part XVI, §36, including the proof sketch via contradiction with the Clausius statement.)*

**9. Define the thermodynamic functions $H$, $A$, $G$ and give their differential forms.** *(Model answer: reproduce Part XVIII, §40–42.)*

**10. State the third law of thermodynamics and discuss its significance.** *(Model answer: reproduce Part XIX, §43, plus applications from Part XX, §44.)*

**11. Discuss the applications of the third law of thermodynamics.** *(Model answer: reproduce Part XX, §44.)*

**12. Derive Maxwell's four thermodynamic relations.** *(Model answer: reproduce Part XXI, §45–46, starting from each potential's differential and applying equality of mixed partials.)*

---

## 54. Long/Derivation Questions

**1. Derive the adiabatic relation $PV^\gamma = \text{constant}$ for an ideal gas, starting from the first law.** *(Model answer: full derivation of Part VIII, §21.)*

**2. Derive the expression for the efficiency of a Carnot engine, $\eta_C = 1-T_C/T_H$, analysing all four stages of the cycle.** *(Model answer: full derivation of Part XIV, §32–34.)*

**3. Derive $C_P - C_V = R$ for an ideal gas, and state the more general relation valid for any substance.** *(Model answer: Part VII, §16 and §18.)*

**4. Derive the entropy change of an ideal gas undergoing a general process between $(T_1,V_1)$ and $(T_2,V_2)$.** *(Model answer: Part XVII, §38.)*

**5. Starting from $U=U(S,V)$, derive the differential forms of $H$, $A$, $G$ and hence all four Maxwell relations.** *(Model answer: Part XXI, §45–46.)*

**6. Derive the general thermodynamic relation $C_P-C_V = T\left(\dfrac{\partial P}{\partial T}\right)_V\left(\dfrac{\partial V}{\partial T}\right)_P$ and show it reduces to $R$ for an ideal gas.** *(Model answer: Part VII, §18.)*

---

# Part XXVI — Common Mistakes

## 55. Common Examination Mistakes

- **Mixing work sign conventions** mid-derivation (switching between $\Delta U=Q-W$ and $\Delta U=Q+W$ within the same problem).
- **Treating heat as a state function**, e.g. writing $\Delta Q$ instead of the path-dependent quantity $Q$.
- **Treating work as a state function**, similarly writing $\Delta W$.
- **Forgetting that $U$ is a state function**, e.g. assuming $\Delta U$ depends on the path taken between two equilibrium states.
- **Using Celsius instead of kelvin** in the Carnot efficiency formula $\eta_C = 1-T_C/T_H$.
- **Applying $C_P-C_V=R$ to arbitrary non-ideal substances**, where only the general relation $C_P-C_V=T(\partial P/\partial T)_V(\partial V/\partial T)_P$ is valid.
- **Forgetting the ideal-gas assumption** underlying $U=U(T)$, $PV=nRT$, and related derived formulas.
- **Confusing reversible with merely "slow" processes** — reversibility additionally requires absence of dissipative effects (friction, turbulence), not just slowness.
- **Incorrectly stating the second law**, e.g. omitting "cyclic" from the Kelvin–Planck statement or "sole effect" from the Clausius statement.
- **Confusing $Q_H$ and $Q_C$** (heat absorbed from the hot reservoir vs. heat rejected to the cold reservoir) when substituting into engine formulas.
- **Incorrect Carnot-cycle stage order**, e.g. reversing the sequence isothermal expansion → adiabatic expansion → isothermal compression → adiabatic compression.
- **Forgetting $Q=0$ for an adiabatic process**, and mistakenly including a heat term in adiabatic first-law applications.
- **Incorrect entropy signs**, e.g. writing $\Delta S<0$ for the universe in a spontaneous irreversible process.
- **Incorrect Maxwell-relation signs**, especially dropping the negative sign in the relations derived from $U(S,V)$ and $G(T,P)$.
- **Confusing $H$, $A$, and $G$** — mixing up which potential's natural variables are $(S,V)$, $(T,V)$, or $(T,P)$.
- **Incorrectly applying $\Delta G<0$ outside its stated constant-$(T,P)$ conditions.**
- **Using $dQ$ and $dW$ as if they were exact differentials** — the correct notation is $\delta Q$, $\delta W$ (inexact differentials), since $Q$ and $W$ are path functions.
- **Forgetting phase-transition contributions** ($\Delta H_{\text{transition}}/T_{\text{transition}}$) when computing third-law absolute entropies across a phase change.

---

# Part XXVII — Formula Sheet

## 56. Thermodynamics Formula Sheet

### Basic relations
$$PV = nRT \quad \text{(ideal gas only)}$$
$$\Delta U = Q - W \quad \text{(first law; } W \text{ done by system)}$$

### Work
$$W = \int P\,dV \quad \text{(quasi-static process)}$$

### Heat capacities
$$C_P - C_V = R \quad \text{(ideal gas, molar basis)}$$
$$C_P - C_V = T\left(\frac{\partial P}{\partial T}\right)_V\left(\frac{\partial V}{\partial T}\right)_P \quad \text{(any substance)}$$
$$\gamma = \frac{C_P}{C_V}, \qquad C_V = \frac{R}{\gamma-1}, \qquad C_P = \frac{\gamma R}{\gamma-1} \quad \text{(ideal gas)}$$

### Isothermal process (ideal gas)
$$PV = \text{constant}, \qquad W = nRT\ln\frac{V_2}{V_1}, \qquad \Delta U = 0, \qquad Q=W$$

### Adiabatic process (ideal gas, reversible)
$$PV^\gamma = \text{constant}, \qquad TV^{\gamma-1} = \text{constant}, \qquad T^\gamma P^{1-\gamma} = \text{constant}, \qquad Q=0$$

### Entropy
$$dS = \frac{\delta Q_{\text{rev}}}{T} \quad \text{(reversible process)}$$
$$\Delta S = nC_V\ln\frac{T_2}{T_1} + nR\ln\frac{V_2}{V_1} \quad \text{(ideal gas)}$$
$$\Delta S_{\text{universe}} \geq 0 \quad \text{(second law; equality only for reversible processes)}$$

### Heat engine
$$W = Q_H - Q_C, \qquad \eta = \frac{W}{Q_H} = 1-\frac{Q_C}{Q_H}$$

### Carnot engine
$$\eta_C = 1-\frac{T_C}{T_H} \quad \text{(} T \text{ in kelvin; maximum possible efficiency, Carnot's theorem)}$$

### Thermodynamic potentials
$$H = U+PV, \qquad A = U-TS, \qquad G = H-TS$$

### Fundamental (Maxwell-generating) equations
$$dU = T\,dS - P\,dV, \qquad dH = T\,dS+V\,dP$$
$$dA = -S\,dT-P\,dV, \qquad dG = -S\,dT+V\,dP$$

### Maxwell relations
$$\left(\frac{\partial T}{\partial V}\right)_S = -\left(\frac{\partial P}{\partial S}\right)_V \qquad \left(\frac{\partial T}{\partial P}\right)_S = \left(\frac{\partial V}{\partial S}\right)_P$$
$$\left(\frac{\partial S}{\partial V}\right)_T = \left(\frac{\partial P}{\partial T}\right)_V \qquad \left(\frac{\partial S}{\partial P}\right)_T = -\left(\frac{\partial V}{\partial T}\right)_P$$

> All ideal-gas-specific formulas above are valid only for an ideal gas; the general relations ($C_P-C_V$ general form, entropy definition via $dS=\delta Q_{\text{rev}}/T$, Maxwell relations, first and second laws) hold for any substance in thermodynamic equilibrium.

---

# Part XXVIII — Quick Revision

## 57. One-Page Thermodynamics Revision

### Laws
- **First law:** $\Delta U = Q-W$ — energy conservation.
- **Second law:** $\Delta S_{\text{universe}}\geq0$; Kelvin–Planck and Clausius statements — direction of processes, limits on heat-to-work conversion.
- **Third law:** $S\to0$ as $T\to0\ \text{K}$ for a perfect crystal — fixes the absolute zero of entropy.

### Processes
- **Isothermal:** $T$ const, $PV=$const, $\Delta U=0$, $Q=W=nRT\ln(V_2/V_1)$.
- **Adiabatic:** $Q=0$, $PV^\gamma=$const, $\Delta U=-W$.
- **Isobaric:** $P$ const, $W=P\Delta V$, $Q=nC_P\Delta T$.
- **Isochoric:** $V$ const, $W=0$, $Q=\Delta U=nC_V\Delta T$.
- **Cyclic:** $\Delta U=0$, $Q_{\text{net}}=W_{\text{net}}$ = enclosed $P$–$V$ area.
- **Reversible:** infinitesimal gradients, no dissipation, $\Delta S_{\text{universe}}=0$.
- **Irreversible:** finite gradients/dissipation, $\Delta S_{\text{universe}}>0$.

### Heat Engines
- **Heat engine:** absorbs $Q_H$, rejects $Q_C$, delivers $W=Q_H-Q_C$.
- **Efficiency:** $\eta = 1-Q_C/Q_H < 1$ (Kelvin–Planck).
- **Carnot cycle:** isothermal expansion → adiabatic expansion → isothermal compression → adiabatic compression; fully reversible.
- **Carnot theorem:** no engine between two given reservoirs beats the reversible-engine efficiency $\eta_C=1-T_C/T_H$.

### Thermodynamic Functions
- $U$ — internal energy; $dU=T\,dS-P\,dV$.
- $H=U+PV$ — heat at constant $P$; $dH=T\,dS+V\,dP$.
- $S$ — entropy; $dS=\delta Q_{\text{rev}}/T$; governs spontaneity direction.
- $A=U-TS$ — max. work at constant $T,V$; $dA=-S\,dT-P\,dV$.
- $G=H-TS$ — spontaneity/equilibrium at constant $T,P$ ($\Delta G<0$ spontaneous); $dG=-S\,dT+V\,dP$.

### Maxwell Relations
$$\left(\frac{\partial T}{\partial V}\right)_S=-\left(\frac{\partial P}{\partial S}\right)_V \quad\;\; \left(\frac{\partial T}{\partial P}\right)_S=\left(\frac{\partial V}{\partial S}\right)_P$$
$$\left(\frac{\partial S}{\partial V}\right)_T=\left(\frac{\partial P}{\partial T}\right)_V \quad\;\; \left(\frac{\partial S}{\partial P}\right)_T=-\left(\frac{\partial V}{\partial T}\right)_P$$

---

*End of PHY 103 — Thermodynamics study guide.*
