# Polymer Science & Engineering (WPE 101 / WPE 101/WPE 141)
# Complete Solved Question Bank — 2017–2023
### Bangladesh University of Textiles (BUTEX) — Level-1, Term-I Final Examinations

> **Note on scope:** Per the request, every question and sub-question from every year (2017–2023) is answered in full — not just "any three" per part. Marks allocation from the original paper is shown, and answer depth is scaled to those marks. Maintainer note: `itachi_re <xanbenson99@gmail.com>` — n/a to this academic content, included only where the workflow template requires an author line.

---

## Quick Symbol Reference (used throughout)

| Symbol | Meaning |
|---|---|
| $M_n$ | Number-average molecular weight |
| $M_w$ | Weight-average molecular weight |
| $Đ$ (PDI) | Dispersity / Polydispersity Index $= M_w/M_n$ |
| $N_i$ | Number of molecules of species $i$ |
| $M_i$ | Molecular weight of species $i$ |
| $DP$ / $\overline{DP}_n$ | Degree of polymerization |
| $p$ | Extent of reaction |
| $X_c$ | Volume fraction crystallinity |
| $\rho, \rho_c, \rho_a$ | Density (observed, crystalline, amorphous) |
| $T_g$ | Glass transition temperature |
| $T_m$ | Melting temperature |

---

## 2023

### Part A

#### Question 1 — *[2+4+6 = 12]*

##### (a) Point out the features of step polymerization process. *(2 marks)*

**Answer**
- Occurs by stepwise reaction between bi- or poly-functional monomers (or growing oligomers), each step usually being a condensation-type reaction (esterification, amidation, etc.).
- Any two molecular species present (monomer–monomer, monomer–oligomer, oligomer–oligomer) can react with each other.
- Molecular weight builds up **slowly**, rising sharply only at very high extents of reaction ($p \to 1$).
- Monomer is consumed early (usually >98% consumed by low conversion) while molecular weight is still low.
- A small molecule (e.g. $H_2O$) is often eliminated as a by-product (true condensation polymerization).
- Long reaction times (hours) are needed to reach high molecular weight; high $p$ is essential ($DP_n = 1/(1-p)$).

##### (b) Describe the mechanism of free radical polymerization process with reaction. *(4 marks)*

**Answer**

**Definition:** Free-radical polymerization is a chain-growth mechanism in which the active centre propagating the chain is a free radical (unpaired electron).

**Mechanism (three stages):**

1. **Initiation** — An initiator (e.g. benzoyl peroxide) decomposes thermally into free radicals, which add to a vinyl monomer:
$$I-I \xrightarrow{\Delta} 2I^\bullet$$
$$I^\bullet + CH_2=CHX \rightarrow I-CH_2-\dot{C}HX$$

2. **Propagation** — The radical adds successively to more monomer molecules, regenerating a radical at the chain end each time:
$$I-CH_2-\dot{C}HX + CH_2=CHX \rightarrow I-CH_2-CHX-CH_2-\dot{C}HX$$
This repeats rapidly (thousands of additions per second).

3. **Termination** — Chain growth stops by:
   - **Combination**: two growing radicals join — $R_1^\bullet + R_2^\bullet \rightarrow R_1-R_2$
   - **Disproportionation**: one radical abstracts H from another, giving one saturated and one unsaturated chain end.

```text
Monomer
   |
   v
Initiation  (I-I -> 2I•,  I• + M -> IM•)
   |
   v
Propagation (IM•ₙ + M -> IM•ₙ₊₁)  [repeated]
   |
   v
Termination (combination / disproportionation)
```

##### (c) What is step polymerization? Explain in brief about various types of step polymerization reactions. *(6 marks)*

**Answer**

**Definition:** Step (condensation) polymerization is the stepwise combination of bi/poly-functional monomers, where each linkage step is a distinct, independently reversible reaction, generally accompanied by elimination of a small molecule.

**Types:**

| Type | Reacting groups | Example | By-product |
|---|---|---|---|
| Polyesterification | –COOH + –OH | PET from terephthalic acid + ethylene glycol | $H_2O$ |
| Polyamidation | –COOH + –NH₂ | Nylon 6,6 from hexamethylenediamine + adipic acid | $H_2O$ |
| Polyurethane formation | –NCO + –OH | Diisocyanate + diol | none (addition-type step growth) |
| Polycarbonate formation | –OH + phosgene / diester | Bisphenol-A + phosgene | HCl |
| A–A + B–B type | Two different bifunctional monomers | Nylon 6,6 | $H_2O$ |
| A–B type | Single monomer with both functional groups | Nylon 6 (from ε-aminocaproic acid), PET from hydroxy-acid | $H_2O$ |
| Ring-opening step growth | Cyclic monomer opened then linked | Nylon 6 from caprolactam | none |

**General reaction (A–A + B–B):**
$$n\,HOOC-R-COOH + n\,HO-R'-OH \rightarrow [-OC-R-CO-O-R'-O-]_n + (2n-1)H_2O$$

Each type proceeds by the same stepwise logic: functional groups react pairwise, molecular weight rises slowly, and high conversion ($p$) is required for useful $DP$.

---

#### Question 2 — *[2+5+5 = 12]*

##### (a) What do you mean by polymer degradation? *(2 marks)*

**Answer:** Polymer degradation is any chemical or physical change in a polymer — chain scission, cross-linking, or side-group loss — caused by heat, light, oxygen, mechanical stress, chemicals, or radiation, that leads to a deterioration of molecular weight and useful properties (strength, appearance, processability).

##### (b) Briefly discuss about chain end degradation and random degradation. *(5 marks)*

**Answer**

**Chain-end (unzipping) degradation:**
- Scission starts at the chain end (often a weak/unsaturated terminal unit) and monomer units are released one at a time, working backward along the chain — like "unzipping."
- Molecular weight decreases slowly while high monomer yield is obtained.
- Example: PMMA depolymerizes almost entirely back to methyl methacrylate monomer on heating.

$$\cdots-CH_2-\dot{C}(CH_3)COOCH_3 \rightarrow \cdots-\dot{C}H_2 + CH_2=C(CH_3)COOCH_3\,(\text{monomer})$$

**Random-chain degradation:**
- Scission occurs at random points anywhere along the backbone, not preferentially at the chain end.
- Molecular weight drops rapidly even at low overall conversion, but monomer yield is low (fragments of varying size are formed).
- Example: polyethylene undergoes random chain scission on thermal degradation.

```text
Chain-end:    A-B-C-D-E-F  ->  A-B-C-D-E + F(monomer) -> ... (sequential)
Random:       A-B-C-D-E-F  ->  A-B-C  +  D-E-F  (scission anywhere)
```

##### (c) Describe about physical and chemical factors of polymer degradation. *(5 marks)*

**Answer**

**Physical factors:**
- **Heat (thermal degradation)** — bond rupture, chain scission, cross-linking at elevated temperature.
- **Light/UV radiation (photodegradation)** — photon absorption excites bonds (especially C=O, aromatic rings) causing chain scission (Norrish reactions).
- **Mechanical stress** — shear/tensile stress during processing (extrusion, milling) mechanically ruptures chains (mechanochemical degradation).
- **High-energy radiation** — γ-rays, X-rays cause ionization, scission, and cross-linking.

**Chemical factors:**
- **Oxidative degradation** — atmospheric $O_2$ attacks C–H bonds, forming hydroperoxides that decompose into radicals, causing autocatalytic chain scission.
- **Hydrolytic degradation** — moisture attacks hydrolyzable linkages (ester, amide) especially at high temperature/humidity.
- **Chemical attack** — acids, bases, solvents, ozone attack susceptible bonds.
- **Presence of catalyst residues / impurities** — accelerate oxidative and thermal breakdown.

Stabilizers (antioxidants, UV/photostabilizers, heat stabilizers) are added to counter these effects during processing and service life.

---

#### Question 3 — *[4+3+5 = 12]*

##### (a) Express Number-average molecular weight & Weight-average molecular weight. *(4 marks)*

**Answer**

$$M_n = \frac{\sum N_iM_i}{\sum N_i}$$

$$M_w = \frac{\sum N_iM_i^2}{\sum N_iM_i}$$

where $N_i$ = number of molecules of molecular weight $M_i$.

$M_n$ weights each molecule equally (number basis) and is sensitive to small molecules; $M_w$ weights each molecule by its mass, so it is more sensitive to large molecules. Always $M_w \ge M_n$, and $Đ = M_w/M_n \ge 1$.

##### (b) Write short note on i) Tacticity ii) Vulcanization. *(3 marks)*

**Answer**

**i) Tacticity:** Tacticity describes the stereochemical arrangement of substituent groups relative to the polymer backbone in vinyl-type polymers.
- **Isotactic** — all substituents on the same side (same configuration at every stereocentre).
- **Syndiotactic** — substituents alternate regularly on opposite sides.
- **Atactic** — substituents arranged randomly.
Tacticity strongly affects crystallinity (isotactic/syndiotactic chains pack regularly and crystallize; atactic chains are amorphous), which in turn governs $T_m$, strength, and clarity.

**ii) Vulcanization:** Vulcanization is the cross-linking of rubber (elastomer) chains, typically using sulfur (with accelerators) under heat, forming sulfur bridges between adjacent chains. This converts a soft, tacky, thermoplastic rubber into a tough, elastic network with improved strength, resilience, and resistance to deformation — the process that made natural rubber commercially useful (Charles Goodyear).

##### (c) Find out $M_n$, $M_w$ & Index of Poly-dispersity when there are 5 entities having molecular weight of 150, 200, 270, 350 & 520 respectively. Also consider the number of each entity is 2,4,6,3 & 5 respectively. *(5 marks)*

**Answer**

**Given:**

| $M_i$ | $N_i$ | $N_iM_i$ | $N_iM_i^2$ |
|---:|---:|---:|---:|
| 150 | 2 | 300 | 45,000 |
| 200 | 4 | 800 | 160,000 |
| 270 | 6 | 1620 | 437,400 |
| 350 | 3 | 1050 | 367,500 |
| 520 | 5 | 2600 | 1,352,000 |
| **Σ** | **20** | **6370** | **2,361,900** |

**Required:** $M_n$, $M_w$, Đ (PDI)

**Formula:**
$$M_n=\frac{\sum N_iM_i}{\sum N_i}, \quad M_w=\frac{\sum N_iM_i^2}{\sum N_iM_i}, \quad Đ=\frac{M_w}{M_n}$$

**Solution:**
$$M_n = \frac{6370}{20} = 318.5$$
$$M_w = \frac{2{,}361{,}900}{6370} = 370.79$$
$$Đ = \frac{370.79}{318.5} = 1.164$$

**Final Answer:**
$$\boxed{M_n \approx 318.5\ \text{g/mol}, \quad M_w \approx 370.8\ \text{g/mol}, \quad Đ \approx 1.16}$$

(Check: $M_w > M_n$ ✓, $Đ > 1$ ✓ — consistent.)

---

#### Question 4 — *[3+5+4 = 12]*

##### (a) Explain relation between DP & extent of reaction. *(3 marks)*

**Answer**

For linear step-growth polymerization of a balanced bifunctional system, if $N_0$ is the initial number of monomer molecules and $N$ the number of molecules remaining at extent of reaction $p$:

$$N = N_0(1-p)$$

Since $\overline{DP}_n = N_0/N$:

$$\boxed{\overline{DP}_n = \frac{1}{1-p}}$$

This is the **Carothers equation**. As $p \to 1$ (complete reaction), $DP_n \to \infty$ — showing why very high conversion is essential to reach useful molecular weights in step polymerization (e.g., at $p=0.98$, $DP_n = 50$; at $p=0.99$, $DP_n=100$).

##### (b) What is index of polydispersity? Write the comparison between polydispersity and monodispersity. *(5 marks)*

**Answer**

**Index of polydispersity (Đ / PDI):** $Đ = M_w/M_n$, a dimensionless measure of the breadth of the molecular-weight distribution of a polymer sample.

| Property | Monodisperse | Polydisperse |
|---|---|---|
| Definition | All chains have (nearly) identical molecular weight | Chains have a range/distribution of molecular weights |
| $Đ$ value | $Đ = 1$ (or very close to it) | $Đ > 1$ |
| Occurrence | Rare; proteins, some living-polymerization products | Nearly all commercial synthetic polymers |
| $M_n$ vs $M_w$ | $M_n \approx M_w$ | $M_w > M_n$ |
| Processing behaviour | Uniform, sharp melting/flow behaviour | Broader melting range, more variable melt flow |
| Example | Living anionic polymers (narrow Đ) | Free-radical polyethylene ($Đ$ often 2–20) |

##### (c) The density of fully amorphous component & crystalline component of Teflon are 2.0 g/cm³ & 2.302 g/cm³ respectively. If the density of Teflon is 2.2 g/cm³ at room temperature, find out the volume fraction crystallinity & Mass fraction crystallinity. *(4 marks)*

**Answer**

**Given:** $\rho_a = 2.0\ \text{g/cm}^3$, $\rho_c = 2.302\ \text{g/cm}^3$, $\rho = 2.2\ \text{g/cm}^3$

**Required:** Volume fraction crystallinity $X_c$ (volume) and mass fraction crystallinity $X_c$ (mass)

**Formula (volume fraction):**
$$\frac{1}{\rho}=\frac{X_c}{\rho_c}+\frac{1-X_c}{\rho_a}$$

**Solution — Volume fraction crystallinity:**

Rearranged for direct solving, the standard two-phase density relation is more conveniently used as:
$$X_c(\text{volume}) = \frac{\rho - \rho_a}{\rho_c - \rho_a} \times \frac{\rho_c}{\rho}$$

Actually, deriving directly from $\dfrac{1}{\rho}=\dfrac{X_c}{\rho_c}+\dfrac{1-X_c}{\rho_a}$:

$$\frac{1}{\rho} - \frac{1}{\rho_a} = X_c\left(\frac{1}{\rho_c}-\frac{1}{\rho_a}\right)$$

$$\frac{1}{2.2} - \frac{1}{2.0} = X_c\left(\frac{1}{2.302}-\frac{1}{2.0}\right)$$

$$0.4545 - 0.5000 = X_c(0.4344 - 0.5000)$$

$$-0.0455 = X_c(-0.0656)$$

$$X_c = 0.694$$

**Mass fraction crystallinity** (using density-based mass relation):
$$w_c = \frac{\rho_c(\rho-\rho_a)}{\rho(\rho_c-\rho_a)} = \frac{2.302 \times (2.2-2.0)}{2.2\times(2.302-2.0)} = \frac{2.302\times0.2}{2.2\times0.302} = \frac{0.4604}{0.6644} = 0.693$$

**Final Answer:**
$$\boxed{X_c \text{ (volume)} \approx 0.694\ (69.4\%), \quad w_c \text{ (mass)} \approx 0.693\ (69.3\%)}$$

(For Teflon, volume and mass fraction crystallinity come out nearly equal here because $\rho_c$ and $\rho_a$ are close in value.)

---

### Part B

#### Question 5 — *[2+5+5 = 12]*

##### (a) What is crystallinity and amorphousness of polymer? *(2 marks)*

**Answer:** Crystallinity is the degree to which polymer chains (or chain segments) pack into an ordered, three-dimensional regular lattice (crystalline regions). Amorphousness is the state where chains are randomly coiled and entangled with no long-range order. Real semicrystalline polymers contain both crystalline and amorphous regions simultaneously.

##### (b) Write down the effect of crystallinity on the properties of polymer. *(5 marks)*

**Answer**

| Property | Effect of increasing crystallinity |
|---|---|
| Density | Increases (crystalline regions pack more tightly) |
| Tensile strength & stiffness | Increases |
| Toughness / impact strength | Generally decreases (more brittle) |
| Optical clarity | Decreases (crystallites scatter light → opaque/translucent) |
| Chemical resistance | Increases (less penetrable to solvents) |
| Softening/melting behaviour | Sharper melting point $T_m$ instead of gradual softening |
| Permeability (to gases, moisture) | Decreases |
| Melting temperature | Distinct, higher $T_m$ vs. amorphous softening range |

##### (c) Mention the Tg and Tm of PVC, Nylon 6, Nylon 6,6, poly amide and polystyrene. *(5 marks)*

**Answer** (typical literature values)

| Polymer | $T_g$ (°C) | $T_m$ (°C) |
|---|---:|---:|
| PVC | ~80 | ~212 (partly crystalline, low crystallinity) |
| Nylon 6 | ~50 | ~220 |
| Nylon 6,6 | ~50–60 | ~265 |
| Polyamide (general aliphatic) | ~50 | ~220–265 |
| Polystyrene (atactic) | ~100 | Amorphous — no sharp $T_m$ (isotactic PS: ~240) |

---

#### Question 6 — *[2+6+2+2 = 12]*

##### (a) What is softening point temperature and glass transition temperature? *(2 marks)*

**Answer:** **Softening point** is the temperature at which an amorphous or partially crystalline polymer becomes soft enough to deform under a specified small load (measured by tests such as Vicat or Ring-and-Ball). **Glass transition temperature ($T_g$)** is the temperature at which an amorphous polymer (or the amorphous regions of a semicrystalline polymer) changes from a hard, glassy state to a soft, rubbery state due to onset of segmental chain mobility.

##### (b) Describe in brief the measuring process of softening temperature of polymer. *(6 marks)*

**Answer**

