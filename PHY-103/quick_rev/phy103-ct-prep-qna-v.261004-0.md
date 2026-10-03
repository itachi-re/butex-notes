# Physics-II CT — Practice Questions with Solutions
## Kinetic Theory of Gases & Thermodynamics

**Compiled by:** sigkill0x00

> Built from the *Solved Question Bank* (2016–2023). Click **Solution** under each question to reveal the answer. Attempt first, check second.

**Constants**

| Constant | Value |
|---|---|
| $R$ | $8.31\ \mathrm{J\,mol^{-1}K^{-1}}$ |
| $k$ | $1.38\times10^{-23}\ \mathrm{J\,K^{-1}}$ |
| $N_A$ | $6.02\times10^{23}\ \mathrm{mol^{-1}}$ |
| $1\ \mathrm{eV}$ | $1.6\times10^{-19}\ \mathrm J$ |

**Conventions:** $n=N/V$ is number density; $n_{\rm mol}$ is moles; $\Delta U=Q-W$ with $W$ = work done **by** the gas.

**Contents**
- [Part A — MCQs (10)](#part-a--mcqs)
- [Part B — Short answers (6)](#part-b--short-answers)
- [Part C — Derivations with marking scheme (8)](#part-c--derivations)
- [Part D — Numericals (12)](#part-d--numericals)
- [Part E — Mock CT paper](#part-e--mock-ct-paper)

---

## Part A — MCQs

**Q1.** The value of $\gamma$ for a rigid non-linear triatomic gas is
(a) $5/3$ (b) $7/5$ (c) $4/3$ (d) $9/7$

<details><summary><b>Solution</b></summary>

**(c)**. $f=6\Rightarrow\gamma=1+2/f=4/3$.
</details>

**Q2.** The pressure of an ideal gas equals
(a) $\tfrac13E$ (b) $\tfrac23E$ (c) $\tfrac32E$ (d) $E$,
where $E$ is translational KE per unit volume.

<details><summary><b>Solution</b></summary>

**(b)**. $P=\tfrac13\rho\overline{c^2}=\tfrac23\left(\tfrac12\rho\overline{c^2}\right)=\tfrac23E$.
</details>

**Q3.** If the absolute temperature is doubled at constant volume, $c_{\rm rms}$ becomes
(a) $2\times$ (b) $\sqrt2\times$ (c) $4\times$ (d) unchanged

<details><summary><b>Solution</b></summary>

**(b)**. $c_{\rm rms}=\sqrt{3kT/m}\propto\sqrt T$.
</details>

**Q4.** The critical coefficient $Z_c=P_cV_c/RT_c$ of a van der Waals gas is
(a) $8/3$ (b) $3/8$ (c) $27/8$ (d) $1/3$

<details><summary><b>Solution</b></summary>

**(b)**. $\dfrac{(a/27b^2)(3b)}{R\cdot 8a/27Rb}=\dfrac38$. ($8/3$ is the reciprocal.)
</details>

**Q5.** On a $P$–$V$ diagram, at the same point, the adiabatic slope is ___ the isothermal slope.
(a) $\gamma$ times (b) $1/\gamma$ times (c) equal to (d) $\gamma-1$ times

<details><summary><b>Solution</b></summary>

**(a)**. $(dP/dV)_{\rm ad}=-\gamma P/V=\gamma(dP/dV)_{\rm iso}$.
</details>

**Q6.** At constant temperature, the mean free path $\lambda$ varies with pressure as
(a) $\lambda\propto P$ (b) $\lambda\propto P^2$ (c) $\lambda\propto 1/P$ (d) independent of $P$

<details><summary><b>Solution</b></summary>

**(c)**. $\lambda=kT/(\sqrt2\pi\sigma^2P)$.
</details>

**Q7.** The SI unit of the van der Waals constant $b$ is
(a) $\mathrm{Pa\,m^6\,mol^{-2}}$ (b) $\mathrm{m^3\,mol^{-1}}$ (c) $\mathrm{m^3}$ (d) $\mathrm{J\,mol^{-1}}$

<details><summary><b>Solution</b></summary>

**(b)**. $b$ is subtracted from molar volume $V$.
</details>

**Q8.** In an isothermal process of an ideal gas
(a) $Q=0$ (b) $\Delta U=0$ (c) $W=0$ (d) $\Delta U=W$

<details><summary><b>Solution</b></summary>

**(b)**. $U$ depends only on $T$, so $\Delta U=0$ and $Q=W$.
</details>

**Q9.** In Newton's cooling, as $t\to\infty$ the body temperature tends to
(a) $0$ (b) $T_0$ (c) $T_s$ (d) $\infty$

<details><summary><b>Solution</b></summary>

**(c)**. $T=T_s+(T_0-T_s)e^{-kt}\to T_s$.
</details>

**Q10.** The ratio $c_{\rm rms}(\mathrm{H_2})/c_{\rm rms}(\mathrm{O_2})$ at the same temperature is
(a) $16$ (b) $4$ (c) $1/4$ (d) $2$

<details><summary><b>Solution</b></summary>

**(b)**. $c_{\rm rms}\propto1/\sqrt M$, so ratio $=\sqrt{32/2}=4$.
</details>

---

## Part B — Short answers

**Q11. [3 marks]** Differentiate between heat and temperature.

<details><summary><b>Solution</b></summary>

| Basis | Heat | Temperature |
|---|---|---|
| Nature | Energy in transit due to $\Delta T$ | Thermal state variable |
| Depends on amount | Yes | No (intensive) |
| Unit | J | K |
| Instrument | Calorimeter | Thermometer |
| Role | What flows | Decides the direction of flow |

For an ideal gas, $\tfrac12m\overline{c^2}=\tfrac32kT$.
</details>

**Q12. [3 marks]** Define degrees of freedom. Give $f$ and $\gamma$ for monatomic, diatomic and non-linear triatomic (rigid) molecules.

<details><summary><b>Solution</b></summary>

Degrees of freedom = number of independent coordinates needed to specify the configuration, $f=3N_a-r$.

| Molecule | $f$ | $\gamma=1+2/f$ |
|---|---|---|
| Monatomic | 3 | $5/3$ |
| Diatomic | 5 | $7/5$ |
| Non-linear triatomic | 6 | $4/3$ |

Equipartition: $\tfrac12kT$ per degree of freedom per molecule.
</details>

**Q13. [3 marks]** State any five postulates of the kinetic theory of gases.

<details><summary><b>Solution</b></summary>

1. A gas has a very large number of molecules.
2. Molecular size is negligible compared with the container volume.
3. Molecules move randomly and continuously.
4. Collisions (with each other and the walls) are perfectly elastic.
5. No intermolecular forces except during collisions; collision time is negligible.
6. Between collisions molecules move in straight lines at uniform velocity.
</details>

**Q14. [2 marks]** Write the van der Waals equation for one mole and for $n_{\rm mol}$ moles. What do $a$ and $b$ account for?

<details><summary><b>Solution</b></summary>

$$\left(P+\frac a{V^2}\right)(V-b)=RT,\qquad \left[P+a\left(\frac{n_{\rm mol}}V\right)^2\right](V-n_{\rm mol}b)=n_{\rm mol}RT$$

$a$: intermolecular attraction (pressure correction). $b$: finite molecular volume (volume correction).
</details>

**Q15. [3 marks]** Deduce the SI units of $a$ and $b$.

<details><summary><b>Solution</b></summary>

$a/V^2$ is a pressure: $[a]=[P][V^2]=\mathrm{Pa\,m^6\,mol^{-2}}$.
$b$ has the units of molar volume: $[b]=\mathrm{m^3\,mol^{-1}}$.
</details>

**Q16. [3 marks]** Explain the volume and pressure corrections in the van der Waals equation.

<details><summary><b>Solution</b></summary>

- **Volume correction:** molecules have finite size, so the free volume is $V-b$ (for hard spheres $b\approx4\times$ the actual molecular volume per mole).
- **Pressure correction:** a molecule near the wall is pulled inward by its neighbours, so it hits the wall with less momentum and the measured pressure is lower than the ideal value by $a/V^2$ (proportional to the number striking the wall $\times$ the number attracting them, each $\propto1/V$). Hence $P_{\rm ideal}=P+a/V^2$.
</details>

---

## Part C — Derivations

Each solution follows the "write formula first, then substitute" method with a marking guide.

### Q17. Derive $P=\dfrac13\dfrac{Nm}{V}\overline{c^2}$. **[5 marks]**

<details><summary><b>Solution</b></summary>

Cube of side $l$, $V=l^3$, $N$ molecules of mass $m$. **(1 mark: set-up)**

1. Elastic hit on a wall normal to $x$: momentum change of the molecule $=2mc_x$.
2. Time between successive hits on the same wall: $\Delta t=2l/c_x$. **(1)**
3. Force from one molecule: $F=\dfrac{2mc_x}{2l/c_x}=\dfrac{mc_x^2}{l}$. **(1)**
4. All molecules: $F_x=\dfrac{Nm}{l}\overline{c_x^2}$.
5. Pressure: $P=\dfrac{F_x}{l^2}=\dfrac{Nm}{V}\overline{c_x^2}$. **(1)**
6. Isotropy: $\overline{c_x^2}=\overline{c_y^2}=\overline{c_z^2}=\tfrac13\overline{c^2}$. **(1)**

$$\boxed{P=\frac13\frac{Nm}{V}\overline{c^2}=\frac13\rho\overline{c^2}}$$

Corollary: $c_{\rm rms}=\sqrt{3P/\rho}$.
</details>

### Q18. Show that pressure is two-thirds of the translational kinetic energy per unit volume. **[3 marks]**

<details><summary><b>Solution</b></summary>

From Q17, $P=\tfrac13\dfrac{Nm}{V}\overline{c^2}$.

Kinetic-energy density: $E=\dfrac NV\cdot\tfrac12m\overline{c^2}$, so $\dfrac{Nm\overline{c^2}}{V}=2E$.

$$\boxed{P=\frac23E}$$

Also $PV=\tfrac23K_{\rm tot}$ and, with $PV=NkT$, $\overline K=\tfrac32kT$.
</details>

### Q19. What is mean free path? Derive $\lambda=\dfrac1{\sqrt2\,\pi\sigma^2n}$. **[5 marks]**

<details><summary><b>Solution</b></summary>

**Definition (1):** $\lambda$ = average distance travelled between two successive collisions $=S/N_{\rm coll}$.

1. Collision occurs if centres come within $\sigma$: cross-section $\pi\sigma^2$. **(1)**
2. In path $S$ the molecule sweeps volume $\pi\sigma^2S$, hitting $N_{\rm coll}=\pi\sigma^2Sn$ molecules. **(1)**
3. $\lambda=\dfrac{1}{\pi\sigma^2n}$ (other molecules at rest). **(1)**
4. Allowing for motion of all molecules, mean relative speed $=\sqrt2\times$ mean speed, so collisions increase by $\sqrt2$. **(1)**

$$\boxed{\lambda=\frac1{\sqrt2\,\pi\sigma^2n}=\frac{kT}{\sqrt2\,\pi\sigma^2P}}$$

using $n=P/kT$. So $\lambda\propto T$ at constant $P$ and $\lambda\propto1/P$ at constant $T$.
</details>

### Q20. Derive the critical constants of a van der Waals gas. **[6 marks]**

<details><summary><b>Solution</b></summary>

$$P=\frac{RT}{V-b}-\frac a{V^2}$$

At the critical point $(\partial P/\partial V)_T=0$ and $(\partial^2P/\partial V^2)_T=0$ **(1)**:

$$\frac{RT_c}{(V_c-b)^2}=\frac{2a}{V_c^3}\ (1),\qquad \frac{2RT_c}{(V_c-b)^3}=\frac{6a}{V_c^4}\ (2)\quad\textbf{(2)}$$

(1)$\div$(2): $\dfrac{V_c-b}{2}=\dfrac{V_c}{3}\Rightarrow V_c=3b$. **(1)**

Into (1): $RT_c=\dfrac{2a(2b)^2}{27b^3}=\dfrac{8a}{27b}\Rightarrow T_c=\dfrac{8a}{27Rb}$. **(1)**

$$P_c=\frac{RT_c}{2b}-\frac a{9b^2}=\frac{4a-3a}{27b^2}=\frac a{27b^2}\quad\textbf{(1)}$$

$$\boxed{V_c=3b,\quad T_c=\frac{8a}{27Rb},\quad P_c=\frac a{27b^2},\quad Z_c=\frac{P_cV_c}{RT_c}=\frac38}$$
</details>

### Q21. Show that $C_P-C_V=R$ for an ideal gas. **[4 marks]**

<details><summary><b>Solution</b></summary>

For one mole, first law: $\delta Q=dU+P\,dV$.

- Constant $V$: $C_V\,dT=dU$ (and $dU=C_V\,dT$ for any process since $U=U(T)$). **(1)**
- Constant $P$: $C_P\,dT=dU+P\,dV=C_V\,dT+P\,dV$. **(1)**
- $PV=RT$ at constant $P$ gives $P\,dV=R\,dT$. **(1)**

$$\boxed{C_P-C_V=R}\quad\textbf{(1)}$$

Hence $C_V=\dfrac R{\gamma-1}$, $C_P=\dfrac{\gamma R}{\gamma-1}$.
</details>

### Q22. Derive the work done in an isothermal expansion of an ideal gas. **[4 marks]**

<details><summary><b>Solution</b></summary>

Isothermal: $T$ constant, $PV=n_{\rm mol}RT=$ const. **(1)**

$$W=\int_{V_1}^{V_2}P\,dV=n_{\rm mol}RT\int_{V_1}^{V_2}\frac{dV}V\quad\textbf{(1)}$$

$$\boxed{W=n_{\rm mol}RT\ln\frac{V_2}{V_1}=n_{\rm mol}RT\ln\frac{P_1}{P_2}}\quad\textbf{(1)}$$

$\Delta U=0$ for an ideal gas at constant $T$, so $Q=W$. **(1)**
</details>

### Q23. Prove that an adiabatic curve is steeper than an isothermal curve on a $P$–$V$ diagram. **[5 marks]**

<details><summary><b>Solution</b></summary>

**Isothermal (1):** $PV=C\Rightarrow P\,dV+V\,dP=0\Rightarrow\left(\dfrac{dP}{dV}\right)_{\rm iso}=-\dfrac PV$.

**Adiabatic:** $Q=0$, $PV^\gamma=C$ (from $C_V\,dT=-P\,dV$ and $P\,dV+V\,dP=R\,dT$ one gets $C_VV\,dP+C_PP\,dV=0$). **(2)**

Differentiate: $V^\gamma dP+\gamma PV^{\gamma-1}dV=0\Rightarrow\left(\dfrac{dP}{dV}\right)_{\rm ad}=-\gamma\dfrac PV$. **(1)**

$$\frac{\text{slope}_{\rm ad}}{\text{slope}_{\rm iso}}=\gamma>1\quad(\because C_P>C_V)\quad\textbf{(1)}$$

So the adiabatic curve is steeper. Physically, in an adiabatic expansion the gas does work at the expense of internal energy, so $T$ falls and $P$ drops faster.
</details>

### Q24. State and derive Newton's law of cooling. Give two experimental limitations. **[5 marks]**

<details><summary><b>Solution</b></summary>

**Statement (1):** For a small temperature difference, the rate of heat loss of a body is proportional to $T-T_s$.

$$\frac{dT}{dt}=-k(T-T_s)\Rightarrow\int_{T_0}^{T}\frac{dT}{T-T_s}=-k\int_0^tdt\quad\textbf{(1)}$$

$$\ln\frac{T-T_s}{T_0-T_s}=-kt\quad\textbf{(1)}\qquad\Rightarrow\qquad\boxed{T=T_s+(T_0-T_s)e^{-kt}}\quad\textbf{(1)}$$

Test: plot $\ln(T-T_s)$ vs $t$, a straight line of slope $-k$.

**Limitations (1):** valid only for small $\Delta T$ (at large $\Delta T$ radiation $\propto T^4$ makes it nonlinear); surroundings must stay at constant temperature and air flow (convection) must be controlled; $k$ depends on surface area and finish; evaporation and thermometer lag introduce errors.
</details>

---

## Part D — Numericals

### Q25. Average kinetic energy at 400 K. **[3 marks]**
Find the average translational KE of one gas molecule at 400 K in J and eV, and the KE per mole.

<details><summary><b>Solution</b></summary>

$$\overline K=\tfrac32kT=\tfrac32(1.38\times10^{-23})(400)=8.28\times10^{-21}\ \mathrm J$$

$$\overline K=\frac{8.28\times10^{-21}}{1.6\times10^{-19}}\approx0.052\ \mathrm{eV}$$

Per mole: $\tfrac32RT=\tfrac32(8.31)(400)\approx4.99\times10^{3}\ \mathrm{J\,mol^{-1}}$.

**Mistake to avoid:** $\tfrac32RT$ is per **mole**, $\tfrac32kT$ is per **molecule**.
</details>

### Q26. RMS speed of oxygen. **[3 marks]**
Find $c_{\rm rms}$ of $\mathrm{O_2}$ ($M=32\ \mathrm{g/mol}$) at 300 K.

<details><summary><b>Solution</b></summary>

$$c_{\rm rms}=\sqrt{\frac{3RT}{M}}=\sqrt{\frac{3(8.31)(300)}{0.032}}=\sqrt{2.34\times10^5}\approx483\ \mathrm{m/s}$$

Check: $m=0.032/6.02\times10^{23}=5.32\times10^{-26}$ kg, $\sqrt{3kT/m}$ gives the same value.
</details>

### Q27. RMS speed from density. **[2 marks]**
A gas has density $1.25\ \mathrm{kg/m^3}$ at pressure $1.013\times10^5$ Pa. Find $c_{\rm rms}$.

<details><summary><b>Solution</b></summary>

$$c_{\rm rms}=\sqrt{\frac{3P}\rho}=\sqrt{\frac{3(1.013\times10^5)}{1.25}}=\sqrt{2.43\times10^5}\approx493\ \mathrm{m/s}$$
</details>

### Q28. Mean free path from molecular diameter. **[4 marks]**
Molecular diameter $\sigma=3.0\times10^{-10}$ m, $T=300$ K, $P=1.013\times10^5$ Pa. Find $\lambda$.

<details><summary><b>Solution</b></summary>

$$n=\frac P{kT}=\frac{1.013\times10^5}{(1.38\times10^{-23})(300)}=2.45\times10^{25}\ \mathrm{m^{-3}}$$

$$\lambda=\frac1{\sqrt2\pi\sigma^2n}=\frac1{(4.443)(9\times10^{-20})(2.45\times10^{25})}=\frac1{9.79\times10^{6}}\approx1.0\times10^{-7}\ \mathrm m$$
</details>

### Q29. Molecular diameter from mean free path. **[4 marks]**
At STP the mean free path of a gas is $6.0\times10^{-8}$ m and $n=2.5\times10^{19}\ \mathrm{cm^{-3}}$. Find $\sigma$.

<details><summary><b>Solution</b></summary>

Convert: $n=2.5\times10^{19}\times10^{6}=2.5\times10^{25}\ \mathrm{m^{-3}}$ **(unit conversion is a common mistake)**.

$$\sigma=\sqrt{\frac1{\sqrt2\pi n\lambda}}$$

$n\lambda=(2.5\times10^{25})(6.0\times10^{-8})=1.5\times10^{18}$; $\ \sqrt2\pi n\lambda=6.66\times10^{18}$

$$\sigma^2=1.50\times10^{-19}\ \mathrm{m^2}\Rightarrow\boxed{\sigma\approx3.9\times10^{-10}\ \mathrm m}$$
</details>

### Q30. Critical constants of CO$_2$. **[4 marks]**
For CO$_2$, $a=0.364\ \mathrm{Pa\,m^6\,mol^{-2}}$ and $b=4.27\times10^{-5}\ \mathrm{m^3\,mol^{-1}}$. Find $T_c,\ P_c,\ V_c$.

<details><summary><b>Solution</b></summary>

$$T_c=\frac{8a}{27Rb}=\frac{8(0.364)}{27(8.31)(4.27\times10^{-5})}\approx304\ \mathrm K$$

$$P_c=\frac a{27b^2}=\frac{0.364}{27(4.27\times10^{-5})^2}\approx7.39\times10^{6}\ \mathrm{Pa}\ (\approx73\ \mathrm{atm})$$

$$V_c=3b=1.28\times10^{-4}\ \mathrm{m^3\,mol^{-1}}$$
</details>

### Q31. Find $a$ and $b$ from critical data. **[4 marks]**
For methane, $T_c=190$ K and $P_c=4.6\times10^6$ Pa. Find $a$ and $b$.

<details><summary><b>Solution</b></summary>

$$b=\frac{RT_c}{8P_c}=\frac{(8.31)(190)}{8(4.6\times10^6)}\approx4.3\times10^{-5}\ \mathrm{m^3\,mol^{-1}}$$

$$a=\frac{27R^2T_c^2}{64P_c}=\frac{27(8.31)^2(190)^2}{64(4.6\times10^6)}\approx0.229\ \mathrm{Pa\,m^6\,mol^{-2}}$$
</details>

### Q32. Isothermal work. **[3 marks]**
Two moles of an ideal gas expand isothermally at 300 K from 5 L to 20 L. Find $W$ and $Q$.

<details><summary><b>Solution</b></summary>

$$W=n_{\rm mol}RT\ln\frac{V_2}{V_1}=2(8.31)(300)\ln4=4986\times1.386\approx6.91\times10^{3}\ \mathrm J$$

$\Delta U=0\Rightarrow Q=W\approx6.91\ \mathrm{kJ}$ absorbed by the gas.
</details>

### Q33. Adiabatic compression. **[4 marks]**
One mole of a monatomic ideal gas at 300 K and 1 atm is compressed adiabatically to $1/8$ of its volume. Find $T_2$, $P_2$ and the work done on the gas.

<details><summary><b>Solution</b></summary>

$\gamma=5/3$.

$$T_2=T_1\left(\frac{V_1}{V_2}\right)^{\gamma-1}=300\times8^{2/3}=300\times4=1200\ \mathrm K$$

$$P_2=P_1\left(\frac{V_1}{V_2}\right)^{\gamma}=1\times8^{5/3}=32\ \mathrm{atm}$$

Work done **on** the gas $=\Delta U=\tfrac32R\,\Delta T=\tfrac32(8.31)(900)\approx1.12\times10^{4}\ \mathrm J$ (so $W_{\rm by\ gas}=-1.12\times10^4$ J).
</details>

### Q34. Heat capacities. **[3 marks]**
For 2 mol of a rigid non-linear triatomic gas at 300 K find $f$, $U$, $C_V$, $C_P$ and $\gamma$.

<details><summary><b>Solution</b></summary>

$f=6$.

$$U=\frac f2n_{\rm mol}RT=3(2)(8.31)(300)\approx1.50\times10^{4}\ \mathrm J$$

$C_V=3R=24.9\ \mathrm{J\,mol^{-1}K^{-1}}$, $C_P=4R=33.2\ \mathrm{J\,mol^{-1}K^{-1}}$, $\gamma=4/3$.
</details>

### Q35. Newton's cooling numerical. **[5 marks]**
A body cools from $80^\circ$C to $64^\circ$C in 5 min in surroundings at $20^\circ$C. Find (i) its temperature after another 5 min, (ii) the time to reach $40^\circ$C from $80^\circ$C.

<details><summary><b>Solution</b></summary>

Excess temperature: $60\to44$ in 5 min, so $e^{-5k}=44/60=0.7333$ and $k=0.0620\ \mathrm{min^{-1}}$.

**(i)** After another 5 min: excess $=44\times0.7333=32.3$, so $T\approx52.3^\circ\mathrm C$.

**(ii)** Excess at $40^\circ$C is $20$:

$$t=\frac1k\ln\frac{60}{20}=\frac{\ln3}{0.0620}\approx17.7\ \mathrm{min}$$
</details>

### Q36. Platinum resistance thermometer. **[5 marks]**
A PRT has $R_0=2.80\ \Omega$ and $R_{100}=3.80\ \Omega$. In a bath its resistance is $7.30\ \Omega$. Find the temperature on the gas scale ($\delta=1.5$).

<details><summary><b>Solution</b></summary>

**Step 1 — platinum scale:**

$$t_{pt}=100\frac{7.30-2.80}{3.80-2.80}=450^\circ\mathrm C$$

This is **not** the final answer.

**Step 2 — Callendar correction** with $x=t/100$:

$$t-t_{pt}=\delta\left(\frac t{100}\right)\left(\frac t{100}-1\right)\Rightarrow100x-450=1.5(x^2-x)$$

$$1.5x^2-101.5x+450=0\Rightarrow x=\frac{101.5\pm87.19}{3}$$

$x=4.77$ (physical) or $x=62.9$ (rejected, absurd).

$$\boxed{t\approx477^\circ\mathrm C}$$
</details>

---

## Part E — Mock CT paper

**Time: 45 min · Marks: 30** *(attempt all, then check against the solutions above)*

| Q | Question | Marks | See |
|---|---|---:|---|
| 1 | Derive the expression for the pressure of a perfect gas using kinetic theory. | 5 | Q17 |
| 2 | Define mean free path and derive $\lambda=\dfrac{1}{\sqrt2\pi\sigma^2n}$. | 5 | Q19 |
| 3 | Show that adiabatic curves are steeper than isothermal curves. | 5 | Q23 |
| 4 | State and derive Newton's law of cooling; give its limitations. | 5 | Q24 |
| 5 | Calculate the average KE of a molecule at 400 K, in J and eV. | 3 | Q25 |
| 6 | Find $T_c$, $P_c$, $V_c$ for a gas with the given $a$, $b$ (use CO$_2$ data). | 4 | Q30 |
| 7 | Differentiate heat and temperature **or** define degrees of freedom. | 3 | Q11 / Q12 |

---

## Quick Self-Check Checklist

- [ ] Wrote the formula **before** substituting
- [ ] Kept $n$ (molecules per volume) separate from $n_{\rm mol}$ (moles)
- [ ] Converted cm$^{-3}\to$ m$^{-3}$ ($\times10^6$)
- [ ] Used $\tfrac32kT$ per molecule and $\tfrac32RT$ per mole
- [ ] Remembered $Z_c=3/8$ (and $8/3$ is its reciprocal)
- [ ] Gave the PRT answer on the **gas scale**, not the platinum scale
- [ ] Used $f=5$ for linear molecules unless vibrations are stated to be active
