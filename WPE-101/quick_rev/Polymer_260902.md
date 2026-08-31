# Polymer Science — CT Exam Quick Notes (SET-A)

---

## Q1(i) Number Average ($M_n$) vs Weight Average ($M_w$) Molecular Weight

**Definition**
- $M_n$: average MW based on **number of molecules** of each size.
- $M_w$: average MW based on **weight fraction**; each molecule's contribution weighted by its own mass.

**Formulas (MUST WRITE)**
$$M_n=\frac{\sum N_iM_i}{\sum N_i} \qquad\qquad M_w=\frac{\sum N_iM_i^2}{\sum N_iM_i}$$

**Comparison**

| Feature | $M_n$ | $M_w$ |
|---|---|---|
| Sensitive to | low-MW (small) molecules | high-MW (large) molecules |
| Method | Colligative props (osmometry, ebullioscopy, cryoscopy, end-group analysis) | Light scattering, ultracentrifugation |
| Value | Always **lower** (or equal) | Always **higher** (or equal) |
| Statistical order | 1st moment of distribution | 2nd moment of distribution |

**Example**: Polystyrene sample — $M_n=1\times10^5$, $M_w=2\times10^5$ g/mol.

**★ Final exam line**: *"$M_n$ = arithmetic mean by number; $M_w$ = mean weighted by mass; always $M_w\ge M_n$, equality only for monodisperse polymer."*

---

## Q1(ii) Polydispersity vs Degree of Polydispersity

**Definition**
- **Polydispersity**: qualitative term — the *existence* of a distribution/range of chain lengths (molecular weights) in a polymer sample (opposite of monodisperse).
- **Degree of polydispersity (PDI)**: quantitative **measure** of that spread.

$$\boxed{\mathrm{PDI}=\dfrac{M_w}{M_n}}$$

**Key points**
- PDI = 1 → monodisperse (ideal, e.g., proteins).
- PDI > 1 → polydisperse (all synthetic polymers).
- Higher PDI → broader MW distribution → poorer mechanical uniformity.

**Example**: Free-radical addition polymers, PDI ≈ 2–5; living/anionic polymers, PDI ≈ 1.05–1.2.

**★ Final exam line**: *"Polydispersity = qualitative concept of MW spread; PDI = $M_w/M_n$ = its numerical measure."*

---

## Q1(iii) Numerical: $M_n, M_w, M_v, M_z$, PDI

**Given**: $M_i$ = 10, 20, 30  |  $N_i$ = 6, 4, 2

**Step 1 — Tabulate**

| $M_i$ | $N_i$ | $N_iM_i$ | $N_iM_i^2$ | $N_iM_i^3$ |
|---|---|---|---|---|
| 10 | 6 | 60 | 600 | 6,000 |
| 20 | 4 | 80 | 1,600 | 32,000 |
| 30 | 2 | 60 | 1,800 | 54,000 |
| **Σ** | **12** | **200** | **4,000** | **92,000** |

**Step 2 — Compute**

$$M_n=\frac{\sum N_iM_i}{\sum N_i}=\frac{200}{12}=\mathbf{16.67}$$

$$M_w=\frac{\sum N_iM_i^2}{\sum N_iM_i}=\frac{4000}{200}=\mathbf{20}$$

$$M_z=\frac{\sum N_iM_i^3}{\sum N_iM_i^2}=\frac{92000}{4000}=\mathbf{23}$$

$$\mathrm{PDI}=\frac{M_w}{M_n}=\frac{20}{16.67}=\mathbf{1.2}$$

**Step 3 — $M_v$ (viscosity average)**

$$M_v=\left(\frac{\sum N_iM_i^{a+1}}{\sum N_iM_i}\right)^{1/a}$$

> ⚠️ **Value of Mark–Houwink exponent $a$ is NOT given in the data → a unique numerical value of $M_v$ CANNOT be calculated.** State this explicitly in exam.
>
> *If forced to illustrate*: assume $a=1$ (theta-solvent condition) → formula reduces to the $M_w$ expression → $M_v = M_w = 20$. **Write this only as a conditional note**, not as the final unconditional answer.

**Step 4 — Prove $M_w\ge M_n$**

$$M_w-M_n=\frac{\sum N_iM_i^2\cdot\sum N_i-\left(\sum N_iM_i\right)^2}{\left(\sum N_iM_i\right)\left(\sum N_i\right)}$$

By **Cauchy–Schwarz inequality**: $\left(\sum N_iM_i\right)^2\le\left(\sum N_i\right)\left(\sum N_iM_i^2\right)$

⟹ Numerator ≥ 0 ⟹ **$M_w\ge M_n$ always.**
**Equality** holds **only when all $M_i$ are equal** (monodisperse, PDI = 1).

Numerically here: $M_w=20 > M_n=16.67$ ✔ (verified)

**★ Final exam version**
$$M_n=16.67,\quad M_w=20,\quad M_z=23,\quad \mathrm{PDI}=1.2,\quad M_v=\text{cannot fix without }a$$

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

**★ Final line**: *"Amorphous = random coiled, transparent, only $T_g$; Crystalline = ordered lamellae, higher density, has sharp $T_m$."*

---