**Vicat Softening Point Test (most common method):**
1. A flat-ended needle (circular cross-section, 1 mm²) is placed on the surface of the polymer test specimen under a specified load (typically 10 N or 50 N).
2. The specimen and needle assembly are immersed in a heating bath (oil/water) or an oven.
3. Temperature is raised at a constant, controlled rate (e.g. 50 °C/hr or 120 °C/hr).
4. The needle penetrates the softening specimen under the load as temperature rises.
5. The **Vicat softening temperature** is recorded as the temperature at which the needle has penetrated 1 mm into the specimen.

```text
Load ---> [Needle] ---> Specimen (in heating bath)
                |
        Temperature rises steadily
                |
    Needle penetrates 1 mm -> record T = Vicat softening point
```

Other related tests: Ring-and-Ball softening point (for lower-modulus/adhesive materials) and Heat Deflection Temperature (HDT) test (measures deflection of a loaded beam under rising temperature).

##### (c) Write short note on i) Repeating unit ii) Monomer. *(2 marks)*

**Answer**

**i) Repeating unit:** The smallest structural unit whose repetition (n times) along the chain generates the complete polymer molecule; it is written inside brackets with subscript $n$, e.g. $[-CH_2-CH_2-]_n$ for polyethylene.

**ii) Monomer:** A small molecule containing at least one reactive functional group (or a double/triple bond) that acts as the fundamental building block, which upon polymerization links together (often losing a small molecule or opening a double bond) to form the repeating unit of a polymer, e.g. ethylene ($CH_2=CH_2$) is the monomer of polyethylene.

##### (d) Compare between Homo-polymer and Co-polymer. *(2 marks)*

**Answer**

| Property | Homopolymer | Copolymer |
|---|---|---|
| Monomer(s) | Single type of monomer | Two or more different monomers |
| Structure | Repeat unit is identical throughout | Mixed repeat units (random/alternating/block/graft) |
| Example | Polyethylene (from ethylene only) | SBR (styrene + butadiene) |
| Property tuning | Fixed properties set by one monomer | Properties can be tailored by varying monomer ratio/arrangement |

---

#### Question 7 — *[3+4+5 = 12]*

##### (a) Which criteria are required for fibre forming polymer? *(3 marks)*

**Answer**
- **High molecular weight** with narrow distribution, sufficient for chain entanglement and strength.
- **Linear chain structure** (little/no branching) to allow close chain packing.
- **Chain regularity / stereoregularity** enabling crystallization.
- **Sufficient crystallinity** and ability to be **oriented** along the fibre axis (drawing) to achieve high tensile strength and modulus.
- **Adequate intermolecular forces** (H-bonding, dipole interactions) to hold chains together.
- **Appropriate thermal stability** — $T_m$ well above use/processing temperature but low enough for melt or solution spinning.
- **Solubility/melt processability** suitable for spinning into filament form.

##### (b) Write the chemical structure of Polyethylene, Polyester, Nylon 6 & Nylon 6,6. *(4 marks)*

**Answer**

**Polyethylene:**
$$n\,CH_2=CH_2 \rightarrow [-CH_2-CH_2-]_n$$

**Polyester (PET):**
$$n\,HOOC-C_6H_4-COOH + n\,HO-CH_2CH_2-OH \rightarrow [-OC-C_6H_4-CO-O-CH_2CH_2-O-]_n + 2n\,H_2O$$

**Nylon 6:**
$$n\,\underset{\text{caprolactam}}{\overset{\displaystyle (CH_2)_5}{\underset{\displaystyle C=O}{\text{NH—}}}} \rightarrow [-NH-(CH_2)_5-CO-]_n$$
(Ring-opening polymerization of caprolactam gives repeat unit $[-NH-(CH_2)_5-CO-]_n$.)

**Nylon 6,6:**
$$n\,H_2N-(CH_2)_6-NH_2 + n\,HOOC-(CH_2)_4-COOH \rightarrow [-NH-(CH_2)_6-NH-CO-(CH_2)_4-CO-]_n + 2n\,H_2O$$

##### (c) Discuss about Urea formaldehyde, Melamine formaldehyde & Polyacrylonitrile resin. *(5 marks)*

**Answer**

**Urea–formaldehyde (UF) resin:**
- Formed by condensation of urea $NH_2-CO-NH_2$ with formaldehyde $HCHO$ under mild alkaline then acid conditions, forming methylol-urea intermediates that cross-link into a rigid 3-D thermosetting network.
- Properties: hard, rigid, colourless, good electrical insulation, but brittle and water-sensitive.
- Uses: adhesives (plywood/particle board), moulded electrical fittings, textile finishing (crease-resistance).

**Melamine–formaldehyde (MF) resin:**
- Condensation of melamine (a triazine with three –NH₂ groups) with formaldehyde; higher functionality than urea gives a denser cross-linked network.
- Properties: harder, more heat-, water-, and scratch-resistant than UF; excellent surface hardness and gloss.
- Uses: laminates (e.g., Formica), tableware, decorative surfaces, textile durable-press finishing.

**Polyacrylonitrile (PAN) resin:**
- Formed by free-radical addition polymerization of acrylonitrile ($CH_2=CH-CN$).
- Repeat unit: $[-CH_2-CH(CN)-]_n$
- Properties: high strength, good chemical/UV resistance, but poor dye-ability unless copolymerized; a major precursor for carbon fibre.
- Uses: acrylic fibres (e.g. "Orlon"), carbon-fibre precursor, blankets/sweaters.

---

#### Question 8 — *[2+2+3+5 = 12]*

##### (a) Define bio polymer. *(2 marks)*

**Answer:** A biopolymer is a polymer produced naturally by living organisms (plants, animals, microorganisms) — e.g. proteins, polysaccharides, nucleic acids — or a synthetic polymer designed to be biodegradable/biocompatible, as opposed to petroleum-derived synthetic polymers.

##### (b) Compare between LDPE & HDPE. *(2 marks)*

**Answer**

| Property | LDPE | HDPE |
|---|---|---|
| Structure | Highly branched chains | Linear, little branching |
| Density | Lower (0.910–0.940 g/cm³) | Higher (0.941–0.965 g/cm³) |
| Crystallinity | Lower (~50–60%) | Higher (~70–90%) |
| Strength/stiffness | Lower | Higher |
| Flexibility | More flexible | Less flexible, more rigid |
| Production | High-pressure free-radical process | Low-pressure Ziegler–Natta / coordination process |
| Uses | Films, bags | Bottles, pipes, containers |

##### (c) What is de-polymerization? Mention some applications of De-polymerization. *(3 marks)*

**Answer:** Depolymerization is the reverse of polymerization — the breakdown of a polymer chain back into its constituent monomer units (or oligomers), by thermal, chemical, or catalytic means.

**Applications:**
- **Chemical/monomer recycling** of plastics (e.g., PET depolymerized by glycolysis/methanolysis back to monomers for re-polymerization).
- **Recovery of caprolactam** from Nylon 6 waste for re-use.
- **Pyrolysis of waste plastics** to recover fuel-range hydrocarbons or monomer feedstock.
- **Recovery of methyl methacrylate** from PMMA scrap (chain-end/unzipping depolymerization) for re-manufacture.

##### (d) Define the liquid crystal polymer & polymers recycle. Which plastics are to be recycled? *(5 marks)*

**Answer**

**Liquid crystal polymer (LCP):** A polymer whose rigid, rod-like mesogenic units allow the material to form an ordered, liquid-crystalline (mesophase) state — possessing molecular order intermediate between a crystalline solid and a disordered liquid — either in the melt (thermotropic LCP) or in solution (lyotropic LCP).

**Polymer recycling:** The process of collecting, processing, and reprocessing used/waste plastic materials into new usable products, so as to reduce plastic waste and conserve raw material/energy resources. Main routes: mechanical recycling (melt-reprocessing), chemical recycling (depolymerization to monomer), and energy recovery (incineration for fuel value).

**Which plastics are recycled:** Primarily **thermoplastics**, since they soften/melt reversibly on heating and can be re-moulded without chemical change — e.g. PET (bottles), HDPE/LDPE (containers, bags), PP, PVC, PS. **Thermosetting plastics** (e.g. UF, MF, epoxy) generally **cannot** be mechanically recycled because their cross-linked network does not melt/re-flow; they can only be ground into filler or subjected to chemical/pyrolytic recovery.

---

## 2022

### Part A

#### Question 1 — *[2+4+6 = 12]*

##### (a) Differentiate among polymer, monomer and oligomer. *(2 marks — table format allocated within this sub-part alongside b,c per paper: shown as [4+4+6] variant; answered at appropriate depth)*

**Answer**

| Term | Definition | Example |
|---|---|---|
| Monomer | Small reactive molecule, the basic building block | Ethylene ($CH_2=CH_2$) |
| Oligomer | Short chain of a few (typically 2–20) repeat units, intermediate between monomer and polymer | Dimer, trimer of ethylene glycol-terephthalate |
| Polymer | Very large (macro)molecule built from many (hundreds–thousands) repeating units | Polyethylene $[-CH_2CH_2-]_n$, large $n$ |

##### (b) Show the structure of PVC, PMMA, Nylon and Polyester. *(4 marks)*

**Answer**

**PVC:** $[-CH_2-CHCl-]_n$ (from $CH_2=CHCl$)

**PMMA:** $[-CH_2-C(CH_3)(COOCH_3)-]_n$ (from $CH_2=C(CH_3)COOCH_3$)

**Nylon (6,6, representative):** $[-NH-(CH_2)_6-NH-CO-(CH_2)_4-CO-]_n$

**Polyester (PET):** $[-OC-C_6H_4-CO-O-CH_2CH_2-O-]_n$

##### (c) Explain the classification of polymers with examples. *(6 marks)*

**Answer**

Polymers are classified on several bases:

**1. Origin:**
- **Natural** — cellulose, natural rubber, silk, wool, DNA.
- **Synthetic** — polyethylene, PVC, nylon.
- **Semi-synthetic** — cellulose acetate, viscose rayon (modified natural).

**2. Structure:**
- **Linear** — HDPE.
- **Branched** — LDPE.
- **Cross-linked/network** — vulcanized rubber, thermosets (epoxy, UF).

**3. Thermal behaviour:**
- **Thermoplastic** — softens repeatedly on heating (PE, PP, PVC, nylon).
- **Thermosetting** — sets permanently, cannot re-melt (phenol-formaldehyde, epoxy).

**4. Monomer composition:**
- **Homopolymer** — one monomer type (PE).
- **Copolymer** — two or more monomer types (SBR).

**5. Application/behaviour:**
- **Fibres** — high crystallinity, oriented, high tensile strength (nylon, polyester).
- **Elastomers** — low $T_g$, high elasticity/extensibility with recovery (natural rubber, SBR).
- **Plastics** — moderate properties between fibres and elastomers.

**6. Chemical composition of backbone:**
- **Organic polymers** — carbon-based backbone (PE, PVC).
- **Inorganic polymers** — backbone of non-carbon elements, e.g. silicones (Si–O), polyphosphazenes.

**7. Method of synthesis:**
- **Addition (chain-growth)** polymers — PE, PVC, PS.
- **Condensation (step-growth)** polymers — nylon, polyester, PU.

---

#### Question 2 — *[3+4+5 = 12]*

##### (a) What is initiator? Give some examples. *(3 marks)*

**Answer:** An initiator is a chemical species that decomposes (thermally, photolytically, or redox-catalytically) to generate free radicals (or ionic active centres) that start a chain polymerization by reacting with the first monomer molecule.

**Examples:** Benzoyl peroxide (BPO), azobisisobutyronitrile (AIBN), potassium persulfate, hydrogen peroxide, tert-butyl hydroperoxide (redox systems), Lewis acids (e.g. $BF_3$, $AlCl_3$) for cationic initiation.

##### (b) Discuss the mechanism of Free-radical polymerization. *(4 marks)*

**Answer** — *(see full mechanism under 2023 Q1(b) above — Initiation → Propagation → Termination via combination/disproportionation.)* Briefly:
$$I-I \xrightarrow{\Delta} 2I^\bullet \xrightarrow{+M} IM^\bullet \xrightarrow{+M,\ \text{repeat}} IM_n^\bullet \xrightarrow{\text{termination}} \text{dead polymer}$$

##### (c) How cationic polymerization is occurred? Explain the steps. *(5 marks)*

**Answer**

**Definition:** Cationic polymerization is a chain-growth mechanism in which the active centre is a positively charged carbocation, favoured by monomers with electron-donating substituents (e.g. isobutylene, vinyl ethers, styrene).

**Initiation:** A Lewis/Brønsted acid initiator (e.g. $BF_3 + H_2O$) generates a proton (or complexed cation) that adds to the monomer double bond, forming a carbocation:
$$BF_3 + H_2O \rightarrow H^+[BF_3OH]^-$$
$$H^+ + CH_2=C(CH_3)_2 \rightarrow CH_3-\overset{+}{C}(CH_3)_2\ [BF_3OH]^-$$

**Propagation:** The carbocation adds successively to monomer molecules, the positive charge always residing at the chain end:
$$CH_3-\overset{+}{C}(CH_3)_2 + CH_2=C(CH_3)_2 \rightarrow CH_3-C(CH_3)_2-CH_2-\overset{+}{C}(CH_3)_2$$

**Termination:** By combination with the counter-ion, chain transfer to monomer (releasing $H^+$ to start a new chain), or elimination of a proton.

Cationic polymerization requires low temperature (to suppress chain transfer) and is sensitive to trace moisture/impurities.

---

#### Question 3 — *[4+4+4 = 12]*

##### (a) Differentiate between chain & step polymerization. *(4 marks)*

**Answer**

| Property | Chain (addition) polymerization | Step (condensation) polymerization |
|---|---|---|
| Mechanism | Monomer adds only to active chain end | Any two species (monomer/oligomer) can react |
| Molecular weight growth | Rises quickly to high value early, then increases slowly | Rises slowly, only reaches high value at very high $p$ |
| By-product | Usually none | Small molecule often eliminated (e.g. $H_2O$) |
| Reaction time vs conversion | Monomer present throughout reaction | Monomer consumed rapidly at low conversion |
| Kinetic chain length | Depends on initiation/termination rates | Depends on extent of reaction $p$ |
| Example | Polyethylene, PVC | Nylon, polyester |

##### (b) Briefly discuss the different types of polycondensation. *(4 marks)*

**Answer**

- **Homopolycondensation (A–B type):** single bifunctional monomer with two different reactive groups self-condenses, e.g. hydroxy-acid → polyester, amino-acid → nylon 6.
- **Heteropolycondensation (A–A + B–B type):** two different bifunctional monomers react, e.g. diamine + diacid → nylon 6,6.
- **Ring-opening polycondensation:** cyclic monomer opens and links stepwise, e.g. caprolactam → nylon 6.
- **Interfacial polycondensation:** reaction occurs at the interface of two immiscible solutions each containing one monomer, e.g. nylon 6,10 "rope trick" synthesis.
- **Multi-functional polycondensation:** monomers with functionality >2 give branched/cross-linked (network) polymers, e.g. glycerol + phthalic anhydride → alkyd/glyptal resins.

##### (c) Mention the salient feature of step polymerization. *(4 marks)*

**Answer** — *(see 2023 Q1(a) for full list)*: any-species reaction, slow build-up of $M$, monomer consumed early, small-molecule elimination, high $p$ required for useful $DP_n$, described by Carothers equation $DP_n = 1/(1-p)$.

---

#### Question 4 — *[4+4+4 = 12]*

##### (a) How can you purify the raw materials before polymerization? *(4 marks)*

**Answer**

Purification is essential because trace impurities (moisture, inhibitors, oxygen, metal ions) can retard, terminate, or randomly initiate polymerization, and cause off-colour/low-molecular-weight product.

**Methods:**
- **Distillation** — to remove high/low-boiling impurities and polymerization inhibitors from liquid monomers (e.g. distilling styrene to remove the hydroquinone inhibitor before use).
- **Drying / removal of moisture** — using molecular sieves, drying agents, or azeotropic distillation, particularly critical for step-growth (moisture shifts esterification/amidation equilibrium) and ionic polymerizations (moisture kills cationic/anionic initiators).
- **Degassing / removal of dissolved oxygen** — by nitrogen purging, since $O_2$ acts as a radical scavenger/inhibitor in free-radical polymerization.
- **Recrystallization** — for solid monomers, to remove impurities.
- **Filtration** — to remove particulate/solid impurities.
- **Ion-exchange treatment** — to remove trace metal ion contaminants that can catalyze unwanted side reactions.

##### (b) What is micelle? Differentiate between bulk and solution polymerization technique. *(4 marks)*

**Answer**

**Micelle:** An aggregate of surfactant (soap/emulsifier) molecules formed in water above the Critical Micelle Concentration (CMC), with hydrophobic tails clustered inward and hydrophilic heads facing the aqueous phase; micelles solubilize monomer and serve as the reaction loci in emulsion polymerization.

| Property | Bulk polymerization | Solution polymerization |
|---|---|---|
| Medium | Pure monomer only, no solvent | Monomer dissolved in an inert solvent |
| Heat removal | Difficult (viscosity rises sharply → poor heat transfer, "Trommsdorff/gel effect") | Easier, solvent helps dissipate heat |
| Purity of product | Very high (no solvent/emulsifier residues) | Product may retain solvent residue |
| Molecular weight control | Harder to control at high conversion | Easier to control (dilution moderates viscosity) |
| Example | PMMA sheet casting | Polymerization of acrylonitrile in DMF |

##### (c) Explain the suspension polymerization with suitable example and mention its applications. *(4 marks)*

**Answer**

