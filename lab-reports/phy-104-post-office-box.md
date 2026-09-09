# Determination of the Resistance of a Wire by Post Office Box (P.O. Box)

## Aim
To determine the resistance of a given wire using a Post Office Box.

## Apparatus / Equipment
- Post Office Box (P.O. Box)
- Given resistance wire (unknown, X)
- Galvanometer (usually built into, or connected externally to, the box)
- Leclanché cell or battery eliminator (E)
- One-way keys — battery key and galvanometer key
- Connecting wires

## Theory / Principle
A Post Office Box is a compact, self-contained Wheatstone bridge in which the four arms are realised by resistance plugs mounted in a box:

- **Ratio arms** $P$ and $Q$ — each can be set to 10, 100, or 1000 Ω by removing the appropriate plug, giving ratios such as 1:1, 1:10, 1:100, 10:1, etc.
- **Rheostat arm** $R$ — a variable resistance, built from resistance coils in multiples of 1 Ω to several thousand ohms, adjusted (by removing plugs) until the bridge balances.
- **Unknown arm** $X$ — the resistance to be measured, connected externally between the two outer terminals of the box.

At balance, no current flows through the galvanometer, and the standard Wheatstone-bridge condition applies:
$$
\frac{P}{Q} = \frac{R}{X}
\qquad\Longrightarrow\qquad
X = \frac{Q}{P}\,R
$$

Because $P$ and $Q$ can only be set to specific decade values, $X$ is first located approximately using equal ratio arms ($P=Q=10\ \Omega$) by trial adjustment of $R$; then a higher ratio (e.g. $P=10,\ Q=100$, or $P=100,\ Q=10$) is used to refine the balance and obtain $X$ to more significant figures.

## Formula / Working Equation
$$
X = \frac{Q}{P}\,R
$$
where
- $P, Q$ = ratio arms of the P.O. Box (Ω)
- $R$ = resistance dialled in the rheostat arm at balance (Ω)
- $X$ = unknown resistance of the given wire (Ω)

## Experimental Setup
The unknown wire is connected across the two terminals marked for the unknown arm of the box. The battery (through the battery key) is connected across the box's battery terminals, and the galvanometer (through the galvanometer key) across the galvanometer terminals. Ratio-arm plugs $P$, $Q$ and rheostat-arm plugs $R$ are set from the top of the box.

## Diagram / Circuit Diagram
![Post Office Box schematic](../assets/phy104-post-office-box.svg)

## Procedure
1. Connect the given wire to the "unknown resistance" (X) terminals of the P.O. Box. Connect the battery (through its key) and the galvanometer (through its key) to their respective terminals.
2. Insert plugs for $P$ and $Q$ (initially equal, e.g. $P = Q = 10\ \Omega$) so that $Q/P = 1$.
3. Take out a suitable plug for $R$ (start with a moderate value, e.g. 10 Ω), close the battery key first, then briefly tap the galvanometer key and note the direction of deflection.
4. By trial, increase or decrease $R$ (using the infinite-deflection or trial method) until the galvanometer shows no deflection, i.e. locate two adjacent integer values of $R$ between which the deflection changes direction. This gives an approximate value of $X \approx R$ (since $P=Q$).
5. To refine the measurement, change the ratio to $P=10,\ Q=100$ (or another decade ratio appropriate to the approximate value of $X$) and again adjust $R$ for exact balance (zero deflection).
6. Note the final balancing $R$ and compute $X = (Q/P)\,R$.
7. Repeat with a different ratio setting (e.g. $P=100,\ Q=10$) as a check, and take the mean of the independent determinations.

**Precautions**
- Always close the battery key first and the galvanometer key second; open them in the reverse order (galvanometer key first, then battery key) after each observation.
- Do not keep the keys pressed continuously; use them only momentarily while checking balance, to avoid heating of the resistance coils and polarization of the cell.
- Make sure all plugs are firmly and cleanly inserted; a loose plug introduces extra resistance and gives a wrong balance point.
- Start with equal ratio arms to get an approximate value first, then switch to a higher ratio for precision.
- Avoid touching the resistance coils, as body heat can slightly change their resistance.

## Observation Table

| Trial | P (Ω) | Q (Ω) | R at balance (Ω) | X = (Q/P)R (Ω) |
|:---:|:---:|:---:|:---:|:---:|
| 1 (rough, P=Q) | | | | |
| 2 | | | | |
| 3 | | | | |

## Calculations
For each precise trial:
$$
X_i = \frac{Q_i}{P_i}\,R_i
$$
Mean value:
$$
\bar{X} = \frac{X_2+X_3}{2}
$$
(the rough trial with $P=Q$ is used only to locate the approximate range and is normally excluded from the final mean).

## Result
The resistance of the given wire, as measured by the Post Office Box:
$$
X = \underline{\hspace{2cm}}\ \Omega
$$

## Precautions
- Close the battery key before the galvanometer key; open in reverse order.
- Press keys only momentarily, especially the galvanometer key, to avoid coil heating and needle damage.
- Use clean, tightly-inserted plugs throughout.
- Determine an approximate value first with equal ratio arms, then refine with a higher ratio.
- Keep connecting wires short and free of loose contacts.

## Sources / References
- Standard Post Office Box (Wheatstone bridge) resistance-measurement method as presented in undergraduate physics practical manuals (South Asian B.Sc./engineering curricula).
- C. L. Arora, *B.Sc. Practical Physics*, Post Office Box chapter.
- D. C. Tayal, *Practical Physics*, Wheatstone bridge and P.O. Box section.
