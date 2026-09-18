# Distinction Between the First and Second Laws of Thermodynamics

## Learning Objectives

- Contrast what the First and Second Laws each assert.
- Explain, with an example, a process allowed by the First Law but forbidden by the Second.
- Understand why both laws are required for a complete thermodynamic description.

## Introduction

Students often treat the First and Second Laws as two independent facts to memorize. In reality they answer two different questions about the same physical process: the First Law asks **"how much energy is conserved?"**, while the Second Law asks **"which direction can the process actually go?"** A process must satisfy *both* laws to be physically realizable.

## Definition

**First Law of Thermodynamics:** Energy is conserved; for a closed system,

$$
\Delta U = Q - W
$$

**Second Law of Thermodynamics:** For any spontaneous process in an isolated system,

$$
\Delta S \geq 0
$$

equivalently, no cyclic device can convert heat completely to work from a single reservoir (Kelvin–Planck), and heat cannot spontaneously flow from cold to hot (Clausius).

![First Law vs Second Law comparison](../../assets/phy103-thermodynamics-first-vs-second-law.svg)

## Physical Meaning

| Aspect | First Law | Second Law |
|---|---|---|
| Core statement | Conservation of energy | Direction of spontaneous change |
| Quantity introduced | Internal energy $U$ | Entropy $S$ |
| Type of statement | Quantitative energy balance | Qualitative + quantitative directional constraint |
| Restricts direction? | No | Yes |
| Efficiency implication | None directly | Bounds $\eta < 1$ for any real cyclic engine |
| Reversibility | Not addressed | Central — distinguishes reversible/irreversible |
| Governing inequality | $\Delta U = Q - W$ (equality always) | $\Delta S \geq 0$ (isolated system) |

## Mathematical Formulation

A process from state 1 to state 2 is physically allowed only if **both**

$$
\Delta U = Q - W \qquad \text{and} \qquad \Delta S_{\text{universe}} \geq 0
$$

are satisfied simultaneously. The First Law alone permits the time-reversed version of any process (since $\Delta U$ for the reverse process is just $-\Delta U$, still energy-conserving); the Second Law selects which of the two directions is physically realizable.

## Derivation

**Example: free expansion of an ideal gas.**

Consider an ideal gas expanding freely into vacuum inside a rigid, insulated container (no heat exchange, no external work done since it expands against vacuum):

$$
Q = 0, \qquad W = 0 \quad\Rightarrow\quad \Delta U = 0
$$

Since $U$ depends only on $T$ for an ideal gas, $\Delta U = 0$ implies $T$ is unchanged.

*First Law check on the reverse process* (gas spontaneously recompressing itself into a corner): $\Delta U = 0$ again — the First Law places **no objection** to this reverse process.

*Second Law check:* the entropy change of an ideal gas expanding freely from volume $V_1$ to $V_2$ is

$$
\Delta S = nR\ln\frac{V_2}{V_1} > 0 \quad (V_2 > V_1)
$$

For the reverse process (spontaneous recompression), $\Delta S$ would be negative for an isolated system — forbidden by the Second Law. This is why free expansion is observed only in the "spreading out" direction, never in reverse.

## Important Equations

$$
\Delta U = Q-W \qquad \Delta S_{\text{universe}}\geq0 \qquad \Delta S_{\text{ideal gas, free expansion}} = nR\ln\frac{V_2}{V_1}
$$

## Physical Interpretation

The First Law is symmetric in time — it cannot distinguish a movie run forward from the same movie run backward. The Second Law breaks this symmetry: entropy increase gives thermodynamics (and, informally, "time") an arrow. This is why the Second Law is sometimes called the "arrow of time" of macroscopic physics.

## Worked Examples

### Problem 1 — Is a proposed process allowed?

**Given:** A claimed cyclic device absorbs $300\ \text{J}$ from a hot reservoir and delivers $300\ \text{J}$ of work with no heat rejected.

**Required:** Check consistency with both laws.

**Relevant Principle:** First Law (energy balance) and Second Law (Kelvin–Planck).

**Formula:** $\Delta U_{\text{cycle}} = Q - W = 0$; $\eta = W/Q_H$.

**Calculation:** First Law: $Q - W = 300 - 300 = 0$ ✓ (cycle returns to initial state, consistent).
Second Law: $\eta = 300/300 = 1$, forbidden by Kelvin–Planck.

**Final Answer:** Energetically balanced but thermodynamically impossible.

**Physical Meaning:** Satisfying the First Law is necessary but not sufficient for a process to be real.

### Problem 2 — Free expansion entropy change

**Given:** $2\ \text{mol}$ of ideal gas expands freely from $10\ \text{L}$ to $30\ \text{L}$ at constant $T$.

**Required:** $\Delta S$ of the gas.

**Formula:** $\Delta S = nR\ln(V_2/V_1)$.

**Calculation:**

$$
\Delta S = (2)(8.314)\ln\!\left(\frac{30}{10}\right) = 16.628 \times 1.0986 = 18.27\ \text{J/K}
$$

**Final Answer:** $\Delta S \approx 18.3\ \text{J/K}$.

**Physical Meaning:** Even though $Q=W=\Delta U=0$ (First Law trivially satisfied), the Second Law correctly predicts entropy increases and identifies the spontaneous direction.

## Conceptual Questions

1. Give an everyday process that conserves energy (First Law satisfied) but is never observed to run in reverse.
2. Why can't the First Law by itself predict the final equilibrium state of two bodies placed in thermal contact?
3. Explain why $\Delta S_{\text{universe}} \geq 0$, not $\Delta S_{\text{system}} \geq 0$, is the correct general statement.

## Common Mistakes

- Believing the Second Law "replaces" or "overrides" the First Law — both must hold simultaneously.
- Assuming $\Delta S \geq 0$ applies to the system alone rather than system + surroundings.
- Forgetting that a reversible process is the *limiting* case with $\Delta S_{\text{universe}} = 0$, not a violation of the Second Law.

## Exam Essentials

### Important Definitions
Arrow of time, spontaneous process, entropy of the universe.

### Important Laws and Theorems
First Law (energy conservation); Second Law (directionality via entropy).

### Must-Know Equations
$$\Delta U = Q - W, \qquad \Delta S_{\text{universe}} \geq 0$$

### Important Derivations
Free expansion example showing First Law is direction-blind while Second Law is not.

### Conceptual Questions
See above.

### Numerical Questions
See Worked Examples.

### Common Exam Mistakes
See Common Mistakes.

### One-Minute Revision
First Law: energy bookkeeping, no direction. Second Law: adds direction via entropy, $\Delta S_{\text{universe}} \geq 0$. Both must hold for a process to be physically real.

## Summary

The First and Second Laws are complementary, not competing. The First Law is a strict equality that any process — forward or reverse — automatically satisfies if energy is conserved. The Second Law is an inequality that singles out which direction is physically realizable, introducing entropy as the tool for that determination.

## References

- Zemansky, M. W. & Dittman, R. H., *Heat and Thermodynamics*.
- Halliday, D., Resnick, R. & Walker, J., *Fundamentals of Physics*.
- Schroeder, D. V., *An Introduction to Thermal Physics*.