**Suspension polymerization:** Monomer (containing a monomer-soluble initiator) is dispersed as small droplets in a continuous immiscible medium (usually water) using mechanical agitation and a stabilizer/suspending agent (e.g. PVA, gelatin). Each droplet behaves as a mini-bulk-polymerization reactor; water acts as an efficient heat sink.

```text
Water (continuous phase) + Stabilizer
        |
 Monomer droplets (with dissolved initiator) dispersed by agitation
        |
 Polymerization proceeds within each droplet (bulk-like)
        |
 Solid polymer beads/pearls recovered by filtration
```

**Example:** Suspension polymerization of vinyl chloride to produce PVC in bead/granular form; polystyrene beads.

**Applications:** Production of PVC resin, expandable polystyrene beads (for EPS foam), ion-exchange resin beads — wherever solid, easily-filterable spherical polymer particles are desired.

---

### Part B

#### Question 5 — *[4+4+4 = 12]*

##### (a) Which factors are responsible for polymer degradation? *(4 marks)*

**Answer** — Heat, UV/visible light radiation, atmospheric oxygen (oxidative attack), moisture (hydrolysis), mechanical stress/shear, high-energy radiation (γ, X-ray), chemical agents (acids, bases, solvents, ozone), presence of catalyst residues/metal ion impurities, and biological attack (microbial degradation for biodegradable polymers).

##### (b) Show chain-end degradation & random degradation with schematic diagram. *(4 marks)*

**Answer** — *(definitions as in 2023 Q2(b))*

```text
Chain-end degradation (unzipping):
[M1-M2-M3-M4-M5-M6]  →  [M1-M2-M3-M4-M5] + M6(monomer)  →  ...  → all monomer released sequentially

Random degradation:
[M1-M2-M3-M4-M5-M6]  →  [M1-M2-M3]  +  [M4-M5-M6]   (scission at a random internal bond)
                     →  further random splits → broad fragment-size distribution
```

##### (c) Compare between Thermal & Mechanical degradation. *(4 marks)*

**Answer**

| Property | Thermal degradation | Mechanical degradation |
|---|---|---|
| Cause | Elevated temperature supplying bond-dissociation energy | Applied shear/tensile stress (e.g., during extrusion, milling) |
| Mechanism | Random or chain-end scission, sometimes with cross-linking | Mechanochemical rupture of highly-stressed C–C bonds, generating macroradicals |
| Conditions | Occurs during processing at high temperature or on prolonged heat exposure | Occurs during mixing, milling, extrusion, mastication (even at moderate temperature) |
| Typical outcome | Reduced $M_w$, discoloration, brittleness, possible cross-linking/char | Molecular weight reduction, sometimes used deliberately (rubber mastication to reduce viscosity) |
| Example | PVC dehydrochlorination on overheating | Rubber mastication on a two-roll mill |

---

#### Question 6 — *[4+4+4 = 12]*

##### (a) What is $T_g$? Discuss its importance in polymer. *(4 marks)*

**Answer:** $T_g$ (glass transition temperature) is the temperature at which the amorphous regions of a polymer transition from a rigid, glassy state to a soft, rubbery/flexible state, due to onset of large-scale segmental chain motion (though the polymer remains a solid, unlike melting).

**Importance:**
- Determines the **service temperature range**: below $T_g$, an amorphous/semicrystalline polymer is stiff and brittle (glassy); above $T_g$ it is flexible/rubbery.
- Governs whether a polymer behaves as a **rigid plastic** (used below $T_g$, e.g. PS, PMMA) or an **elastomer** (used above $T_g$, e.g. natural rubber, SBR).
- Influences processing conditions (moulding, extrusion, film formation must generally occur above $T_g$ for amorphous polymers).
- Affects impact resistance, creep behaviour, and dimensional stability.

##### (b) Mention the properties of fiber forming polymer. *(4 marks)*

**Answer** — *(see 2023 Q7(a))*: high, narrow-distribution molecular weight; linear chain structure; chain regularity/stereoregularity enabling crystallinity; capability of molecular orientation on drawing; strong intermolecular forces (H-bonding etc.); adequate $T_m$/thermal stability; melt or solution spinnability.

##### (c) Show the mathematical expression for $\overline{M}_w$. *(4 marks)*

**Answer**

$$\overline{M}_w = \frac{\sum N_iM_i^2}{\sum N_iM_i}$$

*(Derivation, as required by other years' Q3(b) 2017 paper, given in full under the 2017 section below.)*

---

#### Question 7 — *[4+4+4 = 12]*

##### (a) What is amorphousness? State the factors affecting the crystallinity of a polymer. *(4 marks)*

**Answer**

**Amorphousness:** The state of a polymer (or region within it) in which chains are randomly coiled/entangled with no long-range, three-dimensional order — opposite of crystalline order.

**Factors affecting crystallinity:**
- **Chain regularity/stereoregularity** — isotactic/syndiotactic chains crystallize; atactic chains generally cannot.
- **Molecular symmetry** — symmetric, simple repeat units pack more easily (e.g., PE > PP > PS).
- **Chain linearity/branching** — linear chains (HDPE) crystallize more than branched chains (LDPE).
- **Intermolecular forces** — strong H-bonding/dipole interactions (nylon) favour crystallization.
- **Molecular weight** — very high MW can hinder crystallization (chain entanglement), while very low MW gives more perfect crystals but weaker material.
- **Cooling rate / thermal history** — slow cooling from melt allows more time for chain ordering (more crystallinity); rapid quenching favours amorphous/glassy state.
- **Presence of bulky side groups/copolymerization** — disrupts regular packing, lowers crystallinity.
- **Chain orientation (drawing/stretching)** — mechanical drawing can induce/enhance crystallinity.

##### (b) Explain the Fringed Micelle model with figure. *(4 marks)*

**Answer**

**Fringed Micelle Model:** An early model of semicrystalline polymer morphology proposing that a single polymer chain passes through several small crystalline regions ("micelles," a few nm across) and several amorphous regions in succession, so that crystalline and amorphous domains coexist along the same chain, connected by "fringe" chain segments passing between them.

```text
   Crystalline region      Amorphous region      Crystalline region
   ||||||||||||||||        \  /    \   /          ||||||||||||||||
   ||||||||||||||||   ---   \/  tangled \    ---   ||||||||||||||||
   ||||||||||||||||         /\  chains  /\          ||||||||||||||||
        (micelle)          (random coil)               (micelle)
  <-- one chain runs continuously through several such regions -->
```

This model explains the coexistence of sharp crystalline X-ray reflections together with rubbery/amorphous behaviour in semicrystalline polymers, though it has since been supplemented/replaced in modern understanding by the chain-folded lamellar model.

##### (c) The density of fully amorphous component and crystalline component of Teflon are 2.0 g/cm³ and 2.302 g/cm³ respectively. If the density of Teflon is 2.2 g/cm³ at room temperature, find the volume fraction crystallinity and mass fraction crystallinity. *(4 marks)*

**Answer** — *(identical data to 2023 Q4(c); full worked solution there)*

$$\boxed{X_c \text{(volume)} \approx 0.694\ (69.4\%), \quad w_c \text{(mass)} \approx 0.693\ (69.3\%)}$$

---

#### Question 8 — *[3+3+6 = 12]*

##### (a) What is liquid crystal polymer? Differentiate between nematic and smectic crystalline structure. *(3+4 marks combined per paper layout)*

**Answer**

**Liquid crystal polymer (LCP):** *(definition as in 2023 Q8(d))* — a polymer with rigid, rod-like (mesogenic) segments that can order into a mesophase, intermediate between crystalline solid and isotropic liquid.

| Property | Nematic | Smectic |
|---|---|---|
| Molecular order | Long-range orientational order only (molecules point the same direction) | Orientational **and** positional (layered) order |
| Layer structure | No layers; molecules can slide freely along their length | Molecules arranged in distinct layers |
| Viscosity | Lower | Higher (more ordered, layered structure restricts flow) |
| Degree of order | Least ordered LC phase | More ordered than nematic; several sub-types (smectic A, C, etc.) |

##### (b) What do you mean by biopolymer? Show the classification of biopolymer with example. *(3 marks)*

**Answer**

**Biopolymer:** *(as in 2023 Q8(a))* — polymer synthesized by living organisms (or a biodegradable polymer designed to mimic them).

**Classification:**
```text
Biopolymers
 ├── Polysaccharides — cellulose, starch, chitin
 ├── Proteins — silk fibroin, wool keratin, collagen
 ├── Nucleic acids — DNA, RNA
 └── Polyesters (microbial) — polyhydroxyalkanoates (PHA), PLA (from renewable feedstock)
```

##### (c) Write short notes on: i) polymer recycling ii) CNT. *(6 marks)*

**Answer**

**i) Polymer recycling:** *(as in 2023 Q8(d))* — mechanical recycling (remelting thermoplastics), chemical/feedstock recycling (depolymerization to monomer), and energy recovery; mainly applicable to thermoplastics (PET, HDPE, PP, PVC, PS); thermosets are largely non-recyclable by melting.

**ii) CNT (Carbon Nanotube):** A cylindrical nanostructure of carbon atoms arranged in a rolled graphene sheet (single-walled, SWCNT, or multi-walled, MWCNT), with diameters in the nanometre range and lengths up to micrometres. CNTs possess exceptionally high tensile strength and modulus, excellent electrical and thermal conductivity, and low density. In polymer science, CNTs are used as **reinforcing nanofillers** in polymer nanocomposites to dramatically enhance mechanical strength, electrical conductivity, and thermal stability of the host polymer matrix.

---

## 2021

### Part A

#### Question 1 — *[2+4+3+3 = 12]*

##### (a) Define monomer and oligomer. *(2 marks)*
**Answer:** **Monomer** — a small reactive molecule that is the basic repeating building block from which a polymer is formed. **Oligomer** — a molecule made of a small number (roughly 2–20) of repeat units, intermediate in size between monomer and high polymer, e.g. a dimer or trimer.

##### (b) State the name of two natural and two synthetic polymer with their chemical structure, monomer and repeat units. *(4 marks)*
**Answer**

| Polymer | Type | Monomer | Repeat unit |
|---|---|---|---|
| Cellulose | Natural | Glucose | $[-C_6H_{10}O_5-]_n$ |
| Natural rubber | Natural | Isoprene | $[-CH_2-C(CH_3)=CH-CH_2-]_n$ |
| Polyethylene | Synthetic | Ethylene ($CH_2=CH_2$) | $[-CH_2-CH_2-]_n$ |
| PVC | Synthetic | Vinyl chloride ($CH_2=CHCl$) | $[-CH_2-CHCl-]_n$ |

##### (c) Classify polymer on the basis of (i) Origin and (ii) Chemical nature. *(3 marks)*
**Answer**
**(i) Origin:** Natural (cellulose, rubber, wool), Synthetic (PE, PVC, nylon), Semi-synthetic (cellulose acetate).
**(ii) Chemical nature:** Organic polymers (carbon backbone — PE, nylon) and Inorganic polymers (non-carbon backbone — silicones, polyphosphazenes).

##### (d) Establish the relation between degree of polymerization ($\overline{DP}$) and extent of reaction (P). *(3 marks)*
**Answer** — *(full derivation given at 2023 Q4(a))*

$$\boxed{\overline{DP}_n = \frac{1}{1-P}}$$

---

#### Question 2 — *[4+5+3 = 12]*

##### (a) What is Ziegler-Natta catalyst? How does it work? State with mechanism. *(4 marks)*

**Answer**

**Definition:** Ziegler–Natta catalysts are coordination catalysts, typically a combination of a transition-metal halide (e.g. $TiCl_4$ or $TiCl_3$) and an organoaluminium co-catalyst (e.g. $Al(C_2H_5)_3$), used for stereoregular, low-pressure coordination polymerization of alkenes (e.g. producing HDPE, isotactic polypropylene).

**Mechanism:**
1. The organoaluminium alkylates the Ti halide, generating a Ti–alkyl active site with a vacant coordination position:
$$TiCl_4 + Al(C_2H_5)_3 \rightarrow Ti(C_2H_5)Cl_3 + Al(C_2H_5)_2Cl$$
2. **Coordination**: the alkene monomer coordinates to the vacant site on the Ti centre.
3. **Insertion (propagation)**: the coordinated monomer inserts into the Ti–C bond, extending the chain while regenerating the vacant coordination site:
$$Ti-CH_2-CH_2-R + CH_2=CH_2 \rightarrow Ti-CH_2-CH_2-CH_2-CH_2-R$$
4. This coordination–insertion cycle repeats, and because insertion occurs at a fixed stereochemical face of the catalyst, the growing chain acquires high **stereoregularity** (isotactic/syndiotactic control) and low branching.
5. **Termination** by chain transfer (to monomer, to Al alkyl, or by β-hydride elimination) releases the polymer chain and regenerates an active site.

##### (b) Briefly discuss the cationic polymerization process with example. *(5 marks)*

**Answer** — *(mechanism given fully at 2022 Q2(c))*: initiation by Lewis/Brønsted acid producing $H^+$, addition to monomer forming carbocation, propagation by successive cationic addition, termination by counter-ion combination or proton elimination.

**Example:** Polymerization of isobutylene using $BF_3/H_2O$ to give polyisobutylene (used in butyl rubber production).

##### (c) Mention the salient features of step-growth polymerization. *(3 marks)*

**Answer** — *(as in 2023 Q1(a) / 2022 Q3(c))*: reaction between any two species present; slow molecular-weight build-up; monomer consumed early; small-molecule elimination common; requires high $p$ for high $DP_n$ (Carothers relation).

---

#### Question 3 — *[4+5+3 = 12]*

##### (a) Mention the importance of polymer science in studying textile engineering. *(4 marks)*

**Answer**
- Nearly all man-made and many natural fibres (nylon, polyester, acrylic, viscose, cotton/cellulose, wool/protein) are polymers — understanding polymer structure–property relationships is fundamental to fibre selection, processing, and performance.
- Knowledge of molecular weight, crystallinity, orientation, and $T_g/T_m$ directly explains fibre strength, elasticity, dyeability, thermal behaviour, and shrinkage.
- Polymer chemistry underlies spinning processes (melt, dry, wet spinning), finishing treatments (crease-resistance via resin cross-linking), and dyeing mechanisms (dye uptake depends on amorphous region accessibility).
- Enables development of new synthetic fibres, blends, and functional/technical textiles (flame-retardant, moisture-wicking, high-performance fibres).
- Helps in understanding degradation, ageing, and care requirements (washing, ironing temperatures) of textile materials.

##### (b) Define the following terms: (i) Degree of polymerization (ii) Chain transfer agent (iii) Emulsifier (iv) Critical Micelle Concentration. *(5 marks)*

**Answer**
- **(i) Degree of polymerization (DP):** The number of repeating units (or monomer units) present in a single polymer chain, $DP = M_{polymer}/M_{repeat\ unit}$.
- **(ii) Chain transfer agent:** A substance that reacts with a growing active chain, terminating that chain but transferring the active centre to a new molecule, thereby controlling (lowering) molecular weight without stopping the overall polymerization rate.
- **(iii) Emulsifier:** A surfactant added in emulsion polymerization that stabilizes monomer droplets/micelles and the growing polymer particles as a stable colloidal dispersion in water.
- **(iv) Critical Micelle Concentration (CMC):** The minimum concentration of surfactant above which it spontaneously aggregates into micelles in solution.

##### (c) Classify co-polymers. *(3 marks)*

**Answer**
- **Random copolymer** — monomer units arranged with no definite order: $-A-B-B-A-A-B-A-$
- **Alternating copolymer** — monomer units alternate strictly: $-A-B-A-B-A-B-$
- **Block copolymer** — long sequences ("blocks") of each monomer joined together: $-AAAA-BBBB-$
- **Graft copolymer** — a backbone of one monomer with side chains ("branches") of a different monomer grafted onto it.

---

#### Question 4 — *[3+4+3+2 = 12]*

##### (a) Define mono dispersity and poly dispersity. *(3 marks)*
**Answer:** **Monodispersity** — a state where essentially all polymer chains in a sample have the same (or very nearly the same) molecular weight ($Đ \approx 1$). **Polydispersity** — a state where the sample contains chains of a range/distribution of molecular weights ($Đ > 1$), the usual case in synthetic polymers.

##### (b) Establish the mathematical expression of number average molecular weight ($\overline{M}n$). *(4 marks)*

**Answer**

**Derivation:** Consider a polymer sample containing molecules of different molecular weights $M_1, M_2, M_3,\ldots$ with $N_1, N_2, N_3,\ldots$ molecules of each, respectively.

Total mass of sample $= \sum N_iM_i$

Total number of molecules $= \sum N_i$

By definition, the **number-average molecular weight** is the total mass divided by the total number of molecules (i.e., simple arithmetic mean weighted by number of molecules):

$$\overline{M}_n = \frac{\text{Total mass of all molecules}}{\text{Total number of molecules}} = \frac{\sum N_iM_i}{\sum N_i}$$

This is called "number-average" because each individual molecule (regardless of its size) is counted with equal statistical weight — it corresponds to what is measured by colligative-property methods (e.g. osmometry, end-group analysis), which respond to the number of molecules present, not their mass.

##### (c) Calculate molecular weight of poly vinyl chloride, where $\overline{DP} = 300$. *(3 marks)*

**Answer**

**Given:** $\overline{DP} = 300$; repeat unit of PVC = $-CH_2-CHCl-$, molecular weight of repeat unit $= 2(12) + 3(1) + 35.5 = 24+3+35.5 = 62.5$ g/mol

**Formula:** $M = \overline{DP} \times M_{repeat\ unit}$

**Solution:**
$$M = 300 \times 62.5 = 18{,}750$$

