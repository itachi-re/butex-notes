---
title: Polymer Science — Exam Prep Notes
course: CHEM-103
topic: Polymer Terminology Pairs & Free Radical Polymerization
---

# Polymer Science Exam Prep

## Part 1: Key Terminology Pairs

### 1. Monomer vs Repeating Unit

**Monomer** is the small, simple molecule that reacts with other identical or different molecules to form a polymer chain. It exists as a free, independent molecule before polymerization.

**Repeating unit** is the structural unit that repeats itself within the polymer chain after polymerization has occurred. It is derived from the monomer but may not be structurally identical to it, because bonds break/rearrange during the reaction.

| Feature | Monomer | Repeating Unit |
|---|---|---|
| State | Free molecule, exists before reaction | Part of the chain, exists after reaction |
| Structure | May contain a double bond or two reactive groups | Double bond opens up / reactive groups are consumed |
| Example | Ethylene, CH₂=CH₂ | —CH₂—CH₂— (in polyethylene) |
| Example (condensation) | Adipic acid + hexamethylenediamine (two different monomers) | —NH—(CH₂)₆—NH—CO—(CH₂)₄—CO— (in nylon-6,6) |

**Key point:** In addition polymerization the repeating unit has the *same atoms* as the monomer (just the π-bond becomes a σ-bond), but in condensation polymerization the repeating unit is *smaller* than the sum of the monomers because a small molecule (like H₂O) is eliminated.

---

### 2. Oligomer vs DP (Degree of Polymerization)

**Oligomer** is a polymer molecule consisting of only a few repeating units (typically 2–20). It is intermediate in size between a monomer and a true high-molecular-weight polymer. Examples: dimers, trimers, epoxy resin prepolymers.

**DP (Degree of Polymerization)** is a *numerical quantity*, not a molecule — it is the number of repeating units in a single polymer chain.

$$DP = \dfrac{\text{Molecular weight of polymer}}{\text{Molecular weight of repeating unit}} = \dfrac{M}{M_0}$$

| Feature | Oligomer | DP |
|---|---|---|
| What it is | A short-chain molecule/species | A number describing chain length |
| Typical range | n = 2–20 (low DP) | Can range from a few units to 10⁴–10⁶ for high polymers |
| Use | Describes a class of low-MW polymer | Used to calculate molecular weight, classify polymer vs oligomer |

**Key point:** An oligomer is essentially a polymer with a *low* DP. There's no sharp cutoff, but once DP is large enough that further addition of monomer units doesn't significantly change bulk properties (like tensile strength), the material is called a "true" polymer rather than an oligomer.

---

### 3. Retarder vs Inhibitor

Both are additives used in free radical polymerization to control/slow the reaction, but they act differently.

**Retarder:** Reacts with growing free radicals to form a new radical of much lower reactivity. It *slows down* the rate of polymerization throughout the whole reaction but does not stop it completely — polymerization proceeds, just at a reduced rate, and eventually reaches completion at lower conversion/longer time.

**Inhibitor:** Reacts with the *initiating* and growing radicals to form stable, non-reactive products (or very unreactive radicals). It completely stops polymerization until the inhibitor is fully consumed — creating an **induction period** during which no polymer forms at all. Once the inhibitor is used up, normal-rate polymerization resumes.

| Feature | Retarder | Inhibitor |
|---|---|---|
| Effect on rate | Reduces rate throughout | Reaction rate ≈ 0 during induction period, then normal |
| Reaction profile | Gradual slow conversion curve | Flat (no conversion) then sudden onset |
| Example | Nitrobenzene (mild retarder for styrene) | Hydroquinone, benzoquinone, phenolic antioxidants |
| Purpose | Controls exotherm / MW distribution | Prevents premature polymerization during storage/transport of monomers |

**Key point:** Think of an inhibitor as a "radical scavenger" that must be exhausted before chain growth can start; a retarder is a weaker scavenger that only dampens the ongoing chain growth without ever fully shutting it down.

---

### 4. Network (Cross-linked) Polymer vs Graft Copolymer

**Network polymer:** A polymer in which chains are joined together by covalent cross-links in three dimensions, forming a giant interconnected molecule with no distinct "backbone vs branch" identity — the whole sample can be considered one macromolecule. Formed from monomers with functionality ≥ 3 (e.g., glycerol + phthalic anhydride → glyptal; phenol-formaldehyde resins; vulcanized rubber).

