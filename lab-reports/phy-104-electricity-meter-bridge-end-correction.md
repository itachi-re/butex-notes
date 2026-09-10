---
course: PHY 104 — Physics II (Practical)
experiment_no: 2
title: End Correction of a Meter Bridge
---

# Determination of the End Correction of a Meter Bridge

## Aim
To determine the end corrections $\alpha$ (at the left end, A) and $\beta$ (at the right end, B) of a given meter bridge.

## Apparatus / Equipment
- Meter bridge (slide-wire bridge) with a 1 m manganin/constantan wire mounted on a scale
- Two resistance boxes (P and Q)
- Galvanometer (G)
- Jockey
- Leclanché cell or battery eliminator (E), one-way key (K)
- Connecting wires

## Theory / Principle
A meter bridge is a practical form of the Wheatstone bridge in which the ratio arms $P$ and $Q$ (ordinary resistance-box gaps) are replaced by the two segments of a uniform 1 m resistance wire on either side of a sliding contact (jockey), while the other two arms of the bridge are the known resistance boxes placed in the end gaps.

In an *ideal* bridge, the balance-point length $l$ (measured from end A) obeys
$$
\frac{P}{Q} = \frac{l}{100-l}
$$
In practice, the thick metallic end-strips at A and B, and the resistance of the copper connecting the end blocks, add small extra resistances that are not part of the measured wire length. These act as if the wire were slightly longer than the scale indicates at each end. If $\alpha$ and $\beta$ are the (length-equivalent) end corrections at A and B respectively, the *corrected* balance condition is
$$
\frac{P}{Q} = \frac{l+\alpha}{100-l+\beta}
$$

**Determination of $\alpha$ and $\beta$.** Two known resistances $P$ and $Q$ (chosen fairly different from each other, so that the balance point is well away from the wire's midpoint) are placed in the two gaps and the balance length $l_1$ is noted. The resistances are then interchanged (P now where Q was, and vice versa) and the new balance length $l_2$ is noted. This gives two equations:
$$
\frac{P}{Q} = \frac{l_1+\alpha}{100-l_1+\beta}, \qquad
\frac{Q}{P} = \frac{l_2+\alpha}{100-l_2+\beta}
$$
Solving these two linear equations simultaneously for $\alpha$ and $\beta$ gives
$$
\boxed{\alpha = \frac{P\,l_2 - Q\,l_1}{Q-P}}\qquad\qquad
\boxed{\beta = \frac{Q\,l_2 - P\,l_1}{Q-P} - 100}
$$

## Formula / Working Equation
$$
\alpha = \frac{P l_2 - Q l_1}{Q-P}, \qquad
\beta = \frac{Q l_2 - P l_1}{Q-P} - 100
$$
where
- $P, Q$ = known resistances used in the two gaps (Ω)
- $l_1$ = balance length (cm, from end A) with $P$ in the left gap and $Q$ in the right gap
- $l_2$ = balance length (cm, from end A) after interchanging $P$ and $Q$
- $\alpha, \beta$ = end corrections at A and B respectively (cm)

## Experimental Setup
$P$ and $Q$ are connected in the two outer gaps of the meter bridge, the galvanometer is connected between the jockey and the junction of $P$, $Q$, and the battery (through key $K$) is connected across the two ends of the bridge wire.

## Diagram / Circuit Diagram
![Meter bridge circuit for end correction](../assets/phy104-meter-bridge-end-correction.svg)

## Procedure
1. Set up the meter bridge circuit with resistance boxes $P$ and $Q$ in the left and right gaps respectively, as shown.
2. Choose $P$ and $Q$ with a ratio noticeably different from 1 (e.g. in the ratio 2:3) so that the null point lies well away from the centre, giving a more sensitive determination of $\alpha,\beta$.
3. Close the key $K$ and tap the jockey gently along the wire to locate the point of zero deflection (null point) in the galvanometer.
4. Note the balance length $l_1$ from end A.
5. Interchange the positions of $P$ and $Q$ (without changing their dial values) and again locate the new null point. Note this balance length as $l_2$.
6. Repeat the whole procedure for two or three different pairs of $(P,Q)$ values to check consistency.
7. Calculate $\alpha$ and $\beta$ using the working formula for each pair and take the mean.

**Precautions**
- Use the jockey lightly; do not press or slide it along the wire, as this scratches the wire and changes its resistance.
- Keep the key $K$ closed only while taking a reading; open it immediately afterward to prevent heating of the wire, which changes its resistivity.
- Choose $P \ne Q$ and sufficiently different so the balance point is not too close to either end (avoid $l<10$ cm or $l>90$ cm, where sensitivity is poor).
- Ensure clean, tight plug contacts in the resistance boxes.
- Avoid parallax while reading the balance length on the scale.

## Observation Table

| Trial | P (Ω) | Q (Ω) | l₁ (cm) — P left, Q right | l₂ (cm) — Q left, P right | α (cm) | β (cm) |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| 1 | | | | | | |
| 2 | | | | | | |
| 3 | | | | | | |

## Calculations
For each trial:
$$
\alpha_i = \frac{P\,l_{2,i} - Q\,l_{1,i}}{Q-P}, \qquad
\beta_i = \frac{Q\,l_{2,i} - P\,l_{1,i}}{Q-P} - 100
$$
Mean values:
$$
\bar{\alpha} = \frac{\alpha_1+\alpha_2+\alpha_3}{3}, \qquad
\bar{\beta} = \frac{\beta_1+\beta_2+\beta_3}{3}
$$
These mean values of $\alpha$ and $\beta$ are subsequently used (as $l+\alpha$ and $100-l+\beta$) to correct balance lengths in other meter-bridge experiments performed on the same bridge, such as the specific-resistance experiment.

## Result
End corrections of the given meter bridge:
$$
\alpha = \underline{\hspace{2cm}}\ \text{cm} \qquad (\text{left end, A})
$$
$$
\beta = \underline{\hspace{2cm}}\ \text{cm} \qquad (\text{right end, B})
$$

## Precautions
- Handle the jockey gently; never drag it along the wire.
- Keep the circuit closed only momentarily while balancing.
- Select $P$ and $Q$ well separated in value so the null point is sensitive and away from the ends.
- Avoid parallax when reading the balance length.
- Ensure firm, clean resistance-box plug contacts throughout.

## Sources / References
- Standard Wheatstone-bridge/meter-bridge end-correction method as presented in undergraduate physics practical manuals (South Asian B.Sc./engineering curricula).
- C. L. Arora, *B.Sc. Practical Physics*, meter bridge and end-correction chapter.
- D. C. Tayal, *Practical Physics*, resistance-measurement section.
