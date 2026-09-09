# Determination of the Resistance of a Galvanometer by the Half-Deflection Method

## Aim
To determine the resistance of a given moving-coil (pointer-type) galvanometer by the half-deflection method.

## Apparatus / Equipment
- Moving-coil galvanometer (G)
- Two resistance boxes (a high-resistance box R and a low-resistance shunt box S)
- One Leclanché cell or battery eliminator (E)
- Two one-way keys (K₁, K₂)
- Connecting wires and a wooden board

## Theory / Principle
A galvanometer deflects when current flows through its coil. Its resistance $G$ cannot be measured directly with an ohmmeter without risking damage from excess current, so a null/comparison method is used instead.

A large protective resistance $R$ is placed in series with the galvanometer so that only a small, safe current flows and produces a convenient full-scale deflection $\theta$. A low resistance $S$ (the shunt) can then be connected in parallel with $G$ through a second key $K_2$. Since $S$ diverts part of the current away from the coil, the deflection falls. $S$ is adjusted until the deflection becomes exactly $\theta/2$ (half-deflection condition).

**Derivation.** Let the battery e.m.f. be $E$ (internal resistance neglected).

Before $K_2$ is closed, current flows only through $R$ and $G$:
$$
I_0 = \frac{E}{R+G}
$$
This produces the full-scale deflection $\theta \propto I_0$.

After $K_2$ is closed, $S$ is in parallel with $G$, so the effective resistance of that combination is $\dfrac{GS}{G+S}$, and the total circuit current becomes
$$
I = \frac{E}{R+\dfrac{GS}{G+S}}
$$
By the current-divider rule, the current actually passing through the galvanometer is
$$
I_G = I\left(\frac{S}{G+S}\right)
$$
At the half-deflection setting, $I_G = I_0/2$. Substituting the two expressions for $I_0$ and $I_G$ and simplifying (see derivation below) gives the working formula
$$
\boxed{G = \dfrac{RS}{R-S}}
$$

*(Outline of simplification: equating $I_G = I_0/2$ and clearing $E$ leads to $S(R+G) = RG$, i.e. $SR = G(R-S)$, from which $G = RS/(R-S)$ follows directly.)*

Because $R$ is chosen to be much larger than $G$ or $S$, this result is accurate without needing $R \gg G$ as a separate assumption — the derivation already accounts for the loading effect of $S$.

## Formula / Working Equation
$$
G = \frac{RS}{R-S}
$$
where
- $G$ = resistance of the galvanometer (Ω)
- $R$ = resistance in series with the galvanometer at full deflection (Ω)
- $S$ = shunt resistance at half deflection (Ω)

## Experimental Setup
The galvanometer, protective resistance box $R$, and key $K_1$ are connected in series with the battery, forming the main loop. A second loop consisting of the shunt resistance box $S$ and key $K_2$ is connected directly across the two terminals of the galvanometer.

## Diagram / Circuit Diagram
![Half-deflection method circuit](../assets/phy104-galvanometer-half-deflection.svg)

## Procedure
1. Connect the circuit as shown, keeping $K_2$ open initially.
2. Set a large value of $R$ in the resistance box (so that the deflection is safely on-scale) and close $K_1$.
3. Adjust $R$ until the galvanometer shows a convenient full-scale (or near full-scale) deflection $\theta$. Record $R$ and $\theta$.
4. Without disturbing $R$, close $K_2$ as well.
5. Adjust $S$ gradually until the deflection falls to exactly $\theta/2$. Record $S$.
6. Open $K_2$ first, then $K_1$, after each reading to avoid heating and to protect the galvanometer.
7. Repeat steps 2–6 for at least four different values of $R$ (and the corresponding $S$) to obtain several independent estimates of $G$.
8. Calculate $G$ for each trial using the formula and take the mean.

**Precautions**
- Always keep $R$ large so that only a small, safe current flows through the galvanometer.
- Open the keys ($K_2$ then $K_1$) when readings are not being taken, to prevent unnecessary heating and needle fatigue.
- Avoid parallax error while reading the pointer deflection; view the pointer and its scale image (if a mirror scale is used) along the same line of sight.
- Ensure all plug connections in the resistance boxes are tight and clean to avoid contact resistance.
- Do not let the deflection exceed the scale range at any stage.

## Observation Table

| Trial No. | R (Ω) | Full deflection θ (div) | S (Ω) at θ/2 | G = RS/(R−S) (Ω) |
|:---:|:---:|:---:|:---:|:---:|
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | | | | |

## Calculations
For each trial,
$$
G_i = \frac{R_i S_i}{R_i - S_i}
$$
Mean galvanometer resistance:
$$
\bar{G} = \frac{G_1+G_2+G_3+G_4}{4}
$$

## Result
The resistance of the given galvanometer by the half-deflection method:
$$
G = \underline{\hspace{2cm}}\ \Omega
$$

## Precautions
- Use a large protective resistance $R$ throughout to keep the galvanometer current small.
- Open the circuit (both keys) between readings.
- Take the shunt $S$ readings only after the deflection has settled (no oscillation).
- Avoid parallax while noting deflections.
- Keep all resistance-box plugs clean and firmly inserted.

## Sources / References
- Standard undergraduate Electricity & Magnetism practical manuals (half-deflection method for galvanometer resistance), as used in South Asian B.Sc./engineering physics laboratory courses.
- D. C. Tayal, *Practical Physics*, resistance and galvanometer sections.
- C. L. Arora, *B.Sc. Practical Physics*, half-deflection and shunt method chapters.
