# Comprehensive Guide to Periodicity of Elements

## Table of Contents
1. [Historical Development](#historical-development)
2. [Fundamental Laws and Principles](#fundamental-laws-and-principles)
3. [Quantum Mechanical Foundation](#quantum-mechanical-foundation)
4. [Electronic Configuration](#electronic-configuration)
5. [Periodic Trends in Detail](#periodic-trends-in-detail)
6. [Advanced Concepts](#advanced-concepts)

---

## Historical Development

### Mendeleev's Periodic Law
Dmitri Mendeleev (1869) organized elements based on increasing atomic mass and observed that **physical and chemical properties repeat periodically**. He left gaps for undiscovered elements and even predicted their properties.

**Original Statement:** "The properties of elements are a periodic function of their atomic masses."

### Modern Periodic Law
After Henry Moseley's work on atomic numbers (1913), the law was revised:

**Modern Statement:** "The properties of elements are a periodic function of their atomic numbers (number of protons)."

This resolved anomalies like the positions of Cobalt-Nickel and Tellurium-Iodine pairs.

---

## Fundamental Laws and Principles

### 1. Pauli Exclusion Principle (1925)

**Statement:** No two electrons in an atom can have the same set of all four quantum numbers.

**Quantum Numbers:**
- **Principal quantum number (n):** Energy level (1, 2, 3, ...)
- **Azimuthal quantum number (l):** Subshell shape (0 to n-1)
  - l = 0 → s orbital (spherical)
  - l = 1 → p orbital (dumbbell)
  - l = 2 → d orbital (complex)
  - l = 3 → f orbital (very complex)
- **Magnetic quantum number (m_l):** Orbital orientation (-l to +l)
- **Spin quantum number (m_s):** Electron spin (+½ or -½)

**Consequence:** Each orbital can hold maximum 2 electrons with opposite spins (↑↓).

**Maximum electrons per subshell:**
- s: 2 electrons (1 orbital × 2)
- p: 6 electrons (3 orbitals × 2)
- d: 10 electrons (5 orbitals × 2)
- f: 14 electrons (7 orbitals × 2)

### 2. Aufbau Principle

**Statement:** Electrons fill orbitals starting from the lowest energy level to higher energy levels.

**Filling Order (n + l rule):**
The orbital with lower (n + l) value fills first. If two orbitals have the same (n + l), the one with lower n fills first.

**Energy Order:**
```
1s < 2s < 2p < 3s < 3p < 4s < 3d < 4p < 5s < 4d < 5p < 6s < 4f < 5d < 6p < 7s < 5f < 6d < 7p
```

**Mnemonic Diagram:**
```
1s
2s 2p
3s 3p 3d
4s 4p 4d 4f
5s 5p 5d 5f
6s 6p 6d
7s 7p
```
(Fill diagonally from top-right to bottom-left)

### 3. Hund's Rule of Maximum Multiplicity

**Statement:** Electrons occupy degenerate orbitals (orbitals of the same energy) singly with parallel spins before pairing begins.

**Reason:** 
- Electrons repel each other (electron-electron repulsion)
- Parallel spins in different orbitals minimize repulsion
- Provides maximum stability

**Example - Nitrogen (7 electrons):**
- Configuration: 1s² 2s² 2p³
- 2p orbitals: ↑ ↑ ↑ (one electron in each p orbital)
- NOT: ↑↓ ↑ _ (this violates Hund's rule)

### 4. Heisenberg Uncertainty Principle (1927)

**Statement:** It is impossible to simultaneously determine both the exact position and exact momentum of an electron.

**Mathematical Expression:**
$$\Delta x \cdot \Delta p \geq \frac{h}{4\pi}$$

Where:
- Δx = uncertainty in position
- Δp = uncertainty in momentum
- h = Planck's constant (6.626 × 10⁻³⁴ J·s)

**Implication:** We can only describe the **probability** of finding an electron in a region (orbital), not its exact path.

---

## Quantum Mechanical Foundation

### Wave-Particle Duality
Electrons exhibit both particle and wave properties. The wave nature is described by the **Schrödinger wave equation**:

$$\hat{H}\psi = E\psi$$

Where:
- $\hat{H}$ = Hamiltonian operator (total energy)
- ψ = wave function (describes electron probability)
- E = energy eigenvalue

### Atomic Orbitals
Solutions to the Schrödinger equation give **atomic orbitals** - regions where probability of finding an electron is high (>90%).

**Orbital Shapes:**
- **s orbitals:** Spherical (no directional preference)
- **p orbitals:** Dumbbell-shaped (px, py, pz along axes)
- **d orbitals:** Complex four-lobed shapes (5 types)
- **f orbitals:** Very complex multi-lobed shapes (7 types)

---

## Electronic Configuration

### Notation System
**Example: Iron (Fe, Z=26)**
- Full: 1s² 2s² 2p⁶ 3s² 3p⁶ 4s² 3d⁶
- Noble gas: [Ar] 4s² 3d⁶
- Orbital diagram: Shows individual electron boxes with arrows

### Special Cases and Exceptions

#### 1. **Half-filled and Fully-filled Stability**
Half-filled (d⁵, f⁷) and fully-filled (d¹⁰, f¹⁴) configurations are extra stable due to:
- Exchange energy (parallel spins)
- Symmetrical charge distribution

**Examples:**
- **Chromium (Cr, Z=24):** Expected [Ar] 4s² 3d⁴ → Actual [Ar] 4s¹ 3d⁵ (half-filled d)
- **Copper (Cu, Z=29):** Expected [Ar] 4s² 3d⁹ → Actual [Ar] 4s¹ 3d¹⁰ (fully-filled d)

#### 2. **Transition Metal Ions**
When transition metals form cations, **4s electrons are removed first** (even though 4s fills before 3d).

**Example - Iron:**
- Fe: [Ar] 4s² 3d⁶
- Fe²⁺: [Ar] 3d⁶ (lost two 4s electrons)
- Fe³⁺: [Ar] 3d⁵ (lost two 4s + one 3d)

---

## Periodic Trends in Detail

### 1. Atomic Radius (Atomic Size)

**Definition:** Distance from the nucleus to the outermost electron shell.

**Types:**
- **Covalent radius:** Half the distance between nuclei of two bonded identical atoms
- **Van der Waals radius:** Half the distance between nuclei of two non-bonded atoms
- **Metallic radius:** Half the distance between adjacent nuclei in metallic crystal

#### Trend Across a Period (Left → Right)
**DECREASES**

**Reasons:**
1. **Increasing nuclear charge (Z):** More protons pull electrons closer
2. **Same number of shells:** Electrons added to same energy level
3. **Increasing effective nuclear charge (Z_eff):**
   $$Z_{eff} = Z - S$$
   Where S = shielding constant (screening by inner electrons)

**Example (Period 2):**
- Li (152 pm) > Be (112 pm) > B (88 pm) > C (77 pm) > N (75 pm) > O (73 pm) > F (71 pm)

#### Trend Down a Group (Top → Bottom)
**INCREASES**

**Reasons:**
1. **Additional electron shells:** Each period adds a new shell
2. **Shielding effect:** Inner electrons shield outer electrons from nuclear pull
3. **Distance from nucleus increases:** Outweighs the increased nuclear charge

**Example (Group 1):**
- Li (152 pm) < Na (186 pm) < K (227 pm) < Rb (248 pm) < Cs (265 pm)

---

### 2. Ionization Energy (IE)

**Definition:** Minimum energy required to remove the most loosely bound electron from an isolated gaseous atom.

**Equation:**
$$X(g) \rightarrow X^+(g) + e^- \quad \Delta H = IE_1$$

**Multiple Ionization Energies:**
- IE₁: First electron removal (always lowest)
- IE₂: Second electron removal (always > IE₁)
- IE₃: Third electron removal, etc.

**Pattern:** IE₁ < IE₂ < IE₃ ... (each successive ionization requires more energy)

#### Trend Across a Period (Left → Right)
**INCREASES**

**Reasons:**
1. **Decreasing atomic radius:** Electrons held more tightly
2. **Increasing effective nuclear charge:** Stronger attraction to nucleus
3. **Same shielding:** Electrons in same shell don't shield each other effectively

**Exceptions:**
- **Group 13 (B, Al, Ga):** Slight dip because p¹ electron is easier to remove than s²
- **Group 16 (O, S, Se):** Slight dip because of electron-electron repulsion in p⁴ (paired electron in p orbital)

**Example (Period 3):**
- Na (496 kJ/mol) < Mg (738) < Al (578) < Si (786) < P (1012) < S (1000) < Cl (1251) < Ar (1521)

#### Trend Down a Group (Top → Bottom)
**DECREASES**

**Reasons:**
1. **Increasing atomic radius:** Outer electrons farther from nucleus
2. **Increased shielding:** More inner electron shells
3. **Weaker nuclear attraction:** Distance effect dominates

**Example (Group 1):**
- Li (520 kJ/mol) > Na (496) > K (419) > Rb (403) > Cs (376)

---

### 3. Electron Affinity (EA)

**Definition:** Energy change when an electron is added to a neutral gaseous atom.

**Equation:**
$$X(g) + e^- \rightarrow X^-(g) \quad \Delta H = EA$$

**Sign Convention:**
- **Negative EA:** Energy released (exothermic) - favorable
- **Positive EA:** Energy required (endothermic) - unfavorable

**Most elements have negative EA** (they attract electrons), but noble gases have positive EA.

#### Trend Across a Period (Left → Right)
**BECOMES MORE NEGATIVE (Increases in magnitude)**

**Reasons:**
1. **Decreasing atomic radius:** Incoming electron experiences stronger nuclear attraction
2. **Increasing effective nuclear charge:** Greater pull on added electron
3. **Approaching noble gas configuration:** Energetically favorable

**Exception - Noble Gases (Group 18):**
- Stable electron configuration (ns² np⁶)
- Adding electron requires energy (positive EA)
- Very unfavorable process

**Exception - Group 15 (N, P, As):**
- Half-filled p³ configuration is stable
- Adding electron causes repulsion
- Lower EA than expected

**Example (Period 2):**
- Li (-60 kJ/mol) < B (-27) < C (-122) < N (~0) < O (-141) < F (-328) [Most negative]

#### Trend Down a Group (Top → Bottom)
**BECOMES LESS NEGATIVE (Generally decreases)**

**Reasons:**
1. **Increasing atomic radius:** Added electron farther from nucleus
2. **Increased shielding:** Weaker effective nuclear charge
3. **Less attraction:** Distance reduces nuclear pull

**Important Exception:**
- **Period 2 elements have lower EA than Period 3** in some groups
- Reason: Small atomic size causes greater electron-electron repulsion
- Example: F (-328 kJ/mol) vs Cl (-349 kJ/mol) - Cl has higher EA!

---

### 4. Electronegativity (EN)

**Definition:** The tendency of an atom to attract shared electrons in a chemical bond.

**Pauling Scale:** Most common scale (0 to 4.0)
- Fluorine: 4.0 (most electronegative)
- Cesium/Francium: 0.7 (least electronegative)

**Other Scales:**
- Mulliken scale
- Allred-Rochow scale

#### Trend Across a Period (Left → Right)
**INCREASES**

**Reasons:**
1. Smaller atomic radius
2. Higher effective nuclear charge
3. Greater attraction for bonding electrons

#### Trend Down a Group (Top → Bottom)
**DECREASES**

**Reasons:**
1. Larger atomic radius
2. Increased shielding
3. Weaker attraction for bonding electrons

**Most Electronegative Elements:**
F > O > N > Cl (top-right of periodic table)

**Least Electronegative Elements:**
Cs, Fr (bottom-left of periodic table)

---

### 5. Metallic Character

**Definition:** Tendency of an element to lose electrons and form positive ions (cations).

#### Trend Across a Period (Left → Right)
**DECREASES** (Metals → Metalloids → Nonmetals)

#### Trend Down a Group (Top → Bottom)
**INCREASES**

**Reason:** Lower ionization energy makes it easier to lose electrons.

---

## Advanced Concepts

### Effective Nuclear Charge (Z_eff)

**Slater's Rules** for calculating shielding constant (S):

1. Write electronic configuration in groups: (1s) (2s,2p) (3s,3p) (3d) (4s,4p) (4d) (4f) ...
2. Electrons to the right don't shield
3. Electrons in same group: contribute 0.35 (except 1s: 0.30)
4. Electrons in n-1 shell: contribute 0.85 (or 1.00 for d,f)
5. Electrons in n-2 or lower: contribute 1.00

**Example - Chlorine (17Cl):**
- Configuration: 1s² 2s² 2p⁶ 3s² 3p⁵
- For 3p electron:
  - Same group (3s²3p⁴): 6 × 0.35 = 2.10
  - n-1 shell (2s²2p⁶): 8 × 0.85 = 6.80
  - n-2 shell (1s²): 2 × 1.00 = 2.00
  - S = 10.90
  - Z_eff = 17 - 10.90 = 6.10

### Periodicity in Chemical Properties

#### 1. **Valency**
- Group 1: Valency = 1
- Group 2: Valency = 2
- Group 13: Valency = 3
- Group 14: Valency = 4
- Group 15: Valency = 3 (or 5)
- Group 16: Valency = 2
- Group 17: Valency = 1
- Group 18: Valency = 0

#### 2. **Oxidation States**
- Transition metals show variable oxidation states (multiple d-electron involvement)
- Main group elements typically show oxidation states related to group number

#### 3. **Hydride Formation**
- Ionic hydrides: Group 1, 2 (NaH, CaH₂)
- Covalent hydrides: Groups 13-17 (CH₄, NH₃, H₂O, HF)
- Metallic/interstitial hydrides: Transition metals

#### 4. **Oxide Formation**
- Basic oxides: Metals (Na₂O, CaO)
- Acidic oxides: Nonmetals (CO₂, SO₃)
- Amphoteric oxides: Metalloids, some metals (Al₂O₃, ZnO)

---

## Summary Equations

### Periodic Relationships
$$\text{Atomic Radius} \propto \frac{1}{Z_{eff}}$$

$$\text{Ionization Energy} \propto Z_{eff}$$

$$\text{Electron Affinity} \propto Z_{eff} \text{ (generally)}$$

$$\text{Electronegativity} \propto Z_{eff}$$

---

## Key Takeaways

1. **All periodic trends** are governed by:
   - Atomic radius
   - Effective nuclear charge (Z_eff)
   - Electron shielding

2. **Across a period:** Properties change because Z_eff increases while atomic radius decreases

3. **Down a group:** Properties change because atomic radius and shielding increase

4. **Exceptions exist** due to:
   - Half-filled/fully-filled stability
   - Electron-electron repulsion
   - Relativistic effects (heavy elements)

5. **Understanding electron configuration** is fundamental to predicting all chemical properties

---

## Practice Questions

1. Why does Cl have higher electron affinity than F?
2. Explain why Cr has configuration [Ar]4s¹3d⁵ instead of [Ar]4s²3d⁴
3. Calculate Z_eff for the outermost electron in Na using Slater's rules
4. Why is second ionization energy always greater than first?
5. Arrange in increasing atomic radius: O, S, Se, Te
6. Which has higher ionization energy: N or O? Explain the exception.

---

**Last Updated:** December 2025  
**Course:** CHEM-101  
**Tags:** #chemistry #periodicity #quantum-mechanics #trends