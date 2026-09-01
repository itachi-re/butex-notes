# Polymer Science — CT Exam Quick Notes (SET-A, with Chemical Structures)

---

## Q1(i) Number Average ($M_n$) vs Weight Average ($M_w$) Molecular Weight

**Definition**
- $M_n$: average MW based on **number of molecules** of each size.
- $M_w$: average MW based on **weight fraction**; each molecule's contribution weighted by its own mass.

**Formulas (MUST WRITE)**

$$
M_n=\frac{\sum N_iM_i}{\sum N_i} \qquad M_w=\frac{\sum N_iM_i^2}{\sum N_iM_i}
$$

**Comparison**

| Feature | $M_n$ | $M_w$ |
|---|---|---|
| Sensitive to | low-MW (small) molecules | high-MW (large) molecules |
| Method | Colligative props (osmometry, ebullioscopy, cryoscopy, end-group analysis) | Light scattering, ultracentrifugation |
| Value | Always **lower** (or equal) | Always **higher** (or equal) |
| Statistical order | 1st moment of distribution | 2nd moment of distribution |

**Example**: Polystyrene sample — $M_n=1\times10^5$, $M_w=2\times10^5$ g/mol.

**Repeat unit of polystyrene (for reference in later sections)**

```
Polystyrene (PS) repeat unit:

        C6H5
         |
   –CH2–CH–  (n)

SMILES:  C(C1=CC=CC=C1)C  →  repeat: [CH2-CH(C6H5)]n
```

**★ Final exam line**: *"$M_n$ = arithmetic mean by number; $M_w$ = mean weighted by mass; always $M_w\ge M_n$, equality only for monodisperse polymer."*

---

## Q1(ii) Polydispersity vs Degree of Polydispersity

**Definition**
- **Polydispersity**: qualitative term — the *existence* of a distribution/range of chain lengths (molecular weights) in a polymer sample (opposite of monodisperse).
- **Degree of polydispersity (PDI)**: quantitative **measure** of that spread.

$$
\mathrm{PDI}=\dfrac{M_w}{M_n}
$$

**Key points**
- PDI = 1 → monodisperse (ideal, e.g., proteins).
- PDI > 1 → polydisperse (all synthetic polymers).
- Higher PDI → broader MW distribution → poorer mechanical uniformity.

**Example**: Free-radical addition polymers, PDI ≈ 2–5; living/anionic polymers, PDI ≈ 1.05–1.2.

**★ Final exam line**: *"Polydispersity = qualitative concept of MW spread; PDI = $M_w/M_n$ = its numerical measure."*

---

## Q1(iii) Numerical: $M_n$, $M_w$, $M_v$, $M_z$, PDI

**Given**: $M_i$ = 10, 20, 30  |  $N_i$ = 6, 4, 2

**Step 1 — Tabulate**

| $M_i$ | $N_i$ | $N_iM_i$ | $N_iM_i^2$ | $N_iM_i^3$ |
|---|---|---|---|---|
| 10 | 6 | 60 | 600 | 6,000 |
| 20 | 4 | 80 | 1,600 | 32,000 |
| 30 | 2 | 60 | 1,800 | 54,000 |
| **Σ** | **12** | **200** | **4,000** | **92,000** |

**Step 2 — Compute**

$$
M_n=\frac{\sum N_iM_i}{\sum N_i}=\frac{200}{12}=16.67
$$

$$
M_w=\frac{\sum N_iM_i^2}{\sum N_iM_i}=\frac{4000}{200}=20
$$

$$
M_z=\frac{\sum N_iM_i^3}{\sum N_iM_i^2}=\frac{92000}{4000}=23
$$

$$
\mathrm{PDI}=\frac{M_w}{M_n}=\frac{20}{16.67}=1.2
$$

**Step 3 — $M_v$ (viscosity average)**

$$
M_v=\left(\frac{\sum N_iM_i^{a+1}}{\sum N_iM_i}\right)^{1/a}
$$

> ⚠️ **Value of Mark–Houwink exponent $a$ is NOT given in the data → a unique numerical value of $M_v$ CANNOT be calculated.** State this explicitly in exam.
>
> *If forced to illustrate*: assume $a=1$ (theta-solvent condition) → formula reduces to the $M_w$ expression → $M_v = M_w = 20$. **Write this only as a conditional note**, not as the final unconditional answer.

**Step 4 — Prove $M_w\ge M_n$**

$$
M_w-M_n=\frac{\sum N_iM_i^2\cdot\sum N_i-\left(\sum N_iM_i\right)^2}{\left(\sum N_iM_i\right)\left(\sum N_i\right)}
$$

By **Cauchy–Schwarz inequality**:

$$
\left(\sum N_iM_i\right)^2\le\left(\sum N_i\right)\left(\sum N_iM_i^2\right)
$$

⟹ Numerator ≥ 0 ⟹ **$M_w\ge M_n$ always.**
**Equality** holds **only when all $M_i$ are equal** (monodisperse, PDI = 1).

Numerically here: $M_w=20 > M_n=16.67$ ✔ (verified)

**★ Final exam version**

$$
M_n=16.67,\quad M_w=20,\quad M_z=23,\quad \mathrm{PDI}=1.2,\quad M_v=\text{cannot fix without } a
$$

---

## Q2(i) $T_g$ vs $T_m$

**Definition**
- $T_g$: temperature at which **amorphous** region changes from hard/glassy → soft/rubbery.
- $T_m$: temperature at which **crystalline** region melts to a disordered liquid.

| Feature | $T_g$ | $T_m$ |
|---|---|---|
| Order of transition | 2nd order (no latent heat) | 1st order (latent heat absorbed) |
| Applies to | Amorphous polymers/regions | Crystalline polymers |
| Property change | Gradual (Cp, free volume change) | Sharp/discontinuous |
| Detected by | DSC (step change), dilatometry | DSC (sharp endotherm) |

**Diagram (Specific Volume vs Temperature)**

```
Volume
  |                        ___liquid
  |                   ___/
  |              ___/  <-- Tm (sharp, crystalline)
  |         ___/
  |    ___/  <-- Tg (gradual slope change, amorphous)
  |___/
  |___________________________ Temperature
```

**Example**: Atactic PS → $T_g\approx100^\circ C$ (no $T_m$); HDPE → $T_m\approx135^\circ C$.

**Chain structures behind the example**

```
Atactic PS (random phenyl placement → cannot pack → amorphous only):

  ...–CH2–CH(C6H5)–CH2–CH(C6H5)–CH2–CH(C6H5)–...
              ↑ up          ↓ down        ↑ up      (random stereochemistry)

HDPE (linear, unbranched → packs tightly → crystallizes):

  ...–CH2–CH2–CH2–CH2–CH2–CH2–CH2–CH2–...      (SMILES: [CH2]n , low branching)
```

**★ Final line**: *"$T_g$ = amorphous softening (2nd order); $T_m$ = crystalline melting (1st order, sharp)."*

---

## Q2(ii) Amorphous vs Crystalline Polymer

| Feature | Amorphous | Crystalline |
|---|---|---|
| Chain order | Random coil, no long-range order | Regular, ordered packing (folded chains) |
| Optical | Transparent | Translucent/opaque |
| Density | Lower | Higher |
| Transition | Only $T_g$ | $T_g$ (amorphous part) + $T_m$ (crystalline part) |
| Example | Atactic PS, PMMA | HDPE, PTFE, Nylon |

**Diagram**

```
Amorphous:      Crystalline:
  ~~~~~~           ||||||||
  ~~~~~~           ||||||||  (folded lamellae)
  ~~~~~~           ||||||||
(random coils)   (ordered chain packing)
```

**Repeat-unit structures of the named examples**

```
PMMA (atactic, amorphous):
        CH3
         |
   –CH2–C–      side group: –COOCH3 (methyl ester)
         |
        COOCH3
SMILES repeat: [CH2-C(CH3)(C(=O)OCH3)]n

PTFE (crystalline, highly regular):
   –CF2–CF2–CF2–CF2–      (all-fluorine substitution → symmetric, packs well)
SMILES repeat: [CF2-CF2]n

Nylon-6,6 (crystalline via H-bonding between amide groups):
   –NH–(CH2)6–NH–CO–(CH2)4–CO–
                 |
          amide linkage: –C(=O)–NH–   → interchain H-bonds (C=O···H–N) drive crystallinity
```

**★ Final line**: *"Amorphous = random coiled, transparent, only $T_g$; Crystalline = ordered lamellae, higher density, has sharp $T_m$."*

---

## Q2(iii) Degree of Crystallinity vs Crystallisability

**Definition**
- **Degree of crystallinity**: actual **% fraction** of crystalline phase present in a *given sample*.
- **Crystallisability**: the **inherent structural ability/tendency** of a polymer to crystallize (depends on chain regularity/tacticity), regardless of whether it actually has crystallized.

**Formula (density method)**

$$
\%\text{Crystallinity}=\frac{\rho-\rho_a}{\rho_c-\rho_a}\times100
$$

($\rho$ = sample density, $\rho_a$ = amorphous density, $\rho_c$ = crystalline density)

**Key points**
- Crystallisability is a **structural/intrinsic** property (e.g., isotactic PP is crystallisable; atactic PP is not).
- Degree of crystallinity is a **processing-dependent, measurable** quantity (varies with cooling rate).

**Example**: Isotactic PP (high crystallisability) can show 40–70% actual crystallinity depending on processing; atactic PP (~0% crystallisability) stays amorphous regardless of processing.

**Tacticity structures (why isotactic ≠ atactic in crystallisability)**

```
Isotactic PP (all CH3 groups same side → regular, packs → crystallisable):

  ...–CH2–CH(CH3)–CH2–CH(CH3)–CH2–CH(CH3)–...
              ↑             ↑             ↑        (all methyls "up")

Atactic PP (CH3 groups random → irregular → NOT crystallisable):

  ...–CH2–CH(CH3)–CH2–CH(CH3)–CH2–CH(CH3)–...
              ↑             ↓             ↑        (random up/down)

Repeat unit (either tacticity), SMILES: [CH2-CH(CH3)]n
```

**★ Final line**: *"Crystallisability = potential/tendency (structural); Degree of crystallinity = actual % achieved (measurable, process-dependent)."*

---

## Q2(iv) Photo-degradation vs Oxidative Degradation

**Definition**
- **Photo-degradation**: polymer chain breakdown caused by **UV/light absorption**, mainly at chromophoric groups (C=O).
- **Oxidative degradation**: chain breakdown via **autoxidation** — radical chain reaction with atmospheric O₂.

### Mechanism — Photo-degradation (Norrish reactions, mandatory, WITH structures)

**Starting chromophore**: a backbone ketone defect, $R\text{–}CO\text{–}R'$

```
      O
      ‖
  R – C – R'        (carbonyl chromophore, absorbs UV ~280–320 nm, n→π*)
```

**Norrish Type I — α-cleavage → two radicals (chain scission)**

```
      O                         O
      ‖         hν              ‖
  R – C – R'   ------->   R – C •     +    • R'
                          (acyl radical)  (alkyl radical)

SMILES view:
  R-C(=O)-R'  --hv-->  [R-C(=O)]•  +  •R'
```
These radicals can further decompose:
```
  R-C(=O)• --> R• + C≡O↑   (loss of CO, decarbonylation)
```

**Norrish Type II — intramolecular H-transfer via 6-membered cyclic transition state → forms methyl ketone + terminal alkene (no radicals; direct scission)**

```
Starting chain (γ-H available):

  R–C(=O)–CH2–CH2–CH2–R'
       O
       ‖             H
       C   <——————————  (γ-hydrogen migrates to carbonyl O)
      / \             |
     R   CH2–CH2–CH2–R'
          \___________/
           6-membered cyclic TS

Products:

  R–C(=O)–CH3      +      CH2=CH–R'
   (methyl ketone)         (terminal vinyl / new chain end)
```

**Net effect on the polymer backbone (e.g., photo-yellowing of PE with adventitious carbonyl defects)**:
chain is CUT into two shorter fragments at every C=O site → loss of molecular weight → embrittlement, surface cracking.

### Mechanism — Oxidative degradation (autoxidation, mandatory, WITH structures)