**Final Answer:**
$$\boxed{M \approx 18{,}750\ \text{g/mol}}$$

##### (d) Compare between homopolymer and co-polymer. *(2 marks)*
**Answer** — *(see table under 2023 Q6(d))*.

---

### Part B

#### Question 5 — *[3+4+5 = 12]*

##### (a) Write the conditions to be considered for polymerization technique. *(3 marks)*

**Answer**
- Nature and reactivity of the monomer (solubility, functional groups, sensitivity to moisture/oxygen).
- Required product form (bulk casting, beads, latex, film).
- Heat generation and need for efficient heat removal (exothermic polymerizations).
- Desired molecular weight, molecular-weight distribution, and purity of the final product.
- Viscosity build-up during reaction and its effect on stirring/heat transfer.
- Cost, scale, and environmental considerations (solvent recovery, waste water treatment).

##### (b) Differentiate between solution & suspension polymerization. *(4 marks)*

**Answer**

| Property | Solution polymerization | Suspension polymerization |
|---|---|---|
| Medium | Monomer dissolved in a solvent (homogeneous) | Monomer dispersed as droplets in a non-solvent (usually water), heterogeneous |
| Initiator location | Dissolved in the solution phase | Dissolved within monomer droplets |
| Product form | Polymer solution or precipitate | Solid beads/granules/pearls |
| Heat control | Moderate (solvent aids dissipation) | Very good (large water volume as heat sink) |
| Example | PAN polymerization in DMF | PVC suspension polymerization |

##### (c) Explain the technique of bulk polymerization with its advantages & disadvantages. *(5 marks)*

**Answer**

**Technique:** Only monomer (plus a small amount of initiator, no solvent/dispersing medium) is polymerized; as conversion proceeds, viscosity increases sharply, which impedes heat and mass transfer (Trommsdorff/gel effect), often causing local overheating.

**Advantages:**
- Highest purity product (no solvent or emulsifier contamination).
- Simple formulation, minimal downstream purification.
- Can be directly cast into finished shapes (e.g. PMMA sheets).

**Disadvantages:**
- Poor heat dissipation at high conversion, leading to hot spots, broad MW distribution, or runaway reactions.
- High and rapidly rising viscosity makes stirring/processing difficult.
- Risk of voids/bubbles and non-uniform product in thick castings.

---

#### Question 6 — *[3+4+4+2 = 12]*

##### (a) Define polymer degradation. *(3 marks)*
**Answer** — *(as in 2023 Q2(a))*: deleterious chemical/physical change (chain scission, cross-linking) reducing molecular weight and useful properties, caused by heat, light, oxygen, chemicals, mechanical stress, or radiation.

##### (b) Describe chain end and random polymer degradation with schematic representations. *(4 marks)*
**Answer** — *(full description + schematic given at 2023 Q2(b) / 2022 Q5(b))*.

##### (c) What do you mean by anti-oxidants? Give four examples of anti-oxidants with chemical structure. *(4 marks)*

**Answer**

**Antioxidants** are additives that inhibit oxidative degradation of polymers by scavenging free radicals or decomposing hydroperoxides formed during processing/service, thereby breaking the autocatalytic oxidation chain.

**Examples (types & representative structures):**
1. **Hindered phenols** (primary/radical-scavenging antioxidants) — e.g. BHT (2,6-di-tert-butyl-4-methylphenol): a phenol ring with two bulky tert-butyl groups at positions 2 and 6 and a methyl group at position 4; the phenolic –OH donates H to peroxy radicals.
2. **Hindered amines (HALS)** — e.g. derivatives of 2,2,6,6-tetramethylpiperidine, act mainly as photostabilizers/radical scavengers.
3. **Aromatic amines** (e.g. N-phenyl-2-naphthylamine) — donate H to radicals; strong antioxidant but can discolour product.
4. **Phosphites/thioesters** (secondary, hydroperoxide-decomposing antioxidants) — e.g. tris(nonylphenyl) phosphite, dilauryl thiodipropionate — reduce hydroperoxides ($ROOH$) to alcohols ($ROH$) without generating new radicals.

##### (d) State the factors that influence the polymer degradation. *(2 marks)*
**Answer** — *(see 2022 Q5(a))*: heat, light/UV, oxygen, moisture, mechanical stress, radiation, chemical agents, catalyst/metal impurities.

---

#### Question 7 — *[2+3+4+3 = 12]*

##### (a) Define Bio-polymer. *(2 marks)*
**Answer** — *(as above)*: a polymer produced by living organisms, or a biodegradable/bio-based polymer.

##### (b) Classify Bio-polymer with examples. *(3 marks)*
**Answer** — *(as in 2022 Q8(b))*: polysaccharides (cellulose, starch), proteins (silk, collagen), nucleic acids (DNA, RNA), microbial polyesters (PHA, PLA).

##### (c) Describe the synthesis procedure of Nylon 6.6. *(4 marks)*

**Answer**

**Monomers:** Hexamethylenediamine $H_2N-(CH_2)_6-NH_2$ and adipic acid $HOOC-(CH_2)_4-COOH$.

**Procedure:**
1. The two monomers are combined in equimolar (stoichiometrically balanced) amounts in aqueous solution, forming a 1:1 salt — "**nylon salt**" (hexamethylenediammonium adipate) — which ensures exact stoichiometric balance essential for high molecular weight in step-growth polymerization.
2. The nylon salt solution is concentrated and heated under pressure (autoclave, ~250–280 °C) to drive the polycondensation reaction, with continuous removal of water (the condensation by-product) to push the equilibrium toward high extent of reaction $p$:
$$n\,H_2N-(CH_2)_6-NH_2 + n\,HOOC-(CH_2)_4-COOH \rightarrow [-NH-(CH_2)_6-NH-CO-(CH_2)_4-CO-]_n + 2n\,H_2O$$
3. Pressure is gradually released and temperature maintained to complete the polymerization to the desired molecular weight (regulated by a small excess of one monomer or addition of a monofunctional "stabilizer" acid to control chain length).
4. The molten polymer is extruded as a ribbon, cooled, cut into chips, and later melt-spun into nylon 6,6 fibre.

##### (d) Write short note on polymer recycling. *(3 marks)*
**Answer** — *(as in 2023 Q8(d))*.

---

#### Question 8 — *[4+4+4 = 12]*

##### (a) What do you mean by $T_m$? What are the factors that influence $T_m$ of a polymer? *(4 marks)*

**Answer**

**$T_m$ (melting temperature):** The temperature at which the ordered, crystalline regions of a polymer break down into a disordered melt (a first-order thermodynamic transition, applicable only to the crystalline fraction of a semicrystalline polymer).

**Factors influencing $T_m$:**
- **Chain flexibility** — stiffer backbones (aromatic rings, rigid groups) raise $T_m$; flexible backbones (long $-CH_2-$ sequences) lower it.
- **Intermolecular forces** — stronger forces (H-bonding in nylon, dipole interactions in PET/PVC) raise $T_m$.
- **Molecular symmetry/regularity** — symmetric, regular chains pack more efficiently and melt at higher temperature.
- **Molecular weight** — $T_m$ increases with MW up to a plateau; low-MW oligomers melt at lower temperature.
- **Crystallite size/perfection** — larger, more perfect crystals melt at higher, sharper temperatures.
- **Presence of bulky side groups/branching/copolymerization** — disrupts packing, lowers $T_m$.

##### (b) Define softening point. Explain Vicat Test method to determine the softening point of a polymer. *(4 marks)*
**Answer** — *(definition and full test procedure given at 2023 Q6(a)/(b))*.

##### (c) Compare between nematic and smectic liquid crystalline polymer structure. *(4 marks)*
**Answer** — *(table given at 2022 Q8(a))*.

---

## 2020

### Part A

#### Question 1 — *[4+4+4 = 12]*

##### (a) Write the importances of Polymers in Textile Field. *(4 marks)*
**Answer** — *(see full discussion at 2021 Q3(a))*: nearly all fibres are polymers; polymer science explains fibre strength, elasticity, dyeability, thermal/shrinkage behaviour, spinning and finishing processes, and enables development of new synthetic and technical fibres.

##### (b) Discuss about Thermoplastic and Thermosetting polymer with examples. *(4 marks)*

**Answer**

| Property | Thermoplastic | Thermosetting |
|---|---|---|
| Behaviour on heating | Softens/melts reversibly, can be re-shaped/re-melted repeatedly | Sets permanently (cross-links) on first heating/curing; does not re-melt |
| Structure | Linear or branched chains, no cross-links | Highly cross-linked 3-D network |
| Recyclability | Recyclable (mechanically re-processable) | Generally non-recyclable by re-melting |
| Mechanical behaviour | Can be relatively flexible, softer | Generally hard, rigid, brittle |
| Examples | Polyethylene, PVC, PP, PS, nylon | Phenol-formaldehyde (Bakelite), urea-formaldehyde, epoxy, melamine-formaldehyde |

##### (c) Mention the D.P of following fibres — Viscose, Polyester, Nylon-6,6. *(4 marks)*

**Answer** (typical literature/textile-technology values)

| Fibre | Typical Degree of Polymerization (DP) |
|---|---|
| Viscose (regenerated cellulose) | ~250–450 |
| Polyester (PET) | ~100–150 |
| Nylon 6,6 | ~150–200 |

*(These are representative textile-fibre values; exact DP depends on the specific grade/process used.)*

---

#### Question 2 — *[3+3+6 = 12]*

##### (a) What are DSC, DTA, TA analysis? *(3 marks)*

**Answer**
- **DSC (Differential Scanning Calorimetry):** Measures the difference in heat flow between a sample and an inert reference as both are heated/cooled at a controlled rate; detects thermal transitions ($T_g$, $T_m$, crystallization, curing) as endothermic/exothermic peaks or baseline shifts, and quantifies associated heat ($\Delta H$).
- **DTA (Differential Thermal Analysis):** Measures the temperature difference between a sample and an inert reference as both are heated identically; transitions appear as deviations (peaks) in the temperature-difference curve, but (unlike DSC) it does not directly quantify heat flow in calibrated energy units.
- **TA (Thermal Analysis, general/TGA):** A family of techniques (including TGA — Thermogravimetric Analysis) that monitor a physical property (mass, dimension, heat flow) of a sample as a function of temperature/time; TGA specifically measures weight loss with temperature, revealing decomposition temperature and thermal stability.

##### (b) Make a relation between molecular weight and DP. *(3 marks)*

**Answer**

$$\boxed{DP = \frac{M_{polymer}}{M_{repeat\ unit}}}$$

i.e., the degree of polymerization equals the polymer's molecular weight divided by the molecular weight of its repeating unit. (Also, from the Carothers relation, $DP_n = 1/(1-p)$, connecting DP to extent of reaction.)

##### (c) How molecular weight ($M_w$) can be controlled in step condensation polymerization? *(6 marks)*

**Answer**

Since $\overline{DP}_n = \dfrac{1}{1-p}$, molecular weight in step polymerization is controlled primarily by controlling the **extent of reaction $p$** and the **stoichiometric balance** of functional groups:

1. **Stoichiometric imbalance:** Deliberately using a slight molar excess of one bifunctional monomer (or adding a calculated amount of a monofunctional reagent) caps the maximum attainable chain length even at $p \to 1$, since chain ends become "capped" by unreacted excess functional groups. The modified Carothers relation for a system with imbalance ratio $r$ (ratio of moles of the two functional group types, $r \le 1$):
$$\overline{DP}_n = \frac{1+r}{1+r-2rp}$$
2. **Addition of monofunctional "stopper" (chain terminator):** A monofunctional reagent (e.g. acetic acid in nylon synthesis) reacts with one chain end and prevents further chain growth from that end, limiting final MW.
3. **Controlling extent of reaction (time/temperature):** Stopping the reaction (by cooling, quenching, or removing catalyst) before $p$ approaches 1 limits $DP_n$.
4. **Efficient removal of by-product** (e.g. water): Since step reactions are often reversible equilibria, continuous removal of the small-molecule by-product drives $p$ higher, enabling higher final MW when high MW is desired; conversely, incomplete removal caps MW.
5. **Catalyst concentration and reaction time:** determine how closely $p$ approaches its maximum value.

Thus, MW control in step-growth systems is achieved by manipulating $p$, monomer stoichiometry, and chain-stopper concentration — quite different from chain-growth systems, where MW is controlled via initiator concentration and chain-transfer agents.

---

#### Question 3 — *[4+2+3+3 = 12]*

##### (a) Explain the functionality of a monomer with examples. *(4 marks)*

**Answer:** Functionality is the number of reactive (bonding) sites a monomer possesses that can participate in the polymerization reaction.
- **Functionality = 2 (bifunctional)** — gives linear polymers, e.g. ethylene glycol $HO-CH_2CH_2-OH$ (2 –OH groups), adipic acid $HOOC-(CH_2)_4-COOH$ (2 –COOH groups).
- **Functionality = 3 or more (polyfunctional)** — gives branched/cross-linked (network) polymers, e.g. glycerol (3 –OH groups), phthalic anhydride derivatives used in alkyd resins, phenol-formaldehyde network resins.
- **Functionality = 1 (monofunctional)** — cannot polymerize into a chain by itself; used as a chain-stopper/terminator to control MW.

##### (b) State the various type of reactions involved in step polymerization. *(2 marks)*
**Answer** — *(see 2023 Q1(c) table)*: polyesterification, polyamidation, polyurethane formation, polycarbonate formation, ring-opening step-growth, A–A+B–B and A–B type polycondensation, interfacial polycondensation.

##### (c) Discuss the A-B type poly-condensation with example. *(3 marks)*

**Answer:** In A–B type polycondensation, a **single** bifunctional monomer possesses two *different* reactive functional groups (A and B) within the same molecule. The A group of one molecule reacts with the B group of another, so the monomer self-condenses into a linear chain without needing a second monomer type.

**Example:** ε-aminocaproic acid, $H_2N-(CH_2)_5-COOH$ (amine group A, carboxylic acid group B), self-condenses:
$$n\,H_2N-(CH_2)_5-COOH \rightarrow [-NH-(CH_2)_5-CO-]_n + (n-1)H_2O$$
giving Nylon 6. (Similarly, a hydroxy-acid self-condenses to a polyester.)

##### (d) Calculate molecular weight of Acrylic fibre, where DP=2000. *(3 marks)*

**Answer**

**Given:** $DP = 2000$; Acrylic fibre = polyacrylonitrile, repeat unit $-CH_2-CH(CN)-$, $M_{repeat} = 12+2(1)+12+1+12+14 = $ let's compute properly: $C_3H_3N$ → $3(12)+3(1)+14 = 36+3+14=53$ g/mol

**Formula:** $M = DP \times M_{repeat\ unit}$

**Solution:**
$$M = 2000 \times 53 = 106{,}000$$

**Final Answer:**
$$\boxed{M \approx 1.06\times10^5\ \text{g/mol}\ (106{,}000\ \text{g/mol})}$$

---

#### Question 4 — *[3+2+5+2 = 12]*

##### (a) What is free radical? How is it produced? *(3 marks)*

**Answer:** A free radical is a chemical species possessing an unpaired electron, generally highly reactive. It is produced by **homolytic bond cleavage**, where a covalent bond splits so that each fragment retains one electron, typically induced by heat (thermal decomposition of peroxides/azo compounds), UV/visible light (photolysis), or redox reactions:
$$I-I \xrightarrow{\Delta\ \text{or}\ h\nu} 2I^\bullet$$

##### (b) Why free radical polymerization is called vinyl polymerization? *(2 marks)*

**Answer:** Free-radical polymerization is often called "vinyl polymerization" because it is most commonly carried out on **vinyl monomers** — molecules containing the $CH_2=CHX$ (vinyl) functional group — such as ethylene, styrene, vinyl chloride, and vinyl acetate, where the radical adds across the C=C double bond to propagate the chain.

##### (c) Describe the different steps of cationic polymerization with examples. *(5 marks)*
**Answer** — *(full mechanism given at 2022 Q2(c))*: initiation (acid generates carbocation on monomer), propagation (successive carbocation addition), termination (counter-ion combination, chain transfer, or β-elimination). Example: isobutylene with $BF_3/H_2O$ initiator → polyisobutylene.

##### (d) State the characteristics of co-polymer. *(2 marks)*

**Answer:** A copolymer is formed from two or more different monomers; its properties are intermediate/tunable between those of the corresponding homopolymers by varying monomer ratio and sequence (random, alternating, block, graft); copolymerization is used to combine desirable properties of different monomers (e.g. SBR combines the strength of polystyrene segments with the elasticity of polybutadiene segments) and to modify crystallinity, $T_g$, and processability.

---

### Part B

#### Question 5 — *[2+3+3+4 = 12]*

##### (a) "Woolen dresses are more comfortable than cotton in winter season" — explain the reasons. *(2 marks)*

**Answer:** Wool fibre has a naturally crimped, bulky structure that traps a large volume of still air within and between fibres; air is a poor conductor of heat, so wool provides excellent thermal insulation. Wool (a protein/keratin polymer) is also hygroscopic and can absorb significant moisture (perspiration) without feeling wet, generating a small amount of heat of sorption, further adding to the warm feel — whereas cotton (cellulose) is less bulky, conducts heat away from the body faster, and feels cold/clammy once damp.

##### (b) What do you know about Rio polymer and polymer recycling? *(3 marks)*

