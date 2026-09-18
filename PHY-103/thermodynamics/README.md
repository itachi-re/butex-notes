# PHY-103 — Thermodynamics

## Chapter Overview

This chapter covers the full PHY-103 Thermodynamics syllabus as a single
sequence of 19 topics, from the basic definition of a thermodynamic system
through Maxwell's relations. There is no Part 1 / Part 2 split in the
files — the numbering below runs straight through, and later topics build
directly on earlier ones.

A separate consolidated document, [Thermodynamics_os.md](Thermodynamics_os.md),
also exists alongside these per-topic files: it covers the same ground in
one ~1,300-line file (28 parts), plus solved numericals, diagrams, an
exam-prep set, common mistakes, and a full formula sheet — and additionally
includes Entropy (Part XVII), which is otherwise its own directory at
[`../entropy/`](../entropy/) outside this chapter.

## Complete Topic Index

1. [System & Thermodynamic Functions](01_system_and_thermodynamic_functions.md)
2. [Internal Energy](02_internal_energy.md)
3. [Work Done by a Gas at Constant Pressure](03_work_done_by_gas_at_constant_pressure.md)
4. [First Law of Thermodynamics](04_first_law_of_thermodynamics.md)
5. [Thermodynamic Processes](05_thermodynamic_processes.md)
6. [Mechanical Equivalent of Heat](06_mechanical_equivalent_of_heat.md)
7. [Cyclic Process](07_cyclic_process.md)
8. [Difference Between the Two Specific Heats of a Gas](08_difference_between_specific_heats_of_gas.md)
9. [Reversible and Irreversible Processes](09_reversible_and_irreversible_processes.md)
10. [Second Law of Thermodynamics](10_second_law_of_thermodynamics.md)
11. [Distinction Between the First and Second Laws](11_first_law_vs_second_law.md)
12. [Efficiency of Heat Engines](12_efficiency_of_heat_engines.md)
13. [Carnot's Cycle and Carnot's Engine](13_carnot_cycle_and_engine.md)
14. [Carnot Cycle as a Reversible Cycle](14_reversibility_of_carnot_cycle.md)
15. [Carnot's Theorem](15_carnots_theorem.md)
16. [Thermodynamic Functions](16_thermodynamic_functions.md)
17. [Third Law of Thermodynamics](17_third_law_of_thermodynamics.md)
18. [Applications of the Third Law](18_applications_of_third_law.md)
19. [Maxwell's Thermodynamic Relations](19_maxwells_thermodynamic_relations.md)

### Reference

- [formulas.md](formulas.md) — formula sheet covering all 19 topics
- [glossary.md](glossary.md) — glossary of key terms from Topics 1–9

## Prerequisite Concepts

- Basic kinetic theory of gases (from PHY-103's Kinetic Theory module).
- The ideal gas equation of state, $PV=nRT$.
- Elementary calculus (integration for work, partial derivatives for state functions).
- Basic mechanics (work-energy concepts, force × displacement).
- Topics 10 onward build on everything before them, especially the First
  Law, cyclic processes, and reversibility (Topics 4, 7, 9).

## Learning Roadmap / Recommended Study Order

Follow the numbered order below — later topics build directly on earlier ones.

1. [System & Thermodynamic Functions](01_system_and_thermodynamic_functions.md) — foundational vocabulary and the concept of state vs path functions.
2. [Internal Energy](02_internal_energy.md) — the microscopic meaning of $U$ and why it is a state function.
3. [Work Done by a Gas at Constant Pressure](03_work_done_by_gas_at_constant_pressure.md) — the general $W=\int P\,dV$ and its isobaric special case.
4. [First Law of Thermodynamics](04_first_law_of_thermodynamics.md) — the central conservation law, $\Delta Q=\Delta U+W$.
5. [Thermodynamic Processes](05_thermodynamic_processes.md) — isothermal, adiabatic, isobaric, isochoric processes compared.
6. [Mechanical Equivalent of Heat](06_mechanical_equivalent_of_heat.md) — Joule's historic experiment linking heat and work.
7. [Cyclic Process](07_cyclic_process.md) — why $\Delta U=0$ over a cycle, and net work as enclosed P–V area.
8. [Difference Between the Two Specific Heats of a Gas](08_difference_between_specific_heats_of_gas.md) — Mayer's relation $C_P-C_V=R$ and the adiabatic index $\gamma$.
9. [Reversible and Irreversible Processes](09_reversible_and_irreversible_processes.md) — the idealization of reversibility, bridging into the Second Law.
10. [Second Law of Thermodynamics](10_second_law_of_thermodynamics.md) — entropy and the direction of spontaneous processes.
11. [Distinction Between the First and Second Laws](11_first_law_vs_second_law.md) — why conservation alone doesn't explain irreversibility.
12. [Efficiency of Heat Engines](12_efficiency_of_heat_engines.md) — $\eta = W/Q_H$ and why $\eta < 1$ always.
13. [Carnot's Cycle and Carnot's Engine](13_carnot_cycle_and_engine.md) — the idealized four-step reversible cycle.
14. [Carnot Cycle as a Reversible Cycle](14_reversibility_of_carnot_cycle.md) — confirming each step satisfies reversibility conditions from Topic 9.
15. [Carnot's Theorem](15_carnots_theorem.md) — no engine between two reservoirs beats a Carnot engine.
16. [Thermodynamic Functions](16_thermodynamic_functions.md) — enthalpy, Helmholtz and Gibbs free energy.
17. [Third Law of Thermodynamics](17_third_law_of_thermodynamics.md) — entropy as $T\to0$.
18. [Applications of the Third Law](18_applications_of_third_law.md) — unattainability of absolute zero and related consequences.
19. [Maxwell's Thermodynamic Relations](19_maxwells_thermodynamic_relations.md) — relations derived from the exactness of thermodynamic potentials.

## Thermodynamics Roadmap

```mermaid
flowchart TD
    A[First Law<br/>ΔU = Q − W] --> B[Energy Conservation]
    B --> C[Second Law<br/>ΔS ≥ 0]
    C --> D[Entropy]
    D --> E[Heat Engines<br/>η = W/Q_H]
    E --> F[Carnot Cycle<br/>η_C = 1 − T_C/T_H]
    F --> G[Thermodynamic Potentials<br/>U, H, F, G]
    G --> H[Third Law<br/>S → 0 as T → 0]
    H --> I[Maxwell Relations]
```

The roadmap is conceptual, not strictly linear — for instance, the thermodynamic potentials and Maxwell relations rest on both the First and Second Laws jointly, and Carnot's theorem (within the Carnot Cycle node) is itself a direct corollary of the Second Law.

## Formula & Reference Resources

- [formulas.md](formulas.md) — consolidated, per-topic formula sheet spanning all 19 topics (System & Thermodynamic Functions through Maxwell's Relations), with variable definitions, units, and conditions of applicability.
- [glossary.md](glossary.md) — alphabetical glossary of key terms from Topics 1–9 (system/boundary vocabulary through reversibility); terms from Topics 10–19 (entropy, Carnot, thermodynamic potentials, Maxwell relations) aren't in the glossary yet.

## Visual Resources

All diagrams for this chapter live in the shared, repository-level directory
`../../assets/`, not inside `thermodynamics/`, prefixed
`phy103-thermodynamics-`. See any topic file for usage examples, e.g.:

```markdown
![Carnot Cycle P-V Diagram](../../assets/phy103-thermodynamics-carnot-cycle-pv.svg)
```

Assets span the whole chapter and include: system/boundary/surroundings
diagrams, open/closed/isolated system comparisons, state-vs-path function
P–V illustrations, internal-energy diagrams (microscopic and vs.
temperature), P–V work-area diagrams, the First Law energy-flow diagram,
individual P–V curves for each named process plus a combined comparison,
the Joule paddle-wheel experiment, the cyclic-process enclosed-area diagram,
the $C_P$ vs $C_V$/$\gamma$ comparison, reversible/irreversible P–V
comparisons including free expansion, the second-law engine and
Kelvin–Clausius diagrams, entropy-concept and absolute-entropy diagrams,
heat-engine efficiency, the Carnot cycle in both P–V and T–S form, the
Carnot engine and Carnot's theorem, and the Maxwell relations diagram.

## Quick Revision Section

- **Sign convention (this chapter):** $\Delta Q = \Delta U + W$, with $W$ = work done **by** the system.
- **State functions:** $P$, $V$, $T$, $U$ — path-independent. **Path functions:** $Q$, $W$ — path-dependent.
- **Ideal gas internal energy:** $U=\tfrac32nRT$ (monatomic), $U=\tfrac52nRT$ (diatomic); depends on $T$ only.
- **Work:** $W=\int P\,dV$; at constant $P$, $W=P\Delta V$; geometrically, the area under the P–V curve.
- **Process shortcuts:** isochoric → $W=0$; isothermal (ideal gas) → $\Delta U=0$; adiabatic → $Q=0$; cyclic → $\Delta U=0$.
- **Mayer's relation:** $C_P-C_V=R$; $\gamma=C_P/C_V$ (5/3 monatomic, 7/5 diatomic).
- **Reversibility:** requires quasi-static evolution, infinitesimal driving force, and zero dissipation — an idealization, never perfectly achieved in practice.
- **Second Law (Clausius/Kelvin-Planck):** heat does not spontaneously flow cold→hot; no engine converts heat entirely into work in a cycle.
- **Entropy:** $\Delta S \geq 0$ for any process in an isolated system; $=0$ only for reversible processes.
- **Engine efficiency:** $\eta = W/Q_H = 1 - Q_C/Q_H$.
- **Carnot efficiency:** $\eta_C = 1 - T_C/T_H$ — the theoretical maximum between two reservoirs.
- **Carnot's theorem:** no engine operating between two given reservoirs can exceed the Carnot efficiency; all reversible engines between the same two reservoirs share the same efficiency.
- **Third Law:** entropy of a perfect crystal approaches zero as $T\to0$; absolute zero is unattainable in a finite number of steps.

## Notes for Contributors

- Keep sign conventions consistent with $\Delta Q = \Delta U + W$ ($W$ = work done by the system) across every file in this chapter.
- New visual assets belong in `../../assets/`, not in a local `assets/` folder — see the repository-wide asset convention.
- `glossary.md` currently only covers Topics 1–9; extending it through Topic 19 (entropy, Carnot, thermodynamic potentials, Maxwell relations) is a natural next step.
- When adding a later topic file, cross-link it back to the relevant earlier prerequisite topic (e.g. link Carnot-cycle reversibility discussions back to Topic 9).

## References

- Zemansky, M. W. & Dittman, R. H., *Heat and Thermodynamics*.
- Halliday, D., Resnick, R. & Walker, J., *Fundamentals of Physics*.
- Schroeder, D. V., *An Introduction to Thermal Physics*.
