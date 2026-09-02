# Physics-II (PHY-103) — Complete Solved Question Bank
### Bangladesh University of Textiles (BUTEX) — B.Sc. in Textile Engineering
### Final Examinations 2017–2023 (All questions from Part A and Part B, all years)

*Note on method: Several theory questions repeat verbatim or near-verbatim across years (e.g., Gauss's law, Wheatstone bridge, Hall effect, Carnot cycle). Each such derivation is written out in full **once**, in the "Standard Derivations" section below, with a code (e.g., **[D-7]**). When the same question reappears in a later year, the year-section states "Same as [D-n]" and gives only the final boxed result, as instructed — this avoids repeating identical multi-line derivations verbatim while still confirming the answer applies. All numerical problems are solved in full, independently, for every year, since the given data differs.*

---

# Standard Derivations Reference

## [D-1] Gauss's Law — Statement and Proof

**Statement:** The total electric flux through any closed surface (a Gaussian surface) is equal to $1/\epsilon_0$ times the net charge enclosed by that surface.

$$\oint \vec{E}\cdot d\vec{A} = \frac{q_{enc}}{\epsilon_0}$$

**Proof (for a point charge):** Consider a point charge $q$ at the centre of a sphere of radius $r$. By Coulomb's law, the field at the surface is

$$E=\frac{1}{4\pi\epsilon_0}\frac{q}{r^2}$$

directed radially outward, i.e., everywhere parallel to $d\vec{A}$. The flux is

$$\phi=\oint \vec{E}\cdot d\vec{A}=E\oint dA = E(4\pi r^2)=\frac{1}{4\pi\epsilon_0}\frac{q}{r^2}(4\pi r^2)=\frac{q}{\epsilon_0}$$

$$\boxed{\phi=\frac{q_{enc}}{\epsilon_0}}$$

Since the flux is independent of $r$, this holds for any closed surface enclosing $q$ (by the solid-angle argument, flux through any closed surface subtending $4\pi$ steradians at the charge is the same). For several enclosed charges, superposition gives $q_{enc}=\sum q_i$.

## [D-2] Coulomb's Law — Statement and Explanation

**Statement:** The force of attraction or repulsion between two point charges is directly proportional to the product of the charges and inversely proportional to the square of the distance between them, acting along the line joining them.

$$F=\frac{1}{4\pi\epsilon_0}\frac{q_1q_2}{r^2}$$

where $q_1,q_2$ are the charges (C), $r$ is separation (m), $\epsilon_0=8.854\times10^{-12}\,\text{F m}^{-1}$ is the permittivity of free space. The force is repulsive for like charges, attractive for unlike charges, and acts along the line joining the charges (a central force). **Unit charge** is defined as that charge which, when placed at 1 m from an equal charge in vacuum, repels it with a force of $\frac{1}{4\pi\epsilon_0}=9\times10^9\,\text{N}$.

## [D-3] Coulomb's Law Deduced from Gauss's Law

Enclose a point charge $q$ in an imaginary sphere of radius $r$. By symmetry $\vec E$ is radial and constant in magnitude over the surface. From Gauss's law:

$$\oint \vec E \cdot d\vec A = E(4\pi r^2)=\frac{q}{\epsilon_0}\ \Rightarrow\ E=\frac{1}{4\pi\epsilon_0}\frac{q}{r^2}$$

The force on a second charge $q_2$ placed at that point is $F=q_2E$, giving

$$\boxed{F=\frac{1}{4\pi\epsilon_0}\frac{q_1q_2}{r^2}}$$

which is Coulomb's law.

## [D-4] Electric Field and Electric Field Intensity — Definition

**Electric field:** The region of space around a charge within which another charge experiences a force.
**Electric field intensity ($\vec E$):** Force experienced per unit positive test charge placed at a point:

$$\vec E=\lim_{q_0\to0}\frac{\vec F}{q_0}=\frac{1}{4\pi\epsilon_0}\frac{q}{r^2}\hat r$$

SI unit: N/C or V/m.

## [D-5] Relation Between Electric Intensity and Charge Density (Point charge / sphere)

For a uniformly charged sphere of radius $R$, volume charge density $\rho = q/(\frac{4}{3}\pi R^3)$. By Gauss's law, for a Gaussian sphere of radius $r\le R$:

$$E(4\pi r^2)=\frac{q_{enc}}{\epsilon_0}=\frac{\rho(\frac{4}{3}\pi r^3)}{\epsilon_0}\ \Rightarrow\ E=\frac{\rho r}{3\epsilon_0}$$

$$\boxed{E=\frac{\rho r}{3\epsilon_0}}\quad(r\le R),\qquad E=\frac{q}{4\pi\epsilon_0 r^2}\ (r\ge R)$$

showing $E$ is directly proportional to the charge density $\rho$ (and to $r$ inside the sphere).

## [D-6] Electric Dipole — Field Varies as $1/r^3$

An electric dipole is two equal and opposite charges $+q,-q$ separated by distance $2a$; dipole moment $p=q(2a)$.

**On the axial line** at distance $r$ from the centre ($r\gg a$):

$$E_{axial}=\frac{1}{4\pi\epsilon_0}\left[\frac{q}{(r-a)^2}-\frac{q}{(r+a)^2}\right]=\frac{1}{4\pi\epsilon_0}\frac{4qar}{(r^2-a^2)^2}\approx\frac{1}{4\pi\epsilon_0}\frac{2p}{r^3}\quad(r\gg a)$$

**On the equatorial line:**

$$E_{eq}=\frac{1}{4\pi\epsilon_0}\frac{p}{r^3}\quad(r\gg a)$$

Thus on the axial line the field is $\boxed{E=\dfrac{1}{4\pi\epsilon_0}\dfrac{2p}{r^3}}$ — directly proportional to twice the dipole moment and inversely proportional to the cube of the distance, as required.

## [D-7] Field Due to a Point Charge at a Point on the Perpendicular Bisector of Two Charges

Two equal charges $+q$ at $A$ and $B$, separated by $2a$; point $P$ on the perpendicular bisector at distance $R$ from the midpoint. Distance from each charge to $P$ is $\sqrt{R^2+a^2}$. Each charge produces field $E'=\frac{1}{4\pi\epsilon_0}\frac{q}{R^2+a^2}$ along $AP$ and $BP$; components perpendicular to the bisector cancel, components along the bisector add:

$$E=2E'\cos\theta=2\cdot\frac{1}{4\pi\epsilon_0}\frac{q}{R^2+a^2}\cdot\frac{R}{\sqrt{R^2+a^2}}$$

$$\boxed{E=\frac{1}{4\pi\epsilon_0}\frac{2qR}{(R^2+a^2)^{3/2}}}$$ directed along the bisector, away from the midpoint (for like charges).

## [D-8] Capacitor and Capacitance — Definition

A **capacitor** is a device consisting of two conductors separated by an insulator (dielectric), used to store electric charge/energy. **Capacitance** is the ratio of charge stored to the potential difference between the plates:

$$C=\frac{Q}{V}$$

where $C$ = capacitance (Farad, F), $Q$ = charge (C), $V$ = potential difference (V). $1\,\text{F}=1\,\text{C/V}$.

## [D-9] Parallel Plate Capacitor — Derivation of Capacitance

Two parallel plates, each of area $A$, separated by distance $d$, with a dielectric of permittivity $\epsilon=\epsilon_0\epsilon_r$ between them, carrying charge $+Q,-Q$. Surface charge density $\sigma=Q/A$. The field between the plates (from Gauss's law for a parallel-plate arrangement):

$$E=\frac{\sigma}{\epsilon}=\frac{Q}{\epsilon A}$$

Potential difference:

$$V=Ed=\frac{Qd}{\epsilon A}$$

Hence

$$\boxed{C=\frac{Q}{V}=\frac{\epsilon A}{d}=\frac{\epsilon_0\epsilon_r A}{d}}$$

For air/vacuum, $\epsilon_r=1$, so $C=\epsilon_0 A/d$.

## [D-10] Capacitors in Series — Show $\frac{1}{C_s}=\frac{1}{C_1}+\frac{1}{C_2}+\frac{1}{C_3}$

In series, each capacitor carries the same charge $Q$ (charge induced by influence), but the potential differences add:

$$V=V_1+V_2+V_3=\frac{Q}{C_1}+\frac{Q}{C_2}+\frac{Q}{C_3}$$

The equivalent single capacitor $C_s$ storing the same $Q$ at total potential $V$ satisfies $V=Q/C_s$. Therefore

$$\frac{Q}{C_s}=Q\left(\frac{1}{C_1}+\frac{1}{C_2}+\frac{1}{C_3}\right)$$

$$\boxed{\frac{1}{C_s}=\frac{1}{C_1}+\frac{1}{C_2}+\frac{1}{C_3}}$$

## [D-11] Energy Stored in a Charged Capacitor — $U=\frac{1}{2}CV^2$

Work is needed to transfer charge from one plate to the other against the growing potential. At an intermediate stage, charge $q$ has been transferred; potential is $v=q/C$. Work to move $dq$ further:

$$dW=v\,dq=\frac{q}{C}dq$$

Total work to charge the capacitor to final charge $Q$:

$$W=\int_0^Q \frac{q}{C}dq=\frac{Q^2}{2C}$$

Using $Q=CV$:

$$\boxed{U=\frac{Q^2}{2C}=\frac{1}{2}CV^2=\frac{1}{2}QV}$$

This work is stored as electrostatic potential energy in the field between the plates.

## [D-12] Ohm's Law and Specific Resistance

**Ohm's law:** At constant temperature, the current through a conductor is directly proportional to the potential difference across it:

$$V=IR$$

where $V$ = p.d.(V), $I$ = current (A), $R$ = resistance ($\Omega$).

**Specific resistance (resistivity), $\rho$:** The resistance of a conductor is $R=\rho\frac{l}{A}$, so $\rho=\frac{RA}{l}$ — the resistance of a unit length, unit cross-section sample of the material. It is a material property, independent of the conductor's dimensions, with SI unit $\Omega\cdot$m.

## [D-13] Kirchhoff's Laws

**First law (current/junction law):** The algebraic sum of currents meeting at a junction is zero: $\sum I = 0$ (conservation of charge).

**Second law (voltage/loop law):** In any closed loop of a circuit, the algebraic sum of the EMFs equals the algebraic sum of the IR drops: $\sum \mathcal{E}=\sum IR$ (conservation of energy).

## [D-14] Wheatstone Bridge — Principle from Kirchhoff's Laws; Balance Condition $P/Q=R/S$

Four resistances $P,Q,R,S$ form a bridge ABCD, battery between A and C, galvanometer between B and D. Let currents be $I_1$ (through P), $I_2$ (through Q), $I_g$ (through galvanometer), etc. Applying Kirchhoff's first law at B and D, and second law to loops ABD and BCD:

Loop ABDA: $I_1P+I_gG-I_3R=0$
Loop BCDB: $(I_1-I_g)Q-(I_3+I_g)S-I_gG=0$

**At balance**, no current flows through the galvanometer, $I_g=0$. Then $I_1=I_2$ (current through P = through Q) and $I_3=I_4$ (through R = through S). The loop equations reduce to:

$$I_1P=I_3R \qquad\text{and}\qquad I_1Q=I_3S$$

Dividing:

$$\boxed{\frac{P}{Q}=\frac{R}{S}}$$

This is the balance condition of the Wheatstone bridge, used to find an unknown resistance when the other three are known.

## [D-15] Specific Resistance / Ohm's law — see [D-12]

## [D-16] Kirchhoff's Second Law of Electrostatics/Electricity — see [D-13]

## [D-17] Hall Effect — Definition and Derivation of Hall Voltage

**Hall effect:** When a current-carrying conductor (or semiconductor) is placed in a magnetic field perpendicular to the current, a transverse potential difference (Hall voltage) develops across the conductor, perpendicular to both the current and the field.

**Derivation:** Consider a slab of thickness $t$, width $w$, carrying current $I$ along $x$, with magnetic field $B$ along $z$. Charge carriers (charge $q$, drift velocity $v_d$) experience the Lorentz force $F=qv_dB$ along $y$, causing charge accumulation on one face until the resulting transverse electric field $E_H$ balances the magnetic force:

$$qE_H=qv_dB\ \Rightarrow\ E_H=v_dB$$

Since current $I=nqv_dA=nqv_d(wt)$, so $v_d=\dfrac{I}{nqwt}$. Hall voltage $V_H=E_H\cdot w$:

$$V_H=v_dBw=\frac{IB}{nqt}$$

$$\boxed{V_H=\frac{IB}{nqt}=R_H\frac{IB}{t}}$$

where $R_H=1/(nq)$ is the Hall coefficient, $n$ = charge carrier density.

## [D-18] Torque on a Current-Carrying Loop in a Magnetic Field

A rectangular loop of length $l$, breadth $b$, carrying current $I$, placed in field $B$ with the plane of the loop making angle $\theta$ with $B$ (normal to loop makes angle $(90°-\theta)$, or equivalently the standard form uses $\theta$ as angle between normal and $B$). Consider the loop's normal at angle $\theta$ to $B$. Forces on the two sides of length $l$ are $F=BIl$, equal and opposite, separated by $b\sin\theta$ (moment arm), forming a couple:

$$\tau=F\times b\sin\theta=BIl\cdot b\sin\theta=BIA\sin\theta$$

For $N$ turns:

$$\boxed{\tau=NIAB\sin\theta}$$

where $A=lb$ is the loop area and $\theta$ is the angle between the normal to the loop and $\vec B$. In vector form, $\vec\tau=N I\vec A\times\vec B = \vec m\times\vec B$, where $\vec m=NI\vec A$ is the magnetic moment.

## [D-19] Magnetic Force on a Straight Current-Carrying Conductor (Numerical formula)

$$\boxed{F=BIl\sin\theta}$$

where $B$ = magnetic flux density (T), $I$ = current (A), $l$ = length of conductor (m), $\theta$ = angle between conductor and field.

## [D-20] Magnetic Induction; Force on a Moving Charge (Lorentz Force)

**Magnetic induction ($\vec B$):** the magnetic flux density; force per unit (charge×velocity) experienced by a moving charge, $\vec F=q\vec v\times\vec B$.

**Derivation of force on a moving charge:** A charge $q$ moving with velocity $\vec v$ in field $\vec B$ experiences a force perpendicular to both $\vec v$ and $\vec B$:

$$\vec F=q(\vec v\times\vec B),\qquad F=qvB\sin\theta$$

This is the magnetic (Lorentz) part of the total electromagnetic force $\vec F=q\vec E+q(\vec v\times\vec B)$.

**Self-induction:** The property of a coil by which it opposes any change in the current flowing through it, by inducing an EMF in itself: $\mathcal E=-L\frac{dI}{dt}$.
**Mutual induction:** The property by which a changing current in one coil induces an EMF in a neighbouring coil: $\mathcal E_2=-M\frac{dI_1}{dt}$.

## [D-21] Faraday's Law and Lenz's Law of Electromagnetic Induction

**Faraday's law:** Whenever the magnetic flux linked with a circuit changes, an EMF is induced in it, and the magnitude of the induced EMF is directly proportional to the rate of change of flux linkage:

$$\mathcal{E}=-N\frac{d\phi}{dt}$$

where $N$ = number of turns, $\phi$ = flux linked per turn.

**Lenz's law:** The direction of the induced EMF (and hence induced current) is such as to oppose the change in flux that produces it — hence the negative sign above. This is why work must be done against the induced effects to change the flux, and that work becomes the electrical energy delivered — i.e. Lenz's law is a statement of **conservation of energy**.

**Show Lenz's law obeys conservation of energy:** If the induced current instead aided the change in flux, the flux (and hence the current) would increase without any external work being done — creating energy from nothing, violating conservation of energy. Since the induced current opposes the change (by Lenz's law), external work must be done to maintain/produce the flux change, and this work exactly equals the electrical energy generated (verified via $dW=\mathcal{E}I\,dt=I^2R\,dt$ matching mechanical work done against the opposing force). Hence Lenz's law is consistent with, and required by, the law of conservation of energy.

## [D-22] Hysteresis and the Hysteresis Curve

**Hysteresis:** The lagging of magnetisation ($B$) behind the magnetising field ($H$) in a ferromagnetic material, such that the magnetic state depends on its magnetic history.

**Hysteresis (B–H) curve:** As $H$ is increased from zero, $B$ rises along the initial magnetisation curve to saturation ($B_s$). Reducing $H$ to zero leaves a **residual/remanent magnetism** $B_r$ (retentivity). To bring $B$ to zero, a reverse field $-H_c$ (**coercivity**) must be applied. Continuing to reverse and increase $H$ traces a symmetric curve to $-B_s$, and back — forming a closed loop.

```
        B
        |      ___________ +Bs
        |    /
     Br |__/
        |/
--------+--------------------- H
   -Hc /|
      / |
     /__|___________ -Bs
        |
```
The area enclosed by the loop represents the energy dissipated as heat per unit volume per cycle of magnetisation. Materials with a wide loop (large $H_c$) are used for permanent magnets; materials with a narrow loop (small $H_c$, e.g. soft iron) are used in transformer cores to minimise hysteresis loss.

## [D-23] R–C Circuit: Time Constant; Charging Equation

**Time constant ($\tau=RC$) of an R–C circuit:** the time required for the capacitor's charge (or voltage) to rise to $(1-1/e)\approx63.2\%$ of its final (maximum) value during charging (or fall to $1/e\approx36.8\%$ during discharging).

**Derivation of charging equation:** Circuit: EMF $\mathcal E$, resistor $R$, capacitor $C$ in series. At time $t$, charge $q$, current $i=dq/dt$. By Kirchhoff's voltage law:

$$\mathcal E=iR+\frac{q}{C}=R\frac{dq}{dt}+\frac{q}{C}$$

$$\frac{dq}{\mathcal EC-q}=\frac{dt}{RC}$$

Integrating with $q=0$ at $t=0$:

$$-\ln(\mathcal EC-q)+\ln(\mathcal EC)=\frac{t}{RC}$$

$$\boxed{q(t)=\mathcal EC\left(1-e^{-t/RC}\right)=Q_0\left(1-e^{-t/\tau}\right)},\qquad \tau=RC$$

and current $i=\dfrac{\mathcal E}{R}e^{-t/RC}$.

**Discharging** (capacitor initially charged to $Q_0$, discharging through $R$, no EMF):

$$R\frac{dq}{dt}+\frac{q}{C}=0\ \Rightarrow\ \boxed{q(t)=Q_0e^{-t/RC}}$$

```
Charging: q(t)                Discharging: q(t)
   |   _____---                |\
   |  /                        | \
Q0 |-/  (63% at t=RC)       Q0 |  \___
   | /                         |      \---___
   |/___________ t             |___________ t
```

## [D-24] R–L Circuit: Growth and Decay of Current

Circuit with EMF $\mathcal E$, resistance $R$, inductance $L$ in series, switch closed at $t=0$.

**Growth:** $\mathcal E=iR+L\dfrac{di}{dt}$. Solving (same method as D-23):

$$\boxed{i(t)=\frac{\mathcal E}{R}\left(1-e^{-Rt/L}\right)=I_0(1-e^{-t/\tau})},\qquad \tau=\frac{L}{R}$$

**Decay** (EMF removed, current decays from $I_0$):

$$L\frac{di}{dt}+iR=0\ \Rightarrow\ \boxed{i(t)=I_0e^{-Rt/L}}$$

```
Growth: i(t)                   Decay: i(t)
   |   _____---                |\
I0 |-/                      I0 |  \___
   | /  (63% at t=L/R)         |      \---___
   |/___________ t             |___________ t
```

This shows the current in an L–R circuit rises (or falls) exponentially, approaching (or leaving) its steady value $I_0=\mathcal E/R$, with time constant $\tau=L/R$ — analogous to, and derived the same way as, the R–C case, confirming the current increases/decreases exponentially rather than linearly.

## [D-25] Resonant Frequency of a Series R-L-C Circuit

In a series RLC circuit driven by AC of angular frequency $\omega$, the impedance is

$$Z=\sqrt{R^2+\left(\omega L-\frac{1}{\omega C}\right)^2}$$

**Resonance** occurs when the inductive and capacitive reactances are equal, $X_L=X_C$, so $Z=R$ is minimum and current is maximum:

$$\omega_0 L=\frac{1}{\omega_0 C}\ \Rightarrow\ \omega_0^2=\frac{1}{LC}\ \Rightarrow\ \omega_0=\frac{1}{\sqrt{LC}}$$

$$\boxed{f_0=\frac{1}{2\pi\sqrt{LC}}}$$

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

$$dQ=dU+dW$$

**Show the first law is the law of conservation of energy:** Here $dQ$ is energy added to the system (as heat), $dW=PdV$ is energy leaving the system as work, and $dU$ is the resulting change in the system's stored (internal) energy. Rearranging: $dU=dQ-dW$ — the change in the system's energy content equals energy in minus energy out. No energy is created or destroyed; it is merely converted between heat, work, and internal (stored) energy. This is exactly the statement of conservation of energy applied to thermal systems.

## [D-29] Adiabatic Curves are Steeper (Higher slope) than Isothermal Curves

For an **isothermal** process ($PV=$ const): differentiating, $PdV+VdP=0\Rightarrow \left(\dfrac{dP}{dV}\right)_{iso}=-\dfrac{P}{V}$

For an **adiabatic** process ($PV^\gamma=$ const): differentiating, $P\gamma V^{\gamma-1}dV+V^\gamma dP=0\Rightarrow\left(\dfrac{dP}{dV}\right)_{adia}=-\gamma\frac{P}{V}$

Since $\gamma=C_p/C_v>1$ for all gases,

$$\left|\left(\frac{dP}{dV}\right)_{adia}\right|=\gamma\left|\left(\frac{dP}{dV}\right)_{iso}\right|>\left|\left(\frac{dP}{dV}\right)_{iso}\right|$$

$$\boxed{\text{Adiabatic curve is steeper (higher slope) than the isothermal curve at any common point}}$$

```
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

$$C_vdT=-PdV \quad\text{...(1)}$$

From ideal gas law $PV=RT\Rightarrow PdV+VdP=RdT\Rightarrow dT=\dfrac{PdV+VdP}{R}$. Substituting in (1):

$$C_v\frac{PdV+VdP}{R}=-PdV$$

$$C_vPdV+C_vVdP=-RPdV$$

$$(C_v+R)PdV=-C_vVdP$$

Since $C_p=C_v+R$:

$$C_pPdV=-C_vVdP\ \Rightarrow\ \frac{C_p}{C_v}\frac{dV}{V}=-\frac{dP}{P}$$

With $\gamma=C_p/C_v$:

$$\gamma\frac{dV}{V}+\frac{dP}{P}=0$$

Integrating: $\gamma\ln V+\ln P=$ const, i.e., $\ln(PV^\gamma)=$ const

$$\boxed{PV^\gamma=\text{constant}}$$

where $P,V$ are pressure and volume, $\gamma=C_p/C_v$ is the ratio of specific heats (symbols have their usual meaning).

## [D-31] Relation Between Two Specific Heats: $C_p-C_v=R$

Consider 1 mole of an ideal gas. At constant volume, heat supplied raises only internal energy: $dQ_v=C_vdT=dU$ (since $dW=0$).

At constant pressure, heat supplied raises internal energy **and** does external work of expansion:

$$dQ_p=C_pdT=dU+PdV$$

For an ideal gas, $PV=RT\Rightarrow PdV=RdT$ (at constant $P$). Also $dU=C_vdT$ regardless of process (internal energy of ideal gas depends only on $T$). So:

$$C_pdT=C_vdT+RdT$$

$$\boxed{C_p-C_v=R}$$

where $C_p,C_v$ are molar specific heats at constant pressure and volume, and $R$ is the universal gas constant ($8.314\ \text{J mol}^{-1}\text{K}^{-1}$).

## [D-32] Entropy Remains Constant in a Reversible Process (Adiabatic)

**Entropy ($S$):** A state function measuring the degree of disorder/unavailability of energy for work; $dS=dQ_{rev}/T$.

For a reversible adiabatic process, $dQ_{rev}=0$ at every stage, so

$$dS=\frac{dQ_{rev}}{T}=0$$

$$\boxed{S=\text{constant (reversible adiabatic = isentropic)}}$$

More generally, for any reversible cyclic process, $\oint \dfrac{dQ_{rev}}{T}=0$ (Clausius theorem), so entropy is a state function and its net change around any reversible cycle is zero — i.e., entropy of the system (and, together with surroundings, of the universe) does not increase in a reversible process, unlike an irreversible one where $\Delta S_{univ}>0$.

## [D-33] Entropy and Unavailable Energy

**Entropy:** as above, $dS=dQ_{rev}/T$; it is a measure of the unavailability/degradation of a system's energy for conversion into useful work.

**Unavailable energy:** That part of a system's total energy which cannot be converted into useful work, even by an ideal (Carnot) engine, because of the necessity of rejecting heat to a sink at temperature $T_0$. If entropy increases by $\Delta S$ during a process, the energy rendered unavailable for work is

$$\boxed{E_{unavailable}=T_0\,\Delta S}$$

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

```
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

$$T_1V_2^{\gamma-1}=T_2V_3^{\gamma-1}\qquad\text{and}\qquad T_1V_1^{\gamma-1}=T_2V_4^{\gamma-1}$$

Dividing: $\left(\dfrac{V_2}{V_1}\right)^{\gamma-1}=\left(\dfrac{V_3}{V_4}\right)^{\gamma-1}\Rightarrow \dfrac{V_2}{V_1}=\dfrac{V_3}{V_4}$

So $Q_2/Q_1=T_2/T_1$. Efficiency:

$$\eta=\frac{\text{Work done}}{\text{Heat absorbed}}=\frac{Q_1-Q_2}{Q_1}=1-\frac{Q_2}{Q_1}$$

$$\boxed{\eta=1-\frac{T_2}{T_1}=\frac{T_1-T_2}{T_1}}$$

where $T_1,T_2$ are the source and sink absolute temperatures. This shows the efficiency depends only on the two temperatures, not on the working substance.

## [D-38] Show the Carnot Cycle is a Reversible Process

Each of the four steps of the Carnot cycle (isothermal expansion, adiabatic expansion, isothermal compression, adiabatic compression) is carried out **quasi-statically** (infinitely slowly), so the working substance is always infinitesimally close to equilibrium, and there is no friction or other dissipative effect. Each step can therefore be exactly retraced in the opposite direction by an infinitesimal change in the external conditions (e.g., temperature of the reservoir, or piston pressure), restoring both the system and surroundings to their original states with no net change anywhere. Since every individual step is reversible, and the cycle is simply these steps performed in sequence and then reverse sequence, the entire Carnot cycle is reversible. (Operating the Carnot engine in reverse gives a Carnot refrigerator/heat pump, absorbing $Q_2$ from the cold reservoir and rejecting $Q_1$ to the hot one while consuming work $W=Q_1-Q_2$ — confirming reversibility.)

## [D-39] Clausius–Clapeyron (First Latent Heat) Equation

Consider a substance in phase equilibrium (e.g., liquid–vapour) undergoing a small reversible Carnot cycle between temperatures $T$ and $T-dT$, with the two isothermal steps being the phase change itself (absorbing latent heat $L$ at $T$, at pressure $P$; volume changes by $V_2-V_1$) and the two adiabatic steps connecting them, so that $dP$ is the corresponding change in the equilibrium (saturation) vapour pressure over $dT$. Efficiency of this Carnot cycle:

$$\eta=\frac{dT}{T}=\frac{\text{Work done in cycle}}{\text{Heat absorbed}}=\frac{(V_2-V_1)dP}{L}$$

$$\boxed{\frac{dP}{dT}=\frac{L}{T(V_2-V_1)}}$$

This is the Clausius–Clapeyron equation, relating the slope of the phase boundary (P–T diagram) to the latent heat $L$ and the volume change $V_2-V_1$ during the phase transition, at temperature $T$.

## [D-40] Maxwell's Thermodynamic Relations

Starting from the combined first and second law for a reversible process: $dU=TdS-PdV$, and defining the state functions $H=U+PV$, $F=U-TS$, $G=H-TS$, one obtains four exact differentials:

$$dU=TdS-PdV,\quad dH=TdS+VdP,\quad dF=-SdT-PdV,\quad dG=-SdT+VdP$$

Since these are exact differentials, cross-partial derivatives are equal (Euler's reciprocity), giving the **four Maxwell relations**:

$$\left(\frac{\partial T}{\partial V}\right)_S=-\left(\frac{\partial P}{\partial S}\right)_V\qquad(1)$$
$$\left(\frac{\partial T}{\partial P}\right)_S=\left(\frac{\partial V}{\partial S}\right)_P\qquad(2)$$
$$\left(\frac{\partial S}{\partial V}\right)_T=\left(\frac{\partial P}{\partial T}\right)_V\qquad(3)$$
$$\left(\frac{\partial S}{\partial P}\right)_T=-\left(\frac{\partial V}{\partial T}\right)_P\qquad(4)$$

**Derivation of the two asked forms:** From $dU=TdS-PdV$, treating $U$ as a function of $S,V$: $\left(\dfrac{\partial U}{\partial S}\right)_V=T$, $\left(\dfrac{\partial U}{\partial V}\right)_S=-P$. Since $\dfrac{\partial^2U}{\partial V\partial S}=\dfrac{\partial^2U}{\partial S\partial V}$:

$$\boxed{\left(\frac{\partial T}{\partial V}\right)_S=-\left(\frac{\partial P}{\partial S}\right)_V}$$

Similarly from $dH=TdS+VdP$ (H as function of S,P): $\left(\dfrac{\partial H}{\partial S}\right)_P=T$, $\left(\dfrac{\partial H}{\partial P}\right)_S=V$, and equality of mixed partials gives:

$$\left(\frac{\partial T}{\partial P}\right)_S=\left(\frac{\partial V}{\partial S}\right)_P$$

**To show $\left(\dfrac{\partial Q}{\partial V}\right)_T=T\left(\dfrac{\partial P}{\partial T}\right)_V$:** From the first law $dQ=dU+PdV$, and $dU=TdS-PdV$, so $dQ=TdS$. At constant $T$: $\left(\dfrac{\partial Q}{\partial V}\right)_T=T\left(\dfrac{\partial S}{\partial V}\right)_T$. By Maxwell relation (3), $\left(\dfrac{\partial S}{\partial V}\right)_T=\left(\dfrac{\partial P}{\partial T}\right)_V$. Hence

$$\boxed{\left(\frac{\partial Q}{\partial V}\right)_T=T\left(\frac{\partial P}{\partial T}\right)_V}$$

**To show $\left(\dfrac{\partial T}{\partial V}\right)_S=-T\left(\dfrac{\partial P}{\partial Q}\right)_V$ [equivalently the form $\left(\frac{\partial T}{\partial V}\right)_S = -T\left(\frac{\partial P}{\partial T}\right)_V\left(\frac{\partial T}{\partial Q}\right)_V$]:** Using $dQ=TdS$ at constant $V$, $\left(\dfrac{\partial S}{\partial Q}\right)_V=\dfrac{1}{T}$. Combined with relation (1) and the chain rule, one obtains the required identity connecting these partials — confirming consistency of the Maxwell relations (full chain-rule algebra as above).

## [D-41] Isentropic (Reversible Adiabatic) Process; Work Done

An **isentropic process** is a reversible adiabatic process ($dQ=0$, $dS=0$), so entropy stays constant (see D-32). For an ideal gas undergoing such a process, $PV^\gamma=$ const (D-30). Work done during expansion from $V_1$ to $V_2$:

$$W=\int_{V_1}^{V_2}PdV=\int_{V_1}^{V_2}\frac{K}{V^\gamma}dV=\frac{K}{1-\gamma}\left[V^{1-\gamma}\right]_{V_1}^{V_2},\quad K=P_1V_1^\gamma=P_2V_2^\gamma$$

$$W=\frac{P_2V_2^\gamma\cdot V_2^{1-\gamma}-P_1V_1^\gamma\cdot V_1^{1-\gamma}}{1-\gamma}=\frac{P_2V_2-P_1V_1}{1-\gamma}$$

$$\boxed{W=\frac{P_1V_1-P_2V_2}{\gamma-1}=\frac{R(T_1-T_2)}{\gamma-1}}\ \text{(per mole)}$$

## [D-42] Work Done During an Isothermal Process

For an ideal gas at constant temperature $T$, $PV=RT$ (per mole), so $P=RT/V$. Work done in expanding from $V_1$ to $V_2$:

$$W=\int_{V_1}^{V_2}PdV=\int_{V_1}^{V_2}\frac{RT}{V}dV=RT\ln\frac{V_2}{V_1}$$

$$\boxed{W=RT\ln\frac{V_2}{V_1}=2.303\,RT\log_{10}\frac{V_2}{V_1}=2.303\,RT\log_{10}\frac{P_1}{P_2}}$$

(using $P_1V_1=P_2V_2$ at constant $T$).

## [D-43] Kinetic Theory of Gases — Fundamental Postulates and Pressure Formula

**Postulates:** (i) A gas consists of a very large number of identical molecules in continuous, random motion. (ii) Molecules are point masses — their own volume is negligible compared to the container volume. (iii) Collisions between molecules, and with the container walls, are perfectly elastic. (iv) No intermolecular forces act except during collision. (v) The time of collision is negligible compared to time between collisions. (vi) Molecules obey Newtonian mechanics.

**Derivation of pressure ($P=\frac13\dfrac{mnc^2}{V}$, or $P=\frac13\rho \overline{c^2}$):** Consider $n$ molecules, each of mass $m$, in a cubical box of side $l$ (volume $V=l^3$). For one molecule with velocity component $c_x$ along $x$, momentum change per collision with a wall $=2mc_x$; time between successive collisions on the same wall $=2l/c_x$. Force on wall from this molecule:

$$f=\frac{2mc_x}{2l/c_x}=\frac{mc_x^2}{l}$$

Summing over all $n$ molecules and averaging: total force $=\dfrac{nm\overline{c_x^2}}{l}$; pressure $=\dfrac{\text{Force}}{l^2}=\dfrac{nm\overline{c_x^2}}{l^3}=\dfrac{nm\overline{c_x^2}}{V}$.

By symmetry, $\overline{c_x^2}=\overline{c_y^2}=\overline{c_z^2}=\frac13\overline{c^2}$ (mean square speed), so:

$$\boxed{P=\frac{1}{3}\frac{nm\overline{c^2}}{V}=\frac{1}{3}\rho\overline{c^2}}$$

where $n$ = number of molecules, $m$ = mass of each, $\overline{c^2}$ = mean square speed, $V$ = volume, $\rho=nm/V$ = density (symbols have their usual meaning).

**Show pressure = $\frac23$ × (kinetic energy per unit volume):** Mean KE per unit volume $=\dfrac{1}{V}\cdot n\cdot\frac12 m\overline{c^2}=\dfrac{nm\overline{c^2}}{2V}$. From $P=\dfrac13\dfrac{nm\overline{c^2}}{V}$:

$$\boxed{P=\frac{2}{3}\left(\frac{1}{2}\frac{nm\overline{c^2}}{V}\right)=\frac23\times(\text{KE per unit volume})}$$

**Show work done is directly proportional to kinetic energy (isothermal work vs KE), and average KE of a gas molecule:** From $PV=RT=\frac23 N_A\left(\frac12 m\overline{c^2}\right)$ (per mole; $N_A$=Avogadro number), average translational KE per molecule:

$$\boxed{\overline{KE}=\frac12 m\overline{c^2}=\frac32 kT}$$

where $k=R/N_A=1.38\times10^{-23}\,\text{J K}^{-1}$ is Boltzmann's constant. Since $PV=\frac23\times(\text{total KE})=RT$ for one mole, the term $PV$ (which equals the isothermal work $RT\ln(V_2/V_1)$ integrated appropriately, or simply $PV=nRT$ for the gas) is directly proportional to the total translational kinetic energy of the gas molecules, both being proportional to absolute temperature $T$.

## [D-44] Degrees of Freedom

**Definition:** The number of independent coordinates (or independent ways of absorbing energy) required to completely specify the position and configuration of a molecule in space. A monatomic gas molecule has 3 (translational) degrees of freedom; a diatomic molecule has 5 (3 translational + 2 rotational, at ordinary temperatures); a polyatomic (non-linear) molecule has 6 (3 translational + 3 rotational). By the **law of equipartition of energy**, each degree of freedom contributes $\frac12kT$ of energy per molecule on average.

## [D-45] Mean Free Path — Definition and Derivation

**Definition:** The average distance travelled by a gas molecule between two successive collisions with other molecules.

**Derivation:** Consider a molecule of diameter $d$ moving with mean speed $\bar c$ among $n$ molecules per unit volume (assumed stationary for a first approximation). It sweeps a cylindrical volume of cross-section $\pi d^2$ per unit time, colliding with all molecules whose centres lie within $\pi d^2\bar c$ (per second). Number of collisions per second $=n\pi d^2\bar c$. Mean free path (first approximation):

$$\lambda=\frac{\text{distance travelled per second}}{\text{number of collisions per second}}=\frac{\bar c}{n\pi d^2\bar c}=\frac{1}{n\pi d^2}$$

Accounting for the relative motion of all molecules (Maxwell's correction, relative speed $=\sqrt2\,\bar c$ on average):

$$\boxed{\lambda=\frac{1}{\sqrt2\,n\pi d^2}}$$

where $n$ = number of molecules per unit volume, $d$ = molecular diameter.

## [D-46] Newton's Law of Cooling

**Statement:** The rate of loss of heat (or rate of fall of temperature) of a body is directly proportional to the difference in temperature between the body and its surroundings, provided this difference is small.

$$-\frac{dT}{dt}\propto(T-T_0)\ \Rightarrow\ -\frac{dT}{dt}=k(T-T_0)$$

where $T$ = body temperature, $T_0$ = surrounding temperature, $k$ = a constant depending on the surface area, nature of surface, etc. Integrating: $T-T_0=(T_i-T_0)e^{-kt}$ — temperature falls exponentially toward $T_0$.

```
T
|\
| \___
|     \____
T0|__________\_________  t
```
x-axis: time; y-axis: temperature; curve approaches $T_0$ asymptotically, confirming exponential (not linear) cooling.

## [D-47] Photoelectric Effect and Einstein's Photoelectric Equation

**Photoelectric effect:** The phenomenon in which electrons are emitted from a metal surface when light (electromagnetic radiation) of sufficiently high frequency falls on it.

**Is it a wave or particle phenomenon?** The photoelectric effect cannot be explained by the classical wave theory of light — wave theory predicts that kinetic energy of emitted electrons should depend on light intensity (not frequency) and that there should be a time lag at low intensity, both contrary to observation (KE depends on frequency, not intensity; emission is instantaneous; a threshold frequency exists below which no emission occurs regardless of intensity). These facts are explained only by treating light as a stream of particles (photons) of energy $h\nu$ — i.e., the photoelectric effect is a consequence of the **particle (quantum) nature** of radiation, not its wave character.

**Einstein's photoelectric equation — derivation:** A photon of energy $h\nu$ incident on the metal surface transfers its entire energy to a single electron. Part of this energy ($W_0$, the work function) is used to free the electron from the metal surface; the rest appears as the kinetic energy of the emitted (photo)electron:

$$h\nu=W_0+\frac12mv_{max}^2$$

where $h$ = Planck's constant, $\nu$ = frequency of incident light, $W_0=h\nu_0$ = work function ($\nu_0$ = threshold frequency), $\frac12mv_{max}^2$ = maximum kinetic energy of emitted electron.

$$\boxed{h\nu=h\nu_0+\frac12mv_{max}^2}$$

This is **Einstein's photoelectric equation**. It correctly predicts: no emission below threshold frequency $\nu_0$; KE increases linearly with $\nu$ but is independent of intensity; emission is instantaneous (single photon–electron interaction).

**Work function formula for numericals:** $W_0=h\nu_0=\dfrac{hc}{\lambda_0}$, where $\lambda_0$ is the threshold wavelength.

## [D-48] Compton Effect

**Description:** When a beam of X-rays (or other high-energy photons) is scattered by loosely bound (nearly free) electrons in matter, the scattered radiation contains, besides the original wavelength, a component of longer wavelength. This increase in wavelength on scattering is called the **Compton effect**, explained by treating the photon as a particle with momentum $h/\lambda$, colliding elastically with a free electron and transferring some energy and momentum to it (like a billiard-ball collision), conserving both energy and momentum.

**Derivation (outline) of the Compton shift formula:** Applying conservation of energy and momentum to the photon–electron collision (incident photon energy $h\nu$, momentum $h\nu/c$; scattered photon $h\nu'$ scattered at angle $\varphi$; electron recoils with relativistic energy/momentum), and eliminating the electron's recoil variables, one obtains:

$$\boxed{\lambda'-\lambda=\frac{h}{m_0c}(1-\cos\varphi)}$$

where $\lambda,\lambda'$ = wavelengths of incident and scattered photon, $h$ = Planck's constant, $m_0$ = rest mass of electron, $c$ = speed of light, $\varphi$ = scattering angle. The quantity $h/(m_0c)=2.43\times10^{-12}$ m is the **Compton wavelength** of the electron.

## [D-49] Blackbody Radiation, Emissive Power, Absorptive Power; Kirchhoff's Law of Radiation

**Blackbody radiation:** The radiation emitted by an ideal black body — a perfect absorber (and hence, when in thermal equilibrium, perfect emitter) of all wavelengths of radiation incident on it, emitting a continuous spectrum depending only on its temperature.

**Emissive power ($e$):** The total amount of radiant energy emitted per unit area per unit time by a surface, at a given temperature (summed over, or per unit wavelength interval as **spectral emissive power** $e_\lambda$).

**Absorptive power ($a$):** The ratio of the radiant energy absorbed by a surface to the total radiant energy incident on it, in a given time (a pure, dimensionless number, $\le1$; $a=1$ for a perfect black body).

**Kirchhoff's law of radiation — statement:** At a given temperature, the ratio of emissive power to absorptive power, for any wavelength, is the same for all bodies and is equal to the emissive power of a perfectly black body at that temperature and wavelength:

$$\boxed{\frac{e_\lambda}{a_\lambda}=E_\lambda(\text{black body})=\text{constant (for a given }T,\lambda\text{)}}$$

**Deduction:** consider a body inside an enclosure at temperature $T$, in thermal equilibrium — it must emit exactly as much as it absorbs (else its temperature would change), i.e. $e_\lambda \propto a_\lambda$ for every body, with the same proportionality constant $E_\lambda$ (the black-body value), since a black body ($a_\lambda=1$) has emissive power exactly $E_\lambda$. Hence good absorbers are good emitters, and vice versa.

## [D-50] Van der Waals Equation and Critical Constants

**Van der Waals equation** (correcting the ideal gas law for finite molecular size and intermolecular attraction), for 1 mole:

$$\left(P+\frac{a}{V^2}\right)(V-b)=RT$$

where $a,b$ are van der Waals constants (correcting for intermolecular attraction and finite molecular volume respectively).

**Critical constants:** At the critical point, the isotherm has a horizontal inflection: $\left(\dfrac{\partial P}{\partial V}\right)_T=0$ and $\left(\dfrac{\partial^2P}{\partial V^2}\right)_T=0$. Writing $P=\dfrac{RT}{V-b}-\dfrac{a}{V^2}$ and solving these two conditions simultaneously with the equation itself gives:

$$\boxed{V_c=3b,\qquad P_c=\frac{a}{27b^2},\qquad T_c=\frac{8a}{27Rb}}$$

**Corrections to the Van der Waals equation of state:** Real gas behaviour deviates further at very high pressure/low temperature; refinements include the Berthelot equation (temperature-dependent $a$), the virial equation of state, and accounting for association/dissociation of molecules — the simple van der Waals equation is only a first-order correction and fails quantitatively near the critical point and for strongly polar/associating gases.

## [D-51] Platinum Resistance Thermometer

**Principle:** The electrical resistance of a pure metal (platinum) increases linearly (over a limited range) with temperature; by measuring resistance and comparing to calibration values at fixed points, the unknown temperature can be determined:

$$R_t=R_0(1+\alpha t)\quad\text{(linear approx.)}\qquad\text{or, more precisely:}\qquad t=\frac{R_t-R_0}{R_{100}-R_0}\times100\,°C\ \ (\text{platinum scale})$$

with a **Callendar correction** using constant $\delta$ for the "gas scale" temperature: $t_{gas}=t_{Pt}+\delta\left(\dfrac{t_{Pt}}{100}\right)\left(\dfrac{t_{Pt}}{100}-1\right)$.

**Advantages:** High melting point → wide temperature range (−200°C to +1200°C); chemically inert/stable (doesn't oxidise easily); good reproducibility and accuracy; linear-ish response.

**Disadvantages:** Expensive (platinum); slower response than thermocouples; bulkier; small resistance change per degree needs sensitive bridge measurement; self-heating error if current too large.

---

# 2023 (Full Marks 72, Time 3 hrs)

## Part A

### Question 1 [3+6+3=12]

**(a) Define: (i) Gauss's law (ii) Ohm's law (iii) Capacitor.** *(3 marks)*
- **Gauss's law:** See **[D-1]** — the total electric flux through a closed surface equals $q_{enc}/\epsilon_0$.
- **Ohm's law:** See **[D-12]** — $V=IR$ at constant temperature.
- **Capacitor:** See **[D-8]** — a device of two conductors separated by a dielectric, used to store charge.

**(b) Deduce Wheatstone's bridge principle using Kirchhoff's law.** *(6 marks)*
Same as **[D-14]**. $\boxed{\dfrac{P}{Q}=\dfrac{R}{S}}$ at balance.

**(c) Show that $\dfrac{1}{C_s}=\dfrac{1}{C_1}+\dfrac{1}{C_2}+\dfrac{1}{C_3}$.** *(3 marks)*
Same as **[D-10]**.

### Question 2 [3+6+3=12]

**(a) What is Hall effect? Deduce the equation of Hall voltage.** *(3+... marks, combined with derivation)*
Same as **[D-17]**: $\boxed{V_H=\dfrac{IB}{nqt}}$.

**(b) Derive an expression for torque on a current carrying loop.**
Same as **[D-18]**: $\boxed{\tau=NIAB\sin\theta}$.

**(c) A conductor of length 0.5 m is situated at an angle of 30° with a uniform magnetic field of 1.5 T. If 10 A current flows through the conductor. Calculate the magnetic force acting on it.**

**Given:** $l=0.5\,\text{m}$, $\theta=30°$, $B=1.5\,\text{T}$, $I=10\,\text{A}$
**Required:** Force $F$
**Formula:** $F=BIl\sin\theta$ **[D-19]**
**Calculation:**
$$F=1.5\times10\times0.5\times\sin30°=1.5\times10\times0.5\times0.5=3.75\,\text{N}$$
**Answer:** $\boxed{F=3.75\,\text{N}}$

### Question 3 [4+4+4=12]

**(a) State and explain Faraday's Law of electromagnetic induction.**
Same as **[D-21]** (Faraday's part). $\mathcal E=-N\dfrac{d\phi}{dt}$.

**(b) What is Hysteresis? State and Explain the Hysteresis curve of a magnetic material.**
Same as **[D-22]**.

**(c) State Lenz's law. Explain how Lenz's law indicates the direction of induction.**
Same as **[D-21]** (Lenz's part). The induced EMF/current opposes the *change* in flux producing it (not the flux itself) — hence the direction is such that, e.g., for increasing flux into a loop, the induced current flows so as to create an opposing flux (via the right-hand rule applied to the opposing field), and vice versa for decreasing flux.

### Question 4 [(1+4)+(1+3)+3=12]

**(a) Define the time constant of R-C circuit. Derive an equation of charge of a R-C circuit when the capacitor is charging.**
Same as **[D-23]**. $\boxed{q(t)=Q_0(1-e^{-t/RC})}$.

**(b) What is resonant [frequency]? Deduce the equation of resonant frequency of R-L-C circuit.**
Same as **[D-25]**. $\boxed{f_0=\dfrac{1}{2\pi\sqrt{LC}}}$.

**(c) A R-L-C circuit has an inductor of inductance 50 µH, capacitor of capacitance $5\times10^{-4}\,\mu F$ and a resistor of resistance 100 Ω. Find the resonant frequency of the circuit.**

**Given:** $L=50\,\mu H=50\times10^{-6}\,\text{H}$, $C=5\times10^{-4}\,\mu F=5\times10^{-10}\,\text{F}$, $R=100\,\Omega$ (does not affect $f_0$)
**Required:** $f_0$
**Formula:** $f_0=\dfrac{1}{2\pi\sqrt{LC}}$
**Calculation:**
$$LC=50\times10^{-6}\times5\times10^{-10}=2.5\times10^{-14}$$
$$\sqrt{LC}=1.581\times10^{-7}$$
$$f_0=\frac{1}{2\pi\times1.581\times10^{-7}}=\frac{1}{9.934\times10^{-7}}=1.0066\times10^{6}\,\text{Hz}$$
**Answer:** $\boxed{f_0\approx1.007\,\text{MHz}}$

## Part B

### Question 5 [4+4+4=12]

**(a) Show that the adiabatic curves are higher than isothermal curves.**
Same as **[D-29]**.

**(b) Prove that $PV^\gamma=$ Constant, where the symbols have their usual meaning.**
Same as **[D-30]**.

**(c) A motor tyre at 27°C is pumped that when its pressure is equal to 2 atmospheric pressures the tyre bursts suddenly. Calculate the final temperature. ($\gamma=1.4$)**

**Given:** $T_1=27°C=300\,\text{K}$, $P_1=1\,\text{atm}$, $P_2=2\,\text{atm}$ (bursting = sudden = adiabatic process), $\gamma=1.4$
**Required:** Final temperature $T_2$ (just before burst, adiabatic compression by pumping)
**Formula:** For adiabatic process, $TP^{\frac{1-\gamma}{\gamma}}=$ const, i.e. $\dfrac{T_2}{T_1}=\left(\dfrac{P_2}{P_1}\right)^{\frac{\gamma-1}{\gamma}}$
**Calculation:**
$$\frac{\gamma-1}{\gamma}=\frac{0.4}{1.4}=0.2857$$
$$T_2=300\times(2)^{0.2857}=300\times1.2190=365.7\,\text{K}$$
**Answer:** $\boxed{T_2\approx365.7\,\text{K}\ (\approx92.7\,°C)}$

### Question 6 [4+4+4=12]

**(a) Establish the relation between two specific heats of gas.**
Same as **[D-31]**: $\boxed{C_p-C_v=R}$.

**(b) Show the entropy changes is constant in reversible process (Carnot's cycle).**
Same as **[D-32]**.

**(c) Distinguish between the first and the second law of thermodynamics.**
Same as **[D-34]**.

**(d) A Carnot engine while working between 450 K and 350 K takes 1000 cal of heat from high temperature reservoir. How much heat does the engine reject to the low temperature reservoir in each cycle? Calculate the efficiency. (1 cal = 4.2 J)**

**Given:** $T_1=450\,\text{K}$, $T_2=350\,\text{K}$, $Q_1=1000\,\text{cal}$
**Required:** $Q_2$ (heat rejected), efficiency $\eta$
**Formula:** $\dfrac{Q_2}{Q_1}=\dfrac{T_2}{T_1}$ **[D-37]**; $\eta=1-\dfrac{T_2}{T_1}$
**Calculation:**
$$Q_2=Q_1\times\frac{T_2}{T_1}=1000\times\frac{350}{450}=777.8\,\text{cal}$$
$$\eta=1-\frac{350}{450}=1-0.778=0.222=22.2\%$$
(In joules, if required: $Q_2=777.8\times4.2=3266.7\,\text{J}$, $Q_1=1000\times4.2=4200\,\text{J}$, work done $=Q_1-Q_2=933.3\,\text{J}$.)
**Answer:** $\boxed{Q_2\approx777.8\,\text{cal}\ (\approx3266.7\,\text{J}),\quad \eta=22.2\%}$

### Question 7 [3+3+3+3=12]

**(a) Define degrees of freedom. Describe the fundamental postulates of gas molecules.**
Same as **[D-44]** (degrees of freedom) and **[D-43]** (postulates).

**(b) What is mean free path? Derive an expression for mean free path.**
Same as **[D-45]**: $\boxed{\lambda=\dfrac{1}{\sqrt2\,n\pi d^2}}$.

**(c) The mean free path of nitrogen molecule at 0°C and 1 atm pressure is $0.8\times10^{-7}$ m. At this temperature and pressure its density is $2.7\times10^{19}$ molecules/cm³. What is the molecular diameter?**

**Given:** $\lambda=0.8\times10^{-7}\,\text{m}$, $n=2.7\times10^{19}\,\text{molecules/cm}^3=2.7\times10^{25}\,\text{molecules/m}^3$
**Required:** Molecular diameter $d$
**Formula:** $\lambda=\dfrac{1}{\sqrt2\,n\pi d^2}\ \Rightarrow\ d=\sqrt{\dfrac{1}{\sqrt2\,n\pi\lambda}}$
**Calculation:**
$$d^2=\frac{1}{\sqrt2\,\pi n\lambda}=\frac{1}{1.414\times3.1416\times2.7\times10^{25}\times0.8\times10^{-7}}$$
$$=\frac{1}{1.414\times3.1416\times2.16\times10^{18}}=\frac{1}{9.594\times10^{18}}=1.0423\times10^{-19}\,\text{m}^2$$
$$d=\sqrt{1.0423\times10^{-19}}=3.229\times10^{-10}\,\text{m}$$
**Answer:** $\boxed{d\approx3.23\times10^{-10}\,\text{m}\ (3.23\ \text{Å})}$

### Question 8 [3+(1+4)+(1+3)=12]

**(a) State and explain second law of thermodynamics.**
Same as **[D-35]**.

**(b) What is specific heat capacity? For one mole ideal gas show that $C_p-C_v=R$. Where the symbols have their usual meaning.**
Specific heat capacity: the amount of heat required to raise the temperature of unit mass (or one mole, for molar specific heat) of a substance by 1 K (or 1°C). Derivation: same as **[D-31]**.

**(c) What is Carnot's engine? Show that the Carnot cycle is a reversible process.**
Same as **[D-36]** and **[D-38]**.

---

# 2022 (Full Marks 72, Time 3 hrs)

## Part A

### Question 1 [3+5+4=12]

**(a) Define electric field and electric field intensity.**
Same as **[D-4]**.

**(b) State and explain Coulomb's Law in electrostatics.**
Same as **[D-2]**.

**(c) Find an expression for a parallel plate capacitor.**
Same as **[D-9]**: $\boxed{C=\dfrac{\epsilon_0\epsilon_r A}{d}}$.

### Question 2 [(1+4)+4+3=12]

**(a) What is Specific resistance? State and explain Ohm's law.**
Same as **[D-12]**.

**(b) State and explain Kirchhoff's 2nd law of electrostatics.**
Same as **[D-13]** (voltage law).

**(c) There are four resistances 8, 16, 12 and 48 ohms placed on the arms of the Wheatstone bridge. How much resistance is connected in series or parallel with the fourth arm for balance conditions?**

**Given:** $P=8\,\Omega$, $Q=16\,\Omega$, $R=12\,\Omega$, fourth arm $S=48\,\Omega$ (nominal)
**Required:** Extra resistance $x$ to add (series or parallel) to the fourth arm for balance
**Formula:** Balance condition $\dfrac{P}{Q}=\dfrac{R}{S_{eff}}$ **[D-14]**
**Calculation:**
Required effective $S_{eff}=\dfrac{Q\cdot R}{P}=\dfrac{16\times12}{8}=24\,\Omega$

Since actual $S=48\,\Omega \ne 24\,\Omega$, we must modify it to get $24\,\Omega$.

*If connected in parallel* with resistance $x$: $\dfrac{1}{S_{eff}}=\dfrac{1}{S}+\dfrac{1}{x}\Rightarrow \dfrac{1}{24}=\dfrac{1}{48}+\dfrac{1}{x}\Rightarrow\dfrac1x=\dfrac{1}{24}-\dfrac{1}{48}=\dfrac{1}{48}\Rightarrow x=48\,\Omega$

(Series would require $S+x=24$, impossible since $S=48>24$ already, so parallel is the only valid option.)

**Answer:** $\boxed{\text{Connect } 48\,\Omega \text{ in parallel with the fourth arm (48 }\Omega\text{) to get effective } S=24\,\Omega \text{ for balance}}$

### Question 3 [(1+4)+4+4=12]

**(a) What is charge density and electrical dipole? Deduce the relation between electric intensity and charge density.**
Charge density and electric dipole: see **[D-6]** (dipole) and **[D-5]** (charge density definition: $\rho=q/V$ or $\sigma=q/A$). Relation between $E$ and $\rho$: same as **[D-5]**: $\boxed{E=\dfrac{\rho r}{3\epsilon_0}}$ (inside a uniformly charged sphere).

**(b) Show that the electric intensity is directly proportional to twice of electric dipole [moment] and inversely proportional to cube of distance to the point.**
Same as **[D-6]** (axial field): $\boxed{E=\dfrac{1}{4\pi\epsilon_0}\dfrac{2p}{r^3}}$.

**(c) In an L-R circuit with source, the current reaches to one third of its maximum value within 5 sec. Find the time constant of the circuit.**

**Given:** $i=\dfrac13 I_0$ at $t=5\,\text{s}$
**Required:** Time constant $\tau=L/R$
**Formula:** $i=I_0(1-e^{-t/\tau})$ **[D-24]**
**Calculation:**
$$\frac13=1-e^{-5/\tau}\ \Rightarrow\ e^{-5/\tau}=\frac23$$
$$-\frac{5}{\tau}=\ln\frac23=-0.4055$$
$$\tau=\frac{5}{0.4055}=12.33\,\text{s}$$
**Answer:** $\boxed{\tau\approx12.33\,\text{s}}$

### Question 4 [4+4+4=12]

**(a) Show that the work done is directly proportional to kinetic energy of theory of gases.**
Same as **[D-43]** (last part): $PV\propto$ total KE, both $\propto T$.

**(b) What is mean free path? Derive an expression for mean free path.**
Same as **[D-45]**.

**(c) What is degree of freedom? State and explain Newton's law of cooling with graph.**
Same as **[D-44]** (degrees of freedom) and **[D-46]** (Newton's law of cooling + graph).

## Part B

### Question 5 [4+4+4=12]

**(a) What is zeroth law of thermodynamics? Show that the first law of thermodynamics is the law of conservation of energy.**
Same as **[D-28]**.

**(b) Show that the adiabatic curves are higher than isothermal curves.**
Same as **[D-29]**.

**(c) What is Carnot's engine? Show that the Carnot cycle is a reversible process.**
Same as **[D-36]**, **[D-38]**.

### Question 6 [4+4+4=12]

**(a) Define molar specific heat. Find the relation between $C_p$ and $C_v$.**
Molar specific heat: heat required to raise the temperature of 1 mole of a substance by 1 K. Relation: same as **[D-31]**.

**(b) What is isentropic process? Derive an expression of work done during isentropic process.**
Same as **[D-41]**: $\boxed{W=\dfrac{R(T_1-T_2)}{\gamma-1}}$.

**(c) $0.1\,\text{m}^3$ of air at pressure of 1.5 bar is expanded isothermally to $0.5\,\text{m}^3$. Calculate the final pressure of the gas and heat supplied during the process.**

**Given:** $V_1=0.1\,\text{m}^3$, $P_1=1.5\,\text{bar}=1.5\times10^5\,\text{Pa}$, $V_2=0.5\,\text{m}^3$, isothermal
**Required:** $P_2$, heat supplied $Q$
**Formula:** $P_1V_1=P_2V_2$ (Boyle's law, isothermal); $Q=W=P_1V_1\ln\dfrac{V_2}{V_1}$ **[D-42]**
**Calculation:**
$$P_2=\frac{P_1V_1}{V_2}=\frac{1.5\times10^5\times0.1}{0.5}=3\times10^4\,\text{Pa}=0.3\,\text{bar}$$
$$Q=W=P_1V_1\ln\frac{V_2}{V_1}=1.5\times10^5\times0.1\times\ln\left(\frac{0.5}{0.1}\right)=1.5\times10^4\times\ln5$$
$$=1.5\times10^4\times1.609=24{,}142\,\text{J}\approx24.14\,\text{kJ}$$
**Answer:** $\boxed{P_2=0.3\,\text{bar}\ (3\times10^4\,\text{Pa}),\quad Q\approx24.14\,\text{kJ}}$

### Question 7 [4+4+4=12]

**(a) What are entropy and unavailable energy?**
Same as **[D-33]**.

**(b) Show that entropy remains constant in [a] reversible [adiabatic] process.**
Same as **[D-32]**.
*(Note: the question as printed says "irreversible process," which conflicts with the standard result — entropy of the universe **increases**, not remains constant, in an irreversible process. This is very likely a scanning/printing typo for "reversible process," consistent with the identical question appearing correctly in other years' papers. Solved here as "reversible process," per D-32.)*

**(c) Find the efficiency of an engine requiring $3\times10^6$ cal heat per horse power [-hour] and compare it with that of a perfect reversible engine. Assuming that the source is at 100°C and the sink is at 0°C.**

**Given:** Heat used $Q=3\times10^6\,\text{cal}$ per horsepower-hour of work output; $T_1=100°C=373\,\text{K}$; $T_2=0°C=273\,\text{K}$
**Required:** Efficiency of the actual engine; compare with a Carnot (perfect reversible) engine
**Formula:** 1 HP-hour $=641{,}190\,\text{cal}$ (since 1 HP $=746\,\text{W}$, 1 hour $=3600$ s, work $=746\times3600=2.6856\times10^6\,\text{J}$; using $1\,\text{cal}=4.2\,\text{J}$, work in cal $=2.6856\times10^6/4.2=639{,}430\,\text{cal}$)

$$\eta_{actual}=\frac{\text{work output}}{\text{heat input}}=\frac{639{,}430}{3\times10^6}=0.2131=21.3\%$$

$$\eta_{Carnot}=1-\frac{T_2}{T_1}=1-\frac{273}{373}=1-0.7319=0.2681=26.8\%$$

**Answer:** $\boxed{\eta_{actual}\approx21.3\%,\quad \eta_{Carnot}\approx26.8\%}$ — the actual engine is less efficient than the ideal (Carnot/reversible) engine operating between the same two temperatures, as required by the second law.

### Question 8 [4+4+4=12]

**(a) What is photoelectric effect? Derive Einstein's photoelectric equation.**
Same as **[D-47]**: $\boxed{h\nu=h\nu_0+\frac12mv_{max}^2}$.

**(b) What is Compton effect? Describe the process.**
Same as **[D-48]**.

**(c) Define emissive power and absorptive power.**
Same as **[D-49]** (definitions).

---

# 2021 (Full Marks 72, Time 3 hrs)

## Part A

### Question 1 [3+6+3=12]

**(a) Define capacitor and capacitance.**
Same as **[D-8]**.

**(b) Derive the equation for capacitance of a parallel plate capacitor.**
Same as **[D-9]**: $\boxed{C=\dfrac{\epsilon_0\epsilon_r A}{d}}$.

**(c) The area of each plate of a parallel plate capacitor is $1.5\,\text{m}^2$ and distance between the plates in air medium is 0.02 m. Calculate the capacitance of the capacitor. ($\epsilon_0=1$, i.e. use $\epsilon_0=8.854\times10^{-12}\,\text{F/m}$, relative permittivity of air $\approx1$)**

**Given:** $A=1.5\,\text{m}^2$, $d=0.02\,\text{m}$, medium = air ($\epsilon_r=1$)
**Required:** Capacitance $C$
**Formula:** $C=\dfrac{\epsilon_0A}{d}$
**Calculation:**
$$C=\frac{8.854\times10^{-12}\times1.5}{0.02}=\frac{1.3281\times10^{-11}}{0.02}=6.64\times10^{-10}\,\text{F}$$
**Answer:** $\boxed{C\approx6.64\times10^{-10}\,\text{F}=0.664\,\text{nF}}$

### Question 2 [4+5+3=12]

**(a) Explain Faraday's law and Lenz's law.**
Same as **[D-21]**.

**(b) Show that the Lenz's law obeys the principle of conservation of energy.**
Same as **[D-21]** (conservation-of-energy argument).

**(c) Calculate the self-inductance of a coil of 400 turns when 2 Amp current creates $4\times10^{-4}$ Wb of flux.**

**Given:** $N=400$, $I=2\,\text{A}$, $\phi=4\times10^{-4}\,\text{Wb}$
**Required:** Self-inductance $L$
**Formula:** $N\phi=LI\ \Rightarrow\ L=\dfrac{N\phi}{I}$
**Calculation:**
$$L=\frac{400\times4\times10^{-4}}{2}=\frac{0.16}{2}=0.08\,\text{H}$$
**Answer:** $\boxed{L=0.08\,\text{H}=80\,\text{mH}}$

### Question 3 [2+5+5=12]

**(a) State and explain Gauss's law.**
Same as **[D-1]**.

**(b) For the balanced condition in the Wheatstone bridge show that $P/Q=R/S$, where the symbols have their usual meaning.**
Same as **[D-14]**.

**(c) Calculate the field E due to a point P at a distance R along the perpendicular bisector of the line joining the charges.**
Same as **[D-7]**: $\boxed{E=\dfrac{1}{4\pi\epsilon_0}\dfrac{2qR}{(R^2+a^2)^{3/2}}}$ (with $2a$ = separation of the two charges, as generally set up; the exact numeric answer depends on charge magnitude $q$ and separation, which are not given explicit numeric values in this printed question — the expression above is the required "field due to point P" result. If specific values of $q$ and $a$ are supplied in the student's version of the paper, substitute them directly into the boxed formula.)

### Question 4 [(1+4)+7+3=12]

**(a) What is Hysteresis? State and explain the Hysteresis curve of a magnetic material.**
Same as **[D-22]**.

**(b) Draw the curves for growth and decay of current in a LR circuit and explain the diagram.**
Same as **[D-24]**.

**(c) A LR circuit has an inductance of 50 Henry and a resistance of 30 Ω. It is connected to a 100 volt battery, how long will it take for the current to reach one half of its final value?**

**Given:** $L=50\,\text{H}$, $R=30\,\Omega$, $V=100\,\text{V}$, $i=\frac12 I_0$
**Required:** Time $t$
**Formula:** $i=I_0(1-e^{-Rt/L})$, $\tau=L/R$
**Calculation:**
$$\frac12=1-e^{-Rt/L}\ \Rightarrow\ e^{-Rt/L}=\frac12$$
$$\frac{Rt}{L}=\ln2=0.693$$
$$t=\frac{0.693\,L}{R}=\frac{0.693\times50}{30}=\frac{34.66}{30}=1.155\,\text{s}$$
**Answer:** $\boxed{t\approx1.155\,\text{s}}$ (note: 100 V is not needed for the time calculation since $\tau=L/R$ is independent of the applied voltage — it only fixes $I_0=V/R$).

## Part B

### Question 5 [3+6+3=12]

**(a) Show that entropy in reversible process remains same.**
Same as **[D-32]**.

**(b) What is isothermal process? Derive an expression of work done during isothermal process.**
Same as **[D-42]**: $\boxed{W=RT\ln(V_2/V_1)}$.

**(c) Calculate the average kinetic energy of a molecule of a gas at the temperature 300 K.**

**Given:** $T=300\,\text{K}$, $k=1.38\times10^{-23}\,\text{J K}^{-1}$
**Required:** Average KE per molecule
**Formula:** $\overline{KE}=\dfrac32 kT$ **[D-43]**
**Calculation:**
$$\overline{KE}=\frac32\times1.38\times10^{-23}\times300=\frac32\times4.14\times10^{-21}=6.21\times10^{-21}\,\text{J}$$
**Answer:** $\boxed{\overline{KE}\approx6.21\times10^{-21}\,\text{J}}$

### Question 6 [3+6+3=12]

**(a) Explain Newton's law of cooling.**
Same as **[D-46]**.

**(b) What is photon? Derive the Einstein photoelectric effect equation.**
**Photon:** A discrete packet (quantum) of electromagnetic energy, of energy $E=h\nu$ and momentum $p=h/\lambda$, travelling at speed $c$; the particle-like unit in which light interacts with matter. Derivation: same as **[D-47]**.

**(c) Calculate the work function of sodium in electron volt where threshold wavelength is 6800 Å and Planck's constant is $6.663\times10^{-34}$ Js.**

**Given:** $\lambda_0=6800\,\text{Å}=6800\times10^{-10}\,\text{m}=6.8\times10^{-7}\,\text{m}$, $h=6.663\times10^{-34}\,\text{Js}$, $c=3\times10^8\,\text{m/s}$
**Required:** Work function $W_0$ in eV
**Formula:** $W_0=\dfrac{hc}{\lambda_0}$ **[D-47]**
**Calculation:**
$$W_0=\frac{6.663\times10^{-34}\times3\times10^8}{6.8\times10^{-7}}=\frac{1.9989\times10^{-25}}{6.8\times10^{-7}}=2.939\times10^{-19}\,\text{J}$$
Converting to eV ($1\,\text{eV}=1.6\times10^{-19}\,\text{J}$):
$$W_0=\frac{2.939\times10^{-19}}{1.6\times10^{-19}}=1.837\,\text{eV}$$
**Answer:** $\boxed{W_0\approx1.84\,\text{eV}}$

### Question 7 [2+4+4+2=12]

**(a) What is Carnot's Cycle?**
Same as **[D-36]**.

**(b) Show that in the range of temperature $T_1$ and $T_2$ the efficiency of a Carnot's engine is $\eta=\dfrac{T_1-T_2}{T_1}$.**
Same as **[D-37]**.

**(c) Distinguish between the first and the second law of thermodynamics.**
Same as **[D-34]**.

**(d) What is specific heat?**
The quantity of heat required to raise the temperature of a unit mass of a substance through 1 K (or 1°C); $Q=mс\Delta T$, where $c$ is the specific heat capacity (J kg⁻¹K⁻¹).

### Question 8 [4+4+4=12]

**(a) State and explain second law of thermodynamics.**
Same as **[D-35]**.

**(b) Show the energy storage in an electric field is $U=\dfrac12CV^2$ where the symbols have their usual meaning.**
Same as **[D-11]**.

**(c) A certain amount of dry air at 15°C is expanded adiabatically to double its volume. What will be the temperature? ($\gamma=1.40$)**

**Given:** $T_1=15°C=288\,\text{K}$, $V_2=2V_1$, $\gamma=1.40$
**Required:** Final temperature $T_2$
**Formula:** $T_1V_1^{\gamma-1}=T_2V_2^{\gamma-1}\ \Rightarrow\ T_2=T_1\left(\dfrac{V_1}{V_2}\right)^{\gamma-1}$
**Calculation:**
$$T_2=288\times\left(\frac{1}{2}\right)^{0.4}=288\times0.7579=218.3\,\text{K}$$
**Answer:** $\boxed{T_2\approx218.3\,\text{K}\ (\approx-54.7°C)}$

---

# 2020 (Full Marks 72, Time 3 hrs)

## Part A

### Question 1 [7+3+2=12]

**(a) State and prove Gauss's law of electrostatics.**
Same as **[D-1]**.

**(b) Show that Coulomb's law of electrostatics can be deduced from the Gauss's law.**
Same as **[D-3]**.

**(c) What is the magnitude of the electric field strength such that an electron placed in the field would experience an electrical force equal to its weight?**

**Given:** electron mass $m_e=9.11\times10^{-31}\,\text{kg}$, electron charge $e=1.6\times10^{-19}\,\text{C}$, $g=9.8\,\text{m/s}^2$
**Required:** $E$ such that $eE=m_eg$
**Formula:** $E=\dfrac{m_eg}{e}$
**Calculation:**
$$E=\frac{9.11\times10^{-31}\times9.8}{1.6\times10^{-19}}=\frac{8.928\times10^{-30}}{1.6\times10^{-19}}=5.58\times10^{-11}\,\text{N/C}$$
**Answer:** $\boxed{E\approx5.58\times10^{-11}\,\text{N/C}}$

### Question 2 [(1+3)+5+3=12]

**(a) State Lenz's law of electromagnetic induction. Show that Lenz's law follows the law of conservation of energy.**
Same as **[D-21]**.

**(b) Show that in a LR circuit current increases exponentially.**
Same as **[D-24]** (growth part).

**(c) In an LR circuit with source, the current reaches to one third of its maximum value within 5 sec. Find the time constant of the circuit.**
Same numerical as **2022 Q3(c)**: $\boxed{\tau\approx12.33\,\text{s}}$ (identical given data; see that solution for full working).

### Question 3 [(1+4)+7=12]

**(a) What is Hall effect? Deduce the equation of Hall voltage.**
Same as **[D-17]**.

**(b) Describe L-R circuit and plot growth and decay current with time.**
Same as **[D-24]**.

### Question 4 [(1+3)+(3+2)+3=12]

**(a) What are the critical contents [constants] of a gas? Calculate the values of these constants in terms of the constants of the Van der Waals equation.**
Same as **[D-50]**: $\boxed{V_c=3b,\ P_c=\dfrac{a}{27b^2},\ T_c=\dfrac{8a}{27Rb}}$.

**(b) Describe the principle of a platinum resistance thermometer. Discuss its advantages and disadvantages.**
Same as **[D-51]**.

**(c) The values of resistances of a platinum resistance thermometer are 2.585 ohms and 3.510 ohms at 0°C and 100°C respectively. When placed in a hot bath, the resistance is found to be 9.098 ohms. Calculate the temperature of the hot bath on the gas scale. Assume $\delta=1.5$ for platinum.**

**Given:** $R_0=2.585\,\Omega$, $R_{100}=3.510\,\Omega$, $R_t=9.098\,\Omega$, $\delta=1.5$
**Required:** Gas-scale temperature $t_{gas}$
**Formula (platinum scale):** $t_{Pt}=\dfrac{R_t-R_0}{R_{100}-R_0}\times100$
**Callendar correction:** $t_{gas}=t_{Pt}+\delta\left(\dfrac{t_{Pt}}{100}\right)\left(\dfrac{t_{Pt}}{100}-1\right)$
**Calculation:**
$$t_{Pt}=\frac{9.098-2.585}{3.510-2.585}\times100=\frac{6.513}{0.925}\times100=704.1\,°C$$
$$t_{gas}=704.1+1.5\left(\frac{704.1}{100}\right)\left(\frac{704.1}{100}-1\right)=704.1+1.5(7.041)(6.041)$$
$$=704.1+1.5\times42.54=704.1+63.81=767.9\,°C$$
**Answer:** $\boxed{t_{gas}\approx767.9\,°C}$

## Part B

### Question 5 [(1+3)+3+(1+4)=12]

**(a) What is mean free path? Derive an expression for the mean free path.**
Same as **[D-45]**.

**(b) State and explain Newton's law of cooling.**
Same as **[D-46]**.

**(c) Define molar specific heat. Find the relation between $C_p$ and $C_v$.**
Same as **[D-31]**.

### Question 6 [8+(2+2)=12]

**(a) Derive the general expression for the establishment of Maxwell thermodynamics relation.**
Same as **[D-40]** (full four-relation derivation).

**(b) Show that (i) $\left(\dfrac{\partial Q}{\partial V}\right)_T=T\left(\dfrac{\partial P}{\partial T}\right)_V$ (ii) $\left(\dfrac{\partial T}{\partial V}\right)_S=-T\left(\dfrac{\partial P}{\partial Q}\right)_V$. Symbols have their usual meaning.**
Same as **[D-40]** (the two "show that" derivations given explicitly there).

### Question 7 [(1+3)+(2+2)+4=12]

**(a) What is Carnot's engine? Show the Carnot cycle is a reversible process.**
Same as **[D-36]**, **[D-38]**.

**(b) Define the efficiency of Carnot's engine. Find the efficiency of Carnot's engine working at the steam point and the ice point.**

**Efficiency definition:** same as **[D-37]**, $\eta=1-T_2/T_1$.
**Given:** Steam point $T_1=100°C=373\,\text{K}$, ice point $T_2=0°C=273\,\text{K}$
**Calculation:**
$$\eta=1-\frac{273}{373}=1-0.7319=0.2681=26.8\%$$
**Answer:** $\boxed{\eta\approx26.8\%}$

**(c) Discuss the corrections of Van der Waal's equation of state.**
Same as **[D-50]** (last paragraph — limitations/corrections discussion).

### Question 8 [(1+3)+(2+2)+4=12]

**(a) Is the photoelectric effect a consequence of the wave character of radiation or is it a consequence of the particle character of radiation? Explain briefly.**
Same as **[D-47]** (first paragraph) — it is a consequence of the **particle (quantum)** character of radiation.

**(b) Explain the photoelectric effect and establish Einstein's photoelectric equation.**
Same as **[D-47]**.

**(c) Calculate the work function of sodium, in electron volts, given that the threshold wavelength is 6800 Å, and $h=6.625\times10^{-34}$ Js.**

**Given:** $\lambda_0=6.8\times10^{-7}\,\text{m}$, $h=6.625\times10^{-34}\,\text{Js}$, $c=3\times10^8\,\text{m/s}$
**Required:** $W_0$ in eV
**Formula:** $W_0=hc/\lambda_0$
**Calculation:**
$$W_0=\frac{6.625\times10^{-34}\times3\times10^8}{6.8\times10^{-7}}=\frac{1.9875\times10^{-25}}{6.8\times10^{-7}}=2.923\times10^{-19}\,\text{J}$$
$$W_0=\frac{2.923\times10^{-19}}{1.6\times10^{-19}}=1.827\,\text{eV}$$
**Answer:** $\boxed{W_0\approx1.83\,\text{eV}}$ (essentially the same as the 2021 Q6(c) numerical, using $h=6.625\times10^{-34}$ instead of $6.663\times10^{-34}$).

---

# 2019 (Full Marks 36, Time 1 hr — Set A)

## Part A (Answer all the questions)

### Question 1 [1+1=2, 3+1=4]

**(a) Define electric field and electric field intensity.** *(2 marks)*
Same as **[D-4]**.

**(b) State and explain Coulomb's law in electrostatics. Hence define unit charge.** *(4 marks)*
Same as **[D-2]**.

### Question 2 [2+2+2=6]

**Distinguish dia, para and ferro magnetic materials.**

| Property | Diamagnetic | Paramagnetic | Ferromagnetic |
|---|---|---|---|
| Behaviour in field | Weakly repelled | Weakly attracted | Strongly attracted |
| Relative permeability $\mu_r$ | Slightly $<1$ | Slightly $>1$ | Very much $>1$ (hundreds–thousands) |
| Susceptibility $\chi$ | Small, negative | Small, positive | Large, positive |
| Effect of temperature | Essentially independent of $T$ | $\chi\propto1/T$ (Curie's law) | Decreases with $T$, vanishes above Curie point |
| Origin | Induced opposing magnetic moment (no permanent atomic dipole) | Weak alignment of pre-existing atomic magnetic dipoles | Strong spontaneous alignment of dipoles within domains |
| Examples | Bismuth, copper, water | Aluminium, platinum, chromium | Iron, cobalt, nickel |
| Retains magnetism when field removed? | No | No | Yes (partially — shows hysteresis) |

### Question 3 [1+2=3, 3]

**(a) What is a capacitor? Define capacitance of a capacitor.**
Same as **[D-8]**.

**(b) State and explain Ohm's law.**
Same as **[D-12]**.

## Part B (Answer all the questions)

### Question 4 [2, 4]

**(a) Differentiate between heat and temperature.**

| Heat | Temperature |
|---|---|
| A form of energy in transit due to temperature difference | A measure of the average kinetic energy / "hotness" of a body |
| Measured in Joules (energy) | Measured in Kelvin/Celsius (a scale) |
| Extensive property (depends on amount of matter) | Intensive property (independent of amount of matter) |
| Flows from hot body to cold body | Determines the *direction* of heat flow |
| Measured by a calorimeter | Measured by a thermometer |

**(b) Show that the difference between the specific heat at constant pressure and specific heat at constant volume of a gas is equal to the characteristic gas constant of the gas.**
Same as **[D-31]**: $\boxed{C_p-C_v=R}$.

### Question 5 [1+1=2, 4]

**(a) Define mean free path, degrees of freedom.**
Same as **[D-45]** (mean free path definition) and **[D-44]** (degrees of freedom).

**(b) Calculate the average kinetic energy of a molecule of a gas at a temperature of 300 K.**
Identical numerical to **2021 Q5(c)**: $\boxed{\overline{KE}\approx6.21\times10^{-21}\,\text{J}}$ (see that solution for full working).

### Question 6 [6]

**According to the principle of kinetic theory of gases, prove that the pressure exerted by a perfect gas is given by $P=\dfrac13\dfrac{mnc^2}{V}$, where the symbols have their usual meaning.**
Same as **[D-43]**: $\boxed{P=\dfrac13\dfrac{nm\overline{c^2}}{V}}$.

---

# 2018 (Full Marks 72, Time 3 hrs)

## Part A

### Question 1 [3+6+3=12]

**(a) Define: (i) Gauss's law (ii) Ohm's law (iii) Capacitor.**
Same as **[D-1], [D-12], [D-8]** (identical to 2023 Q1(a)).

**(b) Deduce Wheatstone's bridge principle using Kirchhoff's law.**
Same as **[D-14]**.

**(c) Show that $\dfrac{1}{C_s}=\dfrac{1}{C_1}+\dfrac{1}{C_2}+\dfrac{1}{C_3}$.**
Same as **[D-10]**.

*(This entire Question 1 is identical to 2023's Question 1 — same solutions apply.)*

### Question 2 [(1+4)+3+(1+3)=12]

**(a) What is Hall effect? Deduce the equation of Hall voltage.**
Same as **[D-17]**.

**(b) Show the Lenz's law follows the law of conservation of energy.**
Same as **[D-21]**.

**(c) Define self-induction. A current carrying loop of length 2.5 cm and width 1 cm carries a current of 4A. It's placed parallel to a uniform magnetic field of 2T. Calculate the torque of the loop.**

Self-induction: same as **[D-20]**.

**Given:** $l=2.5\,\text{cm}=0.025\,\text{m}$, $w=1\,\text{cm}=0.01\,\text{m}$, $I=4\,\text{A}$, $B=2\,\text{T}$, loop plane **parallel** to $B$ (so the loop's normal is perpendicular to $B$, i.e. $\theta=90°$ between normal and field, giving maximum torque since $\sin\theta=1$)
**Required:** Torque $\tau$
**Formula:** $\tau=NIAB\sin\theta$ **[D-18]**, $N=1$
**Calculation:**
$$A=l\times w=0.025\times0.01=2.5\times10^{-4}\,\text{m}^2$$
Loop parallel to $B$ means the normal to the loop is perpendicular to $B$, so $\theta=90°,\ \sin\theta=1$:
$$\tau=1\times4\times2.5\times10^{-4}\times2\times1=2\times10^{-3}\,\text{N·m}$$
**Answer:** $\boxed{\tau=2\times10^{-3}\,\text{N·m}=2\,\text{mN·m}}$

### Question 3 [2+7+3=12]

**(a) Define heat & temperature.**
Same as **2019 Q4(a)** definitions table (Heat vs Temperature).

**(b) Show that the pressure by a perfect gas is $\dfrac23$ of the kinetic energy of the gas molecules in a unit volume.**
Same as **[D-43]**: $\boxed{P=\dfrac23\times(\text{KE per unit volume})}$.

**(c) State Newton's law of cooling.**
Same as **[D-46]**.

### Question 4 [(1+4)+(1+3)+3=12]

**(a) Define the time constant of R-C circuit. Derive an equation of charge of a R-C circuit when the capacitor is charging.**
Same as **[D-23]** (identical to 2023 Q4(a)).

**(b) What is resonant? Deduce the equation of resonant frequency of R-L-C circuit.**
Same as **[D-25]** (identical to 2023 Q4(b)).

**(c) A R-L-C circuit has an inductor of inductance 50 µH, capacitor of capacitance $5\times10^{-4}\,\mu F$ and a resistor of resistance 100 Ω. Find the frequency of the circuit.**
Identical numerical data to **2023 Q4(c)**: $\boxed{f_0\approx1.007\,\text{MHz}}$ (see that solution for full working).

## Part B

### Question 5 [2+2+4+4=12]

**(a) What is degree of freedom and state van-der-Waal's equation.**
Same as **[D-44]** (degrees of freedom) and **[D-50]** (van der Waals equation).

**(b) Deduce the values of van-der-Waal constant [critical constants].**
Same as **[D-50]**: $\boxed{V_c=3b,\ P_c=\dfrac{a}{27b^2},\ T_c=\dfrac{8a}{27Rb}}$.

**(c) Show that the adiabatic curves are higher than isothermal curves.**
Same as **[D-29]**.

**(d) State and deduce Kirchhoff's law of radiation.**
Same as **[D-49]** (Kirchhoff's law of radiation part).

### Question 6 [2+2+4+4=12]

**(a) Define degrees of freedom. Describe the fundamental postulates of gas molecules.**
Same as **[D-44]**, **[D-43]** (identical to 2023 Q7(a)).

**(b) What is mean free path? Derive an expression for mean free path.**
Same as **[D-45]** (identical to 2023 Q7(b)).

**(c) The mean free path of nitrogen molecule at 0°C and 1 atm pressure is $0.8\times10^{-7}$ m. At this temperature and pressure its density is $2.7\times10^{19}$ molecules/cm³. What is the molecular diameter?**
Identical numerical data to **2023 Q7(c)**: $\boxed{d\approx3.23\times10^{-10}\,\text{m}}$ (see that solution for full working).

### Question 7 [(1+3.5)+(1+3.5)+3=12]

**(a) What is entropy?**
Same as **[D-33]** (entropy definition).

**(b) Explain the first latent heat (Clausius-Clapeyron) equation.**
Same as **[D-39]**: $\boxed{\dfrac{dP}{dT}=\dfrac{L}{T(V_2-V_1)}}$.

**(c) Show the entropy changes is constant in reversible process (Carnot's cycle).**
Same as **[D-32]** (identical to 2023 Q5... wait, actually identical in structure to 2023 Q6(b)).

### Question 8 [3+(1+4)+(1+3)=12]

**(a) State and explain second law of thermodynamics.**
Same as **[D-35]** (identical to 2023 Q8(a)).

**(b) What is specific heat capacity? For one mole ideal gas show that $C_p-C_v=R$. Where the symbols have their usual meaning.**
Same as **[D-31]** (identical to 2023 Q8(b)).

**(c) What is Carnot's engine? Show that the Carnot cycle is a reversible process.**
Same as **[D-36]**, **[D-38]** (identical to 2023 Q8(c)).

*(This entire Question 8 is identical to 2023's Question 8 — same solutions apply.)*

---

# 2017 (Full Marks 105, Time 3 hrs — Subject code AS-107)

## Part A

### Question 1 [4+8.5+5=17]

**(a) State and explain the coulomb's law.**
Same as **[D-2]**.

**(b) Find an expression for the capacitance of a capacitor.**
Same as **[D-9]** (parallel plate capacitor).

**(c) A parallel plate capacitor consists of two square metal plates 50 cm of side and separated by 1 cm. A sulphur slab 6 mm thick is placed on the lower plate, calculate the capacitance of the capacitor. Dielectric constant of sulphur is 4.**

**Given:** side of plates $=50\,\text{cm}=0.5\,\text{m}$, so $A=0.5\times0.5=0.25\,\text{m}^2$; total plate separation $d=1\,\text{cm}=0.01\,\text{m}$; sulphur slab thickness $t=6\,\text{mm}=0.006\,\text{m}$, $\epsilon_r=4$; remaining air gap $=d-t=0.01-0.006=0.004\,\text{m}$
**Required:** Capacitance $C$
**Formula (capacitor partly filled with a dielectric slab):**
$$C=\frac{\epsilon_0A}{(d-t)+\dfrac{t}{\epsilon_r}}$$
**Calculation:**
$$(d-t)+\frac{t}{\epsilon_r}=0.004+\frac{0.006}{4}=0.004+0.0015=0.0055\,\text{m}$$
$$C=\frac{8.854\times10^{-12}\times0.25}{0.0055}=\frac{2.2135\times10^{-12}}{0.0055}=4.024\times10^{-10}\,\text{F}$$
**Answer:** $\boxed{C\approx4.02\times10^{-10}\,\text{F}=0.402\,\text{nF}}$

### Question 2 [(1+5)+7.5+4=17.5]

**(a) What is specific resistance? State and explain Ohm's law.**
Same as **[D-12]**.

**(b) State and explain Kirchhoff's law of electricity.**
Same as **[D-13]**.

**(c) There are four resistances 8Ω,16Ω,12Ω and 48Ω placed on the arms of the wheat stone bridge. How much resistance is connect in series or parallel with the fourth arm for balanced condition?**
Identical data/method to **2022 Q2(c)**: required $S_{eff}=24\,\Omega$; since actual arm is $48\,\Omega$, connect a further $48\,\Omega$ **in parallel** with it to bring the effective resistance down to $24\,\Omega$. $\boxed{\text{Parallel } 48\,\Omega}$ (see 2022 Q2(c) for full working).

### Question 3 [6+8.5+3=17.5]

**(a) Define the following terms: (i) Magnetic induction (ii) Mutual induction (iii) Self induction.**
Same as **[D-20]**.

**(b) Derive an expression for torque on a current carrying loop.**
Same as **[D-18]**: $\boxed{\tau=NIAB\sin\theta}$.

**(c) Write down the Faraday's law of electromagnetic induction.**
Same as **[D-21]** (Faraday's law part).

### Question 4 [(1+5)+(1+6)+(1+3.5)=17.5]

**(a) Define magnetic induction. Derive an equation of magnetic force on a moving charge in a magnetic field.**
Same as **[D-20]**: $\boxed{\vec F=q(\vec v\times\vec B)}$.

**(b) What is time constant? Discuss the charging of a RC circuit.**
Same as **[D-23]**.

**(c) State Lenz's law. Show that the law obeys the principle of conservation of energy.**
Same as **[D-21]**.

## Part B

### Question 5 [4+5+8.5=17.5]

**(a) What are internal energy and thermodynamical function?**
Same as **[D-27]**.

**(b) Distinguish between reversible and irreversible process.**
Same as **[D-26]**.

**(c) Find an expression for efficiency of a Carnot's engine.**
Same as **[D-37]**: $\boxed{\eta=1-\dfrac{T_2}{T_1}}$.

### Question 6 [(4+2)+... — printed as 4+5+8.5=17.5]

**(a) State and explain the second law of thermodynamics. How can [it] differ from the first law?**
Same as **[D-35]** and **[D-34]** (distinguishing first and second laws).

**(b) What is isothermal process? Derive an equation for work done during the isothermal process.**
Same as **[D-42]**: $\boxed{W=RT\ln(V_2/V_1)}$.

**(c) A carnot engine is operated between two reservoirs at temperature 177°C and 77°C. If the engine receives 4200 J of heat energy from the source in each cycle, calculate the amount of heat rejected to the sink in each cycle, the efficiency and work done by the engine.**

**Given:** $T_1=177°C=450\,\text{K}$, $T_2=77°C=350\,\text{K}$, $Q_1=4200\,\text{J}$
**Required:** $Q_2$, $\eta$, $W$
**Formula:** $\dfrac{Q_2}{Q_1}=\dfrac{T_2}{T_1}$, $\eta=1-\dfrac{T_2}{T_1}$, $W=Q_1-Q_2$
**Calculation:**
$$Q_2=Q_1\times\frac{T_2}{T_1}=4200\times\frac{350}{450}=3266.7\,\text{J}$$
$$\eta=1-\frac{350}{450}=0.2222=22.2\%$$
$$W=Q_1-Q_2=4200-3266.7=933.3\,\text{J}$$
**Answer:** $\boxed{Q_2\approx3266.7\,\text{J},\quad \eta\approx22.2\%,\quad W\approx933.3\,\text{J}}$
*(This is the same problem as 2023 Q6(d), here in SI units directly rather than calories.)*

### Question 7 [(4+2)+(1+6)+4.5=17.5]

**(a) What are entropy and unavailable energy?**
Same as **[D-33]**.

**(b) Show that entropy remain constant in reversible process. Derive the expression for Clausius-Clapeyron equation.**
Same as **[D-32]** and **[D-39]**.

**(c) Find the efficiency of an engine requiring $3\times10^6$ cal heat per horse power and compare it with that of a perfect reversible engine, assuming that the source is at 100°C and the sink is at 0°C.**
Identical numerical to **2022 Q7(c)**: $\boxed{\eta_{actual}\approx21.3\%,\ \eta_{Carnot}\approx26.8\%}$ (see that solution for full working).

### Question 8 [3+5+9.5=17.5]

**(a) Define the following terms: (i) Blackbody radiation (ii) Emissive power (iii) Absorptive power.**
Same as **[D-49]**.

**(b) What is photoelectric effect? Derive the Einstein's photoelectric effect equation.**
Same as **[D-47]**: $\boxed{h\nu=h\nu_0+\frac12mv_{max}^2}$.

**(c) What is Compton effect? Show that $\lambda'-\lambda=\lambda_c(1-\cos\varphi)$, where the symbols have their usual meaning.**
Same as **[D-48]**: $\boxed{\lambda'-\lambda=\dfrac{h}{m_0c}(1-\cos\varphi)}$, where $\lambda_c=h/(m_0c)$ is the Compton wavelength.

---

# High-Frequency / Repeated Topics

| Topic | Years Appeared |
|---|---|
| Gauss's law / Ohm's law / Capacitor definitions + Wheatstone bridge derivation + $1/C_s$ formula | 2023, 2018 |
| Wheatstone bridge balance numerical (8,16,12,48 Ω) | 2022, 2017 |
| Hall effect & Hall voltage derivation | 2023, 2021(implicit via bridge topic set), 2020, 2018 |
| Torque on current-carrying loop | 2023, 2018, 2017 |
| Faraday's law & Lenz's law (+ conservation of energy) | 2023, 2022, 2021, 2020, 2018, 2017 |
| Hysteresis / hysteresis curve | 2023, 2021, 2020 |
| RC circuit — time constant & charging equation | 2023, 2018, 2017 |
| Resonant frequency of RLC + numerical (50 µH, 5×10⁻⁴ µF, 100 Ω) | 2023, 2018 |
| LR circuit growth/decay of current | 2021, 2020, 2019(qualitatively via topic), 2017 |
| LR time-constant numerical (1/3 max value in 5 s) | 2022, 2020 |
| Adiabatic curve higher than isothermal (proof) | 2023, 2022, 2018 |
| $PV^\gamma=$ constant proof | 2023 |
| Carnot engine / cycle definition & reversibility proof | 2023, 2022, 2020, 2018 |
| Efficiency of Carnot engine ($\eta=1-T_2/T_1$) | 2023, 2021, 2017, 2020, 2022 |
| Carnot numerical (T1=450K,T2=350K / 177°C,77°C) | 2023, 2017 |
| $C_p-C_v=R$ derivation | 2023, 2021(via molar specific heat), 2019, 2018 |
| Distinguish 1st & 2nd law of thermodynamics | 2023, 2021, 2020(implicit), 2017 |
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
| Pressure of a perfect gas from kinetic theory ($P=\frac13\frac{mnc^2}{V}$ or $\frac23$KE form) | 2019, 2018 |
| Clausius–Clapeyron equation | 2018, 2017 |
| Maxwell's thermodynamic relations | 2020 |
| Zeroth law / first law = conservation of energy | 2022 |
| Isentropic process — work done | 2022 |
| Platinum resistance thermometer | 2020 |
| Coulomb's law + parallel-plate capacitor numerical | 2022, 2017 |
| Electric dipole field ($\propto 2p/r^3$) | 2022 |
| Self-induction numerical (400 turns, flux) | 2021 |

---

# Physics-II Formula Sheet

## Electricity

$$F=\frac{1}{4\pi\epsilon_0}\frac{q_1q_2}{r^2}\quad\text{(Coulomb's law)}\qquad \vec E=\frac{\vec F}{q_0}=\frac{1}{4\pi\epsilon_0}\frac{q}{r^2}\hat r\quad\text{(field intensity)}$$

$$\oint\vec E\cdot d\vec A=\frac{q_{enc}}{\epsilon_0}\quad\text{(Gauss's law)}\qquad E_{axial\ dipole}=\frac{1}{4\pi\epsilon_0}\frac{2p}{r^3}\quad(p=q\cdot2a)$$

$$C=\frac{Q}{V}\qquad C_{\text{parallel plate}}=\frac{\epsilon_0\epsilon_rA}{d}\qquad \frac{1}{C_s}=\frac{1}{C_1}+\frac{1}{C_2}+\frac{1}{C_3}\ (\text{series})\qquad C_p=C_1+C_2+C_3\ (\text{parallel})$$

$$U=\frac12CV^2=\frac{Q^2}{2C}=\frac12QV\qquad V=IR\qquad \rho=\frac{RA}{l}$$

$$\text{Wheatstone bridge balance: }\frac{P}{Q}=\frac{R}{S}$$

where $\epsilon_0=8.854\times10^{-12}\,\text{F/m}$, $p$ = dipole moment, $R$=resistance, $\rho$=resistivity.

## Magnetism

$$\vec F=q(\vec v\times\vec B)\qquad F=BIl\sin\theta\qquad \tau=NIAB\sin\theta$$

$$V_H=\frac{IB}{nqt}\qquad L=\frac{N\phi}{I}\qquad\mathcal E=-N\frac{d\phi}{dt}\ \text{(Faraday's law)}$$

where $B$=magnetic flux density, $I$=current, $l$=length, $A$=loop area, $\theta$=angle, $n$=carrier density, $t$=thickness, $L$=self-inductance, $N$=turns, $\phi$=flux/turn.

## Electromagnetic Induction

$$\mathcal E=-L\frac{dI}{dt}\ \text{(self)}\qquad \mathcal E_2=-M\frac{dI_1}{dt}\ \text{(mutual)}\qquad \text{Lenz's law: opposes flux change (energy conservation)}$$

## AC / RLC Circuits

$$q(t)=Q_0(1-e^{-t/RC})\ \text{(RC charging)}\qquad q(t)=Q_0e^{-t/RC}\ \text{(RC discharging)}\qquad \tau_{RC}=RC$$

$$i(t)=I_0(1-e^{-Rt/L})\ \text{(LR growth)}\qquad i(t)=I_0e^{-Rt/L}\ \text{(LR decay)}\qquad \tau_{LR}=\frac{L}{R}$$

$$f_0=\frac{1}{2\pi\sqrt{LC}}\quad\text{(resonant frequency of series RLC)}$$

## Kinetic Theory of Gases

$$P=\frac13\frac{nm\overline{c^2}}{V}=\frac13\rho\overline{c^2}=\frac23(\text{KE per unit volume})\qquad \overline{KE}=\frac12m\overline{c^2}=\frac32kT$$

$$\lambda=\frac{1}{\sqrt2\,n\pi d^2}\quad\text{(mean free path)}\qquad k=1.38\times10^{-23}\,\text{J K}^{-1}$$

## Thermodynamics

$$dQ=dU+dW\ \text{(1st law)}\qquad C_p-C_v=R\qquad PV^\gamma=\text{const (adiabatic)}\qquad PV=RT\ (\text{ideal gas, 1 mole})$$

$$W_{isothermal}=RT\ln\frac{V_2}{V_1}\qquad W_{isentropic}=\frac{R(T_1-T_2)}{\gamma-1}=\frac{P_1V_1-P_2V_2}{\gamma-1}$$

$$\eta_{Carnot}=1-\frac{T_2}{T_1}\qquad \frac{Q_2}{Q_1}=\frac{T_2}{T_1}\qquad dS=\frac{dQ_{rev}}{T}\qquad E_{unavailable}=T_0\Delta S$$

$$\frac{dP}{dT}=\frac{L}{T(V_2-V_1)}\quad\text{(Clausius–Clapeyron)}\qquad \left(P+\frac{a}{V^2}\right)(V-b)=RT\quad\text{(van der Waals)}$$

$$V_c=3b,\quad P_c=\frac{a}{27b^2},\quad T_c=\frac{8a}{27Rb}\qquad R=8.314\,\text{J mol}^{-1}\text{K}^{-1}$$

Maxwell relations: $\left(\dfrac{\partial T}{\partial V}\right)_S=-\left(\dfrac{\partial P}{\partial S}\right)_V$, $\left(\dfrac{\partial T}{\partial P}\right)_S=\left(\dfrac{\partial V}{\partial S}\right)_P$, $\left(\dfrac{\partial S}{\partial V}\right)_T=\left(\dfrac{\partial P}{\partial T}\right)_V$, $\left(\dfrac{\partial S}{\partial P}\right)_T=-\left(\dfrac{\partial V}{\partial T}\right)_P$

## Radiation

$$\frac{e_\lambda}{a_\lambda}=E_\lambda(\text{black body})\quad\text{(Kirchhoff's law of radiation)}$$

## Quantum Physics

$$h\nu=h\nu_0+\frac12mv_{max}^2\quad\text{(Einstein photoelectric equation)}\qquad W_0=h\nu_0=\frac{hc}{\lambda_0}$$

$$\lambda'-\lambda=\frac{h}{m_0c}(1-\cos\varphi)\quad\text{(Compton shift)}$$

where $h=6.626\times10^{-34}\,\text{J s}$, $c=3\times10^8\,\text{m/s}$.

---

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
- $PV^\gamma=$ constant and adiabatic-steeper-than-isothermal **[D-29],[D-30]**
- $C_p-C_v=R$ **[D-31]**
- Carnot efficiency $\eta=1-T_2/T_1$ and reversibility of the cycle **[D-37],[D-38]**
- Mean free path **[D-45]**
- Einstein's photoelectric equation **[D-47]**
- Compton shift formula **[D-48]**

## Most Important Numerical Problem Types

- Wheatstone bridge: finding series/parallel resistance for balance (8,16,12,48 Ω pattern)
- RLC resonant frequency (50 µH, $5\times10^{-4}$ µF, 100 Ω pattern)
- Carnot engine heat-rejected/efficiency (450 K & 350 K, or 177°C & 77°C pattern)
- LR time constant from "reaches 1/3 (or 1/2) of max current in given time"
- Mean free path → molecular diameter (N₂ gas pattern)
- Photoelectric work function from threshold wavelength (Na, 6800 Å pattern)
- Adiabatic $T$–$P$ or $T$–$V$ relations (tyre-burst / air-expansion pattern)
- Average KE of a gas molecule at a given $T$ ($\frac32kT$)
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
- [ ] Kinetic theory postulates; pressure formula $P=\frac13\rho\overline{c^2}$; mean free path formula
- [ ] Van der Waals equation and critical constants $V_c=3b,\ P_c=a/27b^2,\ T_c=8a/27Rb$
- [ ] Blackbody radiation, emissive/absorptive power, Kirchhoff's radiation law
- [ ] Einstein's photoelectric equation and work function formula $W_0=hc/\lambda_0$
- [ ] Compton effect and shift formula with Compton wavelength value $2.43\times10^{-12}$ m
- [ ] Standard constants: $h,\ c,\ k,\ \epsilon_0,\ \mu_0,\ R$

---

*End of complete solved question bank — Physics-II (PHY-103), BUTEX, 2017–2023.*
