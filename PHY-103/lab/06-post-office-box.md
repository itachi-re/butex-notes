# Experiment 6 — Unknown Resistance by Post Office Box

## Aim
To determine the value of an unknown resistance of a wire using a post office box.

## Theory
$P$ and $Q$ are the resistances in the ratio arms, $R$ is the resistance in the third arm, and $S$, the unknown resistance, is in the fourth arm. When the galvanometer shows no reading (null point):

$$
\frac{P}{Q} = \frac{R}{S} \quad\Rightarrow\quad S = \frac{RQ}{P}
$$

## Principle / Law
**Wheatstone bridge balance:** with no galvanometer deflection, $P/Q = R/S$, so $S = RQ/P$. The post office box is a Wheatstone bridge with plug-in resistance arms.

## Apparatus
1. Post office box
2. Unknown resistance
3. Zero-centre galvanometer
4. Cell
5. Commutators
6. Connecting wires

## Diagram
![Post office box circuit diagram](../../assets/post-office-box-circuit.svg)

*Fig.: Post office box (Wheatstone form).* $P$ on $AB$, $Q$ on $BC$, $R$ on $AD$, $S$ on $DC$, galvanometer $G$ between $B$ and $D$; cell across $A$ and $C$ with "+" on the left.

## Procedure
1. Connect the circuit as in the diagram: the unknown resistance $S$ in the fourth arm ($DC$), the zero-centre galvanometer $G$ between $B$ and $D$, and the cell $E$ in series with a protective resistance $R_m$ and a key across $A$ and $C$.
2. Take out 10 Ω from each ratio arm ($AB$ and $BC$). Make sure all other plugs in the box are tight.
3. Gradually increase the resistance in the third arm until a resistance $R$ is found for which there is no galvanometer deflection when the circuit is closed. Then the unknown resistance is $S = \dfrac{10}{10} \times R = 50\ \Omega$.
4. Take out 100 Ω in arm $P$, keeping 10 Ω in arm $Q$, so that $\dfrac{Q}{P} = \dfrac{10}{100} = \dfrac{1}{10}$. The null point then occurs when the third-arm resistance is $R = 500\ \Omega$, and $S = 500 \times \dfrac{1}{10} = 50\ \Omega$.
5. Calculate the mean value of the unknown resistance.

## Observation Table
**Observation table 1** (Arm $Q$ = 10 Ω, Arm $P$ = 10 Ω)

| SL. No | Third arm $R$ (Ω) | Direction of deflection |
|:---:|:---:|:---:|
| 1 | 0 | left |
| 2 | 8 | left |
| 3 | 10 | left |
| 4 | 12 | left |
| 5 | 15 | left |
| 6 | 19 | left |
| 7 | 20 | left |
| 8 | 25 | left |
| 9 | 35 | left |
| 10 | 50 | Null |

Null point is obtained at 50 Ω.

**Observation table 2** (Arm $Q$ = 10 Ω, Arm $P$ = 100 Ω)

| SL. No | Third arm $R$ (Ω) | Direction of deflection |
|:---:|:---:|:---:|
| 01 | 0 | left |
| 02 | 8 | left |
| 03 | 10 | left |
| 04 | 20 | left |
| 05 | 50 | left |
| 06 | 100 | left |
| 07 | 200 | left |
| 08 | 300 | left |
| 09 | 500 | Null |

Null point is obtained at 500 Ω.

## Calculation
$$
S = \frac{RQ}{P}
$$

From table 1 ($P = 10\ \Omega$, $Q = 10\ \Omega$, $R = 50\ \Omega$):

$$
S = \frac{50 \times 10}{10} = 50\ \Omega
$$

From table 2 ($P = 100\ \Omega$, $Q = 10\ \Omega$, $R = 500\ \Omega$):

$$
S = \frac{500 \times 10}{100} = 50\ \Omega
$$

Both give $S = 50\ \Omega$, so the mean is 50 Ω.

## Result
The value of the unknown resistance of the wire by post office box is **50 Ω**.

## Precautions
1. Make sure all other plugs in the box are tight before starting.
2. Give every plug a turn within its socket to clean the surfaces of contact.
3. Increase the third-arm resistance gradually until the galvanometer shows no deflection.

## Sources of Error
- Plug contact resistance in the resistance-arm sockets, if a plug isn't fully seated.
- Thermoelectric EMF at junctions of dissimilar metals, affecting sensitive null-point readings.
- Galvanometer sensitivity limits: a broad null zone makes the balance point imprecise.
- End resistance / connecting-wire resistance not accounted for in the ratio arms.
- Self-inductance effects at the moment the key is closed, causing a transient (non-null) deflection.

## Discussion
- A cell of any kind may be used in post office box experiments.
- The position of the null point does not change when the galvanometer and the battery are interchanged.
