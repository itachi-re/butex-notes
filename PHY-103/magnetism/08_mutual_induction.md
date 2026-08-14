# 08. Mutual Induction

**Course:** PHY-103 (Physics–II) · **Unit:** Magnetism
**Prerequisite:** Self-Induction (Topic 07)
**Leads to:** Electromagnetic Oscillation (Topic 11, via coupled-circuit context)

---

## A. Physical Idea

Self-induction (Topic 07) concerns a single circuit reacting to changes in its own current. **Mutual induction** extends this to *two* separate circuits that are magnetically linked: a change in the current of one coil produces a changing flux that also threads through a second, nearby coil, inducing an emf in that second coil — even though no direct electrical (galvanic) connection exists between them. This is the operating principle of the **transformer**, the most important practical application of magnetism in electrical power systems.

## B. Definition

**Mutual induction:** the phenomenon in which a change of current in one circuit induces an emf in a neighboring circuit, due to the changing flux linkage between them.

> Plain-English: two coils placed near each other are magnetically "coupled" — wiggle the current in one, and a voltage appears in the other, with no wires connecting them.

**Mutual inductance ($M$):** the proportionality constant between the flux linkage in one coil and the current in the other coil, $M = N_2\Phi_{21}/I_1$.

> Plain-English: a number describing how effectively current in coil 1 manages to "reach" and link with coil 2 (and vice versa — it's the same number either way).

## C. Governing Equation

$$
\mathcal E_2 = -M\frac{dI_1}{dt}, \qquad M = \frac{N_2\Phi_{21}}{I_1}
$$
(and symmetrically, $\mathcal E_1 = -M\,dI_2/dt$, with the *same* $M$ — a result known as the reciprocity theorem for mutual inductance)

| Symbol | Meaning |
|---|---|
| $\mathcal E_2$ | emf induced in coil 2 due to changing current in coil 1 (V) |
| $M$ | mutual inductance between the two coils (H) |
| $I_1$ | current in coil 1 (A) |
| $N_2$ | number of turns in coil 2 |
| $\Phi_{21}$ | flux through one turn of coil 2, produced by coil 1's current (Wb) |

## D. Derivation

**Step 1 — Flux linkage in coil 2, produced by coil 1.** As with self-inductance, for fixed geometry and a linear medium, the flux $\Phi_{21}$ (flux through one turn of coil 2, due to current $I_1$ in coil 1) is directly proportional to $I_1$:
$$
N_2\Phi_{21} \propto I_1 \quad\Rightarrow\quad N_2\Phi_{21} = MI_1
$$
where $M$ is defined as the constant of proportionality — the mutual inductance.

**Step 2 — Apply Faraday's law to coil 2.** Since $\Phi_{21}$ changes only because $I_1$ changes (fixed geometry):
$$
\mathcal E_2 = -\frac{d(N_2\Phi_{21})}{dt} = -\frac{d(MI_1)}{dt}
$$

**Step 3 — With $M$ constant, take it outside the derivative:**
$$
\boxed{\mathcal E_2 = -M\frac{dI_1}{dt}}
$$

By an identical argument starting from coil 2's current inducing flux in coil 1, $\mathcal E_1 = -M'\,dI_2/dt$ for some constant $M'$; a deeper electromagnetic argument (based on the symmetry of the vector potential / Neumann's formula, beyond this course's derivation scope) shows $M'=M$ exactly — the mutual inductance is the same regardless of which coil is treated as the source.

**What must be memorized:** $\mathcal E_2 = -M\,dI_1/dt$ and $M=N_2\Phi_{21}/I_1$ (with $M$ symmetric between the two coils).
**What must be understood:** $M$ depends on the geometry of *both* coils and their relative position/orientation — how well the flux from one actually links the other.

## Coupling Coefficient

Not all the flux produced by coil 1 necessarily reaches coil 2 (some "leaks" without linking coil 2 at all). This is captured by the **coupling coefficient** $k$ ($0\le k\le1$):
$$
M = k\sqrt{L_1L_2}
$$
where $L_1, L_2$ are the self-inductances of coils 1 and 2 respectively.

- $k=1$ (perfect/tight coupling): all flux from coil 1 links coil 2 and vice versa — approached by tightly wound transformers sharing a common iron core.
- $k=0$ (no coupling): coils are magnetically isolated (e.g., very far apart, or oriented with mutually perpendicular axes) — $M=0$.
- $0<k<1$: partial coupling, the typical real-world case, especially for air-core coils.

**Justification (brief, not a full derivation):** $L_1$ and $L_2$ each represent the "maximum possible" self-linked flux per unit current; $M$ can be shown (via the Cauchy–Schwarz-type inequality applied to the mutual energy of two coupled inductors, a result from advanced circuit theory) to never exceed $\sqrt{L_1L_2}$, motivating the definition of $k=M/\sqrt{L_1L_2}$ as a bounded (0 to 1) measure of coupling quality.

## E. Vector Analysis

- The sign and direction of $\mathcal E_2$ (whether it opposes or aids a connected external circuit) again follows Lenz's law: the induced emf in coil 2 always acts, if a closed circuit is completed, to oppose the change in flux linking it — exactly the reasoning of Topic 06, now applied across two circuits instead of within one.
- **Relative orientation matters strongly.** If the two coils' axes are parallel and their windings are "aiding" (fluxes add), $M$ is larger (positive, by convention); if the coils are wound so that the fluxes oppose (or if one coil's axis is reversed), the effective coupling flips sign in circuit equations — a detail relevant in transformer dot-convention notation (introduced only qualitatively here, as full dot-convention circuit analysis is beyond this unit's scope).
- If the two coils' axes are perpendicular, ideally $M\to0$ (no linked flux) — this is exploited in some sensor designs to deliberately eliminate unwanted mutual coupling.

## F. Units and Dimensions

| Quantity | Symbol | SI Unit | Dimension |
|---|---|---|---|
| Mutual inductance | $M$ | henry (H) | $\mathsf{M\,L^2\,T^{-2}\,I^{-2}}$ |
| Coupling coefficient | $k$ | dimensionless | — |
| Self-inductances | $L_1, L_2$ | henry (H) | $\mathsf{M\,L^2\,T^{-2}\,I^{-2}}$ |

**Dimensional check ($M=k\sqrt{L_1L_2}$):** $[\sqrt{L_1L_2}] = \sqrt{\mathsf{H\cdot H}} = \mathsf H$, and $k$ is dimensionless, so $[M]=\mathsf H$. ✓

## G. Diagram

![Two magnetically coupled coils illustrating mutual induction](../../assets/08_mutual_induction.svg)

*Figure 1: Coil 1 (left, primary) carries changing current $I_1(t)$, producing flux that links coil 2 (right, secondary), inducing emf $\mathcal E_2 = -M\,dI_1/dt$. A shared iron core (dashed) increases coupling toward $k\to1$.*

## Definitions & Key Terms

1. **Mutual inductance ($M$)** — $M = N_2\Phi_{21}/I_1$, the flux linkage in one coil per unit current in the other.
   > Plain-English: how strongly two coils "talk" to each other magnetically.

2. **Coupling coefficient ($k$)** — $k = M/\sqrt{L_1L_2}$, a dimensionless measure (0 to 1) of how completely two coils share flux.
   > Plain-English: a percentage-like score for how well-linked two coils are.

3. **Primary and secondary coil** — conventional names for the current-carrying (source) coil and the coil in which the emf is induced, respectively (terminology borrowed from transformer design).
   > Plain-English: primary = "input" coil, secondary = "output" coil.

## Worked Examples

### Example 1 — Foundational

**Given:** Two coils have mutual inductance $M=0.4\ \text H$. The current in coil 1 changes at a rate of $6\ \text{A/s}$.
**Required:** emf induced in coil 2.
**Principle:** $|\mathcal E_2| = M|dI_1/dt|$.

**Substitution:**
$$
|\mathcal E_2| = (0.4)(6)
$$

**Algebra:**
$$
|\mathcal E_2| = 2.4\ \text V
$$

**Unit check:** H·(A/s) = V ✓

**Final answer:** $\boxed{|\mathcal E_2| = 2.4\ \text V}$

**Interpretation:** No current needs to flow in coil 2 for this emf to exist — it appears the instant $I_1$ changes, regardless of whether coil 2's circuit is open or closed.

---

### Example 2 — Intermediate

**Given:** Coil 1 has self-inductance $L_1=0.5\ \text H$, coil 2 has $L_2=0.8\ \text H$, and their coupling coefficient is $k=0.6$.
**Required:** Mutual inductance $M$, and the emf in coil 2 if $I_1(t) = 3t^2\ \text A$ at $t=2\ \text s$.

**Step 1 — Mutual inductance:**
$$
M = k\sqrt{L_1L_2} = 0.6\sqrt{(0.5)(0.8)} = 0.6\sqrt{0.4}
$$
$$
M = 0.6(0.6325) = 0.3795\ \text H
$$

**Step 2 — Rate of change of $I_1$:**
$$
\frac{dI_1}{dt} = 6t \quad\Rightarrow\quad \left.\frac{dI_1}{dt}\right|_{t=2} = 12\ \text{A/s}
$$

**Step 3 — Induced emf:**
$$
|\mathcal E_2| = M\left|\frac{dI_1}{dt}\right| = (0.3795)(12)
$$
$$
|\mathcal E_2| = 4.554\ \text V
$$

**Final answer:** $\boxed{M \approx 0.380\ \text H;\quad |\mathcal E_2| \approx 4.55\ \text V\text{ at }t=2\ \text s}$

**Interpretation:** This exam-style problem tests both the coupling-coefficient formula and the correct differentiation of a time-varying current before substituting a specific time.

---

### Example 3 — Advanced / Exam-Level

**Given:** A long solenoid (coil 1, the "primary") has $n_1$ turns per unit length, cross-sectional area $A$, and carries current $I_1$. A second coil (coil 2, the "secondary") of $N_2$ turns is wound tightly around the middle of the solenoid, so that essentially all of coil 1's flux also links coil 2 ($k\approx1$).
**Required:** Derive an expression for $M$ in terms of $\mu_0, n_1, N_2, A$, starting from the solenoid's field formula $B = \mu_0 n_1 I_1$.
**Principle:** $M = N_2\Phi_{21}/I_1$, with $\Phi_{21}$ computed from the solenoid's internal field.

**Step 1 — Field inside the solenoid (primary), a standard result:**
$$
B = \mu_0 n_1 I_1
$$

**Step 2 — Flux per turn of the secondary coil**, assuming it tightly encircles the solenoid so the same field threads it:
$$
\Phi_{21} = BA = \mu_0 n_1 I_1 A
$$

**Step 3 — Total flux linkage in the secondary** ($N_2$ turns, each linking the same $\Phi_{21}$):
$$
N_2\Phi_{21} = N_2\mu_0 n_1 I_1 A
$$

**Step 4 — Mutual inductance:**
$$
M = \frac{N_2\Phi_{21}}{I_1} = \frac{N_2\mu_0 n_1 I_1 A}{I_1}
$$

**Step 5 — Simplify (the $I_1$ cancels, confirming $M$ is independent of the actual current, as expected):**
$$
\boxed{M = \mu_0 n_1 N_2 A}
$$

**Unit check:** $[\mu_0][n_1][N_2][A] = (\text{T·m/A})(\text{m}^{-1})(\text{dimensionless})(\text{m}^2) = \text{T·m}^2/\text{A} = \text{Wb/A} = \text H$. ✓

**Final answer:** $\boxed{M = \mu_0 n_1 N_2 A}$

**Interpretation:** This is the classic solenoid-with-secondary-coil derivation, a standard exam question; notice the result depends on the *primary's* turn density $n_1$ but on the *secondary's total* turn count $N_2$ (not turn density), because the secondary's individual turns all link the same flux regardless of how tightly they themselves are wound, whereas the primary's field strength depends on how densely wound *it* is.

## Common Mistakes

- ❌ **Mistake:** Believing $\mathcal E_2$ depends on $I_1$ itself, rather than its rate of change.
  ✅ **Correct:** A steady (constant) $I_1$, however large, induces zero emf in coil 2 — only $dI_1/dt \ne 0$ matters, exactly analogous to Faraday's law.

- ❌ **Mistake:** Assuming $M_{1\to2} \ne M_{2\to1}$ (treating them as independent constants).
  ✅ **Correct:** Reciprocity guarantees the *same* mutual inductance $M$ applies whether coil 1 drives coil 2 or coil 2 drives coil 1.

- ❌ **Mistake:** Using $M=\sqrt{L_1L_2}$ without the coupling coefficient $k$.
  ✅ **Correct:** $M=k\sqrt{L_1L_2}$ with $k\le1$; only in the idealized perfect-coupling limit does $M=\sqrt{L_1L_2}$.

- ❌ **Mistake:** Confusing $M$ (a property of the coil *pair*) with $L$ (a property of a *single* coil).
  ✅ **Correct:** Keep clear which subscript/definition applies: $L_1, L_2$ each involve only one coil's own flux and current; $M$ always involves flux in one coil due to current in the *other*.

## Practice Problems

1. **Conceptual:** Explain why placing an iron core inside two coupled coils increases their mutual inductance, referencing the coupling coefficient.
2. **Short derivation:** Two coils have $L_1=2\ \text H$, $L_2=8\ \text H$. If they are perfectly coupled ($k=1$), find $M$, and comment on whether $M$ can ever exceed this value for these two coils.
   <details>
   <summary>Solution</summary>

   Step 1: $M = k\sqrt{L_1L_2} = 1\times\sqrt{(2)(8)} = \sqrt{16} = 4\ \text H$.

   Step 2: Since $k\le1$ always, $M=4\ \text H$ is the maximum possible mutual inductance for these two coils; $M$ cannot exceed $\sqrt{L_1L_2}$.

   **Answer:** $M = 4\ \text H$ (maximum possible value, at $k=1$).
   </details>
3. **Numerical:** A pair of coils has $M=0.25\ \text H$. If the current in the primary changes from $2\ \text A$ to $8\ \text A$ in $0.5\ \text s$ at a uniform rate, find the emf induced in the secondary.
   <details>
   <summary>Solution</summary>

   $dI_1/dt = (8-2)/0.5 = 12\ \text{A/s}$; $|\mathcal E_2| = M\,dI_1/dt = (0.25)(12) = 3\ \text V$

   **Answer:** $|\mathcal E_2| = 3\ \text V$
   </details>
4. **Direction/qualitative:** If the primary current $I_1$ is *decreasing*, describe (using Lenz's law) the direction of the induced current in a closed secondary circuit, relative to the direction that would maintain the flux linking it.
   <details>
   <summary>Solution</summary>

   By Lenz's law, the secondary's induced current flows so as to *oppose* the decrease in linked flux, meaning it flows in whichever direction would, on its own, tend to reinforce (maintain) the flux that is now shrinking — i.e., its own magnetic moment (via the right-hand rule) points in the same direction as the (now weakening) flux from the primary.

   **Answer:** The induced secondary current creates a magnetic field that reinforces the primary's (weakening) flux — opposing the decrease.
   </details>
5. **Exam-style, multi-step:** Two coaxial single-turn circular loops share a common axis: loop 1 (primary) has radius $R_1=0.1\ \text m$; loop 2 (secondary), much smaller, has radius $R_2=0.01\ \text m$ and lies at the center of loop 1, coplanar with it, so the field of loop 1 at its own center (approximately uniform over the small area of loop 2) may be used. Given $B_{center} = \mu_0 I_1/(2R_1)$ for a single circular loop, find $M$.
   <details>
   <summary>Solution</summary>

   Step 1: Field at the center of loop 1, due to its own current: $B = \dfrac{\mu_0 I_1}{2R_1}$.

   Step 2: Flux linking loop 2 (approximating the field as uniform over loop 2's small area): $\Phi_{21} = B\cdot\pi R_2^2 = \dfrac{\mu_0 I_1}{2R_1}\pi R_2^2$.

   Step 3: Mutual inductance (loop 2 has $N_2=1$ turn):
   $$
   M = \frac{\Phi_{21}}{I_1} = \frac{\mu_0\pi R_2^2}{2R_1}
   $$

   Step 4: Substitute numbers: $M = \dfrac{(4\pi\times10^{-7})\pi(0.01)^2}{2(0.1)} = \dfrac{(4\pi\times10^{-7})\pi(10^{-4})}{0.2}$

   Numerator $\approx 4\pi^2\times10^{-11} \approx 3.948\times10^{-10}$

   $$
   M \approx \frac{3.948\times10^{-10}}{0.2} = 1.974\times10^{-9}\ \text H
   $$

   **Answer:** $M = \dfrac{\mu_0\pi R_2^2}{2R_1} \approx 1.97\times10^{-9}\ \text H$ (about 2 nH — illustrating how small mutual inductance is for loosely sized, air-core loop pairs).
   </details>

## Summary

| Concept | Key Result | Condition / Limit |
|---|---|---|
| Mutual emf | $\mathcal E_2 = -M\,dI_1/dt$ | Fixed geometry, linear medium |
| Mutual inductance | $M = N_2\Phi_{21}/I_1$ | Symmetric: same $M$ both ways |
| Coupling coefficient | $M = k\sqrt{L_1L_2}$, $0\le k\le1$ | $k=1$: perfect coupling |
| Solenoid + secondary | $M = \mu_0 n_1 N_2 A$ | Secondary tightly wound around long solenoid |

Self- and mutual induction together explain how energy is stored and exchanged magnetically in circuits; the next topics turn from *circuit* behavior to the *material* origins of magnetism — how different substances respond to an applied field at the atomic level.