**Answer:** *[Scanned text unclear — "Rio polymer" is not a standard polymer-science term; the most reasonable interpretation, given surrounding context of recycling/environment, is that the paper intends either (i) a general reference to environmentally-sustainable/"green" polymers as discussed in sustainability contexts (e.g., following international environmental conventions such as the Rio Earth Summit), or (ii) a typographical rendering of "bio-polymer."]* Interpreting it as biopolymers/eco-friendly polymers: these are naturally derived or biodegradable polymers (e.g. PLA, starch-based plastics) promoted as alternatives to conventional petroleum plastics to reduce environmental impact, tying into the broader theme of **polymer recycling** — reprocessing waste plastic (mechanical, chemical, or energy-recovery routes) to reduce landfill burden and conserve resources.

##### (c) State the criterion of fine forming polymer. *(3 marks)*

**Answer** *(interpreting "fine forming" as "fibre forming," consistent with repeated exam phrasing elsewhere in the paper set)* — see criteria at 2023 Q7(a): high MW, linear structure, chain regularity, orientability/crystallizability, adequate intermolecular forces, suitable thermal stability, spinnability.

##### (d) Compare the properties of crystalline and amorphous polymer. *(4 marks)*

**Answer**

| Property | Crystalline (regions) | Amorphous (regions) |
|---|---|---|
| Chain arrangement | Ordered, regularly packed | Random, disordered coils |
| Density | Higher | Lower |
| Optical clarity | Opaque/translucent (light scattering) | Clear/transparent |
| Melting behaviour | Sharp $T_m$ | No sharp $T_m$; softens gradually above $T_g$ |
| Mechanical strength | Higher strength, stiffness | Lower strength, more flexible/extensible |
| Chemical resistance | More resistant | Less resistant (more permeable) |

---

#### Question 6 — *[4+3+2+3 = 12]*

##### (a) Define glass transition temperature and melting temperature. *(4 marks)*
**Answer** — *(definitions given at 2022 Q6(a) and 2021 Q8(a))*: $T_g$ = temperature of onset of segmental chain mobility in amorphous regions (glassy→rubbery transition); $T_m$ = temperature at which crystalline regions melt into disordered liquid (a true first-order thermodynamic transition).

##### (b) Illustrate the relation between $T_g$ and $T_m$. *(3 marks)*

**Answer:** For many semicrystalline polymers, an empirical rule of thumb relates the two (temperatures in absolute, Kelvin scale):

$$\frac{T_g}{T_m} \approx \frac{1}{2}\ \text{to}\ \frac{2}{3}$$

More specifically: $T_g \approx 0.5\,T_m$ (K) for symmetric polymers (e.g. polyethylene), and $T_g \approx 0.66\,T_m$ (K) for unsymmetric-repeat-unit polymers.

```text
Temperature axis:
 |------- Glassy -------|--- Rubbery/Leathery ---|---- Melt (viscous liquid) ----|
 0                      Tg                        Tm
```
Both $T_g$ and $T_m$ tend to increase together with increasing chain stiffness and intermolecular forces, since both reflect the ease of chain-segment motion.

##### (c) State the factors that influence the $T_g$. *(2 marks)*

**Answer:** Chain flexibility/backbone stiffness, intermolecular forces (H-bonding, polarity), molecular weight (increases $T_g$ up to a plateau), degree of cross-linking (raises $T_g$), bulky/rigid side groups (raise $T_g$), plasticizer content (lowers $T_g$), tacticity/chain regularity.

##### (d) Mention $T_g$ and $T_m$ Value for PVC, PAN and PET. *(3 marks)*

**Answer**

| Polymer | $T_g$ (°C) | $T_m$ (°C) |
|---|---:|---:|
| PVC | ~80 | ~212 |
| PAN | ~95–100 | ~317 (decomposes near $T_m$) |
| PET | ~70–80 | ~260 |

---

#### Question 7 — *[3+2+5+2 = 12]*

##### (a) How polymer raw materials are purified? *(3 marks)*
**Answer** — *(see 2022 Q4(a))*: distillation (remove inhibitors/high-boiling impurities), drying (remove moisture), degassing (remove dissolved $O_2$), recrystallization, filtration, ion-exchange (remove metal ions).

##### (b) State the different techniques of liquid phase polymerization. *(2 marks)*
**Answer:** Bulk, solution, suspension, and emulsion polymerization are all carried out with the monomer/reaction mixture in the liquid phase (as opposed to gas-phase polymerization).

##### (c) Describe in details the Gas phase polymerization with suitable example. *(5 marks)*

**Answer**

**Gas-phase polymerization:** A process in which gaseous monomer is polymerized directly (typically over a solid heterogeneous catalyst bed, e.g. Ziegler–Natta or chromium-oxide catalyst) without the use of any liquid solvent or dispersing medium; the monomer gas is fed into a fluidized-bed reactor containing suspended catalyst/growing polymer particles.

**Process description:**
1. Gaseous monomer (e.g. ethylene or propylene) is continuously fed into a fluidized-bed reactor.
2. Solid catalyst particles are kept suspended ("fluidized") by the upward flow of gas.
3. Polymerization occurs on the catalyst surface (coordination-insertion mechanism), and solid polymer granules grow around each catalyst particle.
4. Unreacted monomer gas is recycled; heat of polymerization is removed by the circulating gas stream.
5. Solid polymer powder/granules are continuously withdrawn from the reactor.

**Example:** Gas-phase (fluidized-bed) production of **HDPE** and **linear low-density polyethylene (LLDPE)** using Ziegler–Natta or chromium catalysts (e.g. the UNIPOL process) — avoids solvent recovery costs and gives directly usable polymer powder.

##### (d) Discuss the interfacial polymerization technique. *(2 marks)*

**Answer:** Interfacial polymerization is carried out by dissolving two reactive monomers separately in two immiscible liquids (e.g. one monomer in water, the other in an organic solvent); when the two liquids are brought into contact, polymerization occurs rapidly at the interface between the phases, forming a thin polymer film that can be continuously drawn off (the "nylon rope trick"). Example: nylon 6,10 synthesis from an aqueous solution of hexamethylenediamine and an organic solution of sebacoyl chloride.

---

#### Question 8 — *[3+9 = 12]*

##### (a) Mention some applications of de-polymerization. *(3 marks)*
**Answer** — *(see 2023 Q8(c))*: chemical/monomer recycling of PET, caprolactam recovery from nylon 6 waste, pyrolysis of waste plastics to fuel/monomer feedstock, MMA recovery from PMMA scrap.

##### (b) Write short notes on any three of the following terms: (i) Nylon 6.6 (ii) PVC (iii) PET (iv) PAN. *(9 marks — 3 marks each; all four answered for completeness)*

**Answer**

**(i) Nylon 6,6:** Condensation polymer of hexamethylenediamine and adipic acid, repeat unit $[-NH-(CH_2)_6-NH-CO-(CH_2)_4-CO-]_n$; synthesized via nylon-salt intermediate under high temperature/pressure with water removal; $T_m \approx 265\,^\circ C$; used in textile fibre, tyre cord, engineering plastics due to high strength and abrasion resistance.

**(ii) PVC (Polyvinyl chloride):** Addition (free-radical, usually suspension) polymer of vinyl chloride, $[-CH_2-CHCl-]_n$; amorphous to slightly crystalline, $T_g \approx 80\,^\circ C$; rigid unless plasticized; used in pipes, cables, flooring, and (plasticized) flexible sheeting/artificial leather.

**(iii) PET (Polyethylene terephthalate):** Condensation polyester of terephthalic acid and ethylene glycol, repeat unit $[-OC-C_6H_4-CO-O-CH_2CH_2-O-]_n$; semicrystalline, $T_m \approx 260\,^\circ C$; excellent strength, dimensional stability, and moisture resistance; major textile fibre (polyester) and bottle-grade plastic.

**(iv) PAN (Polyacrylonitrile):** Addition polymer of acrylonitrile, $[-CH_2-CH(CN)-]_n$; strong intermolecular dipole forces from nitrile groups give high $T_g$ and good chemical resistance; used as acrylic fibre and, importantly, as the precursor for carbon fibre manufacture (via controlled oxidative stabilization and carbonization).

---

## 2019

### Part A

#### Question 1 — *[4+2+2+4 = 12]*

##### (a) Define terms of (i) Monomer (ii) Polymerization (iii) Repeating unit and (iv) End group. *(4 marks)*

**Answer**
- **(i) Monomer:** A small reactive molecule serving as the basic building block of a polymer.
- **(ii) Polymerization:** The chemical reaction (chain-growth or step-growth) by which monomer molecules combine to form a large macromolecule (polymer).
- **(iii) Repeating unit:** The smallest structural unit that repeats along the chain to constitute the whole polymer molecule.
- **(iv) End group:** The chemical group(s) located at the terminal ends of a polymer chain, chemically distinct from the repeat unit (e.g. from initiator fragments or unreacted functional groups); used analytically (end-group analysis) to determine $M_n$.

##### (b) Classification of polymer on the basis of behavior towards heat. *(2 marks)*
**Answer:** Thermoplastic (softens repeatedly and reversibly on heating; e.g. PE, PVC, nylon) and Thermosetting (cross-links irreversibly on heating/curing, does not re-melt; e.g. phenol-formaldehyde, epoxy).

##### (c) State the importance of polymer science in textile field. *(2 marks)*
**Answer** — *(see 2021 Q3(a))*: most textile fibres are polymers; polymer science explains and controls fibre strength, elasticity, dyeability, thermal behaviour, spinning, and finishing.

##### (d) Distinguish between homopolymer and co-polymer. *(4 marks)*
**Answer** — *(see comparison table under 2023 Q6(d))*.

---

#### Question 2 — *[3+3+3+3 = 12]*

##### (a) Compare between chain conformation & configuration of polymer. *(3 marks)*

**Answer**

| Property | Conformation | Configuration |
|---|---|---|
| Definition | Spatial arrangement of atoms that can be changed by simple bond rotation (about single bonds), without breaking any bonds | Spatial arrangement fixed by the pattern of chemical bonding (stereochemistry), which can only be changed by breaking and re-forming bonds |
| Reversibility | Freely, continuously interconvertible (e.g., random coil ↔ extended chain) | Fixed once the polymer is synthesized; permanent unless chemically altered |
| Example | Gauche/anti rotational states of a polyethylene backbone | Isotactic vs. syndiotactic vs. atactic arrangement (tacticity); cis/trans arrangement of double bonds |

##### (b) Briefly explain the principle of infrared spectroscopy. *(3 marks)*

**Answer:** Infrared (IR) spectroscopy is based on the principle that covalent bonds in a molecule vibrate (stretch, bend) at characteristic frequencies determined by bond strength and the masses of atoms involved. When IR radiation of matching frequency is passed through a sample, that frequency is absorbed, promoting the bond to a higher vibrational energy state. By recording the amount of IR radiation absorbed/transmitted across a range of frequencies (wavenumbers), a spectrum is obtained in which each absorption band corresponds to a specific functional group or bond type (e.g. C=O, O–H, C–H), allowing identification of the chemical structure/functional groups present in a polymer.

##### (c) Derive the equation: Chain end-to-end distance $\langle R^2\rangle = nl^2\dfrac{1-\cos\theta}{1+\cos\theta}$, where R = end-to-end distance, l = unit bond length, n = number of bonds, θ = bond angle. *(3 marks)*

**Answer**

**Given:** Freely-rotating chain model (bond angle fixed at $\theta$ between successive bonds, but free rotation about each bond).

**Derivation:**
For an ideal freely-jointed chain (no bond-angle restriction), the mean-square end-to-end distance is simply:
$$\langle R^2\rangle_{\text{freely-jointed}} = nl^2$$
since the $n$ bond vectors are uncorrelated and this follows from a random-walk sum, where cross terms $\langle \vec{l_i}\cdot\vec{l_j}\rangle = 0$ for $i\neq j$.

For the more realistic **freely-rotating chain**, the bond angle $\theta$ between successive bonds is fixed (not free), but rotation about each bond axis is unrestricted. Correlation now exists between neighbouring bond vectors:
$$\langle \vec{l_i}\cdot\vec{l_{i+1}}\rangle = l^2\cos\theta$$
and correlations between more distant bonds decay geometrically:
$$\langle \vec{l_i}\cdot\vec{l_{i+k}}\rangle = l^2(\cos\theta)^k$$

Summing the full double sum:
$$\langle R^2\rangle = \sum_{i=1}^{n}\sum_{j=1}^{n}\langle \vec{l_i}\cdot\vec{l_j}\rangle = nl^2 + 2l^2\sum_{i=1}^{n-1}(n-i)(\cos\theta)^{i}$$

For a long chain ($n \to$ large), this geometric series sums to give the closed form:

$$\boxed{\langle R^2\rangle = nl^2\,\frac{1-\cos\theta}{1+\cos\theta}}$$

*(Note: many textbooks define $\theta$ here as the supplement of the tetrahedral bond angle, i.e. the "bond angle" convention used determines whether $\cos\theta$ appears with the stated sign; the result above follows the convention given in the question.)*

##### (d) Compare between LDPE and HDPE. *(3 marks)*
**Answer** — *(table given at 2023 Q8(b))*.

---

#### Question 3 — *[2+4+3+3 = 12]*

##### (a) What is initiator? Give two examples of initiator with chemical name and structure. *(2 marks)*

**Answer:** An initiator is a compound that decomposes to generate the reactive species (free radicals or ions) that start a chain polymerization. Examples: **Benzoyl peroxide** ($C_6H_5CO-O-O-COC_6H_5$, a diacyl peroxide that homolyzes into two benzoyloxy radicals) and **AIBN, azobisisobutyronitrile** ($(CH_3)_2C(CN)-N=N-C(CN)(CH_3)_2$, which decomposes thermally releasing $N_2$ gas and two 2-cyanoisopropyl radicals).

##### (b) What is Ziegler-Natta Catalyst? How way to work? Give the mechanism. *(4 marks)*
**Answer** — *(full mechanism given at 2021 Q2(a))*: $TiCl_4$/$TiCl_3$ + organoaluminium co-catalyst; coordination of monomer at vacant Ti site, insertion into Ti–C bond (coordination-insertion mechanism), stereoregular chain growth.

##### (c) Differentiate between step polymerization and chain polymerization. *(3 marks)*
**Answer** — *(table given at 2022 Q3(a))*.

##### (d) What is degree of polymerization (D.P)? Explain relation between D.P and extent of reaction (P). *(3 marks)*
**Answer** — *(definition + Carothers derivation given at 2020 Q2(b), 2023 Q4(a))*: $\overline{DP}_n = 1/(1-p)$.

---

#### Question 4 — *[4+3+3+2 = 12]*

##### (a) Derive the mathematical expression for number average molecular weight and weight average molecular weight. Specify reasons for their names. *(4 marks)*

**Answer**

**Number-average molecular weight ($\overline{M}_n$):**
Total mass of sample $= \sum N_iM_i$; total number of molecules $= \sum N_i$.
$$\overline{M}_n = \frac{\sum N_iM_i}{\sum N_i}$$
Named "number-average" because it is a simple average weighted by the *number* of molecules of each species — every molecule counts equally regardless of size.

**Weight-average molecular weight ($\overline{M}_w$):**
Here each molecule is weighted by its own mass (not just counted once); the weight fraction of species $i$ is $w_i = N_iM_i/\sum N_iM_i$. The weight-average is the mass-weighted mean of $M_i$:
$$\overline{M}_w = \sum w_iM_i = \frac{\sum N_iM_i \cdot M_i}{\sum N_iM_i} = \frac{\sum N_iM_i^2}{\sum N_iM_i}$$
Named "weight-average" because larger (heavier) molecules contribute proportionally more to the average — it is an average weighted by *mass* (weight) fraction, making it more sensitive to the presence of high-molecular-weight species than $\overline{M}_n$.

Since $\overline{M}_w$ gives extra weight to larger molecules, $\overline{M}_w \ge \overline{M}_n$ always, with equality only for a perfectly monodisperse sample.

##### (b) What would be the molecular weight, if 9 moles, molecular weight ($M_w$) = 30,000 & 5 moles, molecular weight ($M_w$) = 50,000? *(3 marks)*

*(Interpreting "moles" here as number of molecules/species $N_i$ and computing both $M_n$ and $M_w$ per the standard two-species problem format used throughout this paper set.)*

**Given:** Species 1: $N_1 = 9$, $M_1 = 30{,}000$; Species 2: $N_2 = 5$, $M_2 = 50{,}000$

**Required:** $M_n$ and $M_w$

**Formula:** $M_n = \dfrac{\sum N_iM_i}{\sum N_i}$, $\quad M_w = \dfrac{\sum N_iM_i^2}{\sum N_iM_i}$

**Solution:**

| $M_i$ | $N_i$ | $N_iM_i$ | $N_iM_i^2$ |
|---:|---:|---:|---:|
| 30,000 | 9 | 270,000 | $8.1\times10^9$ |
| 50,000 | 5 | 250,000 | $1.25\times10^{10}$ |
| **Σ** | **14** | **520,000** | **$2.06\times10^{10}$** |

$$M_n = \frac{520{,}000}{14} = 37{,}142.9$$
$$M_w = \frac{2.06\times10^{10}}{520{,}000} = 39{,}615.4$$

**Final Answer:**
$$\boxed{M_n \approx 37{,}143\ \text{g/mol}, \quad M_w \approx 39{,}615\ \text{g/mol}}$$

##### (c) Briefly explain the Gel Permeation Chromatography (GPC) technique. *(3 marks)*