**Graft copolymer:** A copolymer with a main chain (backbone) of one type of monomer unit, onto which side chains (branches) of a *different* monomer are chemically attached at intervals. The backbone and the branches are compositionally distinct, unlike a simple branched homopolymer.

| Feature | Network Polymer | Graft Copolymer |
|---|---|---|
| Structure | 3-D cross-linked, infinite network | Linear backbone with side chains of a different monomer |
| Composition | Usually a single repeating unit type (or a resin from 2 monomers reacting at multiple points) | Two chemically distinct monomer types (backbone vs. branch) |
| Behavior | Thermosetting, insoluble, infusible once cured | Often thermoplastic; combines properties of both monomer types |
| Example | Vulcanized rubber (S cross-links), epoxy resins, melamine-formaldehyde | Cellulose-graft-polyacrylonitrile, ABS-type graft rubbers (polybutadiene backbone grafted with styrene-acrylonitrile) |

---

### 5. Biological vs Non-biological (Synthetic) Polymer

**Biological polymer (biopolymer):** Produced by living organisms; built via enzyme-catalyzed biosynthesis. Usually biodegradable and often stereoregular/monodisperse (uniform chain length) because biosynthesis is template- or enzyme-controlled.

**Non-biological (synthetic) polymer:** Man-made, produced industrially through chemical polymerization reactions (addition or condensation) in reactors; generally polydisperse (a distribution of chain lengths) and often not readily biodegradable.

| Feature | Biological Polymer | Non-biological Polymer |
|---|---|---|
| Origin | Living organisms (plants, animals, microbes) | Chemical synthesis in industry/lab |
| Examples | Proteins (polyamides of amino acids), cellulose, starch, DNA/RNA, natural rubber | Polyethylene, PVC, nylon-6,6, polystyrene, Bakelite |
| Molecular weight distribution | Often monodisperse / precisely defined | Polydisperse (distribution described by PDI) |
| Biodegradability | Generally biodegradable | Often non-biodegradable (though biodegradable synthetics like PLA exist) |

---

### 6. Homopolymer vs Copolymer

**Homopolymer:** Formed from only **one** type of monomer repeating throughout the chain.
Example: Polyethylene (—CH₂—CH₂—)ₙ from ethylene only; PVC from vinyl chloride only.

**Copolymer:** Formed from **two or more different** monomers combined in the same chain.
Example: SBR (styrene-butadiene rubber), Nylon-6,6 (from a diamine + a diacid).

