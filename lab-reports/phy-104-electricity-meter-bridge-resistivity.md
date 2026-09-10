---
course: PHY 104 — Physics II (Practical)
experiment_no: 3
title: Specific Resistance of a Wire by Meter Bridge
---

# Determination of the Specific Resistance (Resistivity) of a Wire by Meter Bridge

## Aim
To determine the specific resistance (resistivity) of the material of a given wire using a meter bridge.

## Apparatus / Equipment
- Meter bridge with 1 m bridge wire
- Resistance box (R)
- Given wire (unknown resistance X) mounted between two terminals, of known length
- Galvanometer, jockey
- Leclanché cell or battery eliminator, one-way key
- Screw gauge (for wire diameter)
- Metre scale
- Connecting wires

## Theory / Principle
The meter bridge is a practical Wheatstone-bridge arrangement. A known resistance $R$ (resistance box) is placed in one gap and the unknown wire $X$ in the other. When the bridge is balanced by sliding a jockey along the wire to the null point at length $l$ (measured from the end nearer to $R$),
$$
\frac{R}{X} = \frac{l}{100-l}
\qquad\Longrightarrow\qquad
X = R\,\frac{100-l}{l}
$$
If the end corrections $\alpha$ (near $R$) and $\beta$ (near $X$) of the bridge are known (determined separately), the corrected balance lengths $l+\alpha$ and $100-l+\beta$ should be used in place of $l$ and $100-l$.

Once the resistance $X$ of the wire is known, its specific resistance (resistivity) $\rho$ is obtained from the geometric resistance relation
$$
X = \rho\,\frac{L}{A}
\qquad\Longrightarrow\qquad
\rho = \frac{X A}{L}
$$
where $L$ is the length of the wire between the two contact points used in the circuit, and $A = \pi d^2/4$ is its cross-sectional area, $d$ being the diameter measured with a screw gauge.

## Formula / Working Equation
$$
X = R\,\frac{100-l}{l}
$$
$$
\rho = \frac{X A}{L} = \frac{\pi d^2}{4}\cdot\frac{X}{L}
$$
where
- $R$ = known resistance from the resistance box (Ω)
- $l$ = balance length from the end nearer $R$ (cm)
- $X$ = resistance of the given wire (Ω)
- $L$ = length of the wire in the circuit (m)
- $d$ = mean diameter of the wire (m), from screw gauge
- $A$ = cross-sectional area of the wire (m²)
- $\rho$ = specific resistance / resistivity of the wire material (Ω·m)

## Experimental Setup
The resistance box $R$ is connected in the left gap and the given wire $X$ in the right gap of the meter bridge. The galvanometer and jockey form the detector branch; the battery and key supply current to the bridge wire.

## Diagram / Circuit Diagram
![Meter bridge circuit for specific resistance](../assets/phy104-meter-bridge-resistivity.svg)

## Procedure
1. Measure the length $L$ of the given wire between its two connecting terminals using a metre scale.
2. Measure the diameter $d$ of the wire with a screw gauge at several points along its length and at two mutually perpendicular directions at each point; take the mean, after applying the zero correction of the screw gauge.
3. Connect $R$ in the left gap and the wire $X$ in the right gap of the meter bridge as shown.
4. Insert a suitable resistance in $R$, close the key, and slide the jockey along the wire to locate the null (zero-deflection) point.
5. Note the balance length $l$ from the left end (the end nearer $R$).
6. Interchange $R$ and $X$ between the gaps and repeat the balancing to obtain a second reading; this eliminates the effect of end resistances to first order.
7. Repeat the whole procedure for four to five different values of $R$, keeping the balance point preferably between 40 cm and 60 cm for best sensitivity.
8. Compute $X$ for each trial and hence $\rho$.

**Precautions**
- Keep the key closed only while taking a reading, to avoid heating of the wire (heating changes its resistance).
- Use the jockey lightly; do not slide it forcefully along the wire.
- Choose $R$ so that the balance point lies close to the middle of the wire (30–70 cm) for maximum sensitivity.
- Measure the wire's diameter at several points, since the wire may not be perfectly uniform.
- Ensure clean, tight resistance-box plug connections.
- Avoid parallax while reading the balance length.

## Observation Table

**Length of wire, $L$ = _______ m**

**Screw gauge:** Pitch = ______ mm, No. of divisions on circular scale = ______, Least count = ______ mm, Zero error = ______ mm

| Trial | R (Ω) | Balance length l (cm) | X = R(100−l)/l (Ω) |
|:---:|:---:|:---:|:---:|
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |

**Diameter of wire (screw gauge readings)**

| Observation | M.S.R (mm) | C.S.R (div) | Corrected reading (mm) |
|:---:|:---:|:---:|:---:|
| 1 | | | |
| 2 | | | |
| 3 | | | |

Mean diameter, $d$ = ______ mm = ______ m

## Calculations
Mean resistance of wire (from individual trials):
$$
\bar{X} = \frac{X_1+X_2+X_3+X_4}{4}
$$
Resistance of wire from the slope of the $100/l$ vs $1/R$ graph (see Graph section below):
$$
X_{\text{graph}} = \text{slope} = \_\_\_\_ \ \Omega
$$
Cross-sectional area:
$$
A = \frac{\pi d^2}{4}
$$
Specific resistance (using either value of $X$; the graphical value is generally preferred as it uses all trials together):
$$
\rho = \frac{X A}{L}
$$

## Graph
Since $R$ is the independent variable set at the resistance box and $l$ is the measured balance length, $X$ itself (already a combination of both) is not a useful quantity to put on an axis — plotting it against a function of $l$ alone does not test anything, because $R$ changes from trial to trial. Instead, rearrange the working equation into a form with two independently-plottable, directly-measured quantities. Starting from
$$
X = R\cdot\frac{100-l}{l}
$$
divide through by $R$ and rearrange:
$$
\frac{X}{R} = \frac{100-l}{l} = \frac{100}{l}-1
\qquad\Longrightarrow\qquad
\frac{100}{l} = 1 + \frac{X}{R}
$$
So plotting $\dfrac{100}{l}$ (on the *y*-axis) against $\dfrac{1}{R}$ (on the *x*-axis), using the $(R,l)$ pairs from Table 1 directly, gives a straight line whose **slope equals $X$** and whose **intercept equals 1**. This is a genuine linearity check (unlike plotting the already-computed $X$ against anything derived from $l$ alone): if the wire's resistance is truly constant and independent of $R$, the points will lie on a straight line through $(0,1)$, and the slope gives $X$ with the random errors of individual trials averaged out — a more reliable value than the simple mean of the per-trial $X_i$.

## Result
The specific resistance (resistivity) of the material of the given wire:
$$
\rho = \underline{\hspace{2cm}}\ \Omega\cdot\text{m} \quad (\text{from mean of } X_i)
$$
$$
\rho = \underline{\hspace{2cm}}\ \Omega\cdot\text{m} \quad (\text{from graph slope}, X_{\text{graph}})
$$

## Precautions
- Take the key open except while balancing, to avoid resistance change due to heating.
- Handle the jockey gently to avoid damaging the bridge wire.
- Keep the balance point near the middle of the wire by suitable choice of $R$.
- Measure wire diameter at several points and take the mean, correcting for screw-gauge zero error.
- Avoid parallax while reading lengths.

## Sources / References
- Standard meter-bridge specific-resistance experiment as presented in undergraduate physics practical manuals (South Asian B.Sc./engineering curricula).
- C. L. Arora, *B.Sc. Practical Physics*, resistivity by meter bridge chapter.
- D. C. Tayal, *Practical Physics*, resistance and resistivity measurement section.