**Answer:** GPC (also called Size Exclusion Chromatography, SEC) separates polymer molecules in solution according to their **hydrodynamic size**, by passing the polymer solution through a column packed with porous beads (stationary phase) of controlled pore-size distribution. Larger molecules cannot enter the smaller pores and so pass through the column faster (eluting earlier), while smaller molecules diffuse into the pores and are retained longer, eluting later. A detector (e.g. refractive-index or UV detector) at the column outlet measures the concentration of eluting polymer versus elution volume/time, and by comparison with calibration standards of known molecular weight, the full **molecular-weight distribution** ($M_n$, $M_w$, $Đ$) of the sample is obtained.

##### (d) Define theta (θ) solvent. *(2 marks)*

**Answer:** A theta (θ) solvent is a solvent (at a specific "theta temperature") in which polymer–solvent interactions exactly balance polymer–polymer (excluded volume) interactions, so that the polymer chain behaves as an ideal random coil (unperturbed dimensions), neither expanded (as in a good solvent) nor collapsed (as in a poor solvent). Under theta conditions, the second virial coefficient $A_2 = 0$.

---

### Part B

#### Question 5 — *[3+3+2+4 = 12]*

##### (a) What is crystanility and degree of crystanility? *(3 marks)*
**Answer** — *(as in 2023 Q5(a))*: crystallinity is the degree of regular, ordered chain packing in a polymer; the "degree of crystallinity" is the quantitative fraction (by volume or mass, $X_c$) of the sample that is in the ordered crystalline state, as opposed to the amorphous state.

##### (b) Compare the properties of crystalline and amorphous polymer. *(3 marks)*
**Answer** — *(table given at 2020 Q5(d))*.

##### (c) What are the criteria of fibre forming polymer? *(2 marks)*
**Answer** — *(see 2023 Q7(a))*.

##### (d) What is de-polymerization? Write down the application of de-polymerization. *(4 marks)*
**Answer** — *(see 2023 Q8(c))*.

---

#### Question 6 — *[3+3+3+3 = 12]*

##### (a) Define differential scanning calorimetry. How can it work? *(3 marks)*

**Answer:** DSC (Differential Scanning Calorimetry) is a thermal-analysis technique that measures the difference in heat flow required to maintain a sample and an inert reference material at the same programmed temperature as both are heated (or cooled) at a controlled rate.

**Working principle:** The sample and reference are heated in separate identical pans within the instrument. When the sample undergoes a thermal event (e.g., glass transition — a step change in heat capacity; melting — an endothermic peak absorbing heat; crystallization — an exothermic peak releasing heat), extra (or less) heat must be supplied to the sample pan relative to the reference to keep both at the same temperature. This differential heat flow (mW) is recorded continuously against temperature/time, producing a DSC thermogram from which $T_g$, $T_m$, crystallization temperature, and associated enthalpies ($\Delta H$) can be determined.

##### (b) Mention the factors affecting TGA analysis. *(3 marks)*

**Answer:** Heating rate (faster rates shift decomposition temperature higher and can obscure closely-spaced steps), sample mass and particle size (affects heat/gas diffusion), purge gas atmosphere (inert $N_2$ vs. oxidative air — changes decomposition pathway/temperature), sample pan geometry/material, and instrument calibration.

##### (c) Distinguish between miscible and immiscible polymer blends. *(3 marks)*

**Answer**

| Property | Miscible blend | Immiscible blend |
|---|---|---|
| Phase behaviour | Single homogeneous phase at the molecular level | Two (or more) separate phases |
| $T_g$ | Single, intermediate $T_g$ (between the two components) | Two distinct $T_g$'s, one for each component phase |
| Morphology | No visible phase boundary | Distinct phase-separated domains (droplets/co-continuous) |
| Example | PS/PPO blend | PE/PP blend (generally immiscible, needs compatibilizer) |

##### (d) What is cross-link? Classify cross-link and describe them. *(3 marks)*

**Answer:** A cross-link is a covalent (or, sometimes, strong physical) bond that connects one polymer chain to another, forming a three-dimensional network rather than separate linear chains.

**Classification:**
- **Chemical cross-links** — permanent covalent bonds formed by curing agents/vulcanizing agents (e.g. sulfur bridges in vulcanized rubber, or resin cure in thermosets); irreversible.
- **Physical cross-links** — non-covalent, reversible junctions such as crystallites, ionic clusters, or hydrogen-bonded domains, which can be disrupted by heat or solvent (as in thermoplastic elastomers).

---

#### Question 7 — *[3+3+3+3 = 12]*

##### (a) Explain the crystalline structure of liquid crystal polymer. *(3 marks)*

**Answer:** In liquid crystal polymers, rigid, rod-like (mesogenic) segments align along a common direction (the "director"), giving long-range **orientational order** while retaining a degree of molecular mobility characteristic of a liquid — an intermediate state between the fully ordered 3-D lattice of a true crystal and the fully disordered arrangement of an isotropic liquid. Depending on additional positional ordering, the mesophase may be **nematic** (orientational order only) or **smectic** (orientational plus layered positional order); on cooling below a certain temperature, LCPs can further order into a true crystalline solid.

##### (b) Discuss the unzipping mechanism of polymer degradation. *(3 marks)*

**Answer:** Unzipping (chain-end/depropagation) degradation is a mode of thermal degradation in which, on heating, a radical is generated at (or near) the chain end, and monomer units are released sequentially, one at a time, from that end — essentially the reverse of chain-growth propagation:
$$\cdots-M_n-M_{n-1}^\bullet \rightarrow \cdots-M_{n-1}^\bullet + M\,(\text{monomer}) \rightarrow \cdots-M_{n-2}^\bullet + M \rightarrow \cdots$$
This mechanism dominates when the depropagation activation energy is low relative to competing side reactions (e.g., PMMA, which can revert almost quantitatively to methyl methacrylate monomer on heating — the "ceiling temperature" concept governs when depropagation becomes thermodynamically favoured over propagation).

##### (c) Justify the sentence "A polymer can suffer degradation mainly at two stages of its life (i) fabrication process (ii) daily use". *(3 marks)*

**Answer:**
**(i) During fabrication/processing:** High temperature, high shear (extrusion, injection moulding, calendering), and exposure to atmospheric oxygen during melt processing can cause thermal, mechanical, and thermo-oxidative degradation, reducing molecular weight, causing discoloration, and weakening final properties even before the product is put to use.
**(ii) During daily use/service:** Ongoing exposure to sunlight (UV → photodegradation), atmospheric oxygen (oxidative degradation), moisture (hydrolysis, especially for polyesters/polyamides), repeated mechanical stress/flexing (fatigue), and environmental chemicals continues to degrade the polymer throughout its service life, eventually leading to embrittlement, cracking, or loss of function.
Hence proper **stabilization** (antioxidants, UV stabilizers, heat stabilizers) must be built in to protect the polymer at both stages.

##### (d) Describe the synthesis procedure of nylon 6,10. *(3 marks)*

**Answer**

**Monomers:** Hexamethylenediamine $H_2N-(CH_2)_6-NH_2$ and sebacoyl chloride $ClOC-(CH_2)_8-COCl$ (the acid-chloride derivative of sebacic acid is commonly used, enabling low-temperature interfacial polymerization).

**Procedure (interfacial polymerization — "nylon rope trick"):**
1. Hexamethylenediamine is dissolved in water (aqueous phase, often with a base like NaOH to neutralize the HCl by-product).
2. Sebacoyl chloride is dissolved in an immiscible organic solvent (e.g. carbon tetrachloride or cyclohexane), forming the organic phase.
3. The two solutions are carefully layered in a beaker; polymerization occurs instantly at the liquid–liquid interface:
$$n\,H_2N-(CH_2)_6-NH_2 + n\,ClOC-(CH_2)_8-COCl \rightarrow [-NH-(CH_2)_6-NH-CO-(CH_2)_8-CO-]_n + 2n\,HCl$$
4. A thin film of nylon 6,10 forms at the interface and can be continuously drawn upward as a fibre/rope using tweezers/a winding rod, pulling fresh reactants to the interface to sustain polymerization.
5. The fibre is washed to remove residual monomer/HCl and dried.

---

#### Question 8 — *[2+3+2+5 = 12]*

##### (a) What is Bio-polymer? Give some example of Bio-polymer. *(2 marks)*
**Answer** — *(as before)*: polymer produced by/derived from living organisms; examples — cellulose, starch, natural rubber, silk, collagen, PHA, PLA.

##### (b) Difference between Bio-polymer and synthetic polymer. *(3 marks)*

**Answer**

| Property | Biopolymer | Synthetic polymer |
|---|---|---|
| Source | Derived from living organisms / renewable biomass | Derived from petrochemical feedstock |
| Biodegradability | Generally biodegradable | Generally non-biodegradable (unless specially engineered) |
| Structural regularity | Often very high (e.g. DNA, proteins have precisely defined sequences) | Structure controlled by polymerization process/catalyst, can be less precisely defined |
| Examples | Cellulose, starch, PHA, silk | Polyethylene, PVC, nylon, polyester |
| Environmental impact | Lower (renewable, degradable) | Higher (persistent, from finite resources) unless recycled |

##### (c) Define the liquid crystal polymers and polymer recycling. *(2 marks)*
**Answer** — *(as given at 2023 Q8(d))*.

##### (d) Write short notes on: (i) PET (ii) Nylon 6.6. *(5 marks)*
**Answer** — *(full notes given at 2020 Q8(b))*.

---

## 2018

### Part A

#### Question 1 — *[4+3+4+1 = 12]*

##### (a) Define the terms (i) End group (ii) Repeating unit (iii) Inhibitor and (iv) Polymerization. *(4 marks)*

**Answer**
- **(i) End group:** Terminal chemical group(s) at the ends of a polymer chain, structurally different from the repeat unit.
- **(ii) Repeating unit:** The smallest structural unit repeated to build up the whole polymer chain.
- **(iii) Inhibitor:** A substance added in small quantity that completely stops (or drastically delays the onset of) polymerization by rapidly and irreversibly scavenging initiating/propagating radicals, used to prevent premature polymerization during monomer storage/transport (e.g. hydroquinone in stored styrene/acrylates).
- **(iv) Polymerization:** The reaction converting monomer molecules into a macromolecular polymer chain, by chain-growth or step-growth mechanism.

##### (b) Classification of polymer on the basis of chemical nature with example. *(3 marks)*
**Answer** — *(as in 2021 Q1(c)(ii))*: Organic polymers (carbon-chain backbone, e.g. PE, PVC, nylon) and Inorganic polymers (non-carbon backbone, e.g. silicones — Si–O backbone, polyphosphazenes — P–N backbone).

##### (c) Write the importance of polymer in textile field. *(4 marks)*
**Answer** — *(see 2021 Q3(a) for full discussion)*.

##### (d) Write the D.P value of following fibres: Cotton and Nylon 6.6. *(1 mark)*

**Answer**

| Fibre | Typical DP |
|---|---:|
| Cotton (cellulose) | ~1000–3000 (natural cellulose, considerably higher than regenerated cellulose) |
| Nylon 6,6 | ~150–200 |

---

#### Question 2 — *[3+3+2+4 = 12]*

##### (a) What are meant by term monodispersity and index of polydispersity. *(3 marks)*
**Answer** — *(as in 2021 Q4(a) and 2023 Q4(b))*: monodispersity = all chains essentially identical MW ($Đ\approx1$); index of polydispersity ($Đ = M_w/M_n$) quantifies the breadth of the MW distribution ($Đ>1$ for polydisperse samples).

##### (b) Prove that number average molecular weight, $\overline{M}_n = \dfrac{\sum n_iM_i}{\sum n_i}$. *(3 marks)*
**Answer** — *(full derivation given at 2021 Q4(b))*.

##### (c) Write the name of different methods determination of $\overline{M}_n$. *(2 marks)*

**Answer:** $\overline{M}_n$ is determined by methods sensitive to the *number* of molecules (colligative properties): **end-group analysis** (chemical titration of chain-end functional groups), **membrane osmometry** (measures osmotic pressure), **vapour-pressure osmometry (VPO)**, **ebullioscopy** (boiling-point elevation), and **cryoscopy** (freezing-point depression).

##### (d) Find out $\overline{M}_n$, $\overline{M}_w$ and index of polydispersity when these are four entities having molecular weight of 10, 20, 100 and 250 respectively. Also consider the number of each entities are 2, 4, 6 and 3 respectively. *(4 marks)*

**Answer**

**Given:**

| $M_i$ | $N_i$ | $N_iM_i$ | $N_iM_i^2$ |
|---:|---:|---:|---:|
| 10 | 2 | 20 | 200 |
| 20 | 4 | 80 | 1,600 |
| 100 | 6 | 600 | 60,000 |
| 250 | 3 | 750 | 187,500 |
| **Σ** | **15** | **1450** | **249,300** |

**Formula:** $M_n = \dfrac{\sum N_iM_i}{\sum N_i}$, $M_w = \dfrac{\sum N_iM_i^2}{\sum N_iM_i}$, $Đ = M_w/M_n$

**Solution:**
$$M_n = \frac{1450}{15} = 96.67$$
$$M_w = \frac{249{,}300}{1450} = 171.9$$
$$Đ = \frac{171.9}{96.67} = 1.778$$

**Final Answer:**
$$\boxed{M_n \approx 96.7\ \text{g/mol}, \quad M_w \approx 171.9\ \text{g/mol}, \quad Đ \approx 1.78}$$

---

#### Question 3 — *[3+4+5 = 12]*

##### (a) Mention the basic properties of textile fibre forming polymer. *(3 marks)*
**Answer** — *(as in 2023 Q7(a))*: high MW, linear structure, chain regularity, orientability/crystallizability, sufficient intermolecular forces, suitable thermal behaviour, spinnability.

##### (b) Differentiate between homopolymer and copolymer. *(4 marks)*
**Answer** — *(table given at 2023 Q6(d))*.

##### (c) State the mechanism of cationic polymerization process with example. *(5 marks)*
**Answer** — *(full mechanism at 2022 Q2(c))*: initiation via Lewis/Brønsted acid generating carbocation; propagation via successive monomer addition to the cation; termination via counter-ion combination, chain transfer, or β-H elimination. Example: isobutylene with $BF_3/H_2O$ → polyisobutylene.

---

#### Question 4 — *[1+4+3+4 = 12]*

##### (a) Write the types of chain polymerization. *(1 mark)*
**Answer:** Free-radical polymerization, cationic polymerization, anionic polymerization, and coordination (Ziegler–Natta) polymerization.

##### (b) Write note on Ziegler-Natta catalyst. *(4 marks)*
**Answer** — *(as in 2021 Q2(a))*: transition metal halide ($TiCl_4$/$TiCl_3$) + organoaluminium co-catalyst; coordination-insertion mechanism at the vacant Ti site gives stereoregular, low-branching, low-pressure polyolefins (e.g. HDPE, isotactic PP).

##### (c) Establish the following relationship $D.P = \dfrac{1}{1-P}$. Where D.P = Degree of polymerization, P = extent of reaction. *(3 marks)*
**Answer** — *(full Carothers derivation given at 2023 Q4(a))*.

##### (d) Write down the molecular weight determination by end group analysis technique. *(4 marks)*

**Answer**

**Principle:** End-group analysis determines $\overline{M}_n$ by chemically quantifying the number of chemically-detectable functional end groups present per unit mass of polymer sample — applicable when the chain-end groups are known, distinctive, and quantifiable (e.g. by titration, spectroscopy).

**Procedure (example: polyester with terminal –COOH groups):**
1. A known mass ($w$ grams) of the polymer is dissolved in a suitable solvent.
2. The terminal carboxylic acid end groups are titrated against a standard base (e.g. KOH) using a suitable indicator, giving moles of –COOH end groups present.
3. Assuming (for a linear chain with one –COOH end per molecule, or a known number of end groups per chain, $f$), the number of moles of polymer molecules = (moles of end groups) / $f$.
4. $$\overline{M}_n = \frac{w\ (\text{grams of sample})}{\text{moles of polymer molecules}}$$

**Limitation:** This method assumes precise knowledge of the number of end groups per chain and becomes inaccurate at very high molecular weight (end-group concentration becomes too low to titrate accurately), so it is best suited to low-to-moderate MW polymers.

---

### Part B

#### Question 5 — *[2+3+4+3 = 12]*

##### (a) What is Bio-polymer? Give some examples of Bio-polymer. *(2 marks)*
**Answer** — *(as before)*.

##### (b) Mention different steps of de-polymerization. *(3 marks)*

**Answer:**
1. **Heating/activation** — the polymer is heated (or treated with a chemical reagent/catalyst) to the point where bond scission becomes favourable (e.g., above its "ceiling temperature" for unzipping-type depolymerization).
2. **Initiation of chain scission** — bond cleavage begins, typically at the chain end (unzipping) or at a weak link, generating a reactive chain-end species (radical/ion).
3. **Sequential/propagative depropagation** — monomer units are released one at a time (unzipping) or the chain undergoes progressive fragmentation (random scission then further breakdown) until the desired degree of monomer recovery is reached.
4. **Monomer recovery** — the released monomer (often volatile) is condensed/collected and purified (e.g. by distillation) for reuse in fresh polymerization.

##### (c) Differentiate between Bio-polymer and synthetic polymer. *(4 marks)*
**Answer** — *(table given at 2019 Q8(b))*.

##### (d) Write down the application of de-polymerization. *(3 marks)*
**Answer** — *(see 2023 Q8(c))*.

---

#### Question 6 — *[1.5+2.5+4+4 = 12]*

##### (a) State the polymer degradation. *(1.5 marks)*
**Answer** — *(as in 2023 Q2(a))*: deleterious change (chain scission/cross-linking) in a polymer due to heat, light, oxygen, chemicals, mechanical stress, or radiation, degrading molecular weight and properties.

