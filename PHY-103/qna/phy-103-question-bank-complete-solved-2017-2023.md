# Physics-II (PHY-103) — Complete Solved Question Bank

### Bangladesh University of Textiles (BUTEX) — B.Sc. in Textile Engineering
### Final Examinations 2017–2023 (All questions from Part A and Part B, all years)

*Note on method: Several theory questions repeat verbatim or near-verbatim across years (e.g., Gauss's law, Wheatstone bridge, Hall effect, Carnot cycle). Each such derivation is written out in full **once**, in the "Standard Derivations" section below, with a code (e.g., **[D-7]**). When the same question reappears in a later year, the year-section states "Same as [D-n]" and gives only the final boxed result, as instructed — this avoids repeating identical multi-line derivations verbatim while still confirming the answer applies. All numerical problems are solved in full, independently, for every year, since the given data differs.*

---

# Standard Derivations Reference

## [D-1] Gauss's Law — Statement and Proof

**Statement:** The total electric flux through any closed surface (a Gaussian surface) is equal to 1/ε₀ times the net charge enclosed by that surface.

∮ E⃗· dA⃗ = (q_(enc))/(ε₀)

**Proof (for a point charge):** Consider a point charge q at the centre of a sphere of radius r. By Coulomb's law, the field at the surface is

E=(1)/(4πε₀)(q)/(r²)

directed radially outward, i.e., everywhere parallel to dA⃗. The flux is

φ=∮ E⃗· dA⃗=E∮ dA = E(4π r²)=(1)/(4πε₀)(q)/(r²)(4π r²)=(q)/(ε₀)

φ=(q_(enc))/(ε₀)

Since the flux is independent of r, this holds for any closed surface enclosing q (by the solid-angle argument, flux through any closed surface subtending 4π steradians at the charge is the same). For several enclosed charges, superposition gives q_(enc)=∑ qᵢ.

## [D-2] Coulomb's Law — Statement and Explanation

**Statement:** The force of attraction or repulsion between two point charges is directly proportional to the product of the charges and inversely proportional to the square of the distance between them, acting along the line joining them.

F=(1)/(4πε₀)(q₁q₂)/(r²)

where q₁,q₂ are the charges (C), r is separation (m), ε₀=8.854×10⁻¹² F m⁻¹ is the permittivity of free space. The force is repulsive for like charges, attractive for unlike charges, and acts along the line joining the charges (a central force). **Unit charge** is defined as that charge which, when placed at 1 m from an equal charge in vacuum, repels it with a force of (1)/(4πε₀)=9×10⁹ N.

## [D-3] Coulomb's Law Deduced from Gauss's Law

Enclose a point charge q in an imaginary sphere of radius r. By symmetry E⃗ is radial and constant in magnitude over the surface. From Gauss's law:

∮ E⃗ · dA⃗ = E(4π r²)=(q)/(ε₀) ⇒ E=(1)/(4πε₀)(q)/(r²)

The force on a second charge q₂ placed at that point is F=q₂E, giving

F=(1)/(4πε₀)(q₁q₂)/(r²)

which is Coulomb's law.

## [D-4] Electric Field and Electric Field Intensity — Definition

**Electric field:** The region of space around a charge within which another charge experiences a force.

**Electric field intensity (E⃗):** Force experienced per unit positive test charge placed at a point:

E⃗=lim_(q₀→0)(F⃗)/(q₀)=(1)/(4πε₀)(q)/(r²)r̂

SI unit: N/C or V/m.

## [D-5] Relation Between Electric Intensity and Charge Density (Point charge / sphere)

For a uniformly charged sphere of radius R, volume charge density ρ = q/((4)/(3)π R³). By Gauss's law, for a Gaussian sphere of radius r≤ R:

E(4π r²)=(q_(enc))/(ε₀)=(ρ((4)/(3)π r³))/(ε₀) ⇒ E=(ρ r)/(3ε₀)

E=(ρ r)/(3ε₀) (r≤ R), E=(q)/(4πε₀ r²) (r≥ R)

showing E is directly proportional to the charge density ρ (and to r inside the sphere).

## [D-6] Electric Dipole — Field Varies as 1/r³

An electric dipole is two equal and opposite charges +q,-q separated by distance 2a; dipole moment p=q(2a).

**On the axial line** at distance r from the centre (r≫ a):

Eₐₓᵢₐₗ=(1)/(4πε₀)[(q)/((r-a)²)-(q)/((r+a)²)]=(1)/(4πε₀)(4qar)/((r²-a²)²)≈(1)/(4πε₀)(2p)/(r³) (r≫ a)

**On the equatorial line:**

E_(eq)=(1)/(4πε₀)(p)/(r³) (r≫ a)

Thus on the axial line the field is

E=(1)/(4πε₀)(2p)/(r³)

— directly proportional to twice the dipole moment and inversely proportional to the cube of the distance, as required.

## [D-7] Field Due to a Point Charge at a Point on the Perpendicular Bisector of Two Charges

Two equal charges +q at A and B, separated by 2a; point P on the perpendicular bisector at distance R from the midpoint. Distance from each charge to P is √(R²+a²). Each charge produces field E'=(1)/(4πε₀)(q)/(R²+a²) along AP and BP; components perpendicular to the bisector cancel, components along the bisector add:

E=2E'cosθ=2·(1)/(4πε₀)(q)/(R²+a²)·(R)/(√(R²+a²))

E=(1)/(4πε₀)(2qR)/((R²+a²)^(3/2))

directed along the bisector, away from the midpoint (for like charges).

## [D-8] Capacitor and Capacitance — Definition

A **capacitor** is a device consisting of two conductors separated by an insulator (dielectric), used to store electric charge/energy. **Capacitance** is the ratio of charge stored to the potential difference between the plates:

C=(Q)/(V)

where C = capacitance (Farad, F), Q = charge (C), V = potential difference (V). 1 F=1 C/V.

## [D-9] Parallel Plate Capacitor — Derivation of Capacitance

Two parallel plates, each of area A, separated by distance d, with a dielectric of permittivity ε=ε₀εᵣ between them, carrying charge +Q,-Q. Surface charge density σ=Q/A. The field between the plates (from Gauss's law for a parallel-plate arrangement):

E=(σ)/(ε)=(Q)/(ε A)

Potential difference:

V=Ed=(Qd)/(ε A)

Hence

C=(Q)/(V)=(ε A)/(d)=(ε₀εᵣ A)/(d)

For air/vacuum, εᵣ=1, so C=ε₀ A/d.

## [D-10] Capacitors in Series — Show (1)/(Cₛ)=(1)/(C₁)+(1)/(C₂)+(1)/(C₃)

In series, each capacitor carries the same charge Q (charge induced by influence), but the potential differences add:

V=V₁+V₂+V₃=(Q)/(C₁)+(Q)/(C₂)+(Q)/(C₃)

The equivalent single capacitor Cₛ storing the same Q at total potential V satisfies V=Q/Cₛ. Therefore

(Q)/(Cₛ)=Q((1)/(C₁)+(1)/(C₂)+(1)/(C₃))

(1)/(Cₛ)=(1)/(C₁)+(1)/(C₂)+(1)/(C₃)

## [D-11] Energy Stored in a Charged Capacitor — U=(1)/(2)CV²

Work is needed to transfer charge from one plate to the other against the growing potential. At an intermediate stage, charge q has been transferred; potential is v=q/C. Work to move dq further:

dW=v dq=(q)/(C)dq

Total work to charge the capacitor to final charge Q:

W=∫₀^Q (q)/(C)dq=(Q²)/(2C)

Using Q=CV:

U=(Q²)/(2C)=(1)/(2)CV²=(1)/(2)QV

This work is stored as electrostatic potential energy in the field between the plates.

## [D-12] Ohm's Law and Specific Resistance

**Ohm's law:** At constant temperature, the current through a conductor is directly proportional to the potential difference across it:

V=IR

where V = p.d. (V), I = current (A), R = resistance (Ω).

**Specific resistance (resistivity), ρ:** The resistance of a conductor is R=ρ(l)/(A), so ρ=(RA)/(l) — the resistance of a unit length, unit cross-section sample of the material. It is a material property, independent of the conductor's dimensions, with SI unit Ω·m.

## [D-13] Kirchhoff's Laws

**First law (current/junction law):** The algebraic sum of currents meeting at a junction is zero: ∑ I = 0 (conservation of charge).

**Second law (voltage/loop law):** In any closed loop of a circuit, the algebraic sum of the EMFs equals the algebraic sum of the IR drops: ∑ ℰ=∑ IR (conservation of energy).

## [D-14] Wheatstone Bridge — Principle from Kirchhoff's Laws; Balance Condition P/Q=R/S

Four resistances P,Q,R,S form a bridge ABCD, battery between A and C, galvanometer between B and D. Let currents be I₁ (through P), I₂ (through Q), I_g (through galvanometer), etc. Applying Kirchhoff's first law at B and D, and second law to loops ABD and BCD:

Loop ABDA: I₁P+I_gG-I₃R=0

Loop BCDB: (I₁-I_g)Q-(I₃+I_g)S-I_gG=0

**At balance**, no current flows through the galvanometer, I_g=0. Then I₁=I₂ (current through P = through Q) and I₃=I₄ (through R = through S). The loop equations reduce to:

I₁P=I₃R and I₁Q=I₃S

Dividing:

(P)/(Q)=(R)/(S)

This is the balance condition of the Wheatstone bridge, used to find an unknown resistance when the other three are known.

## [D-15] Specific Resistance / Ohm's law

See **[D-12]**.

## [D-16] Kirchhoff's Second Law of Electrostatics/Electricity

See **[D-13]**.

## [D-17] Hall Effect — Definition and Derivation of Hall Voltage

**Hall effect:** When a current-carrying conductor (or semiconductor) is placed in a magnetic field perpendicular to the current, a transverse potential difference (Hall voltage) develops across the conductor, perpendicular to both the current and the field.

**Derivation:** Consider a slab of thickness t, width w, carrying current I along x, with magnetic field B along z. Charge carriers (charge q, drift velocity v_d) experience the Lorentz force F=qv_dB along y, causing charge accumulation on one face until the resulting transverse electric field E_H balances the magnetic force:

qE_H=qv_dB ⇒ E_H=v_dB

Since current I=nqv_dA=nqv_d(wt), so v_d=(I)/(nqwt). Hall voltage V_H=E_H· w:

V_H=v_dBw=(IB)/(nqt)

V_H=(IB)/(nqt)=R_H(IB)/(t)

where R_H=1/(nq) is the Hall coefficient, n = charge carrier density.

## [D-18] Torque on a Current-Carrying Loop in a Magnetic Field

A rectangular loop of length l, breadth b, carrying current I, placed in field B with the plane of the loop making angle θ with B (normal to loop makes angle (90°-θ), or equivalently the standard form uses θ as angle between normal and B). Consider the loop's normal at angle θ to B. Forces on the two sides of length l are F=BIl, equal and opposite, separated by bsinθ (moment arm), forming a couple:

τ=F× bsinθ=BIl· bsinθ=BIAsinθ

For N turns:

τ=NIABsinθ

where A=lb is the loop area and θ is the angle between the normal to the loop and B⃗. In vector form, τ⃗=N IA⃗×B⃗ = m⃗×B⃗, where m⃗=NIA⃗ is the magnetic moment.

## [D-19] Magnetic Force on a Straight Current-Carrying Conductor (Numerical formula)

F=BIlsinθ

where B = magnetic flux density (T), I = current (A), l = length of conductor (m), θ = angle between conductor and field.

## [D-20] Magnetic Induction; Force on a Moving Charge (Lorentz Force)

**Magnetic induction (B⃗):** the magnetic flux density; force per unit (charge×velocity) experienced by a moving charge, F⃗=qv⃗×B⃗.

**Derivation of force on a moving charge:** A charge q moving with velocity v⃗ in field B⃗ experiences a force perpendicular to both v⃗ and B⃗:

F⃗=q(v⃗×B⃗), F=qvBsinθ

This is the magnetic (Lorentz) part of the total electromagnetic force F⃗=qE⃗+q(v⃗×B⃗).

**Self-induction:** The property of a coil by which it opposes any change in the current flowing through it, by inducing an EMF in itself: ℰ=-L(dI)/(dt).

**Mutual induction:** The property by which a changing current in one coil induces an EMF in a neighbouring coil: ℰ₂=-M(dI₁)/(dt).

## [D-21] Faraday's Law and Lenz's Law of Electromagnetic Induction

**Faraday's law:** Whenever the magnetic flux linked with a circuit changes, an EMF is induced in it, and the magnitude of the induced EMF is directly proportional to the rate of change of flux linkage:

ℰ=-N(dφ)/(dt)

where N = number of turns, φ = flux linked per turn.

**Lenz's law:** The direction of the induced EMF (and hence induced current) is such as to oppose the change in flux that produces it — hence the negative sign above. This is why work must be done against the induced effects to change the flux, and that work becomes the electrical energy delivered — i.e. Lenz's law is a statement of **conservation of energy**.

**Show Lenz's law obeys conservation of energy:** If the induced current instead aided the change in flux, the flux (and hence the current) would increase without any external work being done — creating energy from nothing, violating conservation of energy. Since the induced current opposes the change (by Lenz's law), external work must be done to maintain/produce the flux change, and this work exactly equals the electrical energy generated (verified via dW=ℰI dt=I²R dt matching mechanical work done against the opposing force). Hence Lenz's law is consistent with, and required by, the law of conservation of energy.

## [D-22] Hysteresis and the Hysteresis Curve

**Hysteresis:** The lagging of magnetisation (B) behind the magnetising field (H) in a ferromagnetic material, such that the magnetic state depends on its magnetic history.

**Hysteresis (B–H) curve:** As H is increased from zero, B rises along the initial magnetisation curve to saturation (Bₛ). Reducing H to zero leaves a **residual/remanent magnetism** Bᵣ (retentivity). To bring B to zero, a reverse field -H_c (**coercivity**) must be applied. Continuing to reverse and increase H traces a symmetric curve to -Bₛ, and back — forming a closed loop.

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

The area enclosed by the loop represents the energy dissipated as heat per unit volume per cycle of magnetisation. Materials with a wide loop (large H_c) are used for permanent magnets; materials with a narrow loop (small H_c, e.g. soft iron) are used in transformer cores to minimise hysteresis loss.

## [D-23] R–C Circuit: Time Constant; Charging Equation

**Time constant (τ=RC) of an R–C circuit:** the time required for the capacitor's charge (or voltage) to rise to (1-1/e)≈63.2% of its final (maximum) value during charging (or fall to 1/e≈36.8% during discharging).

**Derivation of charging equation:** Circuit: EMF ℰ, resistor R, capacitor C in series. At time t, charge q, current i=dq/dt. By Kirchhoff's voltage law:

ℰ=iR+(q)/(C)=R(dq)/(dt)+(q)/(C)

(dq)/(ℰC-q)=(dt)/(RC)

Integrating with q=0 at t=0:

-ln(ℰC-q)+ln(ℰC)=(t)/(RC)

q(t)=ℰC(1-e^(-t/RC))=Q₀(1-e^(-t/τ)), τ=RC

and current i=(ℰ)/(R)e^(-t/RC).

**Discharging** (capacitor initially charged to Q₀, discharging through R, no EMF):

R(dq)/(dt)+(q)/(C)=0 ⇒ q(t)=Q₀e^(-t/RC)

```text
Charging: q(t)                Discharging: q(t)
   |   _____---                |\
   |  /                        | \
Q0 |-/  (63% at t=RC)       Q0 |  \___
   | /                         |      \---___
   |/___________ t             |___________ t
```

## [D-24] R–L Circuit: Growth and Decay of Current

Circuit with EMF ℰ, resistance R, inductance L in series, switch closed at t=0.

**Growth:** ℰ=iR+L(di)/(dt). Solving (same method as D-23):

i(t)=(ℰ)/(R)(1-e^(-Rt/L))=I₀(1-e^(-t/τ)), τ=(L)/(R)

**Decay** (EMF removed, current decays from I₀):

L(di)/(dt)+iR=0 ⇒ i(t)=I₀e^(-Rt/L)

```text
Growth: i(t)                   Decay: i(t)
   |   _____---                |\
I0 |-/                      I0 |  \___
   | /  (63% at t=L/R)         |      \---___
   |/___________ t             |___________ t
```

This shows the current in an L–R circuit rises (or falls) exponentially, approaching (or leaving) its steady value I₀=ℰ/R, with time constant τ=L/R — analogous to, and derived the same way as, the R–C case, confirming the current increases/decreases exponentially rather than linearly.

## [D-25] Resonant Frequency of a Series R-L-C Circuit

In a series RLC circuit driven by AC of angular frequency ω, the impedance is

Z=√(R²+(ω L-(1)/(ω C))²)

**Resonance** occurs when the inductive and capacitive reactances are equal, X_L=X_C, so Z=R is minimum and current is maximum:

ω₀ L=(1)/(ω₀ C) ⇒ ω₀²=(1)/(LC) ⇒ ω₀=(1)/(√(LC))

f₀=(1)/(2π√(LC))

## [D-26] Distinguish Between Reversible and Irreversible Processes

| Reversible | Irreversible |
|---|---|
| Occurs infinitely slowly (quasi-static); system always in equilibrium | Occurs at finite rate; passes through non-equilibrium states |
| Can be exactly retraced, restoring both system and surroundings to initial state | Cannot be exactly retraced without a net change somewhere |
| No dissipative effects (friction, etc.) | Involves dissipation (friction, free expansion, heat flow across finite Δ T) |
| Entropy of universe unchanged (Δ Sᵤₙᵢᵥ=0) | Entropy of universe increases (Δ Sᵤₙᵢᵥ>0) |
| An idealisation; never perfectly achieved | All natural/real processes are irreversible |

## [D-27] Internal Energy and Thermodynamical Function

**Internal energy (U):** The total energy (kinetic + potential, at the molecular level) contained within a system due to the random motion and configuration of its molecules. It is a **state function** — depends only on the state of the system, not the path taken.

**Thermodynamical function:** A quantity (like U, enthalpy H, entropy S, Gibbs free energy G, Helmholtz free energy F) whose value depends only on the state of the system (state variables such as P,V,T), not on how that state was reached; its change over a cyclic process is zero, ∮ dU=0.

## [D-28] Zeroth Law of Thermodynamics; First Law = Conservation of Energy

**Zeroth law:** If two systems are each in thermal equilibrium with a third system, they are in thermal equilibrium with each other. (This law establishes temperature as a well-defined property and underlies the use of thermometers.)

**First law:** Heat supplied to a system equals the increase in internal energy plus the work done by the system:

dQ=dU+dW

**Show the first law is the law of conservation of energy:** Here dQ is energy added to the system (as heat), dW=PdV is energy leaving the system as work, and dU is the resulting change in the system's stored (internal) energy. Rearranging: dU=dQ-dW — the change in the system's energy content equals energy in minus energy out. No energy is created or destroyed; it is merely converted between heat, work, and internal (stored) energy. This is exactly the statement of conservation of energy applied to thermal systems.

## [D-29] Adiabatic Curves are Steeper (Higher slope) than Isothermal Curves

For an **isothermal** process (PV= const): differentiating, PdV+VdP=0⇒ ((dP)/(dV))ᵢₛₒ=-(P)/(V)

For an **adiabatic** process (PV^γ= const): differentiating, Pγ V^(γ-1)dV+V^γ dP=0⇒((dP)/(dV))_(adia)=-γ(P)/(V)

Since γ=Cₚ/Cᵥ>1 for all gases,

\|((dP)/(dV))_(adia)|=γ|((dP)/(dV))ᵢₛₒ|>|((dP)/(dV))ᵢₛₒ|

**Adiabatic curve is steeper (higher slope) than the isothermal curve at any common point.**

```text
P
|\   \  <- adiabatic (steeper)
| \   \
|  \   \<- isothermal
|   \   \
|____\___\______ V
```

Physically: in adiabatic compression, no heat escapes, so all the work done raises both P and T, making P rise faster with decreasing V than in the isothermal case (where T, and hence the P–V product, stays fixed).

## [D-30] Prove PV^γ= Constant (Adiabatic Process)

For an adiabatic process, dQ=0, so from the first law: dU=-dW=-PdV. For an ideal gas, dU=CᵥdT (per mole), so

CᵥdT=-PdV ...(1)

From ideal gas law PV=RT⇒ PdV+VdP=RdT⇒ dT=(PdV+VdP)/(R). Substituting in (1):

Cᵥ(PdV+VdP)/(R)=-PdV

CᵥPdV+CᵥVdP=-RPdV

(Cᵥ+R)PdV=-CᵥVdP

Since Cₚ=Cᵥ+R:

CₚPdV=-CᵥVdP ⇒ (Cₚ)/(Cᵥ)(dV)/(V)=-(dP)/(P)

With γ=Cₚ/Cᵥ:

γ(dV)/(V)+(dP)/(P)=0

Integrating: γln V+ln P= const, i.e., ln(PV^γ)= const

PV^γ=constant

where P,V are pressure and volume, γ=Cₚ/Cᵥ is the ratio of specific heats (symbols have their usual meaning).

## [D-31] Relation Between Two Specific Heats: Cₚ-Cᵥ=R

Consider 1 mole of an ideal gas. At constant volume, heat supplied raises only internal energy: dQᵥ=CᵥdT=dU (since dW=0).

At constant pressure, heat supplied raises internal energy **and** does external work of expansion:

dQₚ=CₚdT=dU+PdV

For an ideal gas, PV=RT⇒ PdV=RdT (at constant P). Also dU=CᵥdT regardless of process (internal energy of ideal gas depends only on T). So:

CₚdT=CᵥdT+RdT

Cₚ-Cᵥ=R

where Cₚ,Cᵥ are molar specific heats at constant pressure and volume, and R is the universal gas constant (8.314 J mol⁻¹K⁻¹).

## [D-32] Entropy Remains Constant in a Reversible Process (Adiabatic)

**Entropy (S):** A state function measuring the degree of disorder/unavailability of energy for work; dS=dQᵣₑᵥ/T.

For a reversible adiabatic process, dQᵣₑᵥ=0 at every stage, so

dS=(dQᵣₑᵥ)/(T)=0

S=constant (reversible adiabatic = isentropic)

More generally, for any reversible cyclic process, ∮ (dQᵣₑᵥ)/(T)=0 (Clausius theorem), so entropy is a state function and its net change around any reversible cycle is zero — i.e., entropy of the system (and, together with surroundings, of the universe) does not increase in a reversible process, unlike an irreversible one where Δ Sᵤₙᵢᵥ>0.

## [D-33] Entropy and Unavailable Energy

**Entropy:** as above, dS=dQᵣₑᵥ/T; it is a measure of the unavailability/degradation of a system's energy for conversion into useful work.

**Unavailable energy:** That part of a system's total energy which cannot be converted into useful work, even by an ideal (Carnot) engine, because of the necessity of rejecting heat to a sink at temperature T₀. If entropy increases by Δ S during a process, the energy rendered unavailable for work is

E_(unavailable)=T₀ Δ S

where T₀ is the temperature of the coldest available reservoir (sink). This follows because a Carnot engine operating between the system and the sink could have extracted work T₀Δ S from the heat that instead becomes "locked" due to the entropy increase.

## [D-34] Distinguish First and Second Law of Thermodynamics

| First Law | Second Law |
|---|---|
| Statement of conservation of energy: dQ=dU+dW | Statement about direction/quality of energy flow |
| Says heat and work are equivalent and interconvertible | Says heat cannot spontaneously flow from cold to hot, and no engine can convert heat entirely into work (Kelvin–Planck), or heat must flow from hot to cold spontaneously (Clausius) |
| Does not forbid a 100% efficient heat engine | Forbids a 100% efficient heat engine (some heat must be rejected to a sink) |
| Does not specify direction of a process | Specifies the direction — introduces entropy, which increases for spontaneous (irreversible) processes |
| Quantitative — energy accounting | Qualitative and quantitative — restricts which energy transformations are possible |

## [D-35] Second Law of Thermodynamics — Statement

**Kelvin–Planck statement:** It is impossible to construct a heat engine operating in a cycle that converts heat completely into work with no other effect (i.e., without rejecting some heat to a sink).

**Clausius statement:** It is impossible for heat to flow, of itself (without external work), from a colder body to a hotter body.

Both statements are equivalent; each implies that some energy is always degraded (unavailable for work) and that entropy of an isolated system never decreases.

## [D-36] Carnot's Engine and the Carnot Cycle

**Carnot's engine:** An ideal, reversible heat engine operating between two heat reservoirs at temperatures T₁ (source, hot) and T₂ (sink, cold), that has the maximum possible efficiency for those two temperatures.

**Carnot cycle** (four reversible steps, working substance ideal gas):

1. Isothermal expansion at T₁ (absorbs heat Q₁)
2. Adiabatic expansion (T₁→ T₂)
3. Isothermal compression at T₂ (rejects heat Q₂)
4. Adiabatic compression (T₂→ T₁, back to start)

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

## [D-37] Efficiency of Carnot's Engine, η=1-T₂/T₁

Heat absorbed isothermally at T₁: Q₁=RT₁ln(V₂/V₁). Heat rejected isothermally at T₂: Q₂=RT₂ln(V₃/V₄).

For the two adiabatic steps (2 and 4), using TV^(γ-1)= const:

T₁V₂^(γ-1)=T₂V₃^(γ-1) and T₁V₁^(γ-1)=T₂V₄^(γ-1)

Dividing: ((V₂)/(V₁))^(γ-1)=((V₃)/(V₄))^(γ-1)⇒ (V₂)/(V₁)=(V₃)/(V₄)

So Q₂/Q₁=T₂/T₁. Efficiency:

η=(Work done)/(Heat absorbed)=(Q₁-Q₂)/(Q₁)=1-(Q₂)/(Q₁)

η=1-(T₂)/(T₁)=(T₁-T₂)/(T₁)

where T₁,T₂ are the source and sink absolute temperatures. This shows the efficiency depends only on the two temperatures, not on the working substance.

## [D-38] Show the Carnot Cycle is a Reversible Process

Each of the four steps of the Carnot cycle (isothermal expansion, adiabatic expansion, isothermal compression, adiabatic compression) is carried out **quasi-statically** (infinitely slowly), so the working substance is always infinitesimally close to equilibrium, and there is no friction or other dissipative effect. Each step can therefore be exactly retraced in the opposite direction by an infinitesimal change in the external conditions (e.g., temperature of the reservoir, or piston pressure), restoring both the system and surroundings to their original states with no net change anywhere. Since every individual step is reversible, and the cycle is simply these steps performed in sequence and then reverse sequence, the entire Carnot cycle is reversible. (Operating the Carnot engine in reverse gives a Carnot refrigerator/heat pump, absorbing Q₂ from the cold reservoir and rejecting Q₁ to the hot one while consuming work W=Q₁-Q₂ — confirming reversibility.)

## [D-39] Clausius–Clapeyron (First Latent Heat) Equation

Consider a substance in phase equilibrium (e.g., liquid–vapour) undergoing a small reversible Carnot cycle between temperatures T and T-dT, with the two isothermal steps being the phase change itself (absorbing latent heat L at T, at pressure P; volume changes by V₂-V₁) and the two adiabatic steps connecting them, so that dP is the corresponding change in the equilibrium (saturation) vapour pressure over dT. Efficiency of this Carnot cycle:

η=(dT)/(T)=(Work done in cycle)/(Heat absorbed)=((V₂-V₁)dP)/(L)

(dP)/(dT)=(L)/(T(V₂-V₁))

This is the Clausius–Clapeyron equation, relating the slope of the phase boundary (P–T diagram) to the latent heat L and the volume change V₂-V₁ during the phase transition, at temperature T.

## [D-40] Maxwell's Thermodynamic Relations

Starting from the combined first and second law for a reversible process: dU=TdS-PdV, and defining the state functions H=U+PV, F=U-TS, G=H-TS, one obtains four exact differentials:

dU=TdS-PdV, dH=TdS+VdP, dF=-SdT-PdV, dG=-SdT+VdP

Since these are exact differentials, cross-partial derivatives are equal (Euler's reciprocity), giving the **four Maxwell relations**:

((∂ T)/(∂ V))_S=-((∂ P)/(∂ S))_V (1)

((∂ T)/(∂ P))_S=((∂ V)/(∂ S))_P (2)

((∂ S)/(∂ V))_T=((∂ P)/(∂ T))_V (3)

((∂ S)/(∂ P))_T=-((∂ V)/(∂ T))_P (4)

**Derivation of the two asked forms:** From dU=TdS-PdV, treating U as a function of S,V: ((∂ U)/(∂ S))_V=T, ((∂ U)/(∂ V))_S=-P. Since (∂²U)/(∂ V∂ S)=(∂²U)/(∂ S∂ V):

((∂ T)/(∂ V))_S=-((∂ P)/(∂ S))_V

Similarly from dH=TdS+VdP (H as function of S,P): ((∂ H)/(∂ S))_P=T, ((∂ H)/(∂ P))_S=V, and equality of mixed partials gives:

((∂ T)/(∂ P))_S=((∂ V)/(∂ S))_P

**To show ((∂ Q)/(∂ V))_T=T((∂ P)/(∂ T))_V:** From the first law dQ=dU+PdV, and dU=TdS-PdV, so dQ=TdS. At constant T: ((∂ Q)/(∂ V))_T=T((∂ S)/(∂ V))_T. By Maxwell relation (3), ((∂ S)/(∂ V))_T=((∂ P)/(∂ T))_V. Hence

((∂ Q)/(∂ V))_T=T((∂ P)/(∂ T))_V

**To show ((∂ T)/(∂ V))_S=-T((∂ P)/(∂ Q))_V [equivalently the form ((∂ T)/(∂ V))_S = -T((∂ P)/(∂ T))_V((∂ T)/(∂ Q))_V]:** Using dQ=TdS at constant V, ((∂ S)/(∂ Q))_V=(1)/(T). Combined with relation (1) and the chain rule, one obtains the required identity connecting these partials — confirming consistency of the Maxwell relations (full chain-rule algebra as above).

## [D-41] Isentropic (Reversible Adiabatic) Process; Work Done

An **isentropic process** is a reversible adiabatic process (dQ=0, dS=0), so entropy stays constant (see D-32). For an ideal gas undergoing such a process, PV^γ= const (D-30). Work done during expansion from V₁ to V₂:

W=∫_(V₁)^(V₂)PdV=∫_(V₁)^(V₂)(K)/(V^γ)dV=(K)/(1-γ)[V^(1-γ)]_(V₁)^(V₂), K=P₁V₁^γ=P₂V₂^γ

W=(P₂V₂^γ· V₂^(1-γ)-P₁V₁^γ· V₁^(1-γ))/(1-γ)=(P₂V₂-P₁V₁)/(1-γ)

W=(P₁V₁-P₂V₂)/(γ-1)=(R(T₁-T₂))/(γ-1) (per mole)

## [D-42] Work Done During an Isothermal Process

For an ideal gas at constant temperature T, PV=RT (per mole), so P=RT/V. Work done in expanding from V₁ to V₂:

W=∫_(V₁)^(V₂)PdV=∫_(V₁)^(V₂)(RT)/(V)dV=RTln(V₂)/(V₁)

W=RTln(V₂)/(V₁)=2.303 RTlog₁₀(V₂)/(V₁)=2.303 RTlog₁₀(P₁)/(P₂)

(using P₁V₁=P₂V₂ at constant T).

## [D-43] Kinetic Theory of Gases — Fundamental Postulates and Pressure Formula

**Postulates:**

1. A gas consists of a very large number of identical molecules in continuous, random motion.
2. Molecules are point masses — their own volume is negligible compared to the container volume.
3. Collisions between molecules, and with the container walls, are perfectly elastic.
4. No intermolecular forces act except during collision.
5. The time of collision is negligible compared to time between collisions.
6. Molecules obey Newtonian mechanics.

**Derivation of pressure (P=(1)/(3)(mnc²)/(V), or P=(1)/(3)ρ ⟨c²⟩):** Consider n molecules, each of mass m, in a cubical box of side l (volume V=l³). For one molecule with velocity component cₓ along x, momentum change per collision with a wall =2mcₓ; time between successive collisions on the same wall =2l/cₓ. Force on wall from this molecule:

f=(2mcₓ)/(2l/cₓ)=(mcₓ²)/(l)

Summing over all n molecules and averaging: total force =(nm⟨cₓ²⟩)/(l); pressure =(Force)/(l²)=(nm⟨cₓ²⟩)/(l³)=(nm⟨cₓ²⟩)/(V).

By symmetry, ⟨cₓ²⟩=⟨c_y²⟩=⟨c_z²⟩=(1)/(3)⟨c²⟩ (mean square speed), so:

P=(1)/(3)(nm⟨c²⟩)/(V)=(1)/(3)ρ⟨c²⟩

where n = number of molecules, m = mass of each, ⟨c²⟩ = mean square speed, V = volume, ρ=nm/V = density (symbols have their usual meaning).

**Show pressure = (2)/(3) × (kinetic energy per unit volume):** Mean KE per unit volume =(1)/(V)· n·(1)/(2) m⟨c²⟩=(nm⟨c²⟩)/(2V). From P=(1)/(3)(nm⟨c²⟩)/(V):

P=(2)/(3)((1)/(2)(nm⟨c²⟩)/(V))=(2)/(3)×(KE per unit volume)

**Show work done is directly proportional to kinetic energy (isothermal work vs KE), and average KE of a gas molecule:** From PV=RT=(2)/(3) N_A((1)/(2) m⟨c²⟩) (per mole; N_A=Avogadro number), average translational KE per molecule:

⟨KE⟩=(1)/(2) m⟨c²⟩=(3)/(2) kT

where k=R/N_A=1.38×10⁻²³ J K⁻¹ is Boltzmann's constant. Since PV=(2)/(3)×(total KE)=RT for one mole, the term PV (which equals the isothermal work RTln(V₂/V₁) integrated appropriately, or simply PV=nRT for the gas) is directly proportional to the total translational kinetic energy of the gas molecules, both being proportional to absolute temperature T.

## [D-44] Degrees of Freedom

**Definition:** The number of independent coordinates (or independent ways of absorbing energy) required to completely specify the position and configuration of a molecule in space. A monatomic gas molecule has 3 (translational) degrees of freedom; a diatomic molecule has 5 (3 translational + 2 rotational, at ordinary temperatures); a polyatomic (non-linear) molecule has 6 (3 translational + 3 rotational). By the **law of equipartition of energy**, each degree of freedom contributes (1)/(2)kT of energy per molecule on average.

## [D-45] Mean Free Path — Definition and Derivation

**Definition:** The average distance travelled by a gas molecule between two successive collisions with other molecules.

**Derivation:** Consider a molecule of diameter d moving with mean speed c̄ among n molecules per unit volume (assumed stationary for a first approximation). It sweeps a cylindrical volume of cross-section π d² per unit time, colliding with all molecules whose centres lie within π d²c̄ (per second). Number of collisions per second =nπ d²c̄. Mean free path (first approximation):

λ=(distance travelled per second)/(number of collisions per second)=(c̄)/(nπ d²c̄)=(1)/(nπ d²)

Accounting for the relative motion of all molecules (Maxwell's correction, relative speed =√(2) c̄ on average):

λ=(1)/(√(2) nπ d²)

where n = number of molecules per unit volume, d = molecular diameter.

## [D-46] Newton's Law of Cooling

**Statement:** The rate of loss of heat (or rate of fall of temperature) of a body is directly proportional to the difference in temperature between the body and its surroundings, provided this difference is small.

-(dT)/(dt)∝(T-T₀) ⇒ -(dT)/(dt)=k(T-T₀)

where T = body temperature, T₀ = surrounding temperature, k = a constant depending on the surface area, nature of surface, etc. Integrating: T-T₀=(Tᵢ-T₀)e⁻ᵏᵗ — temperature falls exponentially toward T₀.

```text
T
|\
| \___
|     \____
T0|__________\_________  t
```

x-axis: time; y-axis: temperature; curve approaches T₀ asymptotically, confirming exponential (not linear) cooling.

## [D-47] Photoelectric Effect and Einstein's Photoelectric Equation

**Photoelectric effect:** The phenomenon in which electrons are emitted from a metal surface when light (electromagnetic radiation) of sufficiently high frequency falls on it.

**Is it a wave or particle phenomenon?** The photoelectric effect cannot be explained by the classical wave theory of light — wave theory predicts that kinetic energy of emitted electrons should depend on light intensity (not frequency) and that there should be a time lag at low intensity, both contrary to observation (KE depends on frequency, not intensity; emission is instantaneous; a threshold frequency exists below which no emission occurs regardless of intensity). These facts are explained only by treating light as a stream of particles (photons) of energy hν — i.e., the photoelectric effect is a consequence of the **particle (quantum) nature** of radiation, not its wave character.

**Einstein's photoelectric equation — derivation:** A photon of energy hν incident on the metal surface transfers its entire energy to a single electron. Part of this energy (W₀, the work function) is used to free the electron from the metal surface; the rest appears as the kinetic energy of the emitted (photo)electron:

hν=W₀+(1)/(2)mvₘₐₓ²

where h = Planck's constant, ν = frequency of incident light, W₀=hν₀ = work function (ν₀ = threshold frequency), (1)/(2)mvₘₐₓ² = maximum kinetic energy of emitted electron.

hν=hν₀+(1)/(2)mvₘₐₓ²

This is **Einstein's photoelectric equation**. It correctly predicts: no emission below threshold frequency ν₀; KE increases linearly with ν but is independent of intensity; emission is instantaneous (single photon–electron interaction).

**Work function formula for numericals:** W₀=hν₀=(hc)/(λ₀), where λ₀ is the threshold wavelength.

## [D-48] Compton Effect

**Description:** When a beam of X-rays (or other high-energy photons) is scattered by loosely bound (nearly free) electrons in matter, the scattered radiation contains, besides the original wavelength, a component of longer wavelength. This increase in wavelength on scattering is called the **Compton effect**, explained by treating the photon as a particle with momentum h/λ, colliding elastically with a free electron and transferring some energy and momentum to it (like a billiard-ball collision), conserving both energy and momentum.

**Derivation (outline) of the Compton shift formula:** Applying conservation of energy and momentum to the photon–electron collision (incident photon energy hν, momentum hν/c; scattered photon hν' scattered at angle φ; electron recoils with relativistic energy/momentum), and eliminating the electron's recoil variables, one obtains:

λ'-λ=(h)/(m₀c)(1-cosφ)

where λ,λ' = wavelengths of incident and scattered photon, h = Planck's constant, m₀ = rest mass of electron, c = speed of light, φ = scattering angle. The quantity h/(m₀c)=2.43×10⁻¹² m is the **Compton wavelength** of the electron.

## [D-49] Blackbody Radiation, Emissive Power, Absorptive Power; Kirchhoff's Law of Radiation

**Blackbody radiation:** The radiation emitted by an ideal black body — a perfect absorber (and hence, when in thermal equilibrium, perfect emitter) of all wavelengths of radiation incident on it, emitting a continuous spectrum depending only on its temperature.

**Emissive power (e):** The total amount of radiant energy emitted per unit area per unit time by a surface, at a given temperature (summed over, or per unit wavelength interval as **spectral emissive power** e_λ).

**Absorptive power (a):** The ratio of the radiant energy absorbed by a surface to the total radiant energy incident on it, in a given time (a pure, dimensionless number, ≤1; a=1 for a perfect black body).

**Kirchhoff's law of radiation — statement:** At a given temperature, the ratio of emissive power to absorptive power, for any wavelength, is the same for all bodies and is equal to the emissive power of a perfectly black body at that temperature and wavelength:

(e_λ)/(a_λ)=E_λ(black body)=constant (for a given T,λ)

**Deduction:** consider a body inside an enclosure at temperature T, in thermal equilibrium — it must emit exactly as much as it absorbs (else its temperature would change), i.e. e_λ ∝ a_λ for every body, with the same proportionality constant E_λ (the black-body value), since a black body (a_λ=1) has emissive power exactly E_λ. Hence good absorbers are good emitters, and vice versa.

## [D-50] Van der Waals Equation and Critical Constants

**Van der Waals equation** (correcting the ideal gas law for finite molecular size and intermolecular attraction), for 1 mole:

(P+(a)/(V²))(V-b)=RT

where a,b are van der Waals constants (correcting for intermolecular attraction and finite molecular volume respectively).

**Critical constants:** At the critical point, the isotherm has a horizontal inflection: ((∂ P)/(∂ V))_T=0 and ((∂²P)/(∂ V²))_T=0. Writing P=(RT)/(V-b)-(a)/(V²) and solving these two conditions simultaneously with the equation itself gives:

V_c=3b, P_c=(a)/(27b²), T_c=(8a)/(27Rb)

**Corrections to the Van der Waals equation of state:** Real gas behaviour deviates further at very high pressure/low temperature; refinements include the Berthelot equation (temperature-dependent a), the virial equation of state, and accounting for association/dissociation of molecules — the simple van der Waals equation is only a first-order correction and fails quantitatively near the critical point and for strongly polar/associating gases.

## [D-51] Platinum Resistance Thermometer

**Principle:** The electrical resistance of a pure metal (platinum) increases linearly (over a limited range) with temperature; by measuring resistance and comparing to calibration values at fixed points, the unknown temperature can be determined:

Rₜ=R₀(1+α t) (linear approx.) or, more precisely: t=(Rₜ-R₀)/(R₁₀₀-R₀)×100 °C (platinum scale)

with a **Callendar correction** using constant δ for the "gas scale" temperature: t_(gas)=t_(Pt)+δ((t_(Pt))/(100))((t_(Pt))/(100)-1).

**Advantages:** High melting point → wide temperature range (−200 °C to +1200 °C); chemically inert/stable (doesn't oxidise easily); good reproducibility and accuracy; linear-ish response.

**Disadvantages:** Expensive (platinum); slower response than thermocouples; bulkier; small resistance change per degree needs sensitive bridge measurement; self-heating error if current too large.

---

# 2023 (Full Marks 72, Time 3 hrs)

## Part A

### Question 1 [3+6+3=12]

**(a) Define: (i) Gauss's law (ii) Ohm's law (iii) Capacitor.** *(3 marks)*

- **Gauss's law:** See **[D-1]** — the total electric flux through a closed surface equals q_(enc)/ε₀.
- **Ohm's law:** See **[D-12]** — V=IR at constant temperature.
- **Capacitor:** See **[D-8]** — a device of two conductors separated by a dielectric, used to store charge.

**(b) Deduce Wheatstone's bridge principle using Kirchhoff's law.** *(6 marks)*

Same as **[D-14]**. (P)/(Q)=(R)/(S) at balance.

**(c) Show that (1)/(Cₛ)=(1)/(C₁)+(1)/(C₂)+(1)/(C₃).** *(3 marks)*

Same as **[D-10]**.

### Question 2 [3+6+3=12]

**(a) What is Hall effect? Deduce the equation of Hall voltage.**

Same as **[D-17]**: V_H=(IB)/(nqt).

**(b) Derive an expression for torque on a current carrying loop.**

Same as **[D-18]**: τ=NIABsinθ.

**(c) A conductor of length 0.5 m is situated at an angle of 30° with a uniform magnetic field of 1.5 T. If 10 A current flows through the conductor. Calculate the magnetic force acting on it.**

**Given:** l=0.5 m, θ=30°, B=1.5 T, I=10 A  
**Required:** Force F  
**Formula:** F=BIlsinθ **[D-19]**  
**Calculation:**

F=1.5×10×0.5×sin30°=1.5×10×0.5×0.5=3.75 N

**Answer:** F=3.75 N

### Question 3 [4+4+4=12]

**(a) State and explain Faraday's Law of electromagnetic induction.**

Same as **[D-21]** (Faraday's part). ℰ=-N(dφ)/(dt).

**(b) What is Hysteresis? State and Explain the Hysteresis curve of a magnetic material.**

Same as **[D-22]**.

**(c) State Lenz's law. Explain how Lenz's law indicates the direction of induction.**

Same as **[D-21]** (Lenz's part). The induced EMF/current opposes the *change* in flux producing it (not the flux itself) — hence the direction is such that, e.g., for increasing flux into a loop, the induced current flows so as to create an opposing flux (via the right-hand rule applied to the opposing field), and vice versa for decreasing flux.

### Question 4 [(1+4)+(1+3)+3=12]

**(a) Define the time constant of R-C circuit. Derive an equation of charge of a R-C circuit when the capacitor is charging.**

Same as **[D-23]**. q(t)=Q₀(1-e^(-t/RC)).

**(b) What is resonant [frequency]? Deduce the equation of resonant frequency of R-L-C circuit.**

Same as **[D-25]**. f₀=(1)/(2π√(LC)).

**(c) A R-L-C circuit has an inductor of inductance 50 µH, capacitor of capacitance 5×10⁻⁴ μF and a resistor of resistance 100 Ω. Find the resonant frequency of the circuit.**

**Given:** L=50 μH=50×10⁻⁶ H, C=5×10⁻⁴ μF=5×10⁻¹⁰ F, R=100 Ω (does not affect f₀)  
**Required:** f₀  
**Formula:** f₀=(1)/(2π√(LC))  
**Calculation:**

LC=50×10⁻⁶×5×10⁻¹⁰=2.5×10⁻¹⁴

√(LC)=1.581×10⁻⁷

f₀=(1)/(2π×1.581×10⁻⁷)=(1)/(9.934×10⁻⁷)=1.0066×10⁶ Hz

**Answer:** f₀≈1.007 MHz

## Part B

### Question 5 [4+4+4=12]

**(a) Show that the adiabatic curves are higher than isothermal curves.**

Same as **[D-29]**.

**(b) Prove that PV^γ= Constant, where the symbols have their usual meaning.**

Same as **[D-30]**.

**(c) A motor tyre at 27 °C is pumped that when its pressure is equal to 2 atmospheric pressures the tyre bursts suddenly. Calculate the final temperature. (γ=1.4)**

**Given:** T₁=27°C=300 K, P₁=1 atm, P₂=2 atm (bursting = sudden = adiabatic process), γ=1.4  
**Required:** Final temperature T₂ (just before burst, adiabatic compression by pumping)  
**Formula:** For adiabatic process, TP^((1-γ)/(γ))= const, i.e. (T₂)/(T₁)=((P₂)/(P₁))^((γ-1)/(γ))  
**Calculation:**

(γ-1)/(γ)=(0.4)/(1.4)=0.2857

T₂=300×(2)^(0.2857)=300×1.2190=365.7 K

**Answer:** T₂≈365.7 K (≈92.7 °C)

### Question 6 [4+4+4=12]

**(a) Establish the relation between two specific heats of gas.**

Same as **[D-31]**: Cₚ-Cᵥ=R.

**(b) Show the entropy changes is constant in reversible process (Carnot's cycle).**

Same as **[D-32]**.

**(c) Distinguish between the first and the second law of thermodynamics.**

Same as **[D-34]**.

**(d) A Carnot engine while working between 450 K and 350 K takes 1000 cal of heat from high temperature reservoir. How much heat does the engine reject to the low temperature reservoir in each cycle? Calculate the efficiency. (1 cal = 4.2 J)**

**Given:** T₁=450 K, T₂=350 K, Q₁=1000 cal  
**Required:** Q₂ (heat rejected), efficiency η  
**Formula:** (Q₂)/(Q₁)=(T₂)/(T₁) **[D-37]**; η=1-(T₂)/(T₁)  
**Calculation:**

Q₂=Q₁×(T₂)/(T₁)=1000×(350)/(450)=777.8 cal

η=1-(350)/(450)=1-0.778=0.222=22.2%

(In joules, if required: Q₂=777.8×4.2=3266.7 J, Q₁=1000×4.2=4200 J, work done =Q₁-Q₂=933.3 J.)

**Answer:** Q₂≈777.8 cal (≈3266.7 J), η=22.2%

### Question 7 [3+3+3+3=12]

**(a) Define degrees of freedom. Describe the fundamental postulates of gas molecules.**

Same as **[D-44]** (degrees of freedom) and **[D-43]** (postulates).

**(b) What is mean free path? Derive an expression for mean free path.**

Same as **[D-45]**: λ=(1)/(√(2) nπ d²).

**(c) The mean free path of nitrogen molecule at 0 °C and 1 atm pressure is 0.8×10⁻⁷ m. At this temperature and pressure its density is 2.7×10¹⁹ molecules/cm³. What is the molecular diameter?**

**Given:** λ=0.8×10⁻⁷ m, n=2.7×10¹⁹ molecules/cm³=2.7×10²⁵ molecules/m³  
**Required:** Molecular diameter d  
**Formula:** λ=(1)/(√(2) nπ d²) ⇒ d=√((1)/(√(2) nπλ))  
**Calculation:**

d²=(1)/(√(2) π nλ)=(1)/(1.414×3.1416×2.7×10²⁵×0.8×10⁻⁷)

=(1)/(1.414×3.1416×2.16×10¹⁸)=(1)/(9.594×10¹⁸)=1.0423×10⁻¹⁹ m²

d=√(1.0423×10⁻¹⁹)=3.229×10⁻¹⁰ m

**Answer:** d≈3.23×10⁻¹⁰ m (3.23 Å)

### Question 8 [3+(1+4)+(1+3)=12]

**(a) State and explain second law of thermodynamics.**

Same as **[D-35]**.

**(b) What is specific heat capacity? For one mole ideal gas show that Cₚ-Cᵥ=R. Where the symbols have their usual meaning.**

Specific heat capacity: the amount of heat required to raise the temperature of unit mass (or one mole, for molar specific heat) of a substance by 1 K (or 1 °C). Derivation: same as **[D-31]**.

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

Same as **[D-9]**: C=(ε₀εᵣ A)/(d).

### Question 2 [(1+4)+4+3=12]

**(a) What is Specific resistance? State and explain Ohm's law.**

Same as **[D-12]**.

**(b) State and explain Kirchhoff's 2nd law of electrostatics.**

Same as **[D-13]** (voltage law).

**(c) There are four resistances 8, 16, 12 and 48 ohms placed on the arms of the Wheatstone bridge. How much resistance is connected in series or parallel with the fourth arm for balance conditions?**

**Given:** P=8 Ω, Q=16 Ω, R=12 Ω, fourth arm S=48 Ω (nominal)  
**Required:** Extra resistance x to add (series or parallel) to the fourth arm for balance  
**Formula:** Balance condition (P)/(Q)=(R)/(S_(eff)) **[D-14]**  
**Calculation:**

Required effective S_(eff)=(Q· R)/(P)=(16×12)/(8)=24 Ω

Since actual S=48 Ω ≠ 24 Ω, we must modify it to get 24 Ω.

*If connected in parallel* with resistance x: (1)/(S_(eff))=(1)/(S)+(1)/(x)⇒ (1)/(24)=(1)/(48)+(1)/(x)⇒(1)/(x)=(1)/(24)-(1)/(48)=(1)/(48)⇒ x=48 Ω

(Series would require S+x=24, impossible since S=48>24 already, so parallel is the only valid option.)

**Answer:** Connect 48 Ω in parallel with the fourth arm (48 Ω) to get effective S=24 Ω for balance.

### Question 3 [(1+4)+4+4=12]

**(a) What is charge density and electrical dipole? Deduce the relation between electric intensity and charge density.**

Charge density and electric dipole: see **[D-6]** (dipole) and **[D-5]** (charge density definition: ρ=q/V or σ=q/A). Relation between E and ρ: same as **[D-5]**: E=(ρ r)/(3ε₀) (inside a uniformly charged sphere).

**(b) Show that the electric intensity is directly proportional to twice of electric dipole [moment] and inversely proportional to cube of distance to the point.**

Same as **[D-6]** (axial field): E=(1)/(4πε₀)(2p)/(r³).

**(c) In an L-R circuit with source, the current reaches to one third of its maximum value within 5 sec. Find the time constant of the circuit.**

**Given:** i=(1)/(3) I₀ at t=5 s  
**Required:** Time constant τ=L/R  
**Formula:** i=I₀(1-e^(-t/τ)) **[D-24]**  
**Calculation:**

(1)/(3)=1-e^(-5/τ) ⇒ e^(-5/τ)=(2)/(3)

-(5)/(τ)=ln(2)/(3)=-0.4055

τ=(5)/(0.4055)=12.33 s

**Answer:** τ≈12.33 s

### Question 4 [4+4+4=12]

**(a) Show that the work done is directly proportional to kinetic energy of theory of gases.**

Same as **[D-43]** (last part): PV∝ total KE, both ∝ T.

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

**(a) Define molar specific heat. Find the relation between Cₚ and Cᵥ.**

Molar specific heat: heat required to raise the temperature of 1 mole of a substance by 1 K. Relation: same as **[D-31]**.

**(b) What is isentropic process? Derive an expression of work done during isentropic process.**

Same as **[D-41]**: W=(R(T₁-T₂))/(γ-1).

**(c) 0.1 m³ of air at pressure of 1.5 bar is expanded isothermally to 0.5 m³. Calculate the final pressure of the gas and heat supplied during the process.**

**Given:** V₁=0.1 m³, P₁=1.5 bar=1.5×10⁵ Pa, V₂=0.5 m³, isothermal  
**Required:** P₂, heat supplied Q  
**Formula:** P₁V₁=P₂V₂ (Boyle's law, isothermal); Q=W=P₁V₁ln(V₂)/(V₁) **[D-42]**  
**Calculation:**

P₂=(P₁V₁)/(V₂)=(1.5×10⁵×0.1)/(0.5)=3×10⁴ Pa=0.3 bar

Q=W=P₁V₁ln(V₂)/(V₁)=1.5×10⁵×0.1×ln((0.5)/(0.1))=1.5×10⁴×ln5

=1.5×10⁴×1.609=24,142 J≈24.14 kJ

**Answer:** P₂=0.3 bar (3×10⁴ Pa), Q≈24.14 kJ

### Question 7 [4+4+4=12]

**(a) What are entropy and unavailable energy?**

Same as **[D-33]**.

**(b) Show that entropy remains constant in [a] reversible [adiabatic] process.**

Same as **[D-32]**.

*(Note: the question as printed says "irreversible process," which conflicts with the standard result — entropy of the universe **increases**, not remains constant, in an irreversible process. This is very likely a scanning/printing typo for "reversible process," consistent with the identical question appearing correctly in other years' papers. Solved here as "reversible process," per D-32.)*

**(c) Find the efficiency of an engine requiring 3×10⁶ cal heat per horse power [-hour] and compare it with that of a perfect reversible engine. Assuming that the source is at 100 °C and the sink is at 0 °C.**

**Given:** Heat used Q=3×10⁶ cal per horsepower-hour of work output; T₁=100°C=373 K; T₂=0°C=273 K  
**Required:** Efficiency of the actual engine; compare with a Carnot (perfect reversible) engine  
**Formula:** 1 HP-hour =641,190 cal (since 1 HP =746 W, 1 hour =3600 s, work =746×3600=2.6856×10⁶ J; using 1 cal=4.2 J, work in cal =2.6856×10⁶/4.2=639,430 cal)

η_(actual)=(work output)/(heat input)=(639,430)/(3×10⁶)=0.2131=21.3%

η_(Carnot)=1-(T₂)/(T₁)=1-(273)/(373)=1-0.7319=0.2681=26.8%

**Answer:** η_(actual)≈21.3%, η_(Carnot)≈26.8% — the actual engine is less efficient than the ideal (Carnot/reversible) engine operating between the same two temperatures, as required by the second law.

### Question 8 [4+4+4=12]

**(a) What is photoelectric effect? Derive Einstein's photoelectric equation.**

Same as **[D-47]**: hν=hν₀+(1)/(2)mvₘₐₓ².

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

Same as **[D-9]**: C=(ε₀εᵣ A)/(d).

**(c) The area of each plate of a parallel plate capacitor is 1.5 m² and distance between the plates in air medium is 0.02 m. Calculate the capacitance of the capacitor. (ε₀=8.854×10⁻¹² F/m, relative permittivity of air ≈1)**

**Given:** A=1.5 m², d=0.02 m, medium = air (εᵣ=1)  
**Required:** Capacitance C  
**Formula:** C=(ε₀A)/(d)  
**Calculation:**

C=(8.854×10⁻¹²×1.5)/(0.02)=(1.3281×10⁻¹¹)/(0.02)=6.64×10⁻¹⁰ F

**Answer:** C≈6.64×10⁻¹⁰ F=0.664 nF

### Question 2 [4+5+3=12]

**(a) Explain Faraday's law and Lenz's law.**

Same as **[D-21]**.

**(b) Show that the Lenz's law obeys the principle of conservation of energy.**

Same as **[D-21]** (conservation-of-energy argument).

**(c) Calculate the self-inductance of a coil of 400 turns when 2 Amp current creates 4×10⁻⁴ Wb of flux.**

**Given:** N=400, I=2 A, φ=4×10⁻⁴ Wb  
**Required:** Self-inductance L  
**Formula:** Nφ=LI ⇒ L=(Nφ)/(I)  
**Calculation:**

L=(400×4×10⁻⁴)/(2)=(0.16)/(2)=0.08 H

**Answer:** L=0.08 H=80 mH

### Question 3 [2+5+5=12]

**(a) State and explain Gauss's law.**

Same as **[D-1]**.

**(b) For the balanced condition in the Wheatstone bridge show that P/Q=R/S, where the symbols have their usual meaning.**

Same as **[D-14]**.

**(c) Calculate the field E due to a point P at a distance R along the perpendicular bisector of the line joining the charges.**

Same as **[D-7]**: E=(1)/(4πε₀)(2qR)/((R²+a²)^(3/2)) (with 2a = separation of the two charges, as generally set up; the exact numeric answer depends on charge magnitude q and separation, which are not given explicit numeric values in this printed question — the expression above is the required "field due to point P" result. If specific values of q and a are supplied in the student's version of the paper, substitute them directly into this formula.)

### Question 4 [(1+4)+7+3=12]

**(a) What is Hysteresis? State and explain the Hysteresis curve of a magnetic material.**

Same as **[D-22]**.

**(b) Draw the curves for growth and decay of current in a LR circuit and explain the diagram.**

Same as **[D-24]**.

**(c) A LR circuit has an inductance of 50 Henry and a resistance of 30 Ω. It is connected to a 100 volt battery, how long will it take for the current to reach one half of its final value?**

**Given:** L=50 H, R=30 Ω, V=100 V, i=(1)/(2) I₀  
**Required:** Time t  
**Formula:** i=I₀(1-e^(-Rt/L)), τ=L/R  
**Calculation:**

(1)/(2)=1-e^(-Rt/L) ⇒ e^(-Rt/L)=(1)/(2)

(Rt)/(L)=ln2=0.693

t=(0.693 L)/(R)=(0.693×50)/(30)=(34.66)/(30)=1.155 s

**Answer:** t≈1.155 s (note: 100 V is not needed for the time calculation since τ=L/R is independent of the applied voltage — it only fixes I₀=V/R).

## Part B

### Question 5 [3+6+3=12]

**(a) Show that entropy in reversible process remains same.**

Same as **[D-32]**.

**(b) What is isothermal process? Derive an expression of work done during isothermal process.**

Same as **[D-42]**: W=RTln(V₂/V₁).

**(c) Calculate the average kinetic energy of a molecule of a gas at the temperature 300 K.**

**Given:** T=300 K, k=1.38×10⁻²³ J K⁻¹  
**Required:** Average KE per molecule  
**Formula:** ⟨KE⟩=(3)/(2) kT **[D-43]**  
**Calculation:**

⟨KE⟩=(3)/(2)×1.38×10⁻²³×300=(3)/(2)×4.14×10⁻²¹=6.21×10⁻²¹ J

**Answer:** ⟨KE⟩≈6.21×10⁻²¹ J

### Question 6 [3+6+3=12]

**(a) Explain Newton's law of cooling.**

Same as **[D-46]**.

**(b) What is photon? Derive the Einstein photoelectric effect equation.**

**Photon:** A discrete packet (quantum) of electromagnetic energy, of energy E=hν and momentum p=h/λ, travelling at speed c; the particle-like unit in which light interacts with matter. Derivation: same as **[D-47]**.

**(c) Calculate the work function of sodium in electron volt where threshold wavelength is 6800 Å and Planck's constant is 6.663×10⁻³⁴ Js.**

**Given:** λ₀=6800 Å=6800×10⁻¹⁰ m=6.8×10⁻⁷ m, h=6.663×10⁻³⁴ Js, c=3×10⁸ m/s  
**Required:** Work function W₀ in eV  
**Formula:** W₀=(hc)/(λ₀) **[D-47]**  
**Calculation:**

W₀=(6.663×10⁻³⁴×3×10⁸)/(6.8×10⁻⁷)=(1.9989×10⁻²⁵)/(6.8×10⁻⁷)=2.939×10⁻¹⁹ J

Converting to eV (1 eV=1.6×10⁻¹⁹ J):

W₀=(2.939×10⁻¹⁹)/(1.6×10⁻¹⁹)=1.837 eV

**Answer:** W₀≈1.84 eV

### Question 7 [2+4+4+2=12]

**(a) What is Carnot's Cycle?**

Same as **[D-36]**.

**(b) Show that in the range of temperature T₁ and T₂ the efficiency of a Carnot's engine is η=(T₁-T₂)/(T₁).**

Same as **[D-37]**.

**(c) Distinguish between the first and the second law of thermodynamics.**

Same as **[D-34]**.

**(d) What is specific heat?**

The quantity of heat required to raise the temperature of a unit mass of a substance through 1 K (or 1 °C); Q=mcΔ T, where c is the specific heat capacity (J kg⁻¹K⁻¹).

### Question 8 [4+4+4=12]

**(a) State and explain second law of thermodynamics.**

Same as **[D-35]**.

**(b) Show the energy storage in an electric field is U=(1)/(2)CV² where the symbols have their usual meaning.**

Same as **[D-11]**.

**(c) A certain amount of dry air at 15 °C is expanded adiabatically to double its volume. What will be the temperature? (γ=1.40)**

**Given:** T₁=15°C=288 K, V₂=2V₁, γ=1.40  
**Required:** Final temperature T₂  
**Formula:** T₁V₁^(γ-1)=T₂V₂^(γ-1) ⇒ T₂=T₁((V₁)/(V₂))^(γ-1)  
**Calculation:**

T₂=288×((1)/(2))^(0.4)=288×0.7579=218.3 K

**Answer:** T₂≈218.3 K (≈-54.7 °C)

---

# 2020 (Full Marks 72, Time 3 hrs)

## Part A

### Question 1 [7+3+2=12]

**(a) State and prove Gauss's law of electrostatics.**

Same as **[D-1]**.

**(b) Show that Coulomb's law of electrostatics can be deduced from the Gauss's law.**

Same as **[D-3]**.

**(c) What is the magnitude of the electric field strength such that an electron placed in the field would experience an electrical force equal to its weight?**

**Given:** electron mass mₑ=9.11×10⁻³¹ kg, electron charge e=1.6×10⁻¹⁹ C, g=9.8 m/s²  
**Required:** E such that eE=mₑg  
**Formula:** E=(mₑg)/(e)  
**Calculation:**

E=(9.11×10⁻³¹×9.8)/(1.6×10⁻¹⁹)=(8.928×10⁻³⁰)/(1.6×10⁻¹⁹)=5.58×10⁻¹¹ N/C

**Answer:** E≈5.58×10⁻¹¹ N/C

### Question 2 [(1+3)+5+3=12]

**(a) State Lenz's law of electromagnetic induction. Show that Lenz's law follows the law of conservation of energy.**

Same as **[D-21]**.

**(b) Show that in a LR circuit current increases exponentially.**

Same as **[D-24]** (growth part).

**(c) In an LR circuit with source, the current reaches to one third of its maximum value within 5 sec. Find the time constant of the circuit.**

Same numerical as **2022 Q3(c)**: τ≈12.33 s (identical given data; see that solution for full working).

### Question 3 [(1+4)+7=12]

**(a) What is Hall effect? Deduce the equation of Hall voltage.**

Same as **[D-17]**.

**(b) Describe L-R circuit and plot growth and decay current with time.**

Same as **[D-24]**.

### Question 4 [(1+3)+(3+2)+3=12]

**(a) What are the critical constants of a gas? Calculate the values of these constants in terms of the constants of the Van der Waals equation.**

Same as **[D-50]**: V_c=3b, P_c=(a)/(27b²), T_c=(8a)/(27Rb).

**(b) Describe the principle of a platinum resistance thermometer. Discuss its advantages and disadvantages.**

Same as **[D-51]**.

**(c) The values of resistances of a platinum resistance thermometer are 2.585 ohms and 3.510 ohms at 0 °C and 100 °C respectively. When placed in a hot bath, the resistance is found to be 9.098 ohms. Calculate the temperature of the hot bath on the gas scale. Assume δ=1.5 for platinum.**

**Given:** R₀=2.585 Ω, R₁₀₀=3.510 Ω, Rₜ=9.098 Ω, δ=1.5  
**Required:** Gas-scale temperature t_(gas)  
**Formula (platinum scale):** t_(Pt)=(Rₜ-R₀)/(R₁₀₀-R₀)×100  
**Callendar correction:** t_(gas)=t_(Pt)+δ((t_(Pt))/(100))((t_(Pt))/(100)-1)  
**Calculation:**

t_(Pt)=(9.098-2.585)/(3.510-2.585)×100=(6.513)/(0.925)×100=704.1 °C

t_(gas)=704.1+1.5((704.1)/(100))((704.1)/(100)-1)=704.1+1.5(7.041)(6.041)

=704.1+1.5×42.54=704.1+63.81=767.9 °C

**Answer:** t_(gas)≈767.9 °C

## Part B

### Question 5 [(1+3)+3+(1+4)=12]

**(a) What is mean free path? Derive an expression for the mean free path.**

Same as **[D-45]**.

**(b) State and explain Newton's law of cooling.**

Same as **[D-46]**.

**(c) Define molar specific heat. Find the relation between Cₚ and Cᵥ.**

Same as **[D-31]**.

### Question 6 [8+(2+2)=12]

**(a) Derive the general expression for the establishment of Maxwell thermodynamics relation.**

Same as **[D-40]** (full four-relation derivation).

**(b) Show that (i) ((∂ Q)/(∂ V))_T=T((∂ P)/(∂ T))_V (ii) ((∂ T)/(∂ V))_S=-T((∂ P)/(∂ Q))_V. Symbols have their usual meaning.**

Same as **[D-40]** (the two "show that" derivations given explicitly there).

### Question 7 [(1+3)+(2+2)+4=12]

**(a) What is Carnot's engine? Show the Carnot cycle is a reversible process.**

Same as **[D-36]**, **[D-38]**.

**(b) Define the efficiency of Carnot's engine. Find the efficiency of Carnot's engine working at the steam point and the ice point.**

**Efficiency definition:** same as **[D-37]**, η=1-T₂/T₁.

**Given:** Steam point T₁=100°C=373 K, ice point T₂=0°C=273 K

**Calculation:**

η=1-(273)/(373)=1-0.7319=0.2681=26.8%

**Answer:** η≈26.8%

**(c) Discuss the corrections of Van der Waal's equation of state.**

Same as **[D-50]** (last paragraph — limitations/corrections discussion).

### Question 8 [(1+3)+(2+2)+4=12]

**(a) Is the photoelectric effect a consequence of the wave character of radiation or is it a consequence of the particle character of radiation? Explain briefly.**

Same as **[D-47]** (first paragraph) — it is a consequence of the **particle (quantum)** character of radiation.

**(b) Explain the photoelectric effect and establish Einstein's photoelectric equation.**

Same as **[D-47]**.

**(c) Calculate the work function of sodium, in electron volts, given that the threshold wavelength is 6800 Å, and h=6.625×10⁻³⁴ Js.**

**Given:** λ₀=6.8×10⁻⁷ m, h=6.625×10⁻³⁴ Js, c=3×10⁸ m/s  
**Required:** W₀ in eV  
**Formula:** W₀=hc/λ₀  
**Calculation:**

W₀=(6.625×10⁻³⁴×3×10⁸)/(6.8×10⁻⁷)=(1.9875×10⁻²⁵)/(6.8×10⁻⁷)=2.923×10⁻¹⁹ J

W₀=(2.923×10⁻¹⁹)/(1.6×10⁻¹⁹)=1.827 eV

**Answer:** W₀≈1.83 eV (essentially the same as the 2021 Q6(c) numerical, using h=6.625×10⁻³⁴ instead of 6.663×10⁻³⁴).

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
| Relative permeability μᵣ | Slightly <1 | Slightly >1 | Very much >1 (hundreds–thousands) |
| Susceptibility χ | Small, negative | Small, positive | Large, positive |
| Effect of temperature | Essentially independent of T | χ∝1/T (Curie's law) | Decreases with T, vanishes above Curie point |
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

Same as **[D-31]**: Cₚ-Cᵥ=R.

### Question 5 [1+1=2, 4]

**(a) Define mean free path, degrees of freedom.**

Same as **[D-45]** (mean free path definition) and **[D-44]** (degrees of freedom).

**(b) Calculate the average kinetic energy of a molecule of a gas at a temperature of 300 K.**

Identical numerical to **2021 Q5(c)**: ⟨KE⟩≈6.21×10⁻²¹ J (see that solution for full working).

### Question 6 [6]

**According to the principle of kinetic theory of gases, prove that the pressure exerted by a perfect gas is given by P=(1)/(3)(mnc²)/(V), where the symbols have their usual meaning.**

Same as **[D-43]**: P=(1)/(3)(nm⟨c²⟩)/(V).

---

# 2018 (Full Marks 72, Time 3 hrs)

## Part A

### Question 1 [3+6+3=12]

**(a) Define: (i) Gauss's law (ii) Ohm's law (iii) Capacitor.**

Same as **[D-1], [D-12], [D-8]** (identical to 2023 Q1(a)).

**(b) Deduce Wheatstone's bridge principle using Kirchhoff's law.**

Same as **[D-14]**.

**(c) Show that (1)/(Cₛ)=(1)/(C₁)+(1)/(C₂)+(1)/(C₃).**

Same as **[D-10]**.

*(This entire Question 1 is identical to 2023's Question 1 — same solutions apply.)*

### Question 2 [(1+4)+3+(1+3)=12]

**(a) What is Hall effect? Deduce the equation of Hall voltage.**

Same as **[D-17]**.

**(b) Show the Lenz's law follows the law of conservation of energy.**

Same as **[D-21]**.

**(c) Define self-induction. A current carrying loop of length 2.5 cm and width 1 cm carries a current of 4A. It's placed parallel to a uniform magnetic field of 2T. Calculate the torque of the loop.**

Self-induction: same as **[D-20]**.

**Given:** l=2.5 cm=0.025 m, w=1 cm=0.01 m, I=4 A, B=2 T, loop plane **parallel** to B (so the loop's normal is perpendicular to B, i.e. θ=90° between normal and field, giving maximum torque since sinθ=1)  
**Required:** Torque τ  
**Formula:** τ=NIABsinθ **[D-18]**, N=1  
**Calculation:**

A=l× w=0.025×0.01=2.5×10⁻⁴ m²

Loop parallel to B means the normal to the loop is perpendicular to B, so θ=90°, sinθ=1:

τ=1×4×2.5×10⁻⁴×2×1=2×10⁻³ N·m

**Answer:** τ=2×10⁻³ N·m=2 mN·m

### Question 3 [2+7+3=12]

**(a) Define heat & temperature.**

Same as **2019 Q4(a)** definitions table (Heat vs Temperature).

**(b) Show that the pressure by a perfect gas is (2)/(3) of the kinetic energy of the gas molecules in a unit volume.**

Same as **[D-43]**: P=(2)/(3)×(KE per unit volume).

**(c) State Newton's law of cooling.**

Same as **[D-46]**.

### Question 4 [(1+4)+(1+3)+3=12]

**(a) Define the time constant of R-C circuit. Derive an equation of charge of a R-C circuit when the capacitor is charging.**

Same as **[D-23]** (identical to 2023 Q4(a)).

**(b) What is resonant? Deduce the equation of resonant frequency of R-L-C circuit.**

Same as **[D-25]** (identical to 2023 Q4(b)).

**(c) A R-L-C circuit has an inductor of inductance 50 µH, capacitor of capacitance 5×10⁻⁴ μF and a resistor of resistance 100 Ω. Find the frequency of the circuit.**

Identical numerical data to **2023 Q4(c)**: f₀≈1.007 MHz (see that solution for full working).

## Part B

### Question 5 [2+2+4+4=12]

**(a) What is degree of freedom and state van-der-Waal's equation.**

Same as **[D-44]** (degrees of freedom) and **[D-50]** (van der Waals equation).

**(b) Deduce the values of van-der-Waal constant [critical constants].**

Same as **[D-50]**: V_c=3b, P_c=(a)/(27b²), T_c=(8a)/(27Rb).

**(c) Show that the adiabatic curves are higher than isothermal curves.**

Same as **[D-29]**.

**(d) State and deduce Kirchhoff's law of radiation.**

Same as **[D-49]** (Kirchhoff's law of radiation part).

### Question 6 [2+2+4+4=12]

**(a) Define degrees of freedom. Describe the fundamental postulates of gas molecules.**

Same as **[D-44]**, **[D-43]** (identical to 2023 Q7(a)).

**(b) What is mean free path? Derive an expression for mean free path.**

Same as **[D-45]** (identical to 2023 Q7(b)).

**(c) The mean free path of nitrogen molecule at 0 °C and 1 atm pressure is 0.8×10⁻⁷ m. At this temperature and pressure its density is 2.7×10¹⁹ molecules/cm³. What is the molecular diameter?**

Identical numerical data to **2023 Q7(c)**: d≈3.23×10⁻¹⁰ m (see that solution for full working).

### Question 7 [(1+3.5)+(1+3.5)+3=12]

**(a) What is entropy?**

Same as **[D-33]** (entropy definition).

**(b) Explain the first latent heat (Clausius-Clapeyron) equation.**

Same as **[D-39]**: (dP)/(dT)=(L)/(T(V₂-V₁)).

**(c) Show the entropy changes is constant in reversible process (Carnot's cycle).**

Same as **[D-32]** (identical in structure to 2023 Q6(b)).

### Question 8 [3+(1+4)+(1+3)=12]

**(a) State and explain second law of thermodynamics.**

Same as **[D-35]** (identical to 2023 Q8(a)).

**(b) What is specific heat capacity? For one mole ideal gas show that Cₚ-Cᵥ=R. Where the symbols have their usual meaning.**

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

**Given:** side of plates =50 cm=0.5 m, so A=0.5×0.5=0.25 m²; total plate separation d=1 cm=0.01 m; sulphur slab thickness t=6 mm=0.006 m, εᵣ=4; remaining air gap =d-t=0.01-0.006=0.004 m  
**Required:** Capacitance C  
**Formula (capacitor partly filled with a dielectric slab):**

C=(ε₀A)/((d-t)+(t)/(εᵣ))

**Calculation:**

(d-t)+(t)/(εᵣ)=0.004+(0.006)/(4)=0.004+0.0015=0.0055 m

C=(8.854×10⁻¹²×0.25)/(0.0055)=(2.2135×10⁻¹²)/(0.0055)=4.024×10⁻¹⁰ F

**Answer:** C≈4.02×10⁻¹⁰ F=0.402 nF

### Question 2 [(1+5)+7.5+4=17.5]

**(a) What is specific resistance? State and explain Ohm's law.**

Same as **[D-12]**.

**(b) State and explain Kirchhoff's law of electricity.**

Same as **[D-13]**.

**(c) There are four resistances 8Ω,16Ω,12Ω and 48Ω placed on the arms of the wheat stone bridge. How much resistance is connect in series or parallel with the fourth arm for balanced condition?**

Identical data/method to **2022 Q2(c)**: required S_(eff)=24 Ω; since actual arm is 48 Ω, connect a further 48 Ω **in parallel** with it to bring the effective resistance down to 24 Ω. Parallel 48 Ω (see 2022 Q2(c) for full working).

### Question 3 [6+8.5+3=17.5]

**(a) Define the following terms: (i) Magnetic induction (ii) Mutual induction (iii) Self induction.**

Same as **[D-20]**.

**(b) Derive an expression for torque on a current carrying loop.**

Same as **[D-18]**: τ=NIABsinθ.

**(c) Write down the Faraday's law of electromagnetic induction.**

Same as **[D-21]** (Faraday's law part).

### Question 4 [(1+5)+(1+6)+(1+3.5)=17.5]

**(a) Define magnetic induction. Derive an equation of magnetic force on a moving charge in a magnetic field.**

Same as **[D-20]**: F⃗=q(v⃗×B⃗).

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

Same as **[D-37]**: η=1-(T₂)/(T₁).

### Question 6 [4+5+8.5=17.5]

**(a) State and explain the second law of thermodynamics. How can [it] differ from the first law?**

Same as **[D-35]** and **[D-34]** (distinguishing first and second laws).

**(b) What is isothermal process? Derive an equation for work done during the isothermal process.**

Same as **[D-42]**: W=RTln(V₂/V₁).

**(c) A carnot engine is operated between two reservoirs at temperature 177 °C and 77 °C. If the engine receives 4200 J of heat energy from the source in each cycle, calculate the amount of heat rejected to the sink in each cycle, the efficiency and work done by the engine.**

**Given:** T₁=177°C=450 K, T₂=77°C=350 K, Q₁=4200 J  
**Required:** Q₂, η, W  
**Formula:** (Q₂)/(Q₁)=(T₂)/(T₁), η=1-(T₂)/(T₁), W=Q₁-Q₂  
**Calculation:**

Q₂=Q₁×(T₂)/(T₁)=4200×(350)/(450)=3266.7 J

η=1-(350)/(450)=0.2222=22.2%

W=Q₁-Q₂=4200-3266.7=933.3 J

**Answer:** Q₂≈3266.7 J, η≈22.2%, W≈933.3 J

*(This is the same problem as 2023 Q6(d), here in SI units directly rather than calories.)*

### Question 7 [(4+2)+(1+6)+4.5=17.5]

**(a) What are entropy and unavailable energy?**

Same as **[D-33]**.

**(b) Show that entropy remain constant in reversible process. Derive the expression for Clausius-Clapeyron equation.**

Same as **[D-32]** and **[D-39]**.

**(c) Find the efficiency of an engine requiring 3×10⁶ cal heat per horse power and compare it with that of a perfect reversible engine, assuming that the source is at 100 °C and the sink is at 0 °C.**

Identical numerical to **2022 Q7(c)**: η_(actual)≈21.3%, η_(Carnot)≈26.8% (see that solution for full working).

### Question 8 [3+5+9.5=17.5]

**(a) Define the following terms: (i) Blackbody radiation (ii) Emissive power (iii) Absorptive power.**

Same as **[D-49]**.

**(b) What is photoelectric effect? Derive the Einstein's photoelectric effect equation.**

Same as **[D-47]**: hν=hν₀+(1)/(2)mvₘₐₓ².

**(c) What is Compton effect? Show that λ'-λ=λ_c(1-cosφ), where the symbols have their usual meaning.**

Same as **[D-48]**: λ'-λ=(h)/(m₀c)(1-cosφ), where λ_c=h/(m₀c) is the Compton wavelength.

---

# High-Frequency / Repeated Topics

| Topic | Years Appeared |
|---|---|
| Gauss's law / Ohm's law / Capacitor definitions + Wheatstone bridge derivation + 1/Cₛ formula | 2023, 2018 |
| Wheatstone bridge balance numerical (8,16,12,48 Ω) | 2022, 2017 |
| Hall effect & Hall voltage derivation | 2023, 2021 (implicit via bridge topic set), 2020, 2018 |
| Torque on current-carrying loop | 2023, 2018, 2017 |
| Faraday's law & Lenz's law (+ conservation of energy) | 2023, 2022, 2021, 2020, 2018, 2017 |
| Hysteresis / hysteresis curve | 2023, 2021, 2020 |
| RC circuit — time constant & charging equation | 2023, 2018, 2017 |
| Resonant frequency of RLC + numerical (50 µH, 5×10⁻⁴ µF, 100 Ω) | 2023, 2018 |
| LR circuit growth/decay of current | 2021, 2020, 2019 (qualitatively via topic), 2017 |
| LR time-constant numerical (1/3 max value in 5 s) | 2022, 2020 |
| Adiabatic curve higher than isothermal (proof) | 2023, 2022, 2018 |
| PV^γ= constant proof | 2023 |
| Carnot engine / cycle definition & reversibility proof | 2023, 2022, 2020, 2018 |
| Efficiency of Carnot engine (η=1-T₂/T₁) | 2023, 2021, 2017, 2020, 2022 |
| Carnot numerical (T1=450K,T2=350K / 177°C,77°C) | 2023, 2017 |
| Cₚ-Cᵥ=R derivation | 2023, 2021 (via molar specific heat), 2019, 2018 |
| Distinguish 1st & 2nd law of thermodynamics | 2023, 2021, 2020 (implicit), 2017 |
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
| Pressure of a perfect gas from kinetic theory (P=(1)/(3)ρ⟨c²⟩ or (2)/(3)KE form) | 2019, 2018 |
| Clausius–Clapeyron equation | 2018, 2017 |
| Maxwell's thermodynamic relations | 2020 |
| Zeroth law / first law = conservation of energy | 2022 |
| Isentropic process — work done | 2022 |
| Platinum resistance thermometer | 2020 |
| Coulomb's law + parallel-plate capacitor numerical | 2022, 2017 |
| Electric dipole field (∝ 2p/r³) | 2022 |
| Self-induction numerical (400 turns, flux) | 2021 |

---

# Physics-II Formula Sheet

## Electricity

F=(1)/(4πε₀)(q₁q₂)/(r²) (Coulomb's law) E⃗=(F⃗)/(q₀)=(1)/(4πε₀)(q)/(r²)r̂ (field intensity)

∮E⃗· dA⃗=(q_(enc))/(ε₀) (Gauss's law) E_(axial dipole)=(1)/(4πε₀)(2p)/(r³) (p=q·2a)

C=(Q)/(V) C_(parallel plate)=(ε₀εᵣA)/(d) (1)/(Cₛ)=(1)/(C₁)+(1)/(C₂)+(1)/(C₃) (series) Cₚ=C₁+C₂+C₃ (parallel)

U=(1)/(2)CV²=(Q²)/(2C)=(1)/(2)QV V=IR ρ=(RA)/(l)

Wheatstone bridge balance: (P)/(Q)=(R)/(S)

where ε₀=8.854×10⁻¹² F/m, p = dipole moment, R = resistance, ρ = resistivity.

## Magnetism

F⃗=q(v⃗×B⃗) F=BIlsinθ τ=NIABsinθ

V_H=(IB)/(nqt) L=(Nφ)/(I) ℰ=-N(dφ)/(dt) (Faraday's law)

where B = magnetic flux density, I = current, l = length, A = loop area, θ = angle, n = carrier density, t = thickness, L = self-inductance, N = turns, φ = flux/turn.

## Electromagnetic Induction

ℰ=-L(dI)/(dt) (self) ℰ₂=-M(dI₁)/(dt) (mutual)

Lenz's law: opposes flux change (energy conservation).

## AC / RLC Circuits

q(t)=Q₀(1-e^(-t/RC)) (RC charging) q(t)=Q₀e^(-t/RC) (RC discharging) τ_(RC)=RC

i(t)=I₀(1-e^(-Rt/L)) (LR growth) i(t)=I₀e^(-Rt/L) (LR decay) τ_(LR)=(L)/(R)

f₀=(1)/(2π√(LC)) (resonant frequency of series RLC)

## Kinetic Theory of Gases

P=(1)/(3)(nm⟨c²⟩)/(V)=(1)/(3)ρ⟨c²⟩=(2)/(3)(KE per unit volume) ⟨KE⟩=(1)/(2)m⟨c²⟩=(3)/(2)kT

λ=(1)/(√(2) nπ d²) (mean free path) k=1.38×10⁻²³ J K⁻¹

## Thermodynamics

dQ=dU+dW (1st law) Cₚ-Cᵥ=R PV^γ=const (adiabatic) PV=RT (ideal gas, 1 mole)

Wᵢₛₒₜₕₑᵣₘₐₗ=RTln(V₂)/(V₁) W_(isentropic)=(R(T₁-T₂))/(γ-1)=(P₁V₁-P₂V₂)/(γ-1)

η_(Carnot)=1-(T₂)/(T₁) (Q₂)/(Q₁)=(T₂)/(T₁) dS=(dQᵣₑᵥ)/(T) E_(unavailable)=T₀Δ S

(dP)/(dT)=(L)/(T(V₂-V₁)) (Clausius–Clapeyron) (P+(a)/(V²))(V-b)=RT (van der Waals)

V_c=3b, P_c=(a)/(27b²), T_c=(8a)/(27Rb) R=8.314 J mol⁻¹K⁻¹

Maxwell relations: ((∂ T)/(∂ V))_S=-((∂ P)/(∂ S))_V, ((∂ T)/(∂ P))_S=((∂ V)/(∂ S))_P, ((∂ S)/(∂ V))_T=((∂ P)/(∂ T))_V, ((∂ S)/(∂ P))_T=-((∂ V)/(∂ T))_P

## Radiation

(e_λ)/(a_λ)=E_λ(black body) (Kirchhoff's law of radiation)

## Quantum Physics

hν=hν₀+(1)/(2)mvₘₐₓ² (Einstein photoelectric equation) W₀=hν₀=(hc)/(λ₀)

λ'-λ=(h)/(m₀c)(1-cosφ) (Compton shift)

where h=6.626×10⁻³⁴ J s, c=3×10⁸ m/s.

---

# Final Exam Preparation Section

## Most Important Topics (by frequency across 2017–2023)

1. Faraday's/Lenz's law and conservation of energy — appeared **6 of 7** years
2. Carnot engine/cycle: definition, reversibility, efficiency — **5–6** years
3. Newton's law of cooling — **5** years
4. Photoelectric effect & Einstein's equation — **5** years
5. Adiabatic vs isothermal curves, Cₚ-Cᵥ=R, entropy-constant-in-reversible-process, 2nd law statement/distinction — **4** years each
6. Hall effect, RC time constant/charging, mean free path, degrees-of-freedom/kinetic postulates — **3** years each
7. Wheatstone bridge (derivation + numerical), torque on loop, hysteresis, Compton effect, LR growth/decay — **2–3** years each

## Most Important Derivations (memorize/practice first)

- Wheatstone bridge balance condition **[D-14]**
- Hall voltage **[D-17]**
- Torque on current loop **[D-18]**
- RC charging equation & time constant **[D-23]**
- LR growth/decay **[D-24]**
- PV^γ= constant and adiabatic-steeper-than-isothermal **[D-29], [D-30]**
- Cₚ-Cᵥ=R **[D-31]**
- Carnot efficiency η=1-T₂/T₁ and reversibility of the cycle **[D-37], [D-38]**
- Mean free path **[D-45]**
- Einstein's photoelectric equation **[D-47]**
- Compton shift formula **[D-48]**

## Most Important Numerical Problem Types

- Wheatstone bridge: finding series/parallel resistance for balance (8,16,12,48 Ω pattern)
- RLC resonant frequency (50 µH, 5×10⁻⁴ µF, 100 Ω pattern)
- Carnot engine heat-rejected/efficiency (450 K & 350 K, or 177 °C & 77 °C pattern)
- LR time constant from "reaches 1/3 (or 1/2) of max current in given time"
- Mean free path → molecular diameter (N₂ gas pattern)
- Photoelectric work function from threshold wavelength (Na, 6800 Å pattern)
- Adiabatic T–P or T–V relations (tyre-burst / air-expansion pattern)
- Average KE of a gas molecule at a given T ((3)/(2)kT)
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
- [ ] RC and LR transient equations, both forms (growth/charging, decay/discharging), and time constants RC, L/R
- [ ] Resonant frequency formula f₀=1/(2π√(LC))
- [ ] PV^γ=const, adiabatic vs isothermal slope comparison
- [ ] Cₚ-Cᵥ=R; molar specific heat; degrees of freedom
- [ ] Zeroth, first, second laws of thermodynamics; reversible vs irreversible
- [ ] Entropy definition, "constant in reversible process," unavailable energy T₀Δ S
- [ ] Carnot cycle diagram, efficiency formula, reversibility proof
- [ ] Clausius–Clapeyron equation; Maxwell's relations (four boxed forms)
- [ ] Kinetic theory postulates; pressure formula P=(1)/(3)ρ⟨c²⟩; mean free path formula
- [ ] Van der Waals equation and critical constants V_c=3b, P_c=a/27b², T_c=8a/27Rb
- [ ] Blackbody radiation, emissive/absorptive power, Kirchhoff's radiation law
- [ ] Einstein's photoelectric equation and work function formula W₀=hc/λ₀
- [ ] Compton effect and shift formula with Compton wavelength value 2.43×10⁻¹² m
- [ ] Standard constants: h, c, k, ε₀, μ₀, R

---

*End of complete solved question bank — Physics-II (PHY-103), BUTEX, 2017–2023.*
