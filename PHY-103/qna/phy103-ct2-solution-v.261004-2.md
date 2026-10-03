# PHY103: Physics-II — 2nd Class Test (Solved)

**Compiled by:** sigkill0x00

**Institution:** Gopalganj Textile Engineering College, Gopalganj
**Time:** 30 min · **Full marks:** 10 · *Answer any one set.* Both sets are solved below.

**Conventions:** $W$ = work done **by** the gas, $\Delta U=Q-W$.

---

# Set-A `[3+3+4=10]`

## Q1. State the fundamental postulates of the kinetic theory of gas. **[3]**

1. A gas consists of a very large number of identical molecules.
2. The molecules are extremely small compared with the volume of the gas; their total volume is negligible.
3. The molecules are in continuous, random motion with a distribution of speeds.
4. Molecules collide with each other and with the walls of the container, and the collisions are perfectly elastic.
5. Between collisions a molecule moves in a straight line with uniform velocity.
6. There are no intermolecular forces except during collisions, and the duration of a collision is negligible compared with the time between collisions.
7. Gravitational effects on the molecules are neglected.

> **Memory hook:** many, tiny, random, elastic, free (no forces), instantaneous collisions.

---

## Q2. From kinetic theory, show that $P=\dfrac13\rho\overline{c^2}$. **[3]**

Take a cube of side $l$ ($V=l^3$) containing $N$ molecules, each of mass $m$. Let a molecule have velocity components $c_x,c_y,c_z$, so $c^2=c_x^2+c_y^2+c_z^2$.

**Step 1 — one collision.** An elastic hit on the wall normal to $x$ reverses $c_x$:

$$
\text{momentum change of molecule}=2mc_x
$$

**Step 2 — time between hits on the same wall.** The molecule travels $2l$ along $x$ between hits:

$$
\Delta t=\frac{2l}{c_x}
$$

**Step 3 — force from one molecule.**

$$
F=\frac{2mc_x}{2l/c_x}=\frac{mc_x^2}{l}
$$

**Step 4 — all $N$ molecules.**

$$
F_x=\frac{m}{l}\sum c_{xi}^2=\frac{Nm}{l}\,\overline{c_x^2}
$$

**Step 5 — pressure.**

$$
P=\frac{F_x}{l^2}=\frac{Nm}{l^3}\,\overline{c_x^2}=\frac{Nm}{V}\,\overline{c_x^2}
$$

**Step 6 — isotropy.** Motion is random, so $\overline{c_x^2}=\overline{c_y^2}=\overline{c_z^2}=\tfrac13\overline{c^2}$. Hence

$$
P=\frac13\frac{Nm}{V}\overline{c^2}
$$

With density $\rho=\dfrac{Nm}{V}$:

$$
\boxed{P=\frac13\rho\,\overline{c^2}}
$$

where $\overline{c^2}$ is the mean-square speed ($c_{\rm rms}=\sqrt{\overline{c^2}}$).

---

## Q3. Numerical **[4]**

A gas is compressed to one third of its initial volume at $27^\circ\mathrm C$ and one atmosphere pressure. Find the final pressure and temperature.

> **Note on the question.** The process is not stated. Temperature only changes if the compression is **adiabatic**, and the question asks for a final temperature, so the adiabatic case is the intended one (taking air or a diatomic gas, $\gamma=1.4$). The isothermal case is given as well, in case your examiner meant it. State your assumption in the exam.

**Given:** $V_2=V_1/3$, $T_1=27^\circ\mathrm C=300\ \mathrm K$, $P_1=1\ \mathrm{atm}$.

### Case 1 — adiabatic compression ($\gamma=1.4$)

**Formulas**

$$
P_1V_1^\gamma=P_2V_2^\gamma,\qquad T_1V_1^{\gamma-1}=T_2V_2^{\gamma-1}
$$

**Final pressure**

$$
P_2=P_1\left(\frac{V_1}{V_2}\right)^{\gamma}=1\times3^{1.4}=4.66\ \mathrm{atm}\ (\approx4.7\times10^5\ \mathrm{Pa})
$$

**Final temperature**

$$
T_2=T_1\left(\frac{V_1}{V_2}\right)^{\gamma-1}=300\times3^{0.4}=300\times1.552\approx466\ \mathrm K\approx193^\circ\mathrm C
$$

$$
\boxed{P_2\approx4.66\ \mathrm{atm},\qquad T_2\approx466\ \mathrm K\ (193^\circ\mathrm C)}
$$

(If the gas is monatomic, $\gamma=5/3$: $P_2=3^{5/3}\approx6.24$ atm and $T_2=300\times3^{2/3}\approx624$ K.)

### Case 2 — isothermal compression

$T$ constant, so $T_2=300\ \mathrm K=27^\circ\mathrm C$ and

$$
P_1V_1=P_2V_2\Rightarrow P_2=3P_1=\boxed{3\ \mathrm{atm}}
$$

**Common mistakes:** using $27$ instead of $300\ \mathrm K$ in the temperature formula; using $\gamma=1$ (isothermal) when the question asks for a temperature change.

---

# Set-B `[3+4+3=10]`

## Q1. Establish the relation between the two specific heats of a gas. **[3]**

