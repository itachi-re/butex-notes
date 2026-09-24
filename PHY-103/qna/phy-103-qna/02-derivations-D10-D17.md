# Physics-II (PHY-103) — Standard Derivations D-10 to D-17

[← Index](README.md) · [Previous](01-derivations-D01-D09.md) · [Next →](03-derivations-D18-D23.md)

## [D-10] Capacitors in Series — Show $\frac{1}{C_s}=\frac{1}{C_1}+\frac{1}{C_2}+\frac{1}{C_3}$

In series, each capacitor carries the same charge $Q$ (charge induced by influence), but the potential differences add:

$$
V=V_1+V_2+V_3=\frac{Q}{C_1}+\frac{Q}{C_2}+\frac{Q}{C_3}
$$

The equivalent single capacitor $C_s$ storing the same $Q$ at total potential $V$ satisfies $V=Q/C_s$. Therefore

$$
\frac{Q}{C_s}=Q\left(\frac{1}{C_1}+\frac{1}{C_2}+\frac{1}{C_3}\right)
$$

$$
\frac{1}{C_s}=\frac{1}{C_1}+\frac{1}{C_2}+\frac{1}{C_3}
$$

## [D-11] Energy Stored in a Charged Capacitor — $U=\frac{1}{2}CV^2$

Work is needed to transfer charge from one plate to the other against the growing potential. At an intermediate stage, charge $q$ has been transferred; potential is $v=q/C$. Work to move $dq$ further:

$$
dW=v\,dq=\frac{q}{C}dq
$$

Total work to charge the capacitor to final charge $Q$:

$$
W=\int_0^Q \frac{q}{C}dq=\frac{Q^2}{2C}
$$

Using $Q=CV$:

$$
U=\frac{Q^2}{2C}=\frac{1}{2}CV^2=\frac{1}{2}QV
$$

This work is stored as electrostatic potential energy in the field between the plates.

## [D-12] Ohm's Law and Specific Resistance

**Ohm's law:** At constant temperature, the current through a conductor is directly proportional to the potential difference across it:

$$
V=IR
$$

where $V$ = p.d. (V), $I$ = current (A), $R$ = resistance ($\Omega$).

**Specific resistance (resistivity), $\rho$:** The resistance of a conductor is $R=\rho\frac{l}{A}$, so $\rho=\frac{RA}{l}$ — the resistance of a unit length, unit cross-section sample of the material. It is a material property, independent of the conductor's dimensions, with SI unit $\Omega\cdot\text{m}$.

## [D-13] Kirchhoff's Laws

**First law (current/junction law):** The algebraic sum of currents meeting at a junction is zero: $\sum I = 0$ (conservation of charge).

**Second law (voltage/loop law):** In any closed loop of a circuit, the algebraic sum of the EMFs equals the algebraic sum of the IR drops: $\sum \mathcal{E}=\sum IR$ (conservation of energy).

## [D-14] Wheatstone Bridge — Principle from Kirchhoff's Laws; Balance Condition $P/Q=R/S$

Four resistances $P,Q,R,S$ form a bridge ABCD, battery between A and C, galvanometer between B and D. Let currents be $I_1$ (through P), $I_2$ (through Q), $I_g$ (through galvanometer), etc. Applying Kirchhoff's first law at B and D, and second law to loops ABD and BCD:

Loop ABDA: $I_1P+I_gG-I_3R=0$

Loop BCDB: $(I_1-I_g)Q-(I_3+I_g)S-I_gG=0$

**At balance**, no current flows through the galvanometer, $I_g=0$. Then $I_1=I_2$ (current through P = through Q) and $I_3=I_4$ (through R = through S). The loop equations reduce to:

$$
I_1P=I_3R \qquad\text{and}\qquad I_1Q=I_3S
$$

Dividing:

$$
\frac{P}{Q}=\frac{R}{S}
$$

This is the balance condition of the Wheatstone bridge, used to find an unknown resistance when the other three are known.

## [D-15] Specific Resistance / Ohm's law

See **[D-12]**.

## [D-16] Kirchhoff's Second Law of Electrostatics/Electricity

See **[D-13]**.

## [D-17] Hall Effect — Definition and Derivation of Hall Voltage

**Hall effect:** When a current-carrying conductor (or semiconductor) is placed in a magnetic field perpendicular to the current, a transverse potential difference (Hall voltage) develops across the conductor, perpendicular to both the current and the field.

**Derivation:** Consider a slab of thickness $t$, width $w$, carrying current $I$ along $x$, with magnetic field $B$ along $z$. Charge carriers (charge $q$, drift velocity $v_d$) experience the Lorentz force $F=qv_dB$ along $y$, causing charge accumulation on one face until the resulting transverse electric field $E_H$ balances the magnetic force:

$$
qE_H=qv_dB\ \Rightarrow\ E_H=v_dB
$$

Since current $I=nqv_dA=nqv_d(wt)$, so $v_d=\dfrac{I}{nqwt}$. Hall voltage $V_H=E_H\cdot w$:

$$
V_H=v_dBw=\frac{IB}{nqt}
$$

$$
V_H=\frac{IB}{nqt}=R_H\frac{IB}{t}
$$

where $R_H=1/(nq)$ is the Hall coefficient, $n$ = charge carrier density.

---

[← Index](README.md) · [Previous](01-derivations-D01-D09.md) · [Next →](03-derivations-D18-D23.md)
