# Amines & Amino Acids — High-Yield Notes

---

# Q1. Amines

## (i) 1°, 2°, 3° Amines — Definitions

| Class | Definition | General Formula |
|---|---|---|
| **1° (Primary)** | One H of NH₃ replaced by alkyl/aryl group | R–NH₂ |
| **2° (Secondary)** | Two H's of NH₃ replaced | R₂NH |
| **3° (Tertiary)** | All three H's of NH₃ replaced | R₃N |

**Structural examples (condensed formula + SMILES):**

```mermaid
graph LR
    A["1° Amine
    Ethylamine
    CH3-CH2-NH2
    SMILES: CCN"]
    B["2° Amine
    Diethylamine
    (CH3-CH2)2NH
    SMILES: CCNCC"]
    C["3° Amine
    Triethylamine
    (CH3-CH2)3N
    SMILES: CCN(CC)CC"]
    style A fill:#1b4965,stroke:#e0e0e0,color:#ffffff
    style B fill:#6a1b9a,stroke:#e0e0e0,color:#ffffff
    style C fill:#b45309,stroke:#e0e0e0,color:#ffffff
```

- N in 1°/2° amines bears 1–2 H atoms → can H-bond (N–H); 3° amines cannot donate H-bonds.
- Basicity order (gas phase / aqueous, aliphatic): generally 2° > 1° > 3° > NH₃ in water (steric + solvation effects).

---

## (ii) Separation of 1°, 2°, 3° Amines — Hinsberg Method

**Principle:** Benzenesulfonyl chloride (C₆H₅SO₂Cl) reacts differently with each class.

| Amine | Product with C₆H₅SO₂Cl | Solubility in KOH(aq) |
|---|---|---|
| 1° | R–NH–SO₂C₆H₅ (has acidic N–H) | **Soluble** (forms salt) |
| 2° | R₂N–SO₂C₆H₅ (no N–H) | **Insoluble** |
| 3° | No reaction (just forms soluble salt with excess acid, unreacted amine) | Separates as free amine (immiscible layer / insoluble in base but extractable by dil. HCl) |

```mermaid
flowchart TD
    Start["Mixture of 1°, 2°, 3° Amines"] --> React["+ C6H5SO2Cl (Hinsberg reagent), KOH"]
    React --> P1["1° Amine
    R-NH-SO2C6H5
    (N-H present, acidic)"]
    React --> P2["2° Amine
    R2N-SO2C6H5
    (no N-H, neutral)"]
    React --> P3["3° Amine
    unreacted, remains as free R3N"]

    P1 --> KOH1["Dissolves in KOH
    → clear solution"]
    P2 --> KOH2["Insoluble in KOH
    → precipitate/oil separated by filtration"]
    P3 --> Sep3["Separated directly
    (immiscible / extract with dil. HCl)"]

    KOH1 --> Acid1["Acidify with HCl
    → regenerate pure 1° amine"]
    KOH2 --> Hydrolysis["Hydrolyze sulfonamide (HCl, reflux)
    → regenerate pure 2° amine"]
```

**Reagents/conditions:** C₆H₅SO₂Cl / KOH(aq), shake; separate by filtration (2° ppt); acidify filtrate (1° salt) with HCl to regenerate amine; hydrolyze 2° sulfonamide with conc. HCl on reflux.

---

## (iii) Named Reactions

### Sandmeyer Reaction
Aryl diazonium salt → aryl halide, using **Cu(I) catalyst**.

```mermaid
graph LR
    A["C6H5-N2+ Cl-
    (Benzenediazonium chloride)"] -->|"CuCl / HCl"| B["C6H5-Cl
    Chlorobenzene"]
    A -->|"CuBr / HBr"| C["C6H5-Br
    Bromobenzene"]
    A -->|"CuCN / KCN"| D["C6H5-CN
    Benzonitrile"]
```

### Gattermann Reaction
Same transformation but uses **Cu powder + HX** directly (no separate cuprous salt needed).

```mermaid
graph LR
    A["C6H5-N2+ Cl-"] -->|"Cu powder / HCl"| B["C6H5-Cl"]
    A -->|"Cu powder / HBr"| C["C6H5-Br"]
```
*(Sandmeyer = Cu salt; Gattermann = Cu dust — mechanistically both proceed via aryl free radical.)*

### Coupling Reaction (Azo dye formation)
Diazonium salt + activated arene (phenol/aniline) → **azo compound**.

