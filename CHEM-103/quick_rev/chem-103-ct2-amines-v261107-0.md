# Amines — Chemistry-II Notes

> **Chem-103 · CT-2.** Structures are SVG diagrams stored in `../../assets/`. Equations use GitHub math (`$$ … $$`), and flowcharts use GitHub-native Mermaid. Where a handwritten equation was incomplete, a standard balanced form is given (see [Notes](#notes)).

## Contents

1. [Classification and definitions](#1-classification-and-definitions)
2. [Important terms and reactions](#2-important-terms-and-reactions)
3. [Separation of primary, secondary and tertiary amines](#3-separation-of-primary-secondary-and-tertiary-amines)
4. [Preparation of amines](#4-preparation-of-amines)
5. [Basicity constant](#5-basicity-constant)
6. [Comparison of primary, secondary and tertiary amines](#6-comparison-of-primary-secondary-and-tertiary-amines)
7. [Basicity of aniline and methylamine](#7-basicity-of-aniline-and-methylamine)
8. [Benzene diazonium chloride and azo compounds](#8-benzene-diazonium-chloride-and-azo-compounds)
9. [Hofmann and Curtius degradations](#9-hofmann-and-curtius-degradations)
10. [Quick revision](#10-quick-revision)
11. [Notes](#notes)

---

## 1. Classification and definitions

### 1.1 Primary, secondary and tertiary amines

Amines are derivatives of ammonia in which one or more hydrogen atoms are replaced by alkyl or aryl groups. The class depends on **how many carbon groups are bonded to nitrogen**.

![Ammonia and primary, secondary and tertiary amines with the nitrogen lone pair](../../assets/chem103-amines-classes.svg)

| Class | General formula | Groups on N | N–H bonds |
|---|---|---|---|
| Primary (1°) | R–NH<sub>2</sub> | 1 | 2 |
| Secondary (2°) | R<sub>2</sub>NH | 2 | 1 |
| Tertiary (3°) | R<sub>3</sub>N | 3 | 0 |

### 1.2 Aliphatic amines

Aliphatic amines are organic compounds in which the nitrogen atom is bonded to one or more **alkyl groups**. Alkyl groups are hydrocarbon groups containing only single bonds between carbon atoms.

Examples: methylamine (CH<sub>3</sub>NH<sub>2</sub>) and ethylamine (C<sub>2</sub>H<sub>5</sub>NH<sub>2</sub>).

### 1.3 Aromatic amines

Aromatic amines are compounds in which nitrogen is **directly bonded to an aryl group** (a carbon of the benzene ring).

Examples: aniline (C<sub>6</sub>H<sub>5</sub>NH<sub>2</sub>, Ph–NH<sub>2</sub>) and benzylamine (C<sub>6</sub>H<sub>5</sub>CH<sub>2</sub>NH<sub>2</sub>, Ph–CH<sub>2</sub>–NH<sub>2</sub>).

![Methylamine, ethylamine, aniline and benzylamine](../../assets/chem103-amines-examples.svg)

> [!NOTE]
> Aniline is a true aromatic amine because N is attached to the ring (red bond). In benzylamine, N is attached through a CH<sub>2</sub> group, so it is technically an **aralkyl amine**.

### 1.4 E2 elimination

E2 elimination is a one-step, concerted reaction in which a base removes a hydrogen from the carbon next to the leaving group while the leaving group departs, forming a C=C double bond. It is called **bimolecular** because the rate depends on both the substrate and the base.

![E2 mechanism with curved arrows: base removes beta hydrogen, C–H electrons form the π bond, leaving group departs](../../assets/chem103-amines-e2.svg)

1. The base (B⁻) attacks the β-hydrogen.
2. The electrons of the C–H bond move in to form the new π bond.
3. The leaving group (X) departs with the electrons of the C–X bond.

$$
\mathrm{R{-}CH_2{-}CH(X){-}R' + B^- \longrightarrow R{-}CH{=}CH{-}R' + HB + X^-}
$$

$$
\text{Rate} = k\,[\text{R–X}]\,[\text{B}^-]
$$

### 1.5 Sulfa drugs

Sulfa drugs, also called **sulfonamides**, are synthetic antimicrobial agents containing the sulfonamide group. They were among the first widely used antibacterial drugs and are used to treat certain bacterial infections.

![Sulfonamide group and sulfanilamide, the parent sulfa drug](../../assets/chem103-amines-sulfonamide.svg)

---

## 2. Important terms and reactions

### 2.1 Diazonium chloride

A diazonium chloride is an organic salt containing the diazonium group, –N<sub>2</sub><sup>+</sup>. The aromatic general formula is Ar–N<sub>2</sub><sup>+</sup>Cl<sup>−</sup>; the example is **benzene diazonium chloride**, C<sub>6</sub>H<sub>5</sub>N<sub>2</sub><sup>+</sup>Cl<sup>−</sup> (structure in [2.5](#25-diazotization)).

### 2.2 Coupling reaction

A coupling reaction occurs when an aromatic diazonium salt reacts with an activated aromatic compound, such as **phenol** or an **aromatic amine**, to form an azo compound containing the –N=N– linkage.

$$
\mathrm{ArN_2^+ + Ar'H \longrightarrow Ar{-}N{=}N{-}Ar' + H^+}
$$

Structures and the phenol example are in [Section 8](#82-preparation-of-azo-compounds).

### 2.3 Sandmeyer reaction

The replacement of the diazonium group of an aromatic diazonium salt by **Cl, Br or CN** using a **cuprous salt** (CuCl, CuBr or CuCN) is called the Sandmeyer reaction.

$$
\mathrm{C_6H_5N_2^+Cl^- \xrightarrow{CuCl} C_6H_5Cl + N_2\uparrow}
$$

### 2.4 Gattermann reaction

In the Gattermann reaction, an aromatic diazonium salt is converted into an aryl chloride or bromide using the corresponding hydrogen halide in the presence of **copper powder**.

$$
\mathrm{C_6H_5N_2^+Cl^- \xrightarrow[Cu]{HCl} C_6H_5Cl + N_2\uparrow}
$$

> [!TIP]
> **Sandmeyer vs Gattermann:** Sandmeyer uses a *cuprous salt* (CuX) and can also introduce –CN. Gattermann uses *copper powder + HX* and gives only aryl halides.

### 2.5 Diazotization

Diazotization is the conversion of a **primary aromatic amine** into an aromatic diazonium salt using nitrous acid at low temperature, usually 0–5 °C. Nitrous acid is generated in situ:

$$
\mathrm{NaNO_2 + HCl \longrightarrow HNO_2 + NaCl}
$$

![Aniline is diazotized with NaNO2 and HCl at 0 to 5 degrees Celsius to give benzene diazonium chloride](../../assets/chem103-amines-diazotization.svg)

$$
\mathrm{C_6H_5NH_2 + NaNO_2 + 2HCl \xrightarrow{0\text{–}5^\circ C} C_6H_5N_2^+Cl^- + NaCl + 2H_2O}
$$

### 2.6 Azo compounds

Azo compounds contain two aryl groups joined by the **azo linkage**, Ar–N=N–Ar′. They are commonly prepared by coupling diazonium salts with phenols or aromatic amines. Many are strongly coloured and are used as **dyes**.

### 2.7 Overview of diazonium reactions

![Benzene diazonium chloride reacting by Sandmeyer, Gattermann and azo coupling routes](../../assets/chem103-amines-diazonium-reactions.svg)

---

## 3. Separation of primary, secondary and tertiary amines

### Hofmann's method (diethyl oxalate method)

A mixture of primary, secondary and tertiary amines can be separated by treatment with **diethyl oxalate**, EtOOC–COOEt (Et = C<sub>2</sub>H<sub>5</sub>). Only the N–H bonds react.

![Diethyl oxalate reacts with 1° amines to give solid oxamides, with 2° amines to give oily oxamic esters, and not with 3° amines](../../assets/chem103-amines-oxalate-separation.svg)

| Amine | Product | State | Reason |
|---|---|---|---|
| Primary | N,N′-dialkyloxamide | crystalline solid | two N–H bonds; both ester groups react |
| Secondary | N,N-dialkyloxamic ester | oily liquid | one N–H bond; only one ester group reacts |
| Tertiary | none | unchanged | no N–H bond |

**(i) Primary amine**

$$
\mathrm{EtOOC{-}COOEt + 2RNH_2 \xrightarrow{\Delta} RNHCO{-}CONHR + 2C_2H_5OH}
$$

**(ii) Secondary amine**

$$
\mathrm{EtOOC{-}COOEt + R_2NH \xrightarrow{\Delta} R_2NCO{-}COOEt + C_2H_5OH}
$$

**(iii) Tertiary amine:** no reaction.

```mermaid
flowchart TD
    M["Mixture of 1°, 2° and 3° amines"] --> D["Add diethyl oxalate and warm"]
    D --> P["1° → solid dialkyloxamide"]
    D --> S["2° → oily oxamic ester"]
    D --> T["3° → unreacted R₃N"]
    P --> SEP["Separate by physical properties<br/>(filtration, distillation)"]
    S --> SEP
    T --> SEP
    SEP --> H["Hydrolyse the derivatives<br/>to regenerate 1° and 2° amines"]
```

---

## 4. Preparation of amines

### 4.1 Aliphatic amines from alcohol and ammonia

Alcohol vapour reacts with ammonia (or an amine) over heated **alumina** to form amines. Each further methylation moves one step up the ladder: primary → secondary → tertiary.

![Methanol and ammonia over alumina at 400 °C give methylamine, dimethylamine and trimethylamine in turn](../../assets/chem103-amines-aliphatic-ladder.svg)

**Primary** (methylamine)

$$
\mathrm{CH_3OH + NH_3 \xrightarrow[400^\circ C]{Al_2O_3} CH_3NH_2 + H_2O}
$$

**Secondary** (dimethylamine)

$$
\mathrm{CH_3OH + CH_3NH_2 \xrightarrow[400^\circ C]{Al_2O_3} (CH_3)_2NH + H_2O}
$$

**Tertiary** (trimethylamine)

$$
\mathrm{CH_3OH + (CH_3)_2NH \xrightarrow[400^\circ C]{Al_2O_3} (CH_3)_3N + H_2O}
$$

### 4.2 Aromatic primary amine: reduction of a nitro compound

Aromatic primary amines are prepared by reducing nitro compounds with tin and hydrochloric acid.

![Nitrobenzene is reduced by Sn and HCl to aniline](../../assets/chem103-amines-nitro-reduction.svg)

$$
\mathrm{C_6H_5NO_2 + 6[H] \xrightarrow{Sn/HCl} C_6H_5NH_2 + 2H_2O}
$$

### 4.3 Aromatic secondary and tertiary amines: N-methylation

Aniline reacts with methyl iodide to form N-methylaniline, which reacts again to give N,N-dimethylaniline.

![Aniline to N-methylaniline to N,N-dimethylaniline with methyl iodide](../../assets/chem103-amines-n-methylation.svg)

$$
\mathrm{C_6H_5NH_2 + CH_3I \longrightarrow C_6H_5NHCH_3 + HI}
$$

$$
\mathrm{C_6H_5NHCH_3 + CH_3I \longrightarrow C_6H_5N(CH_3)_2 + HI}
$$

> [!NOTE]
> Alkylation does not stop cleanly at one stage. In practice a mixture of 1°, 2°, 3° amines (and a quaternary ammonium salt) forms, so the equations show each step in isolation.

### 4.4 Summary by class

| Class | Aliphatic example | Aromatic example |
|---|---|---|
| Primary | CH<sub>3</sub>OH + NH<sub>3</sub> → CH<sub>3</sub>NH<sub>2</sub> | C<sub>6</sub>H<sub>5</sub>NO<sub>2</sub> → C<sub>6</sub>H<sub>5</sub>NH<sub>2</sub> (Sn/HCl) |
| Secondary | CH<sub>3</sub>OH + CH<sub>3</sub>NH<sub>2</sub> → (CH<sub>3</sub>)<sub>2</sub>NH | C<sub>6</sub>H<sub>5</sub>NH<sub>2</sub> + CH<sub>3</sub>I → C<sub>6</sub>H<sub>5</sub>NHCH<sub>3</sub> |
| Tertiary | CH<sub>3</sub>OH + (CH<sub>3</sub>)<sub>2</sub>NH → (CH<sub>3</sub>)<sub>3</sub>N | C<sub>6</sub>H<sub>5</sub>NHCH<sub>3</sub> + CH<sub>3</sub>I → C<sub>6</sub>H<sub>5</sub>N(CH<sub>3</sub>)<sub>2</sub> |

---

## 5. Basicity constant

The basicity constant, $K_b$, measures the ability of an amine to accept a proton from water.

$$
\mathrm{RNH_2 + H_2O \rightleftharpoons RNH_3^+ + OH^-}
$$

$$
K_b = \frac{[\mathrm{RNH_3^+}][\mathrm{OH^-}]}{[\mathrm{RNH_2}]}
$$

Water is omitted because it is a pure liquid.

### Relation between $K_b$ and $pK_b$

$$
pK_b = -\log_{10} K_b \qquad\qquad K_b = 10^{-pK_b}
$$

**Example:** if $pK_b = 4.75$, then

$$
K_b = 10^{-4.75} \approx 1.78 \times 10^{-5}
$$

> [!IMPORTANT]
> **Larger $K_b$ = stronger base. Smaller $pK_b$ = stronger base.**

### Typical values in water (about 25 °C)

| Amine | $pK_b$ | $K_b$ |
|---|---|---|
| Ammonia | 4.75 | 1.8 × 10<sup>−5</sup> |
| Methylamine | 3.36 | 4.4 × 10<sup>−4</sup> |
| Dimethylamine | 3.27 | 5.4 × 10<sup>−4</sup> |
| Trimethylamine | 4.19 | 6.5 × 10<sup>−5</sup> |
| Ethylamine | 3.25 | 5.6 × 10<sup>−4</sup> |
| Diethylamine | 3.02 | 9.5 × 10<sup>−4</sup> |
| Triethylamine | 3.25 | 5.6 × 10<sup>−4</sup> |
| Aniline | 9.38 | 4.2 × 10<sup>−10</sup> |

Approximate textbook values; they differ slightly between sources.

---

## 6. Comparison of primary, secondary and tertiary amines

| Property | Primary amine | Secondary amine | Tertiary amine |
|---|---|---|---|
| General formula | RNH<sub>2</sub> | R<sub>2</sub>NH | R<sub>3</sub>N |
| N–H bonds | 2 | 1 | 0 |
| Intermolecular hydrogen bonding | Strongest potential | Intermediate | Cannot donate N–H hydrogen bonds |
| Boiling point (similar molar mass) | Higher | Intermediate | Lower |
| Reaction with diethyl oxalate | Solid oxamide | Oily oxamic ester | No reaction |

> [!NOTE]
> The relative basicity of 1°, 2° and 3° amines is **not universal**. It depends on solvent, solvation, steric effects and the structure of the alkyl groups. In water the methylamines run 2° > 1° > 3° > NH<sub>3</sub> (see the table in Section 5), but this order changes for other alkyl groups, so do not memorise one order for all amines.

---

## 7. Basicity of aniline and methylamine

Aniline is **less basic** than methylamine because the nitrogen lone pair in aniline is **delocalised into the benzene ring** by resonance, so it is less available to accept a proton.

![Resonance in aniline: the nitrogen lone pair delocalises to the ortho and para carbons](../../assets/chem103-amines-aniline-resonance.svg)

In methylamine, the lone pair is localised on nitrogen and more available for protonation, and the methyl group has an electron-releasing inductive effect.

| | Methylamine | Aniline |
|---|---|---|
| N lone pair | Localised on N | Delocalised into the ring |
| Effect of attached group | +I (electron-releasing) | Resonance withdrawal into ring |
| $pK_b$ | 3.36 | 9.38 |
| Basicity | **Stronger base** | Weaker base |

$$
\boxed{\text{Methylamine is more basic than aniline.}}
$$

---

## 8. Benzene diazonium chloride and azo compounds

### 8.1 Preparation of benzene diazonium chloride

Benzene diazonium chloride is prepared by **diazotization of aniline** with nitrous acid (NaNO<sub>2</sub> + HCl) at 0–5 °C.

![Diazotization of aniline to benzene diazonium chloride](../../assets/chem103-amines-diazotization.svg)

$$
\mathrm{C_6H_5NH_2 + NaNO_2 + 2HCl \xrightarrow{0\text{–}5^\circ C} C_6H_5N_2^+Cl^- + NaCl + 2H_2O}
$$

### 8.2 Preparation of azo compounds

Azo compounds are prepared by coupling an aromatic diazonium salt with phenol or an aromatic amine. Example: coupling with phenol in alkaline medium.

![Benzene diazonium chloride couples with phenol at the para position to give 4-hydroxyazobenzene](../../assets/chem103-amines-azo-coupling.svg)

$$
\mathrm{C_6H_5N_2^+Cl^- + C_6H_5OH + NaOH \longrightarrow HO{-}C_6H_4{-}N{=}N{-}C_6H_5 + NaCl + H_2O}
$$

**Product:** *p*-hydroxyazobenzene (4-hydroxyazobenzene), an orange azo compound. The characteristic linkage is

$$
\boxed{\mathrm{Ar{-}N{=}N{-}Ar'}}
$$

---

## 9. Hofmann and Curtius degradations

Both reactions convert a carboxylic acid derivative into a **primary amine with one carbon atom fewer**, and both go through the same **isocyanate** intermediate.

![Hofmann (amide) and Curtius (acyl azide) both rearrange to an isocyanate, which hydrolyses to a primary amine](../../assets/chem103-amines-hofmann-curtius.svg)

### 9.1 Hofmann degradation (Hofmann rearrangement)

A primary amide is treated with bromine and aqueous sodium hydroxide. The R group migrates from carbon to nitrogen, giving an isocyanate, which is hydrolysed to the amine.

$$
\mathrm{RCONH_2 + Br_2 + 4NaOH \longrightarrow RNH_2 + Na_2CO_3 + 2NaBr + 2H_2O}
$$

Example: acetamide gives methylamine.

$$
\mathrm{CH_3CONH_2 \xrightarrow{Br_2/NaOH} CH_3NH_2}
$$

### 9.2 Curtius degradation (Curtius rearrangement)

Thermal decomposition of an acyl azide gives an isocyanate. Hydrolysis of the isocyanate gives the primary amine.

$$
\mathrm{RCON_3 \xrightarrow{\Delta} R{-}N{=}C{=}O + N_2}
$$

$$
\mathrm{R{-}N{=}C{=}O + H_2O \longrightarrow RNH_2 + CO_2}
$$

### 9.3 Comparison

| | Hofmann | Curtius |
|---|---|---|
| Starting material | Primary amide, RCONH<sub>2</sub> | Acyl azide, RCON<sub>3</sub> |
| Reagent / condition | Br<sub>2</sub> + NaOH | Heat, then H<sub>2</sub>O |
| Intermediate | Isocyanate, R–N=C=O | Isocyanate, R–N=C=O |
| By-products | Na<sub>2</sub>CO<sub>3</sub>, NaBr | N<sub>2</sub>, CO<sub>2</sub> |
| Product | RNH<sub>2</sub> (one C fewer) | RNH<sub>2</sub> (one C fewer) |

---

## 10. Quick revision

### Key reactions

| Reaction | Reagent / condition | Main product |
|---|---|---|
| Diazotization | NaNO<sub>2</sub>/HCl, 0–5 °C | Aromatic diazonium salt |
| Sandmeyer reaction | CuCl, CuBr or CuCN | Aryl halide or nitrile |
| Gattermann reaction | HCl/HBr, Cu powder | Aryl chloride or bromide |
| Azo coupling | Diazonium salt + phenol / aryl amine | Azo compound |
| Nitro reduction | Sn/HCl | Primary aromatic amine |
| Alcohol + NH<sub>3</sub> | Al<sub>2</sub>O<sub>3</sub>, 400 °C | 1° → 2° → 3° aliphatic amines |
| Diethyl oxalate test | Heat | 1° solid, 2° oily liquid, 3° none |
| Hofmann degradation | Br<sub>2</sub>/NaOH | Primary amine, one C fewer |
| Curtius rearrangement | Heat acyl azide, then hydrolysis | Primary amine, one C fewer |

### Reaction roadmap

```mermaid
flowchart LR
    A["Nitrobenzene<br/>C₆H₅NO₂"] -->|"Sn / HCl"| B["Aniline<br/>C₆H₅NH₂"]
    B -->|"NaNO₂ / HCl, 0–5 °C"| C["Benzene diazonium chloride<br/>C₆H₅N₂⁺Cl⁻"]
    C -->|"CuCl, CuBr, CuCN"| D["Ar–Cl, Ar–Br, Ar–CN<br/>(Sandmeyer)"]
    C -->|"Cu powder, HCl or HBr"| E["Ar–Cl, Ar–Br<br/>(Gattermann)"]
    C -->|"phenol / NaOH or ArNH₂"| F["Azo compound<br/>Ar–N=N–Ar′"]
    G["Amide RCONH₂"] -->|"Br₂ / NaOH"| H["Primary amine RNH₂<br/>(one C fewer)"]
    I["Acyl azide RCON₃"] -->|"Heat, then H₂O"| H
    J["Alcohol + NH₃"] -->|"Al₂O₃, 400 °C"| K["1° → 2° → 3°<br/>aliphatic amines"]
```

---

## Notes

- Order and scope follow the supplied 9-page handwritten note. Sections 4 and 6 of the source (both on preparation) are merged into [Section 4](#4-preparation-of-amines), and the sections that followed are renumbered.
- Some handwritten equations were abbreviated or incomplete. Standard balanced forms are written out where necessary.
- Added for clarity beyond the source: the sulfanilamide structure, the $pK_b$ table in Section 5, the comparison tables in Sections 7 and 9, and the roadmap flowchart.
- The boiling-point trend is a simplified comparison for amines of similar molar mass. Actual values depend on molecular structure.
- Basicity order depends on solvent, solvation and steric effects and should not be memorised as one universal order for all amines.
