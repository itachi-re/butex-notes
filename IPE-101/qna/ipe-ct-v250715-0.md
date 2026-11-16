# Engineering Materials (IPE-101) — First Class Test 2025
**B.Sc. Textile Engineering, Level-1, Term-2**
**Full Marks: 10 | Time: 30 Minutes**

---

## Q1. Define "Fatigue" and "Creep" — (2 Marks)

### Fatigue

**Fatigue** is the progressive, localized, and permanent structural damage that occurs in a material when it is subjected to **cyclic (repeated or fluctuating) stresses**, even when the maximum applied stress is well **below the material's yield strength** (or ultimate tensile strength). Repeated loading and unloading initiates a microscopic crack — usually at a surface defect, notch, or stress concentration — which then propagates slowly with each stress cycle until the remaining cross-section can no longer bear the load, causing sudden, brittle-like fracture.

**Key characteristics:**
- Occurs under **dynamic/cyclic loading**, not static loading.
- Failure stress is much lower than the static strength of the material.
- Failure develops in three stages: **crack initiation → crack propagation → sudden final fracture**.
- Fracture surface typically shows "beach marks" (striations) and a rough final-rupture zone.
- Depends on number of cycles (N), stress amplitude (σₐ), surface finish, temperature, and presence of stress raisers.

*Example:* A rotating shaft, an aircraft wing, or a bridge component that eventually cracks after millions of load cycles, even though the peak stress never exceeded the yield strength in a single loading event.

### Creep

**Creep** is the **time-dependent, permanent (plastic) deformation** of a material that occurs under a **constant stress (or constant load)**, typically at **elevated temperature** (generally above roughly 0.4 × Tₘ, where Tₘ is the absolute melting temperature of the material). Unlike instantaneous elastic/plastic deformation, creep strain accumulates slowly and continuously over long periods — hours, days, or even years.

**Key characteristics:**
- Requires **sustained stress + high temperature + time**.
- Follows three stages when strain is plotted against time:
  1. **Primary (transient) creep** — decreasing strain rate as the material strain-hardens.
  2. **Secondary (steady-state) creep** — constant, minimum strain rate; the longest stage, most important for design life.
  3. **Tertiary creep** — rapidly increasing strain rate leading to necking and **rupture**.
- Important in components operating at high temperature for long durations, e.g., gas turbine blades, boiler tubes, furnace parts.

| Feature | Fatigue | Creep |
|---|---|---|
| Type of load | Cyclic/fluctuating | Constant (static) |
| Temperature | Usually room temp | Usually elevated (>0.4 Tₘ) |
| Time dependence | Depends on number of cycles | Depends on time under load |
| Failure mechanism | Crack initiation & propagation | Progressive plastic flow → rupture |

---

## Q2. Atomic Packing Factor (APF); Atoms per Unit Cell and APF of FCC — (3 Marks)

### Definition of APF

The **Atomic Packing Factor (APF)** is defined as the **fraction of the total volume of a unit cell that is actually occupied by atoms**, assuming the atoms are rigid, touching spheres.

> **APF = (volume of atoms in the unit cell) / (total volume of the unit cell) = [n × (4/3)πR³] / a³**

where n = number of atoms per unit cell, R = atomic radius, and a = lattice (edge) parameter.

### Number of atoms per unit cell — FCC (Face-Centered Cubic)

An FCC unit cell has atoms at:
- **8 corner positions** → each corner atom is shared among **8** adjacent unit cells → contributes 1/8 each
- **6 face-centered positions** → each face atom is shared between **2** adjacent unit cells → contributes 1/2 each

> **n (FCC) = (8 × 1/8) + (6 × 1/2) = 1 + 3 = 4 atoms/unit cell**

### Relationship between atomic radius (R) and lattice parameter (a)

In FCC, atoms touch along the **face diagonal**. The face diagonal length is a√2, and along this diagonal there are 4 atomic radii (corner atom + full diameter of the face atom + corner atom):

> **4R = a√2  ⟹  a = 2√2 · R**

### Calculating the APF

Volume of the unit cell:

> **a³ = (2√2 R)³ = 16√2 · R³**

Volume occupied by the 4 atoms:

> **V(atoms) = 4 × (4/3)πR³ = (16/3)πR³**

Therefore:

> **APF = [(16/3)πR³] / [16√2 R³] = π / 3√2 = π√2 / 6**