##### (b) When and why can polymer suffer degradation? *(2.5 marks)*
**Answer:** A polymer can suffer degradation (i) during **processing/fabrication**, when high temperature and mechanical shear (extrusion, moulding) supply enough energy to rupture chain bonds, especially in the presence of atmospheric oxygen; and (ii) during **service/daily use**, from prolonged exposure to sunlight (UV), atmospheric oxygen, moisture, mechanical fatigue, and chemical agents in the environment. Degradation occurs because these external energy/reactive sources exceed the bond-dissociation energy or catalyze chain-breaking reactions in the polymer backbone or substituent groups.

##### (c) What is meant by antioxidant? Give three examples with chemical structure. *(4 marks)*
**Answer** — *(as in 2021 Q6(c), three of the four examples given there)*: hindered phenols (e.g. BHT), hindered amines (HALS), phosphite/thioester secondary antioxidants (hydroperoxide decomposers).

##### (d) Discuss about random and chain end degradation. *(4 marks)*
**Answer** — *(as in 2023 Q2(b) / 2022 Q5(b), with schematic)*.

---

#### Question 7 — *[4+3+4+1 = 12]*

##### (a) What is crystanility and degree of crystanility. *(4 marks)*
**Answer** — *(as in 2019 Q5(a))*.

##### (b) Show the relation between Tg and Tm. *(3 marks)*
**Answer** — *(as in 2020 Q6(b))*: $T_g/T_m \approx 0.5$–$0.66$ (K basis, depending on symmetry of the repeat unit).

##### (c) What are the factors that influenced the Tg. *(4 marks)*
**Answer** — *(as in 2020 Q6(c))*: chain flexibility, intermolecular forces, molecular weight, cross-linking, bulky/rigid side groups, plasticizer content, tacticity.

##### (d) Mention the Tg and Tm value of Nylon 6.6. *(1 mark)*
**Answer:** $T_g \approx 50$–$60\,^\circ C$; $T_m \approx 265\,^\circ C$.

---

#### Question 8 — *[2+4+6 = 12]*

##### (a) Define Liquid crystaline polymer and polymer recycling. *(2 marks)*
**Answer** — *(as in 2023 Q8(d))*.

##### (b) State the electrical properties of polymers. *(4 marks)*

**Answer**

Most conventional polymers (PE, PVC, PS, PP, nylon, PET) are **electrical insulators**, due to the absence of free/mobile charge carriers (all valence electrons are tied up in covalent σ-bonds; no delocalized π-electron network in typical saturated backbones):
- **High volume/surface resistivity** — used extensively for wire/cable insulation, electrical housings.
- **Low dielectric constant and low dielectric loss** — useful in capacitors and high-frequency insulation applications.
- **High dielectric strength** — able to withstand high voltage gradients without breakdown.
- Some specialty polymers with conjugated π-electron backbones (e.g. polyacetylene, polyaniline, polypyrrole), especially when doped, can become **electrically conductive** ("conducting polymers") — an exception to the general insulating behaviour.
- Polymers can also exhibit **piezoelectric** (e.g. PVDF) or antistatic behaviour when specially formulated.

##### (c) Write short notes on (i) Nylon 6.6 (ii) PET. *(6 marks)*
**Answer** — *(full notes given at 2020 Q8(b))*.

---

## 2017

### Part A

#### Question 1 — *[4+4+4 = 12]*

##### (a) Define: Polymer, Monomer, Oligomer and Degree of polymerization. *(4 marks)*

**Answer**
- **Polymer:** A large macromolecule built up from many repeating structural units (monomers) joined together by covalent bonds.
- **Monomer:** The small reactive molecule that is the basic building block of the polymer.
- **Oligomer:** A molecule composed of a small number of repeat units (roughly 2–20), intermediate between monomer and high polymer.
- **Degree of polymerization (DP):** The number of repeating (monomer) units present in one polymer chain; $DP = M_{polymer}/M_{repeat\ unit}$.

##### (b) Classify the polymer on the basis of monomer present with examples. *(4 marks)*

**Answer**
- **Homopolymer** — built from a single type of monomer, e.g. polyethylene $[-CH_2-CH_2-]_n$ from ethylene alone.
- **Copolymer** — built from two or more different monomers, further classified as:
  - **Random copolymer** — e.g. styrene–butadiene rubber (SBR) with random sequence.
  - **Alternating copolymer** — e.g. a strictly alternating styrene–maleic anhydride copolymer.
  - **Block copolymer** — e.g. styrene–butadiene–styrene (SBS) thermoplastic elastomer.
  - **Graft copolymer** — e.g. ABS (acrylonitrile-butadiene-styrene, with styrene/acrylonitrile grafted onto polybutadiene backbone).

##### (c) Differentiate between step polymerization and chain polymerization. *(4 marks)*
**Answer** — *(table given at 2022 Q3(a))*.

---

#### Question 2 — *[4+4+4 = 12]*

##### (a) Define: Retarder, Inhibitor and Polypropylene. *(4 marks)*

**Answer**
- **Retarder:** A substance that slows down (but does not completely stop) the rate of polymerization, without fully preventing chain growth — it partially scavenges radicals, reducing polymerization rate.
- **Inhibitor:** A substance that completely stops polymerization by rapidly and totally consuming initiating/propagating radicals (until the inhibitor itself is fully consumed), after which polymerization resumes; used to stabilize monomers during storage.
- **Polypropylene (PP):** A thermoplastic addition polymer of propylene ($CH_2=CH-CH_3$), repeat unit $[-CH_2-CH(CH_3)-]_n$, typically produced by Ziegler–Natta (coordination) polymerization in its stereoregular (isotactic) form, giving high crystallinity, good strength, and chemical resistance.

##### (b) What is living polymer and dead polymer? *(4 marks)*

**Answer**

**Living polymer:** A polymer chain formed by a chain-growth mechanism (typically anionic or controlled radical polymerization) in which **no true termination or chain-transfer step occurs** — the active centre (e.g. carbanion) remains reactive indefinitely as long as monomer is available, so that on addition of fresh monomer, chain growth resumes. Living polymerization allows precise control of molecular weight (via monomer:initiator ratio), narrow molecular-weight distribution ($Đ$ close to 1), and synthesis of well-defined block copolymers by sequential monomer addition.

**Dead polymer:** A polymer chain that has undergone irreversible termination (by combination, disproportionation, or chain transfer), so that the active centre is destroyed and the chain can no longer grow further even if more monomer is added — the typical outcome of conventional free-radical polymerization.

##### (c) Explain the mechanism of free radical polymerization. *(4 marks)*
**Answer** — *(full mechanism given at 2023 Q1(b))*: initiation, propagation, termination (combination/disproportionation).

---

#### Question 3 — *[4+4+4 = 12]*

##### (a) Mention the types of average molecular weight with equations. *(4 marks)*

**Answer**

| Type | Equation | Weighting basis |
|---|---|---|
| Number-average, $\overline{M}_n$ | $\overline{M}_n=\dfrac{\sum N_iM_i}{\sum N_i}$ | Number of molecules |
| Weight-average, $\overline{M}_w$ | $\overline{M}_w=\dfrac{\sum N_iM_i^2}{\sum N_iM_i}$ | Mass of molecules |
| Z-average, $\overline{M}_z$ | $\overline{M}_z=\dfrac{\sum N_iM_i^3}{\sum N_iM_i^2}$ | $M^2$ (further biased toward largest molecules) |
| Viscosity-average, $\overline{M}_v$ | $\overline{M}_v=\left(\dfrac{\sum N_iM_i^{1+a}}{\sum N_iM_i}\right)^{1/a}$ | Intrinsic-viscosity-based (Mark–Houwink exponent $a$) |

##### (b) Prove that $\overline{M}_w = \dfrac{\sum m_i^2n_i}{\sum m_in_i}$; where $m_i$ is the molecular weight of each molecule and $n_i$ is the number of each molecule present in the polymer. *(4 marks)*

**Answer**

**Derivation:** Weight-average molecular weight weights each molecular species by its **mass (weight) fraction**, not simply its number fraction.

Total mass of species $i$ $= n_im_i$

Total mass of the whole sample $= \sum n_im_i$

Weight (mass) fraction of species $i$:
$$w_i = \frac{n_im_i}{\sum n_im_i}$$

By definition, the weight-average molecular weight is the mass-fraction-weighted mean of $m_i$:
$$\overline{M}_w = \sum w_i\,m_i = \sum \left(\frac{n_im_i}{\sum n_im_i}\right)m_i = \frac{\sum n_im_i^2}{\sum n_im_i}$$

$$\boxed{\overline{M}_w = \frac{\sum m_i^2n_i}{\sum m_in_i}}$$

This proves the required expression: each molecule's contribution to the average is proportional to its own mass, so heavier molecules are weighted more strongly than in $\overline{M}_n$.

##### (c) Why molecular weight of a polymer is to be controlled? *(4 marks)*

**Answer**
- Molecular weight directly governs **mechanical properties** (tensile strength, toughness, impact resistance) — too low MW gives weak, brittle material; adequate MW is needed for chain entanglement and strength.
- Governs **melt viscosity and processability** — very high MW gives excellent mechanical properties but very high melt viscosity, making processing (extrusion, moulding, spinning) difficult; MW must be tuned to balance processability against final-product performance.
- Affects **solution/melt behaviour**, crystallization rate, and $T_g$/$T_m$ (which typically plateau above a certain MW).
- Determines **fibre spinnability** — MW and its distribution must be appropriate for the specific spinning process (melt/dry/wet spinning) used.
- Uncontrolled (too broad or too high) MW distribution can cause inconsistent product properties and processing difficulties (e.g., gel formation).
Hence, in industrial polymerization, MW is deliberately controlled (via initiator concentration, chain-transfer agents, extent of reaction, monomer stoichiometry) to match the intended application.

---

#### Question 4 — *[4+4+4 = 12]*

##### (a) Briefly describe the co-ordination polymerization with example. *(4 marks)*

**Answer**

**Coordination polymerization:** A chain-growth mechanism in which monomer first **coordinates** (forms a complex) with a transition-metal active site of a catalyst (typically Ziegler–Natta or metallocene catalysts) before being **inserted** into the growing metal–carbon bond — distinct from free-radical, cationic, or anionic mechanisms, since the metal centre directs the stereochemistry of insertion, enabling highly stereoregular polymer production at low pressure.

**Mechanism summary:** vacant coordination site on metal → monomer coordinates (π-complex) → insertion into M–C bond (chain migratory insertion) → vacant site regenerated → cycle repeats.

**Example:** Ziegler–Natta polymerization of propylene using $TiCl_3$/$Al(C_2H_5)_2Cl$ catalyst system to give highly isotactic (stereoregular) polypropylene.

##### (b) Distinguish between mono- and poly-dispersity. *(4 marks)*
**Answer** — *(as in 2021 Q4(a))*.

##### (c) Calculate the $\overline{M}_n$, $\overline{M}_w$ and polydispersity index when there are four entities having molecular weight of 100, 150, 200 and 300 respectively. Also consider the number of each entities are 4, 6, 7 and 8 respectively. *(4 marks)*

**Answer**

**Given:**

| $M_i$ | $N_i$ | $N_iM_i$ | $N_iM_i^2$ |
|---:|---:|---:|---:|
| 100 | 4 | 400 | 40,000 |
| 150 | 6 | 900 | 135,000 |
| 200 | 7 | 1400 | 280,000 |
| 300 | 8 | 2400 | 720,000 |
| **Σ** | **25** | **5100** | **1,175,000** |

**Formula:** $M_n=\dfrac{\sum N_iM_i}{\sum N_i}$, $\quad M_w=\dfrac{\sum N_iM_i^2}{\sum N_iM_i}$, $\quad Đ=M_w/M_n$

**Solution:**
$$M_n = \frac{5100}{25} = 204$$
$$M_w = \frac{1{,}175{,}000}{5100} = 230.4$$
$$Đ = \frac{230.4}{204} = 1.129$$

**Final Answer:**
$$\boxed{M_n = 204\ \text{g/mol}, \quad M_w \approx 230.4\ \text{g/mol}, \quad Đ \approx 1.13}$$

---

### Part B

#### Question 5 — *[4+4+4 = 12]*

##### (a) What do you mean by polymer degradation? What kinds of it? Explain them. *(4 marks)*

**Answer:** *(Definition as before.)* **Kinds:**
- **Thermal degradation** — heat-induced chain scission/cross-linking.
- **Photodegradation** — UV/visible-light-induced bond scission (Norrish reactions), often via free-radical intermediates.
- **Oxidative degradation** — atmospheric $O_2$ attack forming hydroperoxides that decompose autocatalytically.
- **Mechanical (mechano-chemical) degradation** — shear/stress-induced bond rupture during processing.
- **Chemical/hydrolytic degradation** — attack by acids, bases, or moisture on hydrolyzable linkages (ester, amide).
- **Biological degradation** — microbial/enzymatic attack, relevant to biodegradable polymers.

##### (b) Discuss the factors which are influence the degradation of polymer. *(4 marks)*
**Answer** — *(see 2022 Q5(a))*.

##### (c) Explain about photodegradation and photo-stabilizer. *(4 marks)*

**Answer**

**Photodegradation:** Degradation caused by absorption of UV (and sometimes visible) light energy by chromophoric groups in the polymer (carbonyl groups, impurities, catalyst residues), which promotes bond scission via excited-state (Norrish Type I/II) reactions, generating free radicals that propagate further oxidative chain scission — leading to embrittlement, chalking, discoloration, and loss of mechanical properties on outdoor exposure.

**Photostabilizers:** Additives that protect polymers against photodegradation by:
- **UV absorbers** (e.g. benzophenones, benzotriazoles) — absorb harmful UV radiation and dissipate it harmlessly as heat, before it can be absorbed by the polymer's own chromophores.
- **Hindered Amine Light Stabilizers (HALS)** — scavenge free radicals generated during photo-oxidation, regenerating themselves catalytically (very efficient, long-lasting protection).
- **Quenchers** — deactivate excited-state chromophores before they can undergo bond scission.
- **Pigments (e.g. carbon black, $TiO_2$)** — physically screen/absorb UV radiation.

---

#### Question 6 — *[4+2.5+3.5+2 = 12]*

##### (a) Distinguish between thermoplastic and thermosetting polymers. *(4 marks)*
**Answer** — *(table given at 2020 Q1(b))*.

##### (b) Mention Tg and Tm of any 5 polymers. *(2.5 marks)*

**Answer**

| Polymer | $T_g$ (°C) | $T_m$ (°C) |
|---|---:|---:|
| PVC | ~80 | ~212 |
| PET | ~70–80 | ~260 |
| Nylon 6,6 | ~50–60 | ~265 |
| Polypropylene (isotactic) | ~-10 | ~165–175 |
| HDPE | ~-120 | ~130–137 |

##### (c) Draw the graphical representation of Tg and Tm. *(3.5 marks)*

**Answer**

A schematic **specific volume (or modulus) vs. temperature** plot is used to represent $T_g$ and $T_m$:

```text
 Specific
 Volume
   ^                                       ___________ (liquid/melt,
   |                                     _/               steep slope)
   |                                   _/
   |                        _________/
   |                      /  (rubbery/leathery region)
   |         ____________/
   |       _/   (glassy region, gentle slope)
   |_____/
   |____________________________________________________> Temperature
                     Tg                    Tm
   (amorphous polymer: gradual slope-change at Tg only)
   (semicrystalline polymer: slope-change at Tg AND a sharp jump/discontinuity at Tm)
```

- **$T_g$** appears as a change in *slope* (change in thermal expansion coefficient / heat capacity) — a second-order-like transition, no discontinuity in volume itself.
- **$T_m$** appears as a sharp **discontinuity** (step jump) in specific volume — a first-order transition, present only in the crystalline fraction.

##### (d) What is meant by biopolymer? *(2 marks)*
**Answer** — *(as before)*: a polymer synthesized by living organisms (or biodegradable/bio-based polymer), e.g. cellulose, starch, proteins, PHA.

---

#### Question 7 — *[4+4+4 = 12]*

##### (a) What is meant by amorphous and crystalline orientation of a polymer? *(4 marks)*

**Answer:** **Orientation** refers to the preferential alignment of polymer chains (or chain segments/crystallites) along a particular direction, typically induced by mechanical drawing/stretching. **Amorphous orientation** is the alignment of disordered chain segments (in non-crystalline regions) along the draw direction without formation of true crystalline order, still increasing tensile strength along that direction. **Crystalline orientation** is the preferential alignment of the crystallographic axes of crystallites (and hence the chain axes within them) along a common direction (e.g. the fibre axis), which is the primary mechanism by which drawn/spun fibres (e.g. polyester, nylon) achieve their high strength and modulus along the fibre axis.

##### (b) Compare the properties of crystalline and amorphous polymers. *(4 marks)*
**Answer** — *(table given at 2020 Q5(d))*.

##### (c) Explain the effect of crystallinity on the properties of polymers. *(4 marks)*
**Answer** — *(table given at 2023 Q5(b))*.

---

#### Question 8 — *[6+2+2+2 = 12]*

##### (a) Write short notes on: PET and Nylon 6.6. *(6 marks)*
**Answer** — *(full notes given at 2020 Q8(b))*.

##### (b) What is meant by network polymer? Give an example. *(2 marks)*

