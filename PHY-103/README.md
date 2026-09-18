---
subject: PHY-103
title: Physics - II
date: 2026-09-18
---

# 🔭 PHY-103 — Physics II

![Course](https://img.shields.io/badge/Course-PHY--103-blue?style=flat-square)
![Credits](https://img.shields.io/badge/Credits-3-lightgrey?style=flat-square)
![Hours](https://img.shields.io/badge/Hours%2FWeek-3-lightgrey?style=flat-square)
![Total Hours](https://img.shields.io/badge/Total%20Hours-45-lightgrey?style=flat-square)
![Topics](https://img.shields.io/badge/Topics-81%20%2F%2083-yellow?style=flat-square)
![Units](https://img.shields.io/badge/Units-6%20%2F%206%20active-brightgreen?style=flat-square)
![Last Updated](https://img.shields.io/badge/Last%20Updated-2026--09--18-informational?style=flat-square)

---

## About

**PHY-103 (Physics – II)** is a 3-credit second-year course at BUTEX covering
six areas of classical and modern physics: Electricity, Magnetism, Kinetic
Theory of Gases, Thermodynamics, Entropy, and Modern Physics. Total contact
hours: 45. Notes follow the derivation-first style of the repository —
full proofs, ASCII/Mermaid diagrams, worked examples, and practice problems.

Entropy now lives in its own `entropy/` directory rather than as a section
of the Thermodynamics document, Thermodynamics itself carries both
per-topic files and the original consolidated doc, and Modern Physics has
moved from planned to in progress. Beyond the six syllabus units, the
folder also carries a solved past-paper **question bank** (`qna/`) and a
set of one-page **quick-revision** cram sheets (`quick_rev/`) — see
[Support Materials](#-support-materials) below.

---

## 📊 Module Progress

| # | Unit | Directory | Topics | Done | Status |
|:--|:-----|:----------|-------:|-----:|:-------|
| 1 | Electricity | [electricity/](electricity/README.md) | 14 | **14** | ✅ Complete |
| 2 | Magnetism | [magnetism/README.md](magnetism/README.md) | 13 | **13** | ✅ Complete |
| 3 | Kinetic Theory of Gases | [kinetic_theory_of_gases/README.md](kinetic_theory_of_gases/README.md) | 13 | **13** | ✅ Complete |
| 4 | Thermodynamics | [thermodynamics/README.md](thermodynamics/README.md) | 19 | **19** | ✅ Complete (per-topic files + consolidated doc) |
| 5 | Entropy | [entropy/](entropy/) | 10 | **10** | ✅ Complete (own directory, no README yet) |
| 6 | Modern Physics | [modern_physics/](modern_physics/) | 14 | **12** | 🚧 In Progress (2 remaining) |
| | **Total** | | **83** | **81** | **98 %** |

> Note: the original syllabus counted 11 Magnetism topics and 14 Kinetic
> Theory topics; the actual notes split/merged a few of these while writing
> (e.g. Lenz's Law and Self-Induction became two files; Isothermal and
> Adiabatic Process were merged into one), so the "Topics" column above
> reflects the file structure as written, not the syllabus numbering.

---

## 📋 Full Syllabus

### Unit 1 — Electricity · 14 topics ✅ Complete

| # | Topic | File |
|:--|:------|:-----|
| 1 | Coulomb's Law | [01\_coulombs\_law.md](electricity/01_coulombs_law.md) |
| 2 | Gauss's Law and Its Applications | [03\_gauss\_law.md](electricity/03_gauss_law.md) |
| 3 | Capacitors and Capacitance | [05\_capacitors\_and\_capacitance.md](electricity/05_capacitors_and_capacitance.md) |
| 4 | Capacitors with Dielectrics | [06\_capacitors\_with\_dielectrics.md](electricity/06_capacitors_with_dielectrics.md) |
| 5 | Charging and Discharging of a Capacitor | [07\_charging\_discharging\_capacitor.md](electricity/07_charging_discharging_capacitor.md) |
| 6 | Ohm's Law | [08\_ohms\_law.md](electricity/08_ohms_law.md) |
| 7 | Electric Dipole in an Electric Field | [04\_electric\_dipole.md](electricity/04_electric_dipole.md) |
| 8 | Electric Flux | [02\_electric\_flux.md](electricity/02_electric_flux.md) |
| 9 | Kirchhoff's Laws | [09\_kirchhoffs\_laws.md](electricity/09_kirchhoffs_laws.md) |
| 10 | Application of Kirchhoff's Laws to Wheatstone Bridge | [10\_wheatstone\_bridge.md](electricity/10_wheatstone_bridge.md) |
| 11 | Growth and Decay of Current in L-R Circuit | [11\_lr\_circuit\_growth\_decay.md](electricity/11_lr_circuit_growth_decay.md) |
| 12 | Alternating Current (A.C.) Fundamentals | [12\_ac\_fundamentals.md](electricity/12_ac_fundamentals.md) |
| 13 | Flow of A.C. Through Inductor, Capacitor and Resistance in Series | [13\_series\_rlc\_circuit.md](electricity/13_series_rlc_circuit.md) |
| 14 | Resonance in Parallel Circuit | [14\_parallel\_resonance.md](electricity/14_parallel_resonance.md) |

> File numbering in `electricity/` reflects creation order, not syllabus order.
> See [electricity/README.md](electricity/README.md) for the full cross-reference.

---

### Unit 2 — Magnetism · 13 topics ✅ Complete

| # | File | Topic |
|:--|:-----|:------|
| 1 | [01\_magnetic\_induction.md](magnetism/01_magnetic_induction.md) | Magnetic Induction |
| 2 | [02\_magnetic\_force\_on\_current\_carrying\_conductor.md](magnetism/02_magnetic_force_on_current_carrying_conductor.md) | Magnetic Force on a Current-Carrying Conductor |
| 3 | [03\_torque\_on\_current\_carrying\_loop.md](magnetism/03_torque_on_current_carrying_loop.md) | Torque on a Current-Carrying Loop |
| 4 | [04\_hall\_effect.md](magnetism/04_hall_effect.md) | Hall Effect |
| 5 | [05\_faradays\_law.md](magnetism/05_faradays_law.md) | Faraday's Law of Electromagnetic Induction |
| 6 | [06\_lenzs\_law.md](magnetism/06_lenzs_law.md) | Lenz's Law |
| 7 | [07\_self\_induction.md](magnetism/07_self_induction.md) | Self-Induction |
| 8 | [08\_mutual\_induction.md](magnetism/08_mutual_induction.md) | Mutual Induction |
| 9 | [09\_classification\_of\_magnetic\_materials.md](magnetism/09_classification_of_magnetic_materials.md) | Classification of Magnetic Materials |
| 10 | [10\_hysteresis\_curve.md](magnetism/10_hysteresis_curve.md) | Hysteresis Curve |
| 11 | [11\_electromagnetic\_oscillation.md](magnetism/11_electromagnetic_oscillation.md) | Electromagnetic Oscillation |
| 12 | [12\_lc\_oscillations.md](magnetism/12_lc_oscillations.md) | L-C Oscillations |
| 13 | [13\_lc\_oscillation\_shm\_analogy.md](magnetism/13_lc_oscillation_shm_analogy.md) | Analogy of L-C Oscillations with SHM |

See [magnetism/README.md](magnetism/README.md) for the unit's conceptual-flow
diagram, formula cheat sheet, notation table, and exam-warning list.

---

### Unit 3 — Kinetic Theory of Gases · 13 topics ✅ Complete

| # | File | Topic |
|:--|:-----|:------|
| 1 | [01\_heat.md](kinetic_theory_of_gases/01_heat.md) | Heat |
| 2 | [02\_temperature.md](kinetic_theory_of_gases/02_temperature.md) | Temperature |
| 3 | [03\_different\_types\_of\_thermometer.md](kinetic_theory_of_gases/03_different_types_of_thermometer.md) | Different Types of Thermometer |
| 4 | [04\_newtons\_law\_of\_cooling.md](kinetic_theory_of_gases/04_newtons_law_of_cooling.md) | Newton's Law of Cooling |
| 5 | [05\_isothermal\_and\_adiabatic\_process.md](kinetic_theory_of_gases/05_isothermal_and_adiabatic_process.md) | Isothermal and Adiabatic Process |
| 6 | [06\_adiabatic\_relation.md](kinetic_theory_of_gases/06_adiabatic_relation.md) | Adiabatic Relation |
| 7 | [07\_fundamental\_postulates\_of\_kinetic\_theory.md](kinetic_theory_of_gases/07_fundamental_postulates_of_kinetic_theory.md) | Fundamental Postulates of KTG |
| 8 | [08\_expression\_of\_pressure\_from\_kinetic\_theory.md](kinetic_theory_of_gases/08_expression_of_pressure_from_kinetic_theory.md) | Expression of Pressure from KTG |
| 9 | [09\_degrees\_of\_freedom.md](kinetic_theory_of_gases/09_degrees_of_freedom.md) | Degrees of Freedom |
| 10 | [10\_mean\_free\_path.md](kinetic_theory_of_gases/10_mean_free_path.md) | Mean Free Path |
| 11 | [11\_van\_der\_waals\_equation\_of\_state.md](kinetic_theory_of_gases/11_van_der_waals_equation_of_state.md) | Van der Waals' Equation of State |
| 12 | [12\_van\_der\_waals\_constants\_and\_critical\_constants.md](kinetic_theory_of_gases/12_van_der_waals_constants_and_critical_constants.md) | VdW Constants & Critical Constants |
| 13 | [13\_critical\_coefficient.md](kinetic_theory_of_gases/13_critical_coefficient.md) | Critical Coefficient |

See [kinetic_theory_of_gases/README.md](kinetic_theory_of_gases/README.md)
for the course-flow diagram and formula summary.

---

### Unit 4 — Thermodynamics · 19 topics ✅ Complete

Thermodynamics now has **two parallel forms**: per-topic files (below) and
the original consolidated document,
[thermodynamics/Thermodynamics_os.md](thermodynamics/Thermodynamics_os.md)
(~1,300 lines, 28 parts, including solved numericals, diagrams, exam-prep
question sets, common mistakes, and a formula sheet). Use whichever suits
the moment — per-file for targeted review, the consolidated doc for a
single read-through.

| # | Topic | File |
|:--|:------|:-----|
| 1 | System and Thermodynamic Function | [01\_system\_and\_thermodynamic\_functions.md](thermodynamics/01_system_and_thermodynamic_functions.md) |
| 2 | Internal Energy | [02\_internal\_energy.md](thermodynamics/02_internal_energy.md) |
| 3 | Work Done by the Gas at Constant Pressure | [03\_work\_done\_by\_gas\_at\_constant\_pressure.md](thermodynamics/03_work_done_by_gas_at_constant_pressure.md) |
| 4 | First Law of Thermodynamics | [04\_first\_law\_of\_thermodynamics.md](thermodynamics/04_first_law_of_thermodynamics.md) |
| 5 | Thermodynamic Process | [05\_thermodynamic\_processes.md](thermodynamics/05_thermodynamic_processes.md) |
| 6 | Mechanical Equivalent of Heat | [06\_mechanical\_equivalent\_of\_heat.md](thermodynamics/06_mechanical_equivalent_of_heat.md) |
| 7 | Cyclic Process | [07\_cyclic\_process.md](thermodynamics/07_cyclic_process.md) |
| 8 | Difference of Specific Heats of Gas | [08\_difference\_between\_specific\_heats\_of\_gas.md](thermodynamics/08_difference_between_specific_heats_of_gas.md) |
| 9 | Reversible and Irreversible Process | [09\_reversible\_and\_irreversible\_processes.md](thermodynamics/09_reversible_and_irreversible_processes.md) |
| 10 | Second Law of Thermodynamics | [10\_second\_law\_of\_thermodynamics.md](thermodynamics/10_second_law_of_thermodynamics.md) |
| 11 | First vs Second Law | [11\_first\_law\_vs\_second\_law.md](thermodynamics/11_first_law_vs_second_law.md) |
| 12 | Efficiency of Heat Engines | [12\_efficiency\_of\_heat\_engines.md](thermodynamics/12_efficiency_of_heat_engines.md) |
| 13 | Carnot Cycle and Carnot Engine | [13\_carnot\_cycle\_and\_engine.md](thermodynamics/13_carnot_cycle_and_engine.md) |
| 14 | Carnot Cycle as a Reversible Cycle | [14\_reversibility\_of\_carnot\_cycle.md](thermodynamics/14_reversibility_of_carnot_cycle.md) |
| 15 | Carnot's Theorem | [15\_carnots\_theorem.md](thermodynamics/15_carnots_theorem.md) |
| 16 | Thermodynamic Functions (Enthalpy, Helmholtz, Gibbs) | [16\_thermodynamic\_functions.md](thermodynamics/16_thermodynamic_functions.md) |
| 17 | Third Law of Thermodynamics | [17\_third\_law\_of\_thermodynamics.md](thermodynamics/17_third_law_of_thermodynamics.md) |
| 18 | Applications of the Third Law | [18\_applications\_of\_third\_law.md](thermodynamics/18_applications_of_third_law.md) |
| 19 | Maxwell's Mathematical Relations | [19\_maxwells\_thermodynamic\_relations.md](thermodynamics/19_maxwells_thermodynamic_relations.md) |

Extra reference files in this directory: [formulas.md](thermodynamics/formulas.md)
(full formula sheet) and [glossary.md](thermodynamics/glossary.md) (term
definitions), alongside [README.md](thermodynamics/README.md) as the unit index.

---

### Unit 5 — Entropy · 10 topics ✅ Complete

Entropy has been split out of the Thermodynamics document into its own
`entropy/` directory:

| # | Topic | File |
|:--|:------|:-----|
| 1 | Entropy | [01\_entropy.md](entropy/01_entropy.md) |
| 2 | Change of Entropy (Reversible and Irreversible) | [02\_change\_of\_entropy\_reversible\_irreversible.md](entropy/02_change_of_entropy_reversible_irreversible.md) |
| 3 | Second Law in Terms of Entropy | [03\_second\_law\_in\_terms\_of\_entropy.md](entropy/03_second_law_in_terms_of_entropy.md) |
| 4 | Entropy and Unavailable Energy | [04\_entropy\_and\_unavailable\_energy.md](entropy/04_entropy_and_unavailable_energy.md) |
| 5 | Entropy and Molecular Disorder | [05\_entropy\_and\_molecular\_disorder.md](entropy/05_entropy_and_molecular_disorder.md) |
| 6 | Entropy of a Perfect Gas | [06\_entropy\_of\_a\_perfect\_gas.md](entropy/06_entropy_of_a_perfect_gas.md) |
| 7 | Path-Independence of Entropy Change | [07\_entropy\_independent\_of\_path.md](entropy/07_entropy_independent_of_path.md) |
| 8 | Clausius Theorem | [08\_clausius\_theorem.md](entropy/08_clausius_theorem.md) |
| 9 | Clausius–Clapeyron Equation | [09\_clausius\_clapeyron\_equation.md](entropy/09_clausius_clapeyron_equation.md) |

> The 10 syllabus topics collapse into 9 files — Change of Entropy
> (Reversible) and (Irreversible) are covered together in file 02, matching
> the merge pattern used elsewhere in the repo.
>
> ⚠️ Unlike every other unit directory, `entropy/` has no `README.md` yet —
> a natural next step now that the files themselves are complete.

---

### Unit 6 — Modern Physics · 14 topics 🚧 In Progress (12 / 14)

| # | Topic | File |
|:--|:------|:-----|
| 1 | Properties of Radiation | [01\_properties\_of\_radiation.md](modern_physics/01_properties_of_radiation.md) |
| 2 | Blackbody and Blackbody Radiation | [02\_blackbody\_radiation.md](modern_physics/02_blackbody_radiation.md) |
| 3 | Emissive Power | [03\_emissive\_power.md](modern_physics/03_emissive_power.md) |
| 4 | Absorptive Power | [04\_absorptive\_power.md](modern_physics/04_absorptive_power.md) |
| 5 | Reflecting Power | [05\_reflecting\_power.md](modern_physics/05_reflecting_power.md) |
| 6 | Transmitting Power | [06\_transmitting\_power.md](modern_physics/06_transmitting_power.md) |
| 7 | Kirchhoff's Law | [07\_kirchhoffs\_law.md](modern_physics/07_kirchhoffs_law.md) |
| 8 | Stefan–Boltzmann Law | [08\_stefan\_boltzmann\_law.md](modern_physics/08_stefan_boltzmann_law.md) |
| 9 | Quantum Theory of Radiation | [09\_quantum\_theory\_of\_radiation.md](modern_physics/09_quantum_theory_of_radiation.md) |
| 10 | Special Theory of Relativity | [10\_special\_theory\_of\_relativity.md](modern_physics/10_special_theory_of_relativity.md) |
| 11 | Lorentz Transformation | [11\_lorentz\_transformation.md](modern_physics/11_lorentz_transformation.md) |
| 12 | de Broglie Wave | [12\_de\_broglie\_wave.md](modern_physics/12_de_broglie_wave.md) |
| 13 | Photoelectric Effect | 📋 Not started |
| 14 | Compton Effect | 📋 Not started |

No `README.md` in `modern_physics/` yet either — worth adding once the last
two files land.

---

## 📚 Support Materials

Two folders sit alongside the six unit directories and aren't tied to a
single unit:

| Folder | Contents |
|:--|:--|
| [`qna/`](qna/) | Solved question banks covering BUTEX final exams 2017–2023 — [phy-103\_complete\_solved\_question\_bank\_2017-2023.md](qna/phy-103_complete_solved_question_bank_2017-2023.md) and [Physics-II\_complete\_solved\_question\_bank\_2017-2023.md](qna/Physics-II_complete_solved_question_bank_2017-2023.md) — plus a separate exam-code 1422 set: [Physics-II.question-bank-1422.md](qna/Physics-II.question-bank-1422.md) (questions), [Physics-II.question-bank-1422-answers.md](qna/Physics-II.question-bank-1422-answers.md) (answers), and [Physics-II.question-bank-1422-g.md](qna/Physics-II.question-bank-1422-g.md) (G-set variant) |
| [`quick_rev/`](quick_rev/) | One-page cram sheets and exam-prep sets: [Electricity\_QnA\_2015\_2024.md](quick_rev/Electricity_QnA_2015_2024.md), [Electricity\_exam\_prep.md](quick_rev/Electricity_exam_prep.md), [kinetic\_theory\_of\_gases-QnA-2018\_23.md](quick_rev/kinetic_theory_of_gases-QnA-2018_23.md), [kinetic\_theory\_of\_gases.md](quick_rev/kinetic_theory_of_gases.md) |

Electricity and Kinetic Theory of Gases currently have both a question
bank and a quick-revision sheet; Magnetism, Thermodynamics, and Entropy do
not yet — a natural next step once Modern Physics is finished.

---

## 📚 Core Textbooks

| Textbook | Relevant Chapters |
|:---------|:------------------|
| Halliday, Resnick & Walker — *Fundamentals of Physics*, 10th ed., Wiley | Ch. 19–22 (Heat & Gas), 18–20 (Thermodynamics), 21–24 (Electricity), 38–39 (Modern) |
| Serway & Jewett — *Physics for Scientists and Engineers*, 9th ed., Cengage | Ch. 20–22 (Thermal), 23–28 (E&M), 40–41 (Modern) |
| Young & Freedman — *University Physics*, 14th ed., Pearson | Ch. 17–20 (Thermal), 21–32 (E&M), 37–39 (Modern) |
| Atkins & de Paula — *Physical Chemistry*, 10th ed. | Van der Waals / critical phenomena (Kinetic Theory Unit) |

---

**Last Updated:** 2026-09-18

---

<div align="center">

**[⬆ Repository Root](../README.md)**

</div>