```
Initiation:
   R–H  --heat/hv/M(n+) catalyst-->  R•  +  H•
   (C–H bond, usually tertiary or allylic — weakest bond, structure below)

        H
        |
   R–C–H   --[weak tertiary C–H]-->   R–C•   +  H•
        |                              |
        R''                            R''

Propagation:
   R•  +  O=O  --->  R–O–O•                 (peroxy radical, ROO•)

        R–O–O•  +  R–H  --->  R–O–O–H  +  R•     (hydroperoxide, ROOH, + new R•)

Branching (autocatalytic — the dangerous step):
   R–O–O–H  --->  R–O•  +  •O–H            (O–O bond homolysis, heat/UV/metal-assisted)
   RO• and •OH are highly reactive → abstract more H → MORE R• formed → chain branches

Termination:
   R•  +  R•        --->  R–R                        (combination)
   R–O–O•  +  R–O–O•  --->  [ROOOOR] --> ROOR + O2   (Russell mechanism, non-radical products)
```

**Comparison**

| Feature | Photo-degradation | Oxidative degradation |
|---|---|---|
| Trigger | UV light | O₂ (+ heat/light/metal catalysts) |
| Site | Chromophore (C=O) groups | Any weak C–H (tertiary, allylic) |
| Key step | Norrish I / II | Radical chain autoxidation |
| Key intermediate structures | Acyl radical R–CO•, alkyl radical •R | Alkyl radical R•, peroxy radical ROO•, hydroperoxide ROOH |
| Example | Outdoor PE yellowing/embrittlement | Rubber "aging", lubricating oil oxidation |

**★ Final line**: *"Photo-degradation = UV-driven Norrish I/II chain scission at C=O; Oxidative degradation = O₂ radical chain (initiation–propagation–branching–termination) autoxidation."*

---

## Q2(v) Function & Mechanism of Photo-stabilizer and Anti-oxidant

### Anti-oxidant (Chain-breaking, e.g., hindered phenols)

**Function**: interrupts the radical chain of autoxidation by donating H• to peroxy radicals before they can propagate.

**Structure of a typical hindered-phenol antioxidant (BHT-type)**

```
             OH
              |
        _____C_____
       /     |      \
   (CH3)3C   |    C(CH3)3      <- bulky tert-butyl groups flank the –OH
              |
             CH3               (para position)

  ⇒ steric bulk around –OH stabilizes the resulting phenoxy radical
     and blocks it from propagating the chain
```

**Mechanism**

```
        OH                                    O•
         |                                     |
   (bulky ring)   +  R–O–O•   ---->     (bulky ring)   +   R–O–O–H
   (AH, antioxidant)   (peroxy radical)     (A•, resonance-                (ROOH,
                                              stabilized                    stable
                                              phenoxy radical)              hydroperoxide)

  AH  +  ROO•  --->  ROOH  +  A•
```
A• is delocalized over the aromatic ring (resonance) and sterically shielded by the *tert*-butyl groups → **cannot** abstract H from polymer chains → chain is broken, not propagated.

### Photo-stabilizer

**Function**: protects polymer from UV-induced (photo-oxidative) degradation, by two main routes:

| Type | Mechanism |
|---|---|
| **UV absorbers** (e.g., benzophenones, benzotriazoles) | Absorb UV energy → dissipate harmlessly as **heat** (internal conversion) instead of exciting C=O |
| **HALS** (Hindered Amine Light Stabilizers) | Scavenge radicals via a **regenerative nitroxide cycle**: `>NH → >N–O• → >N–OR → >N–O•` (cyclic, so HALS is not consumed — highly efficient, low dose) |

**UV-absorber structures**

```
2-Hydroxybenzophenone (benzophenone-type):

        O
        ‖
   Ar – C – Ar'
        |
   ortho –OH on one ring

  ⇒ intramolecular H-bond (O–H···O=C) forms a 6-membered chelate ring;
     on UV absorption, excited state relaxes via fast proton transfer
     (excited-state intramolecular proton transfer, ESIPT) → heat, no
     bond breaking, reverts to ground state — fully reversible.

Benzotriazole-type:

        N=N
       /    \
   Ar        N–H ··· O    (intramolecular H-bond to adjacent phenolic –OH,
       \    /              same ESIPT heat-dissipation mechanism)
        N

```

**HALS structure and nitroxide cycle**