```mermaid
graph LR
    A["C6H5-N2+ Cl-
    (0-5°C, diazonium salt)"] --> B["+ Phenol (C6H5OH)
    in weak alkaline medium"]
    B --> C["C6H5-N=N-C6H4-OH
    p-Hydroxyazobenzene
    (orange-red azo dye)"]
```

### Sulfa Drug (Sulfanilamide) Synthesis
From aniline via acetylation → sulfonation → hydrolysis (protect –NH₂ first, since it would also react with ClSO₃H otherwise).

```mermaid
flowchart LR
    An["Aniline
    C6H5-NH2"] -->|"(CH3CO)2O"| Ac["Acetanilide
    C6H5-NHCOCH3"]
    Ac -->|"ClSO3H"| Sc["p-NH2SO2-C6H4-NHCOCH3
    (sulfonyl chloride → amide with NH3)"]
    Sc -->|"NH3"| Sa["p-NH2SO2-C6H4-NHCOCH3
    (sulfonamide, N-acetyl)"]
    Sa -->|"H3O+ / hydrolysis
    (removes acetyl)"| Final["Sulfanilamide
    p-H2N-C6H4-SO2NH2"]
```

### Hofmann Bromamide Degradation
1° amide → 1° amine with **loss of one carbon** (Br₂/NaOH).

```mermaid
graph LR
    A["R-CONH2
    (Amide, e.g. CH3CONH2)"] -->|"Br2 / NaOH
    (cold)"| B["R-N=C=O
    (Isocyanate intermediate)"]
    B -->|"H2O"| C["R-NH2
    (1° amine, one C less)
    e.g. CH3-NH2"]
```
Mechanism: amide → N-bromoamide → nitrene/isocyanate (via Curtius-type rearrangement) → carbamic acid → amine + CO₂.

### Curtius Degradation
Acyl azide → isocyanate → amine (thermal, via nitrene), one carbon lost.

```mermaid
graph LR
    A["R-COCl
    (Acid chloride)"] -->|"NaN3"| B["R-CO-N3
    (Acyl azide)"]
    B -->|"Δ (heat)
    -N2"| C["R-N=C=O
    (Isocyanate)"]
    C -->|"H2O / -CO2"| D["R-NH2
    (1° amine)"]
```

---

# Q2. Amino Acids and Proteins

## (i) Definitions

| Term | Definition | Example |
|---|---|---|
| **Protein** | Polymer of amino acids linked by peptide bonds, folded into 3D structure | Insulin, Hemoglobin |
| **Amino acid** | Organic acid with –NH₂ and –COOH groups | Glycine (H₂N–CH₂–COOH) |
| **Essential AA** | Cannot be synthesized by body; must come from diet | Leucine, Lysine, Valine |
| **Non-essential AA** | Body can synthesize | Glycine, Alanine, Glutamic acid |
| **Zwitterion** | Dipolar ion — amino acid exists with –NH₃⁺ and –COO⁻ simultaneously | Glycine zwitterion |
| **Isoelectric point (pI)** | pH at which amino acid has net zero charge (exists fully as zwitterion) | Glycine pI ≈ 5.97 |
| **Peptide linkage** | Amide bond (–CO–NH–) formed between –COOH of one AA and –NH₂ of another | Gly–Ala bond |

**Zwitterion structure (Glycine):**

```mermaid
graph LR
    A["Neutral form (rarely exists)
    H2N-CH2-COOH"] -->|"intramolecular
    proton transfer"| B["Zwitterion (actual form)
    +H3N-CH2-COO-"]
```
SMILES: `[NH3+]CC(=O)[O-]`

**Peptide linkage structure:**

```mermaid
graph LR
    A["H2N-CHR1-COOH
    (Amino acid 1)"] --> C["Condensation
    -H2O"]
    B["H2N-CHR2-COOH
    (Amino acid 2)"] --> C
    C --> D["H2N-CHR1-CO-NH-CHR2-COOH
    Peptide bond shown as: -CO-NH-"]
    style D fill:#dfd,stroke:#333
```

---

## (ii) Synthesis of α-Amino Acids — Strecker Synthesis

Aldehyde + NH₃ + HCN → α-amino nitrile → hydrolysis → α-amino acid.