## Q2(iii) Degree of Crystallinity vs Crystallisability

**Definition**
- **Degree of crystallinity**: actual **% fraction** of crystalline phase present in a *given sample*.
- **Crystallisability**: the **inherent structural ability/tendency** of a polymer to crystallize (depends on chain regularity/tacticity), regardless of whether it actually has crystallized.

**Formula (density method)**
$$\%\text{Crystallinity}=\frac{\rho-\rho_a}{\rho_c-\rho_a}\times100$$
($\rho$ = sample density, $\rho_a$ = amorphous density, $\rho_c$ = crystalline density)

**Key points**
- Crystallisability is a **structural/intrinsic** property (e.g., isotactic PP is crystallisable; atactic PP is not).
- Degree of crystallinity is a **processing-dependent, measurable** quantity (varies with cooling rate).

**Example**: Isotactic PP (high crystallisability) can show 40–70% actual crystallinity depending on processing; atactic PP (~0% crystallisability) stays amorphous regardless of processing.

**★ Final line**: *"Crystallisability = potential/tendency (structural); Degree of crystallinity = actual % achieved (measurable, process-dependent)."*

---

## Q2(iv) Photo-degradation vs Oxidative Degradation

**Definition**
- **Photo-degradation**: polymer chain breakdown caused by **UV/light absorption**, mainly at chromophoric groups (C=O).
- **Oxidative degradation**: chain breakdown via **autoxidation** — radical chain reaction with atmospheric O₂.

**Mechanism — Photo-degradation (Norrish reactions, mandatory)**
```
Norrish I:   R–CO–R'  --hν-->  R• + R'CO•        (chain scission)

Norrish II:  R–CO–CH2–CH2–R'  --hν-->
             [6-membered cyclic TS] --> R–CO–CH3 + CH2=CH–R'
```

**Mechanism — Oxidative degradation (autoxidation, mandatory)**
```
Initiation:    RH  --heat/hν/M(catalyst)-->  R• + H•
Propagation:   R•  + O2   -->  ROO•
               ROO• + RH  -->  ROOH + R•
Branching:     ROOH  -->  RO• + •OH   (accelerates degradation)
Termination:   R• + R•  -->  R–R
               ROO• + ROO•  -->  inactive products + O2
```

**Comparison**

| Feature | Photo-degradation | Oxidative degradation |
|---|---|---|
| Trigger | UV light | O₂ (+ heat/light/metal catalysts) |
| Site | Chromophore (C=O) groups | Any weak C–H (tertiary, allylic) |
| Key step | Norrish I / II | Radical chain autoxidation |
| Example | Outdoor PE yellowing/embrittlement | Rubber "aging", lubricating oil oxidation |

**★ Final line**: *"Photo-degradation = UV-driven Norrish I/II chain scission at C=O; Oxidative degradation = O₂ radical chain (initiation–propagation–branching–termination) autoxidation."*

---

## Q2(v) Function & Mechanism of Photo-stabilizer and Anti-oxidant

### Anti-oxidant (Chain-breaking, e.g., hindered phenols)
**Function**: interrupts the radical chain of autoxidation by donating H• to peroxy radicals before they can propagate.

**Mechanism**
```
AH (antioxidant) + ROO•  -->  ROOH + A•
A• is resonance-stabilized (bulky hindered-phenoxy radical) → does NOT propagate chain
```

### Photo-stabilizer
**Function**: protects polymer from UV-induced (photo-oxidative) degradation, by two main routes:

| Type | Mechanism |
|---|---|
| **UV absorbers** (e.g., benzophenones, benzotriazoles) | Absorb UV energy → dissipate harmlessly as **heat** (internal conversion) instead of exciting C=O |
| **HALS** (Hindered Amine Light Stabilizers) | Scavenge radicals via a **regenerative nitroxide cycle**: `>NH → >N–O• → >N–OR → >N–O•` (cyclic, so HALS is not consumed — highly efficient, low dose) |

**★ Final line**: *"Anti-oxidant: AH + ROO• → ROOH + A• (chain-breaking, H-donor). Photo-stabilizer: UV-absorbers convert UV→heat; HALS scavenge radicals via regenerable nitroxide cycle."*

---

# 🔑 MASTER REVISION SHEET (last 5-min glance)

- $M_n=\Sigma N_iM_i/\Sigma N_i$, $M_w=\Sigma N_iM_i^2/\Sigma N_iM_i$, $M_z=\Sigma N_iM_i^3/\Sigma N_iM_i^2$, PDI $=M_w/M_n$
- Numerical answer: $M_n=16.67,\ M_w=20,\ M_z=23,\ \mathrm{PDI}=1.2$; $M_v$ **needs "a"**
- $M_w\ge M_n$ (Cauchy–Schwarz); equality only if monodisperse
- $T_g$ = amorphous, 2nd order; $T_m$ = crystalline, 1st order, sharp
- Crystallisability = potential (structural); Degree of crystallinity = actual % (measurable)
- Photo-degrad. → Norrish I/II (UV, C=O); Oxidative degrad. → autoxidation radical chain (O₂)
- Antioxidant: AH+ROO•→ROOH+A• | UV absorber: UV→heat | HALS: regenerable nitroxide radical cycle