Show that $C_P-C_V=R$ for one mole of an ideal gas (Mayer's relation).

**Step 1 — first law.**

$$
\delta Q=dU+P\,dV
$$

**Step 2 — constant volume** ($dV=0$):

$$
C_V\,dT=dU
$$

For an ideal gas $U$ depends only on $T$, so $dU=C_V\,dT$ holds for every process.

**Step 3 — constant pressure:**

$$
C_P\,dT=dU+P\,dV=C_V\,dT+P\,dV
$$

**Step 4 — ideal gas law** $PV=RT$ at constant $P$ gives $P\,dV=R\,dT$.

**Step 5.**

$$
C_P\,dT=C_V\,dT+R\,dT
$$

$$
\boxed{C_P-C_V=R}
$$

Consequences, with $\gamma=C_P/C_V$:

$$
C_V=\frac R{\gamma-1},\qquad C_P=\frac{\gamma R}{\gamma-1}
$$

The extra heat needed at constant pressure goes into the work $P\,dV$ of expansion, so $C_P>C_V$.

---

## Q2. What is an isentropic process? Derive the work done during an isentropic process. **[4]**

### Definition
An **isentropic process** is one in which the entropy of the system stays constant. Since $dS=\dfrac{\delta Q_{\rm rev}}{T}$, a **reversible adiabatic** process ($\delta Q=0$) is isentropic. For an ideal gas it obeys

$$
PV^\gamma=\text{constant}
$$

> **Supporting result.** For one mole, $C_V\,dT=-P\,dV$ and $P\,dV+V\,dP=R\,dT$. Eliminating $dT$ gives $C_VV\,dP+C_PP\,dV=0$, i.e. $\dfrac{dP}{P}+\gamma\dfrac{dV}{V}=0$, so $PV^\gamma=\text{const}$.

### Derivation of work
Let the gas expand from $(P_1,V_1)$ to $(P_2,V_2)$ and write $PV^\gamma=K$, so $P=KV^{-\gamma}$.

$$
W=\int_{V_1}^{V_2}P\,dV=K\int_{V_1}^{V_2}V^{-\gamma}\,dV=\frac{K}{1-\gamma}\left[V_2^{\,1-\gamma}-V_1^{\,1-\gamma}\right]
$$

Using $K=P_1V_1^\gamma=P_2V_2^\gamma$:

$$
W=\frac{P_2V_2-P_1V_1}{1-\gamma}
$$

$$
\boxed{W=\frac{P_1V_1-P_2V_2}{\gamma-1}=\frac{n_{\rm mol}R\,(T_1-T_2)}{\gamma-1}}
$$

Equivalently,

$$
W=\frac{P_1V_1}{\gamma-1}\left[1-\left(\frac{V_1}{V_2}\right)^{\gamma-1}\right]
$$

### Check with the first law
$Q=0\Rightarrow W=-\Delta U=-n_{\rm mol}C_V(T_2-T_1)=n_{\rm mol}C_V(T_1-T_2)$, and $C_V=R/(\gamma-1)$ gives the same result. In an expansion $T_2<T_1$, so $W>0$: the gas does work at the expense of its internal energy.

---

## Q3. Numerical **[3]**

$0.1\ \mathrm{m^3}$ of air at $1.5$ bar is expanded isothermally to $0.5\ \mathrm{m^3}$. Find the final pressure and the heat supplied.

**Given**
- $V_1=0.1\ \mathrm{m^3}$, $V_2=0.5\ \mathrm{m^3}$
- $P_1=1.5\ \mathrm{bar}=1.5\times10^5\ \mathrm{Pa}$
- Isothermal, so $T$ is constant.

**Final pressure**

$$
P_1V_1=P_2V_2\Rightarrow P_2=\frac{P_1V_1}{V_2}=\frac{1.5\times0.1}{0.5}=0.3\ \mathrm{bar}\ (=3\times10^4\ \mathrm{Pa})
$$

**Heat supplied.** For an ideal gas at constant $T$, $\Delta U=0$, so $Q=W$:

$$
Q=W=P_1V_1\ln\frac{V_2}{V_1}=(1.5\times10^5)(0.1)\ln5
$$

$$
Q=15000\times1.609=24\,142\ \mathrm J
$$

**Answer**

$$
\boxed{P_2=0.3\ \mathrm{bar},\qquad Q=W\approx2.41\times10^4\ \mathrm J\approx24.1\ \mathrm{kJ}}
$$

**Common mistakes:** leaving pressure in bar when computing work (convert to Pa to get joules); using $\log_{10}$ instead of $\ln$ without the factor $2.303$.

---

## Quick revision

- [ ] Postulates: many, tiny, random, elastic, no forces, instantaneous collisions
- [ ] $P=\tfrac13\rho\overline{c^2}$: $2mc_x$ per hit, $2l/c_x$ between hits, isotropy gives the $\tfrac13$
- [ ] Adiabatic: $PV^\gamma=\text{const}$, $TV^{\gamma-1}=\text{const}$
- [ ] $C_P-C_V=R$; isentropic work $W=\dfrac{P_1V_1-P_2V_2}{\gamma-1}$
- [ ] Isothermal: $Q=W=P_1V_1\ln(V_2/V_1)$, convert bar to Pa
- [ ] Temperatures in kelvin
