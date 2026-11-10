# WPE-101: Polymer Science and Engineering

> **B.Sc. in Textile Engineering · BUTEX · Department of Wet Processing Engineering**

| Credit | Hour / Week | Total Hour |
| :----: | :---------: | :--------: |
|   3    |      3      |     45     |

## Overview

WPE-101 lays the chemical and structural foundation of polymer science: historical milestones and basic terminology, polymer classification, raw materials, polymerization mechanisms, fiber-forming polymers, and molecular weight characterization. These concepts underpin every downstream textile process, from fiber manufacture to wet processing.

**By the end of these notes you should be able to:**

- Define the core terms (monomer, repeat unit, DP, functionality) and trace how polymer science developed.
- Classify any polymer by structure, composition, origin, and thermal behavior.
- Name the feedstocks behind major textile polymers and the intermediates they pass through.
- Distinguish chain-growth from step-growth polymerization, and choose between bulk, solution, suspension, and emulsion methods.
- Describe how PET, nylons, PAN, PP, PVA, and viscose are made and why they suit textile use.
- Calculate and interpret $\bar{M}_n$, $\bar{M}_w$, and dispersity, and explain how molecular weight affects spinnability and fiber strength.

---

## Quick Navigation

| Section | What it answers | Status |
|---------|-----------------|:------:|
| [`fundamentals/`](fundamentals/) | Where did polymer science come from, and what is the vocabulary? | ✅ |
| [`classification/`](classification/) | How are polymers grouped? | ✅ |
| [`raw_materials/`](raw_materials/) | Where do polymers come from? | ✅ |
| [`synthesis/`](synthesis/) | How are polymers made, and which ones become fibers? | ✅ |
| [`molecular_weight/`](molecular_weight/) | How big is a polymer chain, and why does it matter? | 🚧 |

---

## Suggested Study Path

```
fundamentals  →  classification  →  raw_materials  →  synthesis  →  molecular_weight
 (vocabulary)     (organize it)     (the feedstocks)   (the chemistry)   (the numbers)
```

Each section builds on the one before it. Terminology from `fundamentals/` is used everywhere, and `molecular_weight/` assumes you know the polymerization mechanisms in `synthesis/`.

---

## Directory Structure

```
WPE-101/
├── fundamentals/
│   ├── 01-introduction-and-history.md
│   ├── 02-basic-concepts-terminology.md
│   └── README.md
├── classification/
│   ├── 01-classification-of-polymers.md
│   └── README.md
├── raw_materials/
│   ├── 01-raw-materials-sources-derivatives.md
│   └── README.md
├── synthesis/
│   ├── 01-polymerization-mechanisms-methods.md
│   ├── 02-fiber-forming-polymers.md
│   └── README.md
├── molecular_weight/
│   ├── 01-molecular-weight-types-distribution.md
│   └── README.md
└── README.md
```

---

## Topics

### `fundamentals/`

> Introduction to the field: where polymer science came from and the language it uses.

| # | File | Topics Covered |
|---|------|----------------|
| 01 | [Introduction & History](fundamentals/01-introduction-and-history.md) | Historical development of polymer chemistry; early natural polymers; Staudinger's macromolecular hypothesis; key milestones and pioneers (Carothers, Ziegler, Natta) |
| 02 | [Basic Concepts & Terminology](fundamentals/02-basic-concepts-terminology.md) | Monomer, repeat unit, polymer chain; degree of polymerization (DP); functionality; scope and significance of polymer science in textile engineering |

---

### `classification/`

> How polymers are grouped: by structure, origin, thermal behavior, and composition.

| # | File | Topics Covered |
|---|------|----------------|
| 01 | [Classification of Polymers](classification/01-classification-of-polymers.md) | **By structure:** linear, branched, cross-linked, network · **By composition:** homopolymers, copolymers (alternating, random, block, graft) · **By origin:** natural, semi-synthetic, synthetic · **By thermal behavior:** thermoplastic, thermoset, elastomer |

---

### `raw_materials/`

> The feedstocks: where polymers come from before they become fibers.

| # | File | Topics Covered |
|---|------|----------------|
| 01 | [Raw Materials: Sources & Derivatives](raw_materials/01-raw-materials-sources-derivatives.md) | Natural sources (cellulose, protein); petrochemical feedstocks (ethylene, propylene, caprolactam, TPA, EG); coal-tar derivatives; biosynthetic routes; key intermediates and their polymer derivatives |

---

### `synthesis/`

> How polymers are made: the chemistry and engineering of polymerization.