```
Parent HALS (2,2,6,6-tetramethylpiperidine core):

        CH3  CH3
          \  /
           C
          / \
    H2C        CH2
     |          |
    H2C        CH2
          \  /
           C
          / \
        CH3  CH3
           |
           N–H          <- secondary amine (>NH), gem-dimethyl groups
                            on both α-carbons shield the N from attack

Regenerative cycle:

   >N–H   --[oxidation]-->   >N–O•   --[+ R•]-->   >N–O–R
   (amine)                  (nitroxyl radical,     (alkoxyamine,
                              scavenges R•)          stable adduct)

   >N–O–R  --[+ ROO•]-->  >N–O•  +  [stable product]
   (regenerates nitroxyl radical → cycle repeats, HALS not consumed)
```

**★ Final line**: *"Anti-oxidant: AH + ROO• → ROOH + A• (chain-breaking, H-donor, hindered-phenol structure). Photo-stabilizer: UV-absorbers (benzophenone/benzotriazole, intramolecular H-bond) convert UV→heat via ESIPT; HALS (tetramethylpiperidine) scavenge radicals via regenerable >N–O• nitroxide cycle."*

---

## 🔑 MASTER REVISION SHEET (last 5-min glance)

- $M_n=\Sigma N_iM_i/\Sigma N_i$, $M_w=\Sigma N_iM_i^2/\Sigma N_iM_i$, $M_z=\Sigma N_iM_i^3/\Sigma N_iM_i^2$, PDI $=M_w/M_n$
- Numerical answer: $M_n=16.67$, $M_w=20$, $M_z=23$, PDI $=1.2$; $M_v$ **needs "a"**
- $M_w\ge M_n$ (Cauchy–Schwarz); equality only if monodisperse
- $T_g$ = amorphous, 2nd order; $T_m$ = crystalline, 1st order, sharp
- Crystallisability = potential (structural, tacticity-dependent); Degree of crystallinity = actual % (measurable, density formula)
- Photo-degrad. → Norrish I (α-cleavage, 2 radicals) / Norrish II (cyclic TS, methyl ketone + alkene); Oxidative degrad. → autoxidation: R–H → R• → ROO• → ROOH → branching (RO•, •OH) → termination
- Antioxidant: hindered phenol, AH+ROO•→ROOH+A• (resonance-stabilized A•)
- UV absorber: benzophenone/benzotriazole, intramolecular H-bond, ESIPT → UV converted to heat
- HALS: tetramethylpiperidine core, regenerable nitroxide cycle >NH → >N–O• → >N–OR → >N–O•

---

## 📝 Spoiler-format quick self-check (practice)

<details>
<summary>Q: Why is the alkyl radical in autoxidation initiation preferentially formed at a tertiary C–H rather than a primary C–H?</summary>

Tertiary C–H bonds are weaker (bond dissociation energy lower) because the resulting tertiary radical R–C•(R')(R'') is more stabilized by hyperconjugation/inductive donation from three alkyl groups, compared to a primary radical stabilized by only one.
</details>

<details>
<summary>Q: Why does Norrish Type II NOT produce free radicals, unlike Norrish Type I?</summary>

Norrish II proceeds through a concerted, intramolecular 6-membered cyclic transition state where a γ-hydrogen transfers directly to the carbonyl oxygen while the C(α)–C(β) bond breaks — this is a single concerted step giving two closed-shell molecules (methyl ketone + alkene), not a homolytic bond cleavage into two radical fragments as in Norrish I.
</details>

<details>
<summary>Q: Why are the tert-butyl groups on a hindered-phenol antioxidant essential to its function?</summary>

They sterically shield the phenoxy oxygen after H-donation, preventing the resulting A• radical from abstracting hydrogen atoms from the polymer backbone or propagating further reactions — without this shielding, A• could itself act as a chain-propagating radical.
</details>

<details>
<summary>Q: Why is HALS more efficient (usable at lower dose) than a conventional UV absorber?</summary>

HALS operates through a regenerative catalytic cycle (>NH → >N–O• → >N–OR → >N–O•) so a single HALS molecule can scavenge many radicals over its lifetime, whereas a UV absorber dissipates each absorbed photon individually without being "reused" in the same catalytic sense (though it is also not consumed, it doesn't actively hunt down radicals already formed elsewhere).
</details>