> **APF (FCC) ≈ 0.74 (or 74%)**

**Interpretation:** 74% of the FCC unit cell volume is occupied by atoms (the remaining 26% is empty space). This is the **highest packing efficiency possible for equal-sized spheres** and is shared by both the FCC and HCP crystal structures (both are "close-packed" structures). Common FCC metals include Al, Cu, Ni, Ag, Au, Pb, and γ-iron (austenite).

---

## Q3. Fe–Fe₃C Equilibrium Diagram — (5 Marks)

The **Iron–Iron Carbide (Fe–Fe₃C) diagram** is a **metastable equilibrium diagram** showing the phases present in iron–carbon alloys (steels and cast irons) up to 6.67 wt% carbon (the composition of cementite, Fe₃C), as a function of temperature and composition. It is "metastable" because the true equilibrium phase would be graphite rather than cementite, but Fe₃C forms preferentially under normal cooling rates.

### Diagram

The diagram below plots **Temperature (°C)** on the vertical axis against **wt% Carbon** on the horizontal axis (0 to 6.67%).

<img src="../../assets/fe_fe3c.svg" alt="Fe-Fe3C Equilibrium Diagram" width="700"/>

### Phases present

| Phase | Crystal Structure | Description |
|---|---|---|
| **L (Liquid)** | — | Molten Fe–C solution |
| **δ-ferrite** | BCC | High-temperature phase, stable ~1394–1538°C, max ~0.09% C |
| **γ (Austenite)** | FCC | Stable 727–1493°C, max solubility 2.14% C at 1147°C |
| **α-ferrite** | BCC | Stable below 912°C, max solubility only ~0.02% C at 727°C |
| **Fe₃C (Cementite)** | Orthorhombic | Fixed composition 6.67% C; hard (~800 HV) and brittle intermetallic compound |

### Key invariant reactions

**1. Peritectic reaction — at 1493°C**

> **L (0.53% C) + δ (0.09% C) → γ (0.18% C)**

**2. Eutectic reaction — at 1147°C** (this is the point that gives the diagram its characteristic "double-hump" shape)

> **L (4.3% C) → γ (2.14% C) + Fe₃C (6.67% C)**

The resulting eutectic mixture is called **Ledeburite**.

**3. Eutectoid reaction — at 727°C** (the most important reaction for steel heat treatment)

> **γ (0.8% C) → α (0.02% C) + Fe₃C (6.67% C)**

The resulting eutectoid mixture is called **Pearlite** (alternating lamellae of α-ferrite and cementite).

> *Note: some references quote the eutectoid composition as 0.76–0.77% C rather than 0.8% C — the two figures come from slightly different data sources. This sheet uses 0.8% C for consistency with your course notebook; check which value your instructor expects on the exam.*

### Important boundary lines

- **A₃ line**: γ/(α+γ) boundary — solubility of C in austenite in equilibrium with ferrite; falls from 912°C (0% C) to 727°C (0.8% C).
- **A_cm line**: γ/(γ+Fe₃C) boundary — solubility of C in austenite in equilibrium with cementite; falls from 2.14% C (1147°C) to 0.8% C (727°C).
- **A₁ line**: the eutectoid horizontal line at 727°C — the lower temperature limit of austenite stability.

### Classification of iron–carbon alloys (based on the diagram)

| Category | Carbon range | Microstructure at room temperature |
|---|---|---|
| Commercially pure iron | < 0.008% C | Essentially pure α-ferrite |
| Hypoeutectoid steel | 0.008 – 0.8% C | Proeutectoid ferrite + Pearlite |
| Eutectoid steel | 0.8% C | 100% Pearlite |
| Hypereutectoid steel | 0.8 – 2.14% C | Proeutectoid cementite (network) + Pearlite |
| Hypoeutectic cast iron | 2.14 – 4.3% C | Pro-eutectic austenite (→ pearlite) + Ledeburite |
| Eutectic cast iron | 4.3% C | 100% Ledeburite |
| Hypereutectic cast iron | 4.3 – 6.67% C | Primary Fe₃C + Ledeburite |

**Note:** The boundary at 2.14% C conventionally separates **steels** (< 2.14% C) from **cast irons** (> 2.14% C), because this is the maximum carbon solubility in austenite — above this the alloy cannot be made fully austenitic (single-phase) at any temperature, which affects its hot-working/forgeability.

---
*End of Answer Sheet*
