# Verification of Ohm's Law Using a Tangent Galvanometer

## Aim
To verify Ohm's law by measuring the current through a resistor with a tangent galvanometer and the corresponding potential difference across it with a voltmeter.

## Apparatus / Equipment
- Tangent galvanometer (TG) with compass box at its centre
- Battery eliminator or battery (E)
- Rheostat (Rh)
- Voltmeter (V)
- Resistor of known/given value (the resistor whose V–I relation is to be verified)
- One-way key (K)
- Connecting wires, spirit level, plane mirror (if needed for the compass)

## Theory / Principle
**Tangent law.** A tangent galvanometer consists of a vertical circular coil of $n$ turns and radius $r$, with a small magnetic compass needle pivoted at its centre. When the coil is set in the magnetic meridian (its plane parallel to the earth's horizontal magnetic field $B_H$) and a current $I$ flows through it, the coil produces a magnetic field $B$ at its centre, perpendicular to the coil's plane:
$$
B = \frac{\mu_0 n I}{2r}
$$
The needle experiences two mutually perpendicular fields, $B$ (due to the coil) and $B_H$ (earth's horizontal component), and comes to rest along their resultant, deflecting through an angle $\theta$ such that
$$
B = B_H\tan\theta
$$
This is the **tangent law**. Combining the two relations,
$$
\frac{\mu_0 n I}{2r} = B_H\tan\theta
\qquad\Longrightarrow\qquad
I = \left(\frac{2rB_H}{\mu_0 n}\right)\tan\theta = k\tan\theta
$$
where $k = \dfrac{2rB_H}{\mu_0 n}$ is called the **reduction factor** of the tangent galvanometer — the current that would produce a 45° deflection. Thus, a tangent galvanometer can be used as a current-measuring instrument: the current is obtained from the observed deflection through $I = k\tan\theta$, once $k$ is known (from the TG's geometry and the local value of $B_H$, or from a preliminary calibration).

**Ohm's law.** For a conductor at constant temperature, the potential difference $V$ across it is directly proportional to the current $I$ through it:
$$
V = IR
$$
where $R$ is the (constant) resistance of the conductor. In this experiment, $I$ is measured using the tangent galvanometer (via the tangent law) while $V$ is measured directly with a voltmeter connected across the resistor. If $V/I$ is found to be constant for different currents, and the $V$–$I$ graph is a straight line through the origin, Ohm's law stands verified, and the slope of the graph gives the resistance $R$.

## Formula / Working Equation
$$
I = k\tan\theta, \qquad k = \frac{2rB_H}{\mu_0 n}
$$
$$
R = \frac{V}{I} = \text{slope of the } V\text{–}I \text{ graph}
$$
where
- $I$ = current through the circuit (A)
- $\theta$ = deflection of the compass needle (degrees)
- $k$ = reduction factor of the tangent galvanometer (A)
- $r$ = radius of the TG coil (m); $n$ = number of turns
- $B_H$ = horizontal component of earth's magnetic field at the location (T)
- $V$ = potential difference across the resistor (V)
- $R$ = resistance of the resistor (Ω)

## Experimental Setup
The tangent galvanometer coil is levelled and rotated so that its plane lies in the magnetic meridian (coincides with the north–south direction indicated by the compass needle at zero current). The battery, rheostat, key, resistor, and TG coil are connected in series to form the current-carrying circuit; the voltmeter is connected directly across the resistor.

## Diagram / Circuit Diagram
![Tangent galvanometer circuit for Ohm's law verification](../assets/phy104-tangent-galvanometer.svg)

## Procedure
1. Place the tangent galvanometer on a horizontal table, level it using the levelling screws, and rotate the coil until its plane is parallel to the compass needle (i.e., in the magnetic meridian), with the needle reading $0°$–$0°$ on both verniers/scales.
2. Connect the circuit as shown, with the battery, rheostat, key, resistor, and the TG coil in series, and the voltmeter across the resistor.
3. Close the key and adjust the rheostat to obtain a small, convenient deflection (preferably between 30° and 60°, where $\tan\theta$ is most sensitive to changes in $I$).
4. Note the deflections at both ends of the compass needle (to eliminate any error due to the pointer not being exactly at the coil's centre) and take their mean as $\theta$. Simultaneously note the voltmeter reading $V$.
5. Reverse the direction of the current (using a reversing key, if available) and again note the mean deflection; average the readings from both current directions to eliminate errors due to any residual magnetism or misalignment.
6. Increase the current in steps (using the rheostat) and repeat steps 4–5 for five or six different settings, each time noting $\theta$ and $V$.
7. For each reading, compute $\tan\theta$ and hence $I = k\tan\theta$ (using a previously known or separately calibrated value of $k$ for the given TG, based on its $n$, $r$, and the local $B_H$).
8. Tabulate $V$ against $I$ and plot the graph.

**Precautions**
- The coil of the tangent galvanometer must be carefully set in the magnetic meridian before starting; even a small misalignment introduces significant error.
- Keep all other magnets and current-carrying wires (other than the circuit itself) away from the vicinity of the TG, as stray fields disturb the compass.
- Take readings only for deflections between about 30° and 60°, since $\tan\theta$ changes too little near 0° and too rapidly near 90° for accurate current determination.
- Read both ends of the pointer/needle and take the mean, to correct for any eccentricity.
- Avoid parallax while reading the circular scale.
- Open the key between readings if heating of the resistor is a concern.

## Observation Table

**TG coil data:** Number of turns, $n$ = ______; Radius, $r$ = ______ m; Horizontal component of earth's field, $B_H$ = ______ T (given/looked up for the location); Reduction factor $k = \dfrac{2rB_H}{\mu_0 n}$ = ______ A

| Trial | θ₁ (deg) | θ₂ (deg) | Mean θ (deg) | tan θ | I = k tan θ (A) | V (Volt) | R = V/I (Ω) |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| 1 | | | | | | | |
| 2 | | | | | | | |
| 3 | | | | | | | |
| 4 | | | | | | | |
| 5 | | | | | | | |

## Calculations
For each trial:
$$
\theta = \frac{\theta_1+\theta_2}{2}, \qquad I = k\tan\theta, \qquad R_i = \frac{V_i}{I_i}
$$
Mean resistance:
$$
\bar{R} = \frac{R_1+R_2+\cdots+R_5}{5}
$$

## Graph
Plot $V$ (on the *y*-axis) against $I$ (on the *x*-axis). Ohm's law predicts a straight line passing through the origin; its slope gives the resistance $R$ of the resistor:
$$
R = \text{slope} = \frac{\Delta V}{\Delta I}
$$
A straight-line graph through the origin confirms that $V \propto I$, verifying Ohm's law.

## Result
1. The graph of $V$ versus $I$ is a straight line passing through the origin, verifying Ohm's law.
2. Resistance of the given resistor:
$$
R = \underline{\hspace{2cm}}\ \Omega \quad (\text{from } V/I) \qquad \text{and} \qquad R = \underline{\hspace{2cm}}\ \Omega \quad (\text{from graph slope})
$$

## Precautions
- Set the TG coil accurately in the magnetic meridian before taking any readings.
- Work within the 30°–60° deflection range for best sensitivity.
- Keep the TG away from other magnetic materials and current-carrying conductors.
- Take mean of readings at both ends of the pointer and for both current directions.
- Avoid parallax while reading the circular scale and the voltmeter.

## Sources / References
- Standard tangent galvanometer and Ohm's-law verification experiments as presented in undergraduate physics practical manuals (South Asian B.Sc./engineering curricula).
- C. L. Arora, *B.Sc. Practical Physics*, tangent galvanometer chapter.
- D. C. Tayal, *Practical Physics*, magnetism and current-measurement section.
