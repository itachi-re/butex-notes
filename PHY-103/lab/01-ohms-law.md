# Experiment 1 — Verification of Ohm's Law

## Aim
To verify Ohm's law by applying different voltages across a resistor, measuring voltage and current, and plotting current against voltage.

## Theory
If temperature and other physical conditions of a conductor stay unchanged, the current through it is directly proportional to the voltage between its two terminals.

$$
I \propto V \;\Rightarrow\; I = GV, \qquad G = \frac{1}{R}
$$

$$
I = \frac{V}{R} \;\Rightarrow\; R = \frac{V}{I} \qquad (1)
$$

- $G$ = conductance (constant); $R$ = resistance.
- Put $I = y$, $V = x$, $\dfrac{1}{R} = m$ in (1): $y = mx$, a straight line through the origin.
- Apply different voltages across a resistor, read $V$ (voltmeter) and $I$ (ammeter), and plot $I$ against $V$. A straight line verifies Ohm's law.
- With $I$ on the y-axis and $V$ on the x-axis, the slope of the line is $\Delta I/\Delta V = 1/R$, which gives $R$.

## Principle / Law
**Ohm's law:** at constant temperature and physical conditions, current through a conductor is directly proportional to the voltage across it, $V = IR$.

## Apparatus
1. Bread board
2. Resistor (marked value 470 Ω)
3. Variable DC power supply
4. Ammeter
5. Voltmeter
6. Connecting wires

## Diagram
![Ohm's Law circuit diagram](../../assets/ohms-law-circuit.svg)

*Fig. 1: Circuit diagram to verify Ohm's law.* $A$ = ammeter in the main loop; $V_R$ = voltmeter across the resistor (current $I$ marked); $V_s$ = voltmeter for the source voltage.

## Procedure
1. Connect all components on the bread board as in Fig. 1.
2. Turn on the power supply.
3. Set the DC supply voltage to zero volt.
4. Measure voltage (voltmeter) and current (ammeter).
5. Increase the supply voltage by 2 V and repeat step 4 a few times.

## Observation Table
**Table 1.** Readings of voltmeter and ammeter

| SL. No. | Source Voltage $V_s$ (V) | Voltmeter Reading, Voltage (V) | Ammeter Reading, Current (mA) |
|:---:|:---:|:---:|:---:|
| 1 | 0 | 0 | 0 |
| 2 | 2 | 1.97 | 4.1 |
| 3 | 4 | 3.95 | 8.3 |
| 4 | 6 | 5.94 | 12.2 |
| 5 | 8 | 7.92 | 16.4 |
| 6 | 10 | 9.90 | 20.4 |

## Graph
![V-I graph for Ohm's law](../../assets/ohms-law-vi-graph.svg)

- Axes: voltmeter reading $V$ (V) on the x-axis, current $I$ (mA) on the y-axis.
- The six points of Table 1 (including the origin) lie on, or very close to, a straight line through the origin.
- Slope of the best-fit line: $\Delta I/\Delta V = 2.066\ \mathrm{mA/V}$.

## Calculation
$$
R = \frac{V}{I}, \qquad \text{slope of } I\text{–}V \text{ line} = \frac{\Delta I}{\Delta V} = \frac{1}{R}
$$

Resistance from each reading:

| SL. No. | $V$ (V) | $I$ (mA) | $R = V/I$ (Ω) |
|:---:|:---:|:---:|:---:|
| 2 | 1.97 | 4.1 | 480.5 |
| 3 | 3.95 | 8.3 | 475.9 |
| 4 | 5.94 | 12.2 | 486.9 |
| 5 | 7.92 | 16.4 | 482.9 |
| 6 | 9.90 | 20.4 | 485.3 |

Mean $R = 482.3\ \Omega$.

From the graph:

$$
R = \frac{1}{\text{slope}} = \frac{1}{2.066 \times 10^{-3}\ \mathrm{A/V}} \approx 484\ \Omega
$$

Percentage error with respect to the marked value (470 Ω):

$$
\frac{484 - 470}{470} \times 100 \approx 3.0\ \%
$$

## Result
Ohm's law is verified because a straight line through the origin is obtained. The resistance found from the slope of the V–I graph is $R \approx 484\ \Omega$ (mean of $V/I$ = 482.3 Ω).

## Precautions
1. DC voltage should be in the range 0 V to 20 V.
2. All circuit elements should be connected tightly.
3. Check the bread board, ammeter and voltmeter first.
4. Connect wires properly.
5. Take readings with great care.

## Sources of Error
- Loose connections.
- Problems in the apparatus.
- Fluctuating meter readings, so exact readings were hard to take.

## Discussion
- The V–I graph is not exactly a straight line; it deviates slightly from the ideal graph.
- The calculated error is about 3 %, which is relatively high, and is attributed mostly to apparatus problems and loose connections.
- Voltage and current were measured with a digital multimeter, and the readings fluctuated.
