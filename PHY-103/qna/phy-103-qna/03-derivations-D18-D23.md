# Physics-II (PHY-103) — Standard Derivations D-18 to D-23

[← Index](README.md) · [Previous](02-derivations-D10-D17.md) · [Next →](04-derivations-D24-D30.md)

## [D-18] Torque on a Current-Carrying Loop in a Magnetic Field

A rectangular loop of length $l$, breadth $b$, carrying current $I$, placed in field $B$ with the plane of the loop making angle $\theta$ with $B$ (normal to loop makes angle $(90^\circ-\theta)$, or equivalently the standard form uses $\theta$ as angle between normal and $B$). Consider the loop's normal at angle $\theta$ to $B$. Forces on the two sides of length $l$ are $F=BIl$, equal and opposite, separated by $b\sin\theta$ (moment arm), forming a couple:

$$
\tau=F\times b\sin\theta=BIl\cdot b\sin\theta=BIA\sin\theta
$$

For $N$ turns:

$$
\tau=NIAB\sin\theta
$$

where $A=lb$ is the loop area and $\theta$ is the angle between the normal to the loop and $\vec{B}$. In vector form, $\vec{\tau}=N I\vec{A}\times\vec{B} = \vec{m}\times\vec{B}$, where $\vec{m}=NI\vec{A}$ is the magnetic moment.

## [D-19] Magnetic Force on a Straight Current-Carrying Conductor (Numerical formula)

$$
F=BIl\sin\theta
$$

where $B$ = magnetic flux density (T), $I$ = current (A), $l$ = length of conductor (m), $\theta$ = angle between conductor and field.

## [D-20] Magnetic Induction; Force on a Moving Charge (Lorentz Force)

**Magnetic induction ($\vec{B}$):** the magnetic flux density; force per unit (charge×velocity) experienced by a moving charge, $\vec{F}=q\vec{v}\times\vec{B}$.

**Derivation of force on a moving charge:** A charge $q$ moving with velocity $\vec{v}$ in field $\vec{B}$ experiences a force perpendicular to both $\vec{v}$ and $\vec{B}$:

$$
\vec{F}=q(\vec{v}\times\vec{B}),\qquad F=qvB\sin\theta
$$

This is the magnetic (Lorentz) part of the total electromagnetic force $\vec{F}=q\vec{E}+q(\vec{v}\times\vec{B})$.

**Self-induction:** The property of a coil by which it opposes any change in the current flowing through it, by inducing an EMF in itself: $\mathcal{E}=-L\frac{dI}{dt}$.

**Mutual induction:** The property by which a changing current in one coil induces an EMF in a neighbouring coil: $\mathcal{E}_2=-M\frac{dI_1}{dt}$.

## [D-21] Faraday's Law and Lenz's Law of Electromagnetic Induction

**Faraday's law:** Whenever the magnetic flux linked with a circuit changes, an EMF is induced in it, and the magnitude of the induced EMF is directly proportional to the rate of change of flux linkage:

$$
\mathcal{E}=-N\frac{d\phi}{dt}
$$

where $N$ = number of turns, $\phi$ = flux linked per turn.

**Lenz's law:** The direction of the induced EMF (and hence induced current) is such as to oppose the change in flux that produces it — hence the negative sign above. This is why work must be done against the induced effects to change the flux, and that work becomes the electrical energy delivered — i.e. Lenz's law is a statement of **conservation of energy**.

**Show Lenz's law obeys conservation of energy:** If the induced current instead aided the change in flux, the flux (and hence the current) would increase without any external work being done — creating energy from nothing, violating conservation of energy. Since the induced current opposes the change (by Lenz's law), external work must be done to maintain/produce the flux change, and this work exactly equals the electrical energy generated (verified via $dW=\mathcal{E}I\,dt=I^2R\,dt$ matching mechanical work done against the opposing force). Hence Lenz's law is consistent with, and required by, the law of conservation of energy.

## [D-22] Hysteresis and the Hysteresis Curve

**Hysteresis:** The lagging of magnetisation ($B$) behind the magnetising field ($H$) in a ferromagnetic material, such that the magnetic state depends on its magnetic history.

**Hysteresis (B–H) curve:** As $H$ is increased from zero, $B$ rises along the initial magnetisation curve to saturation ($B_s$). Reducing $H$ to zero leaves a **residual/remanent magnetism** $B_r$ (retentivity). To bring $B$ to zero, a reverse field $-H_c$ (**coercivity**) must be applied. Continuing to reverse and increase $H$ traces a symmetric curve to $-B_s$, and back — forming a closed loop.

```text
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

**Derivation of charging equation:** Circuit: EMF $\mathcal{E}$, resistor $R$, capacitor $C$ in series. At time $t$, charge $q$, current $i=dq/dt$. By Kirchhoff's voltage law:

$$
\mathcal{E}=iR+\frac{q}{C}=R\frac{dq}{dt}+\frac{q}{C}
$$

$$
\frac{dq}{\mathcal{E}C-q}=\frac{dt}{RC}
$$

Integrating with $q=0$ at $t=0$:

$$
-\ln(\mathcal{E}C-q)+\ln(\mathcal{E}C)=\frac{t}{RC}
$$

$$
q(t)=\mathcal{E}C\left(1-e^{-t/RC}\right)=Q_0\left(1-e^{-t/\tau}\right),\qquad \tau=RC
$$

and current $i=\dfrac{\mathcal{E}}{R}e^{-t/RC}$.

**Discharging** (capacitor initially charged to $Q_0$, discharging through $R$, no EMF):

$$
R\frac{dq}{dt}+\frac{q}{C}=0\ \Rightarrow\ q(t)=Q_0e^{-t/RC}
$$

```text
Charging: q(t)                Discharging: q(t)
   |   _____---                |\
   |  /                        | \
Q0 |-/  (63% at t=RC)       Q0 |  \___
   | /                         |      \---___
   |/___________ t             |___________ t
```

---

[← Index](README.md) · [Previous](02-derivations-D10-D17.md) · [Next →](04-derivations-D24-D30.md)