**Answer:** A network polymer is a polymer whose chains are extensively interconnected by covalent cross-links in three dimensions, forming a single giant interconnected molecule (rather than discrete linear/branched chains) — essentially the structural basis of thermosetting resins and vulcanized rubber. Example: phenol-formaldehyde (Bakelite) resin, or vulcanized natural rubber (cross-linked via sulfur bridges).

##### (c) Why it is important to study polymer science for the textile engineers? *(2 marks)*
**Answer** — *(see 2021 Q3(a))*: nearly all textile fibres, finishes, and many auxiliary chemicals used in textile processing are polymer-based; understanding polymer structure–property relations is essential for fibre selection, processing, dyeing, finishing, and product development in textile engineering.

##### (d) State the functions of polymer additives. *(2 marks)*

**Answer:** Polymer additives are incorporated to modify or protect the base polymer's properties/processability, including:
- **Stabilizers** (antioxidants, heat stabilizers, UV/photostabilizers) — protect against degradation during processing and service.
- **Plasticizers** — increase flexibility and reduce $T_g$ (e.g. in flexible PVC).
- **Fillers/reinforcements** — improve mechanical strength, reduce cost (e.g. glass fibre, calcium carbonate, CNTs).
- **Colorants/pigments** — impart colour/opacity.
- **Flame retardants** — reduce flammability.
- **Lubricants/processing aids** — improve melt flow and mould release during processing.

---

# Repeated Questions and High-Frequency Topics (2017–2023)

| Topic | 2017 | 2018 | 2019 | 2020 | 2021 | 2022 | 2023 | Frequency |
|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|---:|
| Chain-end & random degradation (schematic) | | | | | ✓ | ✓ | ✓ | 3 |
| Polymer degradation — definition/factors/kinds | ✓ | ✓ | | | ✓ | ✓ | ✓ | 5 |
| $M_n$, $M_w$ derivation / equations | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | 7 |
| $M_n$/$M_w$/Đ numerical (given $M_i$, $N_i$) | ✓ | ✓ | ✓ | | | ✓ | ✓ | 5 |
| Monodispersity vs. Polydispersity | ✓ | ✓ | | | ✓ | | ✓ | 4 |
| DP & extent of reaction (Carothers, $DP=1/(1-p)$) | | ✓ | ✓ | ✓ | ✓ | | ✓ | 5 |
| Homopolymer vs. Copolymer | ✓ | ✓ | ✓ | ✓ | | ✓ | ✓ | 6 |
| Classification of copolymers (random/alt./block/graft) | ✓ | | | | ✓ | | | 2 |
| Free-radical polymerization mechanism | ✓ | | | ✓ | | ✓ | ✓ | 4 |
| Cationic polymerization mechanism | | ✓ | | ✓ | ✓ | ✓ | | 4 |
| Ziegler–Natta catalyst / coordination polymerization | ✓ | ✓ | ✓ | | ✓ | | | 4 |
| Step vs. chain polymerization | ✓ | | ✓ | | | ✓ | | 3 |
| Step-growth features / types of polycondensation | | | | ✓ | ✓ | ✓ | ✓ | 4 |
| Crystallinity / degree of crystallinity — definition | | ✓ | ✓ | ✓ | | | ✓ | 4 |
| Crystalline vs. amorphous comparison | ✓ | | ✓ | ✓ | | | | 3 |
| Effect of crystallinity on properties | ✓ | | | | | | ✓ | 2 |
| Teflon crystallinity numerical (density-based $X_c$) | | | | | | ✓ | ✓ | 2 |
| $T_g$ / $T_m$ definitions | ✓ | ✓ | | ✓ | ✓ | ✓ | | 5 |
| $T_g$–$T_m$ relationship | ✓ | ✓ | | ✓ | | | | 3 |
| Factors affecting $T_g$ | ✓ | ✓ | | ✓ | | | | 3 |
| $T_g$/$T_m$ values of named polymers | ✓ | ✓ | | ✓ | | | ✓ | 4 |
| Softening point / Vicat test | | | | | ✓ | ✓ | ✓ | 3 |
| Fibre-forming polymer criteria | | ✓ | ✓ | ✓ | | | ✓ | 4 |
| Biopolymer definition/classification | ✓ | ✓ | ✓ | | ✓ | ✓ | ✓ | 6 |
| Biopolymer vs. synthetic polymer | | ✓ | ✓ | | | | | 2 |
| Depolymerization — definition/applications/steps | | ✓ | ✓ | ✓ | | | ✓ | 4 |
| Polymer recycling | ✓ | ✓ | | ✓ | ✓ | ✓ | ✓ | 6 |
| Liquid crystal polymer definition | ✓ | ✓ | | | | ✓ | ✓ | 4 |
| Nematic vs. smectic LCP comparison | | | ✓ | | ✓ | ✓ | | 3 |
| Nylon 6,6 synthesis / short note | ✓ | ✓ | ✓ | ✓ | ✓ | | | 5 |
| PET short note / structure | ✓ | ✓ | ✓ | ✓ | | | | 4 |
| PVC / PMMA / PE / Polyester structures | | ✓ | | | | ✓ | ✓ | 3 |
| Nylon 6 (A-B type polycondensation) | | | | ✓ | | | ✓ | 2 |
| Antioxidants (definition + examples) | | ✓ | | | ✓ | | | 2 |
| GPC technique | | | ✓ | | | | | 1 |
| End-group analysis (MW determination) | | ✓ | | | | | | 1 |
| DSC / DTA / TGA | | | ✓ | ✓ | | | | 2 |
| Bulk / solution / suspension / emulsion polymerization | | | | | ✓ | ✓ | | 2 |
| Interfacial polymerization | | | ✓ | ✓ | | | | 2 |
| Gas-phase polymerization | | | | ✓ | | | | 1 |
| Purification of raw materials | | | | ✓ | ✓ | | ✓ | 3 |
| LDPE vs. HDPE comparison | ✓ | | ✓ | | | | ✓ | 3 |
| Importance of polymer science in textile engineering | | ✓ | ✓ | ✓ | ✓ | | | 4 |
| Molecular weight numerical (DP → MW of a fibre) | | | | ✓ | ✓ | | | 2 |
| Chain conformation vs. configuration | | | ✓ | | | | | 1 |
| Network polymer / cross-linking | ✓ | | | | | | | 1 |
| Miscible vs. immiscible blends | | | ✓ | | | | | 1 |

**Ranking — most to least frequently asked (top tier):**
1. $M_n$/$M_w$ concepts & derivations (7)
2. Homopolymer vs. copolymer; Polymer recycling; Biopolymer (6 each)
3. Polymer degradation (general); DP & extent of reaction; $M_n$/$M_w$ numericals; Nylon 6,6 (5 each)
4. $T_g$/$T_m$ definitions and values; Free-radical & cationic polymerization mechanisms; Ziegler–Natta; Step-growth types; Depolymerization; Crystallinity definition; Fibre-forming criteria; Liquid crystal polymer; PET; Importance of polymer science in textile engineering (4 each)

---

# Must-Know Derivations

Ranked by frequency of appearance in the paper set.

**1. Carothers equation (appears 5 times):**
$$DP_n=\frac{1}{1-p}$$
*Derivation reference: 2023 Q4(a).*

**2. Number-average molecular weight (appears 7 times, directly or via numericals):**
$$M_n=\frac{\sum N_iM_i}{\sum N_i}$$
*Derivation reference: 2021 Q4(b), 2019 Q4(a).*

**3. Weight-average molecular weight (appears 7 times):**
$$M_w=\frac{\sum N_iM_i^2}{\sum N_iM_i}$$
*Derivation reference: 2017 Q3(b), 2019 Q4(a).*

**4. Volume/mass fraction crystallinity from density (appears 2 times, always as a numerical):**
$$\frac{1}{\rho}=\frac{X_c}{\rho_c}+\frac{1-X_c}{\rho_a}$$
*Derivation reference: 2023 Q4(c).*

**5. Freely-rotating chain end-to-end distance (appears once, but a signature derivation):**
$$\langle R^2\rangle = nl^2\frac{1-\cos\theta}{1+\cos\theta}$$
*Derivation reference: 2019 Q2(c).*

---

# Most Important Reaction Mechanisms

## Free-Radical Polymerization
- **Initiating species:** Radical from initiator decomposition ($I^\bullet$, e.g. from benzoyl peroxide/AIBN)
- **Reaction steps:** Initiation → Propagation → Termination
- **Intermediate/active centre:** Carbon free radical at chain end
- **Termination:** Combination or disproportionation
- **Representative example:** Polymerization of styrene or vinyl chloride

## Cationic Polymerization
- **Initiating species:** Proton or carbocation from a Lewis acid/co-catalyst system (e.g. $BF_3/H_2O$)
- **Reaction steps:** Initiation (carbocation forms on monomer) → Propagation (successive cationic addition) → Termination
- **Intermediate/active centre:** Carbocation at chain end
- **Termination:** Combination with counter-ion, chain transfer, or β-H elimination
- **Representative example:** Polymerization of isobutylene → polyisobutylene

## Coordination (Ziegler–Natta) Polymerization
- **Initiating species:** Transition-metal alkyl active site ($TiCl_3$/$TiCl_4$ + $Al(C_2H_5)_3$)
- **Reaction steps:** Monomer coordination at vacant metal site → migratory insertion into M–C bond → vacant site regenerated → cycle repeats
- **Intermediate/active centre:** Metal–carbon σ-bond with coordinated monomer
- **Termination:** Chain transfer (to monomer/co-catalyst) or β-hydride elimination
- **Representative example:** Isotactic polypropylene, HDPE

## Step (Condensation) Polymerization
- **Initiating species:** None (no true "initiator"; any two functional-group-bearing species can react)
- **Reaction steps:** Stepwise reaction between functional groups (–COOH + –OH, –COOH + –NH₂, etc.), with elimination of a small molecule (commonly $H_2O$)
- **Intermediate/active centre:** N/A (not a chain-carrier mechanism; each step is a discrete, largely independent condensation reaction)
- **Termination:** N/A (reaction simply proceeds until functional groups are exhausted or equilibrium/kinetic limit reached)
- **Representative example:** Nylon 6,6 (diamine + diacid), PET (diacid + diol)

---
# Polymer Science & Engineering Formula Sheet

## Molecular Weight
$$M_n=\frac{\sum N_iM_i}{\sum N_i} \qquad M_w=\frac{\sum N_iM_i^2}{\sum N_iM_i} \qquad M_z=\frac{\sum N_iM_i^3}{\sum N_iM_i^2} \qquad Đ=\frac{M_w}{M_n}$$
$N_i$ = number of molecules of weight $M_i$; $Đ \ge 1$ always ($Đ=1$ only for a perfectly monodisperse sample).

## Degree of Polymerization
$$DP=\frac{M_{polymer}}{M_{repeat\ unit}} \qquad\qquad DP_n=\frac{1}{1-p}\ \text{(Carothers, balanced stoichiometry)}$$
$p$ = extent of reaction (fraction of functional groups reacted).

## Step-Growth Polymerization (stoichiometric imbalance)
$$DP_n = \frac{1+r}{1+r-2rp}$$
$r$ = ratio of the two functional-group types present (or of monofunctional stopper accounted for), $r \le 1$.

## Crystallinity
$$\frac{1}{\rho}=\frac{X_c}{\rho_c}+\frac{1-X_c}{\rho_a}$$
$\rho$ = observed (bulk) density; $\rho_c$ = density of fully crystalline polymer; $\rho_a$ = density of fully amorphous polymer; $X_c$ = crystalline volume fraction.

## Thermal Properties
$$T_g \approx (0.5\ \text{to}\ 0.66)\times T_m\ \text{(absolute/Kelvin temperatures)}$$

## Polymerization Kinetics (chain-growth, general form)
$$R_p = k_p[M]\left(\frac{R_i}{2k_t}\right)^{1/2}$$
$R_p$ = rate of propagation; $[M]$ = monomer concentration; $R_i$ = rate of initiation; $k_p, k_t$ = propagation and termination rate constants (steady-state approximation).

## Degradation / Chain Statistics
$$\langle R^2\rangle = nl^2\left(\frac{1-\cos\theta}{1+\cos\theta}\right)\ \text{(freely-rotating chain, end-to-end distance)}$$

## Characterization
$$\overline{M}_n = \frac{w\,(\text{sample mass})}{\text{moles of end groups}/f}\ \text{(end-group analysis; } f = \text{end groups per chain)}$$

---

# Polymer Structure Sheet — Quick Reference

| Polymer | Monomer | Repeat Unit | Polymerization Type | Important Use |
|---|---|---|---|---|
| PVC | Vinyl chloride ($CH_2=CHCl$) | $[-CH_2-CHCl-]_n$ | Free-radical (chain) | Pipes, cables, flooring |
| PMMA | Methyl methacrylate | $[-CH_2-C(CH_3)(COOCH_3)-]_n$ | Free-radical (chain) | Acrylic sheet, lenses |
| Nylon 6 | Caprolactam / ε-aminocaproic acid (A–B type) | $[-NH-(CH_2)_5-CO-]_n$ | Step / ring-opening | Textile fibre, engineering plastic |
| Nylon 6,6 | Hexamethylenediamine + adipic acid | $[-NH-(CH_2)_6-NH-CO-(CH_2)_4-CO-]_n$ | Step (condensation) | Fibre, tyre cord |
| Nylon 6,10 | Hexamethylenediamine + sebacoyl chloride | $[-NH-(CH_2)_6-NH-CO-(CH_2)_8-CO-]_n$ | Step (interfacial) | Bristles, filaments |
| PET (Polyester) | Terephthalic acid + ethylene glycol | $[-OC-C_6H_4-CO-O-CH_2CH_2-O-]_n$ | Step (condensation) | Polyester fibre, bottles |
| PAN | Acrylonitrile ($CH_2=CH-CN$) | $[-CH_2-CH(CN)-]_n$ | Free-radical (chain) | Acrylic fibre, carbon-fibre precursor |
| LDPE | Ethylene | $[-CH_2-CH_2-]_n$ (branched) | Free-radical, high pressure | Film, bags |
| HDPE | Ethylene | $[-CH_2-CH_2-]_n$ (linear) | Coordination (Ziegler–Natta) | Bottles, pipes |
| PP | Propylene | $[-CH_2-CH(CH_3)-]_n$ | Coordination (Ziegler–Natta) | Packaging, fibres, ropes |
| Polystyrene | Styrene | $[-CH_2-CH(C_6H_5)-]_n$ | Free-radical (chain) | Packaging, insulation |

---

# Last-Minute Exam Revision

## Highest-Priority Topics (by frequency)
1. $M_n$, $M_w$, Đ — definitions, derivations, and numericals
2. Homopolymer/copolymer, biopolymer, and polymer recycling
3. Polymer degradation (kinds, factors, chain-end vs. random)
4. Carothers relation ($DP_n = 1/(1-p)$) and step-growth features
5. $T_g$/$T_m$ definitions, relationship, and values for named polymers
6. Free-radical, cationic, and coordination (Ziegler–Natta) mechanisms
7. Fibre-forming polymer criteria and named-polymer structures (Nylon 6,6, PET, PVC, PE)
8. Crystallinity definitions and the Teflon-type density numerical
9. Liquid crystal polymers (nematic vs. smectic)
10. Depolymerization and its applications

## Definitions to Memorize
Polymer, monomer, oligomer, repeat unit, end group, DP, functionality, tacticity, $T_g$, $T_m$, crystallinity, monodispersity/polydispersity, initiator, inhibitor, retarder, living polymer, network polymer, biopolymer, liquid crystal polymer, theta solvent.

## Derivations to Practice (priority order)
1. $DP_n = 1/(1-p)$ (Carothers)
2. $M_n = \sum N_iM_i/\sum N_i$
3. $M_w = \sum N_iM_i^2/\sum N_iM_i$
4. Volume/mass fraction crystallinity from density
5. Freely-rotating chain end-to-end distance

## Numerical Types to Practice
- $M_n$, $M_w$, Đ from a table of $M_i$, $N_i$ (appears almost every year)
- $MW = DP \times M_{repeat\ unit}$ (for a named fibre — PVC, acrylic, etc.)
- Volume/mass fraction crystallinity from $\rho, \rho_c, \rho_a$ (the recurring Teflon problem)

## Polymer Structures to Memorize
PE, PP, PVC, PMMA, PS, PAN, PET, Nylon 6, Nylon 6,6, Nylon 6,10 — monomer, repeat unit, and polymerization type for each (see Structure Sheet above).

## One-Page Revision Checklist
- [ ] Carothers equation, and modified form for stoichiometric imbalance
- [ ] $M_n$/$M_w$/Đ formulas + worked numerical technique (build the $N_i, M_i, N_iM_i, N_iM_i^2$ table)
- [ ] Free-radical, cationic, coordination mechanisms — initiation/propagation/termination for each
- [ ] Step- vs. chain-growth comparison table
- [ ] Chain-end vs. random degradation — definitions + schematic
- [ ] Factors causing degradation (physical + chemical) and antioxidant types
- [ ] $T_g$ vs. $T_m$ — definitions, relationship, typical values, factors affecting each
- [ ] Crystallinity — definition, effect on properties, density-based numerical
- [ ] Fibre-forming polymer criteria
- [ ] Nylon 6,6 / Nylon 6,10 / PET synthesis routes (condensation vs. interfacial)
- [ ] Biopolymer classification + recycling/depolymerization concepts
- [ ] Nematic vs. smectic liquid crystal polymer comparison
- [ ] Structures of PE, PVC, PMMA, PAN, PET, Nylon 6, Nylon 6,6

---
*End of complete solved question bank, 2017–2023.*