| # | File | Topics Covered |
|---|------|----------------|
| 01 | [Polymerization: Mechanisms & Methods](synthesis/01-polymerization-mechanisms-methods.md) | **Mechanisms:** chain-growth (radical, cationic, anionic, coordination) vs step-growth (condensation) · **Methods:** bulk, solution, suspension, emulsion · comparison of methods · kinetics overview |
| 02 | [Fiber-Forming Polymers](synthesis/02-fiber-forming-polymers.md) | Polyester (PET); Nylon-6 (PA-6) and Nylon-6,6 (PA-66); polyacrylonitrile (PAN); polypropylene (PP); polyvinyl alcohol (PVA); viscose/rayon: synthesis routes, structural features, and textile relevance |

---

### `molecular_weight/`

> Characterizing the chain: how big is a polymer, and why it matters.

| # | File | Topics Covered |
|---|------|----------------|
| 01 | [Molecular Weight: Types, Distribution & Measurement](molecular_weight/01-molecular-weight-types-distribution.md) | $\bar{M}_n$, $\bar{M}_w$, dispersity ($Đ = \bar{M}_w / \bar{M}_n$), molecular weight distribution (MWD) · measurement: GPC/SEC, viscometry (Mark–Houwink), osmometry, end-group analysis · MW-dependent properties: melt viscosity, mechanical strength, fiber spinnability |

---

## Quick Reference

### Key formulas

| Quantity | Expression |
|----------|------------|
| Degree of polymerization | $DP = M_{\text{polymer}} / M_{\text{repeat unit}}$ |
| Number-average MW | $\bar{M}_n = \dfrac{\sum N_i M_i}{\sum N_i}$ |
| Weight-average MW | $\bar{M}_w = \dfrac{\sum N_i M_i^2}{\sum N_i M_i}$ |
| Dispersity | $Đ = \bar{M}_w / \bar{M}_n \;\;(\geq 1)$ |
| Mark–Houwink | $[\eta] = K\,\bar{M}^{a}$ |
| Carothers (step-growth) | $\bar{X}_n = \dfrac{1}{1-p}$ |

### Major fiber-forming polymers at a glance

| Polymer | Starting material(s) | Route | Key linkage / feature |
|---------|----------------------|-------|-----------------------|
| PET (polyester) | Terephthalic acid (TPA) + ethylene glycol (EG) | Step-growth (condensation) | Ester |
| Nylon-6 | Caprolactam | Ring-opening polymerization | Amide |
| Nylon-6,6 | Hexamethylenediamine + adipic acid | Step-growth (condensation) | Amide |
| PAN (acrylic) | Acrylonitrile | Chain-growth (radical) | Polar nitrile groups |
| PP | Propylene | Chain-growth (coordination, Ziegler–Natta) | Stereoregular hydrocarbon chain |
| PVA | Polyvinyl acetate | Hydrolysis of PVAc | Hydroxyl-rich, water-soluble |
| Viscose rayon | Cellulose (wood pulp) | Regeneration via xanthation | Regenerated cellulose |

### Chain-growth vs step-growth

| | Chain-growth | Step-growth |
|---|--------------|-------------|
| Growth | Monomer adds to an active chain end | Any two reactive species can combine |
| Monomer consumption | Slow; monomer persists until late | Fast; monomer disappears early |
| High MW reached | Immediately | Only at very high conversion |
| Typical examples | PAN, PP, PVC, PS | PET, nylons |

---

## Progress

| Directory | Files | Status |
|-----------|:-----:|--------|
| `fundamentals/` | 2 | ✅ Complete |
| `classification/` | 1 | ✅ Complete |
| `raw_materials/` | 1 | ✅ Complete |
| `synthesis/` | 2 | ✅ Complete |
| `molecular_weight/` | 1 | 🚧 Pending |

**6 of 7 topic files complete.**

---

## File Migration Map

<details>
<summary>Mapping from the original flat-file layout to the current directory structure</summary>

| Original File | → | New Location |
|---------------|---|--------------|
| `01-introduction-and-history.md` | → | `fundamentals/01-introduction-and-history.md` |
| `02-basic-concepts-and-terminology.md` | → | `fundamentals/02-basic-concepts-terminology.md` |
| `03-classification-of-polymers.md` | → | `classification/01-classification-of-polymers.md` |
| `04-raw-materials.md` | → | `raw_materials/01-raw-materials-sources-derivatives.md` |
| `05-synthesis-of-polymers.md` | → | `synthesis/01-polymerization-mechanisms-methods.md` |
| `06-fiber-forming-polymers.md` | → | `synthesis/02-fiber-forming-polymers.md` |

</details>

---

> **Course:** WPE 101 · B.Sc. in Textile Engineering · BUTEX
> **Department:** Wet Processing Engineering
