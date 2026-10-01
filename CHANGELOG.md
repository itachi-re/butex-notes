# 📋 Changelog — BUTEX Notes

All notable changes to the BUTEX Notes project are documented here.
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) with [Semantic Versioning](https://semver.org/).

---
## [Unreleased]

_Nothing pending — all tracked changes below are already on `master`._

## [0.14.0] — 2026-09-26 to 2026-10-01

### Summary
Exam-season push (233 commits): CHEM-103 CT-2 material for amines, carbohydrates,
amino acids/proteins and dyes, WPE-101 CT-2 prep (Set A/B), a five-guide IPE-101
Heat Treatment of Steel series, MDM-102 C Programming exam answers, and a large
MATH-103 vector calculus / Laplace Transform practice set. All MATH-103 Q&A and
quick-revision files were renamed to a consistent `ms-103-*` scheme, and the
CHEM-103 Q&A files to lowercase kebab-case.

### Added
- **CHEM-103/qna** — CT-2 and exam material:
  - `chem103-ct2-amines-carbohydrates-proteins-dyes.md` — Question bank, Class Test 2
  - `chem103-ct2-solution-v260927.0.md` — Class Test 2 solutions
  - `organic-chemistry-exam-answers-260923-0.md` — Exam answers (2026-09-23)
- **CHEM-103/quick_rev** — `chem103-ct2-prep.md`, `CHEM103-ct-qna.md`
  (amines, amino acids, carbohydrates & dyes exam answers)
- **WPE-101/qna** — CT-2 prep series: `pse-ct2-prep-v260927.0.md` →
  `v260927.3.md` (Set A solutions, Set B notes and answer script) and
  `pse-ct2-prep-v260928.0.md` (complete polymer chemistry exam answers, incl. a
  proof that M<sub>w</sub> > M<sub>n</sub>); new figures for T<sub>g</sub>/T<sub>m</sub> vs
  specific volume, polymer morphology (amorphous / crystalline / semi-crystalline),
  photostabilizers and antioxidant mechanisms
- **IPE-101/quick_rev** — Heat Treatment of Steel series (annealing, normalizing,
  hardening, tempering, austempering, TTT/CCT, Fe–Fe₃C critical range):
  `ipe-101-heat-treatment-v260929.0.md`, `v260929.1.md`, `v260930.0.md`,
  `v260930.1.md`, and `ipe-101-heat-treatment-ct2-prep-v260930.2.md`;
  new diagrams (annealing cycles, cooling paths on TTT, bainite, martensite,
  pearlite, spheroidizing, hardening flow, …)
- **IPE-101/qna** — `ipe-101-qna-exam-sol-15-24.md` (Engineering Materials exam
  solutions 2015–2024)
- **MDM-102/quick_rev** — `README.md` (file map and "which file to read" guide),
  `c_programming_260929.0.md` (complete exam answers — 20 topics incl. pyramid
  patterns), `c_programming_260929.1.md` (condensed answers)
- **MATH-103/qna** — `ms-103-scalar-potential-and-divergence.md`,
  `ms-103_vector_calculus_exam_practice.md` (problems, proofs, full solutions),
  `ms-103-laplace-vector-11-18.md` (2011–2018 solutions), `MS-103-CT2-solutions.md`
- **MATH-103/quick_rev** — `ms-103-laplace-qna.md` (Laplace solved question bank),
  `ms-103-laplace-vector-16-24.md`, and three model-answer editions
  `ms-103-vector-laplace-qna-v260930-1.md` / `-2.md` / `-3.md`
- **assets/** — New figures: vector-calculus exam figures (`fig-q3-parallelepiped`,
  `fig-q5-triangle-path`, `fig-q6-square-path`, `fig-q7-unit-cube`,
  `fig-q10-green-region`, `fig-q13-diagonals`, `fig-q16-triangle-sines`,
  `fig-q19-cross-section`, `fig-q21-region`, `fig-ms103-q8c-solution`),
  CHEM-103 reaction/structure diagrams (`chem103-*.svg`: Hinsberg, diazonium
  coupling, dye structures, Gly–Ala synthesis, Hofmann/Curtius, Haworth glucose,
  Kiliani–Fischer, Sandmeyer/Gattermann, Strecker, sulfa-drug synthesis),
  amine/amino-acid/carbohydrate/dye diagrams, and the polymer and heat-treatment
  figures above

### Changed
- **MATH-103/qna & quick_rev** — All files renamed to the `ms-103-*` scheme
  (e.g. `Differential_Equations_qna.md` → `ms-103-differential-equations-qna.md`,
  `ODE_CT.260721_Solutions.md` → `ms-103-ode-ct-260721-solutions.md`,
  `Differential_Equations_Complete_Revision_Handbook.md` →
  `ms-103-ode-complete-v260712-0.md`, `03_complex_variables.md` →
  `ms-103-complex-variables.md`; 18 renames in total)
- **CHEM-103/qna** — Renamed to lowercase kebab-case (`qb_ct1.md` →
  `chem103-ct1-organic-reactions-organometallics.md`,
  `Organic_Chemistry_Qna_260820.md` → `organic-chemistry-qna-260820.md`,
  `organic_chemistry_exam_answers_260825[.1|.2].md` →
  `organic-chemistry-exam-answers-260825[-1|-2].md`,
  `Chemistry-II_Complete_Solved_Question_Bank_2017-2023.md` →
  `complete-solved-question-bank-2017-2023.md`)
- **IPE-101/qna** — `ipe-ct-2025.md` → `ipe-ct-250715.md`;
  `IPE-101_Engineering_Materials_Practice_Exams.md` → `ipe-ct-260715.md`
- **PHY-103/qna** — `phy-103_complete_solved_question_bank_2017-2023.md` →
  `phy-103-qna-2017-2023.md`
- **MDM-102/quick_rev** — `c_programming_260907.md` → `c_programming_260907.0.md`
- Community PRs #54–#58 — CHEM-103 CT/exam answers expanded and revised with new questions,
  and polymer chemistry exam content expanded; PR #59 — revised Tg/Tm specific-volume SVG;
  PR #60 — figure index removed from the heat-treatment guide
- README: CHEM-103, PHY-103, MATH-103, MDM-102, IPE-101, WPE-101, HSS-101 and
  Lab Reports sections re-synced with the repository (see 0.12.0–0.14.0)

### Removed
- `CHEM-103/qna/.gitkeep` (directory now populated)
- Intermediate drafts superseded by the versioned files above (e.g.
  `MDM-102/quick_rev/c_programming_260907.md`, `tmp/MS-103_vector_calculus_exam_practice.md`)

### Fixed
- 28 README links that pointed at pre-rename paths (CHEM-103, PHY-103, MATH-103,
  MDM-102, IPE-101) — README now validates with 0 broken repo links
- Rendering and notation fixes merged via community PRs #52 (MATH-103 question bank),
  #53 (Laplace/vector notes) and #62 (vector/Laplace model answers)

---

## [0.13.0] — 2026-09-20 to 2026-09-25

### Summary
CHEM-103 gets a 97-diagram visual asset library and a new solved question bank,
PHY-103 gets its split question bank (14 parts), two new lab reports
(CHEM-104 qualitative/volumetric and IPE-102 machine tools), and the
PHY-104 lab reports received equation-rendering fixes (199 commits).

### Added
- **CHEM-103/quick_rev/assets/** — Visual asset library (97 SVG diagrams in
  14 topic folders: `electronic-effects`, `mechanisms`, `organometallics`,
  `alcohols-phenols`, `aldehydes-ketones`, `carboxylic-acids`, `amines`,
  `amino-acids-proteins`, `carbohydrates`, `dyes`, `reactions`, `tests`,
  `structures`, `summary`) with an index and usage guide,
  `chem103-asset-index.md`
- **CHEM-103/quick_rev** — `chem103-qna-v260923.0-2017-2023.md` and
  `Complete_Solved_Question_Bank_en_2017-2023.md` (Chemistry-II solved
  question bank 2017–2023)
- **PHY-103/qna/phy-103-qna/** — Solved question bank split into 14 files plus a
  README: standard derivations D-1 → D-51 (8 files), year-wise final exams
  2017–2023 (5 files), and a formula sheet / repeated-topics / revision checklist
  (so GitHub renders every equation)
- **lab-reports/chem-104-qual-organic-volumetric-titrations.md** — Qualitative
  organic analysis (iodoform, FeCl₃) and volumetric titration report, with
  apparatus and end-point images (`apparatus_qualitative`, `apparatus_titration`,
  `exp1_iodoform`, `exp2_feCl3`, `titration_endpoints`)
- **lab-reports/ipe-102-leathe-shaper-grinding.md** — IPE-102 lathe, shaper and
  grinding machine report with new SVG/PNG machine diagrams
- **assets/** — Carbohydrate chemistry diagrams (Haworth α/β-glucose, open-chain,
  mutarotation, glycosidic linkage, Kiliani–Fischer, glucose→fructose, bromine-water
  oxidation), amino acid / amine / dye diagrams (zwitterion & isoelectric point,
  Hinsberg separation, Sandmeyer/Gattermann, Strecker, Hofmann/Curtius,
  chromophore–auxochrome, end-group analysis)

### Changed
- **lab-reports/phy-104-*** — 13 PHY-104 Electricity & Heat reports: LaTeX subscript/
  formatting fixes so formulas render on GitHub (2026-09-22)
- **lab-reports/chem-104-qual-organic-volumetric-titrations.md** — measured values
  filled in (community PR #50)
- **PHY-103/lab** — KVL figure captions simplified; specific-heat lab symbols and
  cooling-rate fixes (community PRs #46–#48)
- Community PR #49 — CHEM-104 lab README; PR #51 — PHY-103 question-bank rendering fix

---

## [0.12.0] — 2026-09-11 to 2026-09-19

### Summary
PHY-103 completes its second half (Thermodynamics, Entropy, Modern Physics) and
gains lab notes; CHEM-104 lab grows from 4 to 13 files; Laplace Transform gets a
formula sheet; README expanded for Physics II and retitled "BUTEX Notes"
(182 commits).

### Added
- **PHY-103/thermodynamics** — Full module, 19/19 topics (system & functions →
  internal energy → first/second/third law → Carnot cycle & theorem → Maxwell's
  relations) plus `README.md`, `formulas.md` and `glossary.md`
- **PHY-103/entropy** — 9 topics (entropy → Clausius–Clapeyron equation)
- **PHY-103/modern_physics** — 12 topics (properties of radiation → blackbody,
  emissive/absorptive power, Kirchhoff's law, Stefan–Boltzmann, quantum theory
  of radiation → special relativity, Lorentz transformation, de Broglie wave)
- **PHY-103/lab** — PHY-104 lab notes for six experiments (Ohm's law, KVL, KCL,
  specific heat by cooling, meter bridge, post office box) + README
- **PHY-103/qna** — `Physics-II.question-bank-1422.md`, `…-1422-g.md` (grouped),
  `…-1422-answers.md`; **PHY-103/quick_rev** —
  `kinetic_theory_of_gases-QnA-2018_23.md`
- **CHEM-104/lab** — 9 new files: `README.md` index, identification tests for
  methyl alcohol, ethyl alcohol, oxalic acid, acetic acid and benzoic acid,
  methyl-vs-ethyl comparison, washing-soda estimation, and KMnO₄ standardization
  with oxalic acid
- **CHEM-103/qna** — `amines-aminoacids-notes-260918.md` (high-yield amines & amino acid notes)
- **MATH-103/04_laplace_transform/formulas.md** — Laplace formula sheet
- **assets/** — ~95 new diagrams: radiation & entropy figures (EM spectrum,
  blackbody curve, T–S diagrams, Clausius cycles, Compton scattering), circuit
  and capacitor diagrams, Carnot/adiabatic PV curves, `phy103-thermodynamics-*`
  figures, and materials-science figures (blast furnace, Brinell/Rockwell tests,
  creep, DBTT, Fe–Fe₃C, Frenkel/Schottky defects, KCL/KVL circuits)

### Changed
- README: PHY-103 section expanded (Thermodynamics, Entropy, Modern Physics);
  title changed from "BUTEX University Notes" to "BUTEX Notes"; PHY-103 README
  revised for clarity (community PRs #42, #44, #45)
- MDM-102/quick_rev — `c_programming_260907.md` updated

---

## [0.11.0] — 2026-09-11

### Summary
Major lab-content push: `lab_reports/` was retired and replaced end-to-end by a new
subject-organized `lab-reports/` directory (23 files covering CHEM-102, PHY-102
Mechanical, and PHY-104 Electricity + Heat experiments), IPE-101 gained a full
7-experiment Practical Lab module with diagrams, and CHEM-104 gained its first
Lab write-ups (ferrous iron estimation, carboxylic acid identification).

### Added
- **lab-reports/** — New subject-organized lab report set (23 files), replacing
  the retired `lab_reports/` directory:
  - Chemistry (CHEM-102): `chem-102-analytical.md`, `chem-102-extra.md`
  - Mechanical (PHY-102): `phy-102-gravity-flywheel.md`, `phy-102-mech-boiler-pump.md`,
    `phy-102-mech-steam-turbine.md`
  - Physics II Practical — Electricity (PHY-104, 10 experiments): earth's magnetic
    field, ECE copper, galvanometer resistance, high/low resistance, mechanical
    equivalent of heat, meter bridge (end correction & resistivity), Ohm's law
    (tangent galvanometer), post office box
  - Physics II Practical — Heat (PHY-104, 8 experiments): boiling point (PRT),
    linear expansion, pressure coefficient, radiation correction, specific heat
    of a liquid (cooling & mixtures methods), specific heat of a solid, thermal
    conductivity (Searle's method)
- **IPE-101/lab** — New IPE-102 Practical Lab module (7 experiments + diagrams):
  - `ipe102-lab-01-hand-tools.md` — Hand tools, measuring instruments, reamers,
    taps & dies, bench vice, carpentry, model making
  - `ipe102-lab-02-machine-tools.md` — Lathe, drilling, grinding, shaper, planer,
    circular saw, milling machine
  - `ipe102-lab-03-sheet-metal.md` — Sheet metal work
  - `ipe102-lab-04-metal-joining.md` — Soldering, brazing, riveting, gas welding,
    electric arc welding
  - `ipe102-lab-05-heat-treatment.md` — Annealing, normalizing, quenching,
    tempering, surface hardening
  - `ipe102-lab-06-sand-casting.md` — Sand moulds, core making, pattern for
    casting, sand casting
  - `ipe102-lab-07-gear-thread-cutting.md` — Gear cutting and thread cutting
- **CHEM-104/lab** — New Lab subsection (4 files):
  - `estimation-of-ferrous-iron.md`, `Fe2-KMnO4-estimation.md` — % error and
    Fe²⁺/KMnO₄ estimation
  - `carboxylic-acid-identification.md`, `carboxylic-acid-identification2.md`
- **WPE-101/quick_rev/Polymer_260909.md** — CT exam answer sheet (Set B)
- **MATH-103/qna/vector-hw-260909.md** — Vector calculus homework solutions

### Changed
- README: Lab Reports section fully rewritten to point at `lab-reports/`
  (Chemistry / Mechanical / PHY-104 Electricity / PHY-104 Heat subsections)
- README: IPE-101 and CHEM-104 sections updated with their new Lab subsections
- README: repository structure tree and stats updated (112 directories, 812 files)

### Removed
- `lab_reports/` — entire directory removed (`CHEM-102_lab_report.md`,
  `CHEM-102_lab_report_AKD.md`, `PHY-102_Lab_Reports.md`, `chem_extra.md`,
  `chem_labrep_sug.md`, `mechanical-lab-reports.md`, `phy_labrep_sug.md`,
  `z.draft_mlr.md`) — superseded by `lab-reports/`

---

## [0.10.0] — 2026-09-05 to 2026-09-08

### Summary
Vector calculus notation/diagram revisions across MATH-103/02_vector, a full
pass of Laplace Transform corrections (definitions, references, LaTeX syntax),
and a new MDM-102 C Programming quick-revision note.

### Added
- **MDM-102/quick_rev/c_programming_260907.md** — C Programming quick notes

### Changed
- **MATH-103/02_vector** — Scalar & vector products, vector triple product, and
  scalar/vector functions revised with corrected notation and updated diagrams
  (dot/cross product, triple product, gradient/divergence/curl reference SVGs)
- **MATH-103/04_laplace_transform** — Definition, elementary functions,
  convolution theorem, and PDE solution files revised for LaTeX syntax and
  reference formatting (Wolfram MathWorld, MIT OpenCourseWare citations)

---

## [0.9.1] — 2026-08-31 to 2026-09-04

### Summary
MATH-103 Complex Variables module completed (22/22 topics), Complete Solved
Question Banks (2017–2023) added for PHY-103, CHEM-103, MATH-103, and WPE-101,
and new WPE-101 quick-revision CT notes.

### Added
- **MATH-103/03_complex_variables** — Complete module (22 files + README):
  Number System → Rectangular/Polar Form → De Moivre's Theorem → Euler's Formula
  → Elementary Functions → Differentiation → Analytic Function → Cauchy-Riemann
  Equations → Harmonic Function/Conjugate → Complex Line Integration → Contours
  → Cauchy-Goursat Theorem → Cauchy's Integral Formula → Singular Point/Pole →
  Residue → Cauchy's Residue Theorem → Application to Improper Integrals
- **MATH-103/qna/03_complex_variables_qna.md** — Complex Variables Q&A
- **MATH-103/quick_rev/03_complex_variables.md** — Complex Variables quick revision
- **MATH-103/qna/MS103_Solved_Question_Bank_2017-2023.md** — Complete solved
  question bank
- **CHEM-103/qna/Chemistry-II_Complete_Solved_Question_Bank_2017-2023.md** —
  Complete solved question bank
- **PHY-103/qna/Physics-II_complete_solved_question_bank_2017-2023.md** and
  **phy-103_complete_solved_question_bank_2017-2023.md** — Complete solved
  question banks
- **WPE-101/qna/PSE_Question_Bank_2017-2023.md** — Complete solved question bank
- **WPE-101/quick_rev** — New CT exam quick-revision notes:
  `Polymer_260726.md` (renamed from `ct1-prep.md`), `Polymer_260901.md`,
  `Polymer_260902.md`, `Polymer_Pairs_and_FreeRadical.md`

### Changed
- README: MATH-103 section revised with the full Complex Variables topic list;
  repository stats updated
- MATH-103/02_vector/01-scalar-and-vector-quantities.md — notation and diagram fixes

### Fixed
- Broken/stale WPE-101 quick-revision link (`WPE-101_Polymer_Pairs_and_FreeRadical.md`
  → `Polymer_Pairs_and_FreeRadical.md`)

---

## [0.9.0] — 2026-08-31
Added

PHY-103/kinetic_theory_of_gases/README.md
PHY-103/kinetic_theory_of_gases/01_heat.md
PHY-103/kinetic_theory_of_gases/02_temperature.md
PHY-103/kinetic_theory_of_gases/03_different_types_of_thermometer.md
PHY-103/kinetic_theory_of_gases/04_newtons_law_of_cooling.md
PHY-103/kinetic_theory_of_gases/05_isothermal_and_adiabatic_process.md
PHY-103/kinetic_theory_of_gases/06_adiabatic_relation.md
PHY-103/kinetic_theory_of_gases/07_fundamental_postulates_of_kinetic_theory.md
PHY-103/kinetic_theory_of_gases/08_expression_of_pressure_from_kinetic_theory.md
PHY-103/kinetic_theory_of_gases/09_degrees_of_freedom.md
PHY-103/kinetic_theory_of_gases/10_mean_free_path.md
PHY-103/kinetic_theory_of_gases/11_van_der_waals_equation_of_state.md
PHY-103/kinetic_theory_of_gases/12_van_der_waals_constants_and_critical_constants.md
PHY-103/kinetic_theory_of_gases/13_critical_coefficient.md
PHY-103/qna/README.md
PHY-103/quick_rev/01_kinetic_theory_of_gases.md

## [0.8.0] — 2026-06-30

### Summary
CHEM-103 organic chemistry expansion: reaction intermediates, substitution and
elimination mechanisms, addition reactions, and a new organometallic module.
PHY-103 Electricity chapter completed: all 14 syllabus topics authored (Kirchhoff's
Laws through parallel resonance), with module README and key formula reference added.

### Added
- **CHEM-103/organic_reaction** — New reaction mechanism files:
  - `04_carbonium_ions.md` — Carbocation structure, stability, and rearrangements
  - `05_carbanions.md` — Carbanion character, stability, and nucleophilicity
  - `06_sn1.md` — SN1 mechanism, kinetics, stereochemistry, and solvent effects
  - `07_sn2.md` — SN2 mechanism, steric factors, inversion, and reactivity trends
  - `08_e1.md` — E1 elimination, carbocation intermediates, and Zaitsev's rule
  - `09_e2.md` — E2 elimination, anti-periplanar geometry, and Hofmann vs Zaitsev
  - `10_addition_reactions.md` — Electrophilic and nucleophilic addition to alkenes/carbonyls
- **CHEM-103/organometallic** — New organometallic chemistry module (3 files):
  - `01_organometallic_intro.md` — Definition, bonding types, and classification
  - `02_grignard_reagent.md` — Preparation, reactions, and synthetic applications
  - `README.md` — Module overview and contents
- **PHY-103/electricity** — Completed remaining 6 topic files (syllabus §9–14):
  - `09_kirchhoffs_laws.md` — KCL and KVL derivations, node/loop analysis, worked examples
  - `10_wheatstone_bridge.md` — Bridge balance condition, null-deflection derivation, sensitivity
  - `11_lr_circuit_growth_decay.md` — Transient analysis, time-constant derivation, energy considerations
  - `12_ac_fundamentals.md` — Phasor representation, RMS quantities, power factor, AC generator
  - `13_series_rlc_circuit.md` — Impedance, phase angle, resonance, power in series RLC
  - `14_parallel_resonance.md` — Dynamic impedance, Q-factor, bandwidth, series vs parallel comparison
  - `README.md` — Module overview, full 14-topic index, quick formula reference, key constants

### Changed
- README: PHY-103 added to **Core Sciences & Mathematics** Course Index table
- README: `### PHY-103 Topics` subsection added under Detailed Course Contents,
  listing all 14 Electricity files and 4 Magnetism files with GitHub blob links

### Summary
CHEM-103 organic chemistry expansion: reaction intermediates, substitution and
elimination mechanisms, addition reactions, and a new organometallic module.

### Added
- **CHEM-103/organic_reaction** — New reaction mechanism files:
  - `04_carbonium_ions.md` — Carbocation structure, stability, and rearrangements
  - `05_carbanions.md` — Carbanion character, stability, and nucleophilicity
  - `06_sn1.md` — SN1 mechanism, kinetics, stereochemistry, and solvent effects
  - `07_sn2.md` — SN2 mechanism, steric factors, inversion, and reactivity trends
  - `08_e1.md` — E1 elimination, carbocation intermediates, and Zaitsev's rule
  - `09_e2.md` — E2 elimination, anti-periplanar geometry, and Hofmann vs Zaitsev
  - `10_addition_reactions.md` — Electrophilic and nucleophilic addition to alkenes/carbonyls
- **CHEM-103/organometallic** — New organometallic chemistry module (3 files):
  - `01_organometallic_intro.md` — Definition, bonding types, and classification
  - `02_grignard_reagent.md` — Preparation, reactions, and synthetic applications
  - `README.md` — Module overview and contents

---

## [0.7.0] — 2026-06-06

### Summary
New second-year course foundations: PHY-103 Magnetism module (4 topic files + README),
MATH-103 directory initialised, and WPE-101 expanded with fiber-forming polymer content
and restructured into topic-based subdirectories.

### Added
- **PHY-103/magnetism** — New magnetism module (4 files + README):
  - `01_magnetic_induction.md` — Biot-Savart Law, Ampere's Circuital Law, field due to straight conductor and circular coil
  - `02_magnetic_force_conductor.md` — Force on a current-carrying conductor, force between parallel conductors, definition of Ampere
  - `03_torque_current_loop.md` — Torque on a current loop, magnetic dipole moment, galvanometer principle
  - `04_hall_effect.md` — Hall voltage, Hall coefficient, carrier type and concentration, applications
  - `README.md` — Module overview, contents table, key formulae, notation reference
- **MATH-103** — New course directory initialised
- **WPE-101/06-fiber-forming-polymers.md** — New note on fiber-forming polymers
- **WPE-101/raw_materials/** — New raw materials subdirectory
- **WPE-101/synthesis/** — New synthesis subdirectory
- **WPE-101/README.md** — Course-level README for WPE-101

### Changed
- **WPE-101** reorganized into topic-based subdirectories:
  - `01-introduction-and-history.md` → `fundamentals/01-introduction-and-history.md`
  - `02-basic-concepts-and-terminology.md` → `fundamentals/02-basic-concepts-terminology.md`
  - `03-classification-of-polymers.md` → `classification/01-classification-of-polymers.md`
- README: PHY-103 and MATH-103 added to Course Index and Detailed Course Contents
- README: stats and last-updated date updated to 2026-06-06

---

## [0.6.9] — 2026-04-21

### Summary
New PHY-101 Polarization module and fluid mechanics worked examples, a complete
CHEM-101 question bank, full MATH-101 Q&A coverage (topics 08–11), and a new
`quick_rev` quick-revision directory for MATH-101.

### Added
- **PHY-101/08_polarization** — Complete new module (8 files + README):
  - Polarization, Polarization by Reflection, Brewster's Law, Double Refraction,
    Nicol Prism, Malus' Law, Specific Rotation, Laurent's Half-Shade Polarimeter
- **PHY-101/02_fluid_mech_ex** — Fluid mechanics worked-examples set (12 files + README):
  - Topic-by-topic exercise files from `01_fluid` through `12_venturimeter`
- **CHEM-101/qb** — New question bank directory (7 files):
  - Chemical Bonding, Periodic Properties, Coordination Compounds, Acids & Bases,
    Analytical Chemistry, Colligative Properties, Chemical Equilibrium
- **MATH-101/quick_rev** — New quick-revision directory (4 files):
  - `common-formulas.md`, `differential-calculus.md`, `integral-calculus.md`, `lhopital.md`
- **MATH-101/qna** — Completed remaining Q&A topics:
  - `08-eigenvalues-cayley-hamilton.md`, `09-analytic-geometry-conics.md`,
    `10-3d-geometry.md`, `11-complex-numbers.md`
  - `ct/` subdirectory with class test Q&A for 2024, 2025, 2026, and mixed set
  - `README.md` for qna directory

### Changed
- README: PHY-101 course-index entry now lists all 8 modules; Polarization, Fluid Mech
  Examples, CHEM-101 QB, MATH-101 Quick Rev, and full qna set added to Detailed Course Contents
- README: MATH-101 coordinate geometry module added to Detailed Course Contents (was missing)
- README: stale ✨ New markers removed from v0.5.3 content (Flax, Silk, HSS Extras, Lab Reports, ME-102)
- README: repository structure tree updated to reflect current layout
- README: stats updated to `62 directories, 388 files`, last-updated date updated to 2026-04-21

### Fixed
- Broken TOC fix (`2610ce3`)
- Markdown formatting in `quick_rev/lhopital.md` (`2755f49`)

---

## [0.6.8] — 2026-04-19
*Release Notes:* https://github.com/itachi-re/butex-notes/releases/tag/v0.6.8

### Summary
MATH-101 formatting polish contributed by @akib-h.

### Changed
- Improved formatting in limit and continuity examples by @akib-h (#17)

---

## [0.6.7] — 2026-04-11
*Release Notes:* https://github.com/itachi-re/butex-notes/releases/tag/v0.6.7

### Summary
Community contribution via pull request.

### Changed
- Merged pull request #16 from @akib-h

---

## [0.6.6] — 2026-04-09
*Release Notes:* https://github.com/itachi-re/butex-notes/releases/tag/v0.6.6

### Summary
Community contribution via pull request.

### Changed
- Merged pull request #13 from @akib-h

---

## [0.6.5] — 2026-04-09
*Release Notes:* https://github.com/itachi-re/butex-notes/releases/tag/v0.6.5

### Summary
Incremental content additions following v0.6.4.

*(No detailed release notes recorded for this tag.)*

---

## [0.6.4] — 2026-04-07
*Release Notes:* https://github.com/itachi-re/butex-notes/releases/tag/0.6.3

### Summary
New asbestos fibre documentation and MATH-101 notation improvements, contributed by @akib-h.

### Added
- Asbestos fibre documentation by @akib-h (#11)

### Fixed
- Mathematical notation corrections and limit law clarifications by @akib-h (#12)

---

## [0.5.3] — 2026-04-02
*Release Notes:* https://github.com/itachi-re/butex-notes/releases/tag/v0.5.3

### Summary
Major release consolidating HSS-101 scripts, CHEM-101 QnA, PHY-101 lab reports,
MATH-101 modules, and textile notes.

### Added
- HSS-101 scripts, research notes, project guide, references masterlist
- CHEM-101 QnA, class test solutions, compound names, reorganized syllabus
- PHY-101 lab reports, optics/interference notes, QnA 2017–2023
- MATH-101 linear algebra, differential calculus, integral calculus modules
- Textile notes: wool (intro, morphology, properties, defects, grading, end uses),
  reorganized jute/silk/cotton

### Fixed
- LaTeX rendering issues in math/chemistry
- Broken Markdown links and TOC anchors
- Syntax fixes across multiple files
- Formatting corrections in lab reports

### Changed
- Standardized repo structure into `theory/`, `questions/`, `suggestions/`
- Enhanced README with stats, TOC, contribution guidelines
- Refactored CHEM-101 and PHY-101 to match syllabus
- Added CHANGELOG and CONTRIBUTING.md

---

## [0.0.3] — 2026-03-09
*Release Notes:* https://github.com/itachi-re/butex-notes/releases/tag/0.0.3

### Summary
Repository maintenance and documentation enhancements.

### Changed
- Repository structure refinement
- Documentation improvements

---

## [0.0.2] — 2026-03-08
*Release Notes:* https://github.com/itachi-re/butex-notes/releases/tag/0.0.2

### Summary
First major update with comprehensive documentation improvements and content additions.

### Added
- Link to auxetic materials in elasticity.md (#1)
- Refactored equations for clarity in questions_n_sols_2012_18 (#2)
- LaTeX formatting fixes in matrices documentation (#6)
- Updated table of contents with numbered sections (#7)

### Fixed
- Links in fluid_properties.md (#3)

### Changed
- Updated natural_textile_fibres_qb2012_19.md (#5)
- Updated repository statistics in README.md (#9)
- Updated total notes count in README (#8)

### New Contributors
- @akib-h (first contribution)

---

## [0.0.1] — 2026-01-16
*Release Notes:* https://github.com/itachi-re/butex-notes/releases/tag/0.0.1

### Summary
Initial project setup establishing comprehensive BUTEX course notes repository foundation.

### Added — Core Infrastructure
- **Project Foundation**
  - `README.md` — Comprehensive course index and project overview
  - `CHANGELOG.md` — Version history and project evolution
  - `CONTRIBUTING.md` — Contribution guidelines
  - `LICENSE` — Project licensing

- **Subject Directories** (6 courses)
  - PHY-101, CHEM-101, MATH-101, HSS-101, YE-101, YE-201

- **Supporting Infrastructure**
  - `lab_reports/` — Lab documentation
  - `pdfs/` — Reference materials
  - `scripts/` — Maintenance utilities
  - `_templates/` — Document templates
  - `tmp/` — Workspace

- **Physics I Module (PHY-101)**

  *Module 01: Elasticity*
  - `01_elasticity/elasticity.md` — Stress, Strain, Hooke's Law, Moduli, Poisson's ratio, elastic potential energy

  *Module 02: Fluid Mechanics (Dual Implementation)*
  - **Primary Set** `02_fluid-mechanics/` (11 files):
    - Overview, properties, flow types, fluid classification
    - Viscosity (detailed), Stokes' law, surface tension
    - Continuity equation, conservation laws
    - Bernoulli's theorem, applications
  - **Legacy Set** `02_fluid_mechanics/` (9 files):
    - Alternate implementation for flexibility
  - **Specialized Topics** (Added 2026-01-20):
    - `torricelli_theorem.md` — Efflux velocity
    - `venturimeter_guide.md` — Design and flow calculations
    - `rate_of_flow.md` — Volume flow rate equations

  *Module 03: Interference of Light* (Added 2026-02-23 onwards)
  - Wavefront & Huygens' principle
  - Reflection & refraction
  - Interference concepts
  - Young's double slit experiment
  - Fresnel biprism
  - Newton's rings (2026-02-28)
  - Thin film interference (2026-02-28)
  - Combined optics reference (2026-03-08)
  - Class test materials (2026-03-13)

- **Question Banks**
  - `qna/questions_n_sols_2012_18.md` — 2012–2018 exam questions
  - `qna/class_test_02_2024.md` — 2024 class test with solutions
  - `qna/ques_2017~23.md` — 2017–2023 questions compilation

---

## Version Scheme

`MAJOR.MINOR.PATCH`

| Level | When to bump |
|:------|:-------------|
| **MAJOR** | New module or major restructure |
| **MINOR** | New notes or files added |
| **PATCH** | Corrections, typo fixes, formatting |

---

## Project Timeline

- **2026-01-16** — v0.0.1: Project launch with PHY-101 foundation
- **2026-01-20** — Fluid mechanics expanded (Torricelli, venturimeter)
- **2026-02-23** — Interference of Light module begins (5 files)
- **2026-02-28** — Thin films & Newton's rings added
- **2026-03-08** — v0.0.2: Documentation refinements, 8 PRs merged
- **2026-03-09** — v0.0.3: Repository maintenance
- **2026-03-13** — Assessment materials added
- **2026-04-02** — v0.5.3: Major consolidation — HSS, CHEM, PHY, MATH, Textiles
- **2026-04-07** — v0.6.4: Asbestos fibre docs, limit law notation fixes
- **2026-04-09** — v0.6.5, v0.6.6: Incremental additions and community PRs
- **2026-04-11** — v0.6.7: Community PR merged
- **2026-04-19** — v0.6.8: MATH-101 limit/continuity formatting polish
- **2026-04-21** — v0.6.9: Polarization module, fluid examples, CHEM QB, MATH quick_rev & full qna
- **2026-06-06** — v0.7.0: PHY-103 magnetism, MATH-103 init, WPE-101 expansion & restructure
- **2026-06-30** — v0.8.0: CHEM-103 organic reactions (SN1/SN2/E1/E2) and organometallic module; PHY-103 electricity completed
- **2026-08-31** — v0.9.0: PHY-103 kinetic theory of gases module (13 topics)
- **2026-09-03** — v0.9.1: MATH-103 Complex Variables module (22/22 topics), complete solved question banks (PHY-103, CHEM-103, MATH-103, WPE-101)
- **2026-09-08** — v0.10.0: MATH-103 vector calculus notation/diagram revisions, Laplace Transform corrections
- **2026-09-11** — v0.11.0: `lab_reports/` → `lab-reports/` restructure (23 files), IPE-101 Practical Lab module (7 experiments), CHEM-104 Lab additions
- **2026-09-19** — v0.12.0: PHY-103 Thermodynamics (19 topics), Entropy (9), Modern Physics (12), PHY-104 lab notes; CHEM-104 lab grows to 13 files
- **2026-09-25** — v0.13.0: CHEM-103 97-diagram visual asset library, PHY-103 split solved question bank (14 parts), IPE-102 and CHEM-104 lab reports
- **2026-10-01** — v0.14.0: CT-2 exam-prep wave (CHEM-103, WPE-101, IPE-101 heat treatment, MDM-102, MATH-103 vector/Laplace); `ms-103-*` renames; README link repair

---

<div align="center">

**[⬆ Back to Main README](README.md)** · **[View Releases](https://github.com/itachi-re/butex-notes/releases)**

</div>