Copolymers are further classified by arrangement:
- **Random copolymer** — monomers arranged randomly: …A-B-B-A-A-B…
- **Alternating copolymer** — strictly alternating: …A-B-A-B-A-B…
- **Block copolymer** — long sequences ("blocks") of each monomer: …A-A-A-B-B-B…
- **Graft copolymer** — branches of one monomer grafted onto backbone of another (see pair #4 above)

| Feature | Homopolymer | Copolymer |
|---|---|---|
| Monomer types | 1 | 2 or more |
| Property tuning | Fixed by single monomer's properties | Tunable by varying monomer ratio/arrangement |
| Example | Polypropylene, PTFE | SBR, Nylon-6,6, ABS |

---

### 7. Organic vs Inorganic Polymer

**Organic polymer:** Backbone is composed primarily of **carbon** atoms (often with H, O, N, halogens as side groups). Vast majority of commercial plastics, fibers, and rubbers fall here.
Example: Polyethylene, nylon, polyester, rubber.

**Inorganic polymer:** Backbone does **not** consist mainly of carbon — instead built from elements like silicon, oxygen, phosphorus, sulfur, boron, etc.
Example: Silicones (—Si—O—Si—O— backbone), polyphosphazenes (—P=N— backbone), glass, asbestos (silicate chains).

| Feature | Organic Polymer | Inorganic Polymer |
|---|---|---|
| Backbone element | Carbon | Si, P, S, B, etc. (non-carbon) |
| Thermal stability | Generally lower | Often higher (e.g., silicones withstand higher temps) |
| Example | Nylon, PVC, PET | Silicone rubber, glass fiber, polyphosphazene |

---

### 8. Thermoplastic vs Thermosetting Polymer

**Thermoplastic polymer:** Softens on heating and hardens again on cooling — this cycle is **reversible** and can be repeated many times because the chains are linear or branched, held together only by weak intermolecular (secondary) forces, with no cross-links. Can be remolded/recycled.
Example: Polyethylene, polypropylene, PVC, nylon, polystyrene.

**Thermosetting polymer:** Undergoes an irreversible chemical cross-linking reaction on heating (or curing), forming a rigid 3-D network. Once set/cured, it **cannot** be re-softened or remolded by heating — further heating only chars/decomposes it.
Example: Bakelite (phenol-formaldehyde), epoxy resins, melamine-formaldehyde, vulcanized rubber, unsaturated polyester resins.

| Feature | Thermoplastic | Thermosetting |
|---|---|---|
| Structure | Linear/branched chains | Cross-linked 3-D network |
| Effect of heat | Softens reversibly | Sets permanently (cures) once; then infusible |
| Recyclability | Recyclable/remoldable | Not remoldable (can only be ground/reused as filler) |
| Mechanical strength | Generally lower rigidity, more ductile | Generally more rigid, brittle |
| Example | PE, PP, PVC, PS, nylon | Bakelite, epoxy, melamine resin, vulcanized rubber |

---

## Part 2: Free Radical Polymerization

Free radical (addition/chain-growth) polymerization is the mechanism by which unsaturated monomers (containing a C=C double bond, e.g., vinyl monomers) are converted into polymers via reactive **free radical** intermediates — species with an unpaired electron. It proceeds through four distinct kinetic stages: **initiation, propagation, chain transfer, and termination.**

### 1. Initiation

Occurs in two steps:

**(a) Generation of primary radicals** from an initiator, usually by thermal decomposition (or photolysis/redox):

$$I \xrightarrow{k_d} 2R^{\bullet}$$

Common initiators: benzoyl peroxide (BPO), azobisisobutyronitrile (AIBN), potassium persulfate.

**(b) Addition of the primary radical to the first monomer** unit:

$$R^{\bullet} + CH_2=CHX \xrightarrow{k_i} R-CH_2-\dot{C}HX$$

This creates the first chain-propagating radical.

### 2. Propagation

The chain radical adds successively to many more monomer molecules, with the radical center shifting to the newly added unit each time:

$$R-CH_2-\dot{C}HX + n(CH_2=CHX) \xrightarrow{k_p} R-(CH_2-CHX)_n-CH_2-\dot{C}HX$$

This step repeats extremely rapidly (thousands of additions per second) and is responsible for chain growth — it's the step that determines molecular weight buildup.

### 3. Chain Transfer

The growing radical abstracts an atom (usually H) from another species (monomer, solvent, initiator, or "chain transfer agent"), terminating that particular chain but generating a **new** radical that can start a new chain:

$$M_n^{\bullet} + XY \rightarrow M_nX + Y^{\bullet}$$

This controls molecular weight (lowers it) without stopping the overall reaction rate, since a new radical is regenerated.

### 4. Termination

Two growing radical chains meet and are destroyed, by one of two pathways:

**(a) Combination (coupling):** Two radical chain ends join to form one long dead chain:
$$M_n^{\bullet} + M_m^{\bullet} \rightarrow M_{n+m}$$

**(b) Disproportionation:** One radical abstracts a H atom from another, giving two dead chains — one saturated, one with a terminal double bond:
$$M_n^{\bullet} + M_m^{\bullet} \rightarrow M_n(\text{–H}) + M_m(\text{+H, i.e. with C=C end})$$

### Overall Rate of Polymerization

Under steady-state assumption (rate of radical generation = rate of radical loss by termination):

$$R_p = k_p[M]\left(\dfrac{f\,k_d[I]}{k_t}\right)^{1/2}$$

- $R_p$ ∝ [Monomer]¹
- $R_p$ ∝ [Initiator]^½
- $f$ = initiator efficiency

### Key Characteristics of Free Radical Polymerization

- Applicable mainly to **vinyl monomers**: ethylene, styrene, vinyl chloride, methyl methacrylate, acrylonitrile, vinyl acetate, etc.
- Can be carried out in bulk, solution, suspension, or emulsion.
- Chain growth is very fast once initiated — high molecular weight polymer appears almost immediately, and monomer concentration decreases gradually over the whole reaction (unlike step-growth, where MW builds up slowly at the end).
- Sensitive to **oxygen** (which itself acts as an inhibitor by forming peroxy radicals) and to inhibitors/retarders (see pair #3 above), which is why these additives matter industrially.
- Gives relatively **broad molecular weight distribution** (high polydispersity) because chains are started and terminated at random and different times throughout the reaction.