```mermaid
flowchart LR
    Ald["R-CHO
    (Aldehyde, e.g. CH3CHO)"] -->|"NH3"| Imine["R-CH=NH
    (Imine)"]
    Imine -->|"HCN"| Nitrile["R-CH(NH2)-CN
    (α-Aminonitrile)"]
    Nitrile -->|"H3O+ / hydrolysis
    (reflux)"| AA["R-CH(NH2)-COOH
    (α-Amino acid, e.g. Alanine)"]
```

*(Gabriel–phthalimide route is used mainly for simple 1° amines, not typically for amino acids directly — Strecker is the standard α-amino acid route.)*

---

## (iii) End Group Analysis of Peptides

### Sanger's Method (N-terminal identification)
Uses **1-fluoro-2,4-dinitrobenzene (FDNB/Sanger's reagent)**.

```mermaid
flowchart TD
    P["Peptide chain
    H2N-AA1-AA2-...-AAn-COOH"] -->|"FDNB (Sanger's reagent), mild base"| DNP["DNP-peptide
    (2,4-dinitrophenyl attached to N-terminal amine)"]
    DNP -->|"Complete acid hydrolysis
    (6M HCl)"| Frag["Mixture of free amino acids
    + DNP-amino acid (N-terminal, labeled)"]
    Frag --> Identify["Identify DNP-amino acid
    by chromatography → reveals N-terminal residue"]
```

### Edman Degradation (sequential N-terminal removal — preferred, repeatable)
Uses **phenyl isothiocyanate (PITC)**.

```mermaid
flowchart TD
    Pep["Peptide
    H2N-AA1-AA2-AA3...-COOH"] -->|"PITC (Edman's reagent)
    mild alkaline"| PTC["Phenylthiocarbamyl (PTC)-peptide"]
    PTC -->|"Mild acid
    (no full hydrolysis)"| Cleave["Cleaves only N-terminal residue
    as PTH-amino acid
    + shortened peptide (AA2-AA3-...)"]
    Cleave --> Identify["Identify PTH-amino acid
    (chromatography/HPLC)"]
    Cleave --> Repeat["Shortened peptide re-subjected
    to PITC cycle"]
    Repeat --> PTC
```
**Key advantage:** peptide is shortened by only 1 residue per cycle → allows full sequential sequencing (unlike Sanger's, which needs full hydrolysis and only gives N-terminal residue).

---

## (iv) Synthesis of Gly-Ala Dipeptide

**Structure of Gly-Ala:**
```
H2N-CH2-CO-NH-CH(CH3)-COOH
   (Gly residue)   (Ala residue)
```
SMILES: `NCC(=O)NC(C)C(=O)O`

**Synthesis scheme (protect/activate/couple/deprotect strategy):**

```mermaid
flowchart LR
    Gly["Glycine
    H2N-CH2-COOH"] -->|"(Boc)2O
    protect -NH2"| GlyP["Boc-NH-CH2-COOH
    (N-protected Gly)"]
    GlyP -->|"activate -COOH
    e.g. DCC / mixed anhydride"| GlyAct["Boc-NH-CH2-CO-X
    (activated ester)"]
    Ala["Alanine
    H2N-CH(CH3)-COOH
    (free -COOH, esterify if needed)"] --> Couple
    GlyAct --> Couple["Coupling reaction"]
    Couple --> Dipep["Boc-NH-CH2-CO-NH-CH(CH3)-COOH
    (protected Gly-Ala)"]
    Dipep -->|"H+ (e.g. TFA/HCl)
    remove Boc"| Final["H2N-CH2-CO-NH-CH(CH3)-COOH
    Gly-Ala dipeptide"]
```

**Why protect first:** free –NH₂ of glycine would otherwise self-condense; protecting group (Boc) blocks it during coupling, then is removed after peptide bond forms.

---

## (v) Essential vs Non-Essential Amino Acids

| Feature | Essential | Non-Essential |
|---|---|---|
| Synthesis by body | Cannot be synthesized | Can be synthesized (from metabolic intermediates) |
| Source | Must be obtained from diet | Diet not strictly required |
| Examples | Leucine, Isoleucine, Valine, Lysine, Threonine, Methionine, Phenylalanine, Tryptophan, Histidine* | Glycine, Alanine, Serine, Glutamic acid, Aspartic acid, Proline |
| Deficiency effect | Growth retardation, health disorders if missing from diet | Rarely causes deficiency disease |
| Number (humans) | 9 | 11 |

*Histidine essential in infants/growing children.
