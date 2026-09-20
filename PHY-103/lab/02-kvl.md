# Experiment 2 — Verification of Kirchhoff's Voltage Law (KVL)

## Aim
To verify Kirchhoff's Voltage Law in a series circuit of two resistors.

## Theory
In a series circuit (Fig. 1) the same current flows through all elements.

$$
R_T = R_1 + R_2, \qquad I = \frac{V_{supply}}{R_T}
$$

Applying KVL around the closed loop of Fig. 1:

$$
V_{supply} = V_1 + V_2, \qquad V_1 = IR_1, \quad V_2 = IR_2
$$

Voltage divider rule (VDR): the voltage across an element in a series circuit equals its resistance divided by the total resistance, times the total impressed voltage.

$$
V_1 = \frac{R_1 E}{R_T}, \qquad V_2 = \frac{R_2 E}{R_T}
$$

- $V_1, V_2$ = voltage across $R_1, R_2$; $I$ = common current.
- The source uses $V_{supply}$, $E$ and $V_s$ for the same source voltage.

## Principle / Law
**KVL:** around a closed loop, the voltage rises equal the voltage drops.

## Apparatus
1. Variable DC power supply
2. Digital multimeter
3. Analog multimeter
4. Resistances ($R_1 = 1\ \mathrm{k\Omega}$, $R_2 = 2.2\ \mathrm{k\Omega}$)
5. Trainer board
6. Connecting wires

## Diagram
![KVL series circuit diagram](../../assets/kvl-circuit.svg)

**Fig. 1:** source $V_s$ in series with $R_1$ and $R_2$; voltmeter $V_1$ across $R_1$ and voltmeter $V_2$ across $R_2$.

## Procedure
1. Construct the circuit as in Fig. 1.
2. Turn on the DC power supply and set it to 4 V, 5 V and 6 V in turn, checking with a voltmeter.
3. Measure the voltage across each resistor with the voltmeter and record it in a table.
4. Calculate $V_1, V_2$ using the voltage divider rule (VDR).

## Observation Table
$R_1 = 1\ \mathrm{k\Omega}$, $R_2 = 2.2\ \mathrm{k\Omega}$

| SL No | Source voltage (V) | $V_1$ (V) | $V_2$ (V) | $V_1 + V_2$ (V) |
|:---:|:---:|:---:|:---:|:---:|
| 1 | 4 | 1.24 | 2.74 | 3.98 |
| 2 | 5 | 1.55 | 3.43 | 4.98 |
| 3 | 6 | 1.87 | 4.12 | 5.99 |

## Calculation
$$
V_1 = \frac{R_1 V_s}{R_1 + R_2}, \qquad V_2 = \frac{R_2 V_s}{R_1 + R_2}, \qquad \text{check: } V_1 + V_2 = V_s
$$

For $V_s = 4\ \mathrm{V}$:

$$
V_1 = \frac{1 \times 4}{1 + 2.2} = 1.25\ \mathrm{V}, \qquad V_2 = \frac{2.2 \times 4}{1 + 2.2} = 2.75\ \mathrm{V}
$$

Results by VDR for all three settings:

| $V_s$ (V) | $I = V_s/R_T$ (mA) | $V_1$ (V) | $V_2$ (V) | $V_1 + V_2$ (V) |
|:---:|:---:|:---:|:---:|:---:|
| 4 | 1.25 | 1.25 | 2.75 | 4 |
| 5 | 1.5625 | 1.5625 | 3.4375 | 5 |
| 6 | 1.875 | 1.875 | 4.125 | 6 |

(Here $R_T = 3.2\ \mathrm{k\Omega}$; with $R$ in kΩ and $V$ in V the current comes out in mA.)

Difference between the measured $V_1 + V_2$ and $V_s$: 0.02 V (0.5 %), 0.02 V (0.4 %) and 0.01 V (0.17 %) for 4 V, 5 V and 6 V.

## Result
For all three source voltages, the measured $V_1 + V_2$ equals the source voltage within experimental error (less than 0.5 %), and the measured $V_1$, $V_2$ agree with the values from the voltage divider rule. Hence Kirchhoff's Voltage Law is verified.

## Precautions
1. DC voltage should be in the range 0 V to 20 V.
2. All circuit elements should be connected tightly.
3. Take readings with great care.
4. Connect wires properly.

## Sources of Error
- Contact/lead resistance at connection points adds small unaccounted voltage drops.
- Resistor tolerance: the actual resistance of $R_1$, $R_2$ can differ from the marked value.
- Multimeter accuracy and internal resistance (a voltmeter isn't truly ideal).
- Supply voltage drift while switching between 4 V, 5 V and 6 V.
- Loose or corroded connections on the trainer board.
