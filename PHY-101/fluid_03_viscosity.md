---
subject: PHY-101
topic: Viscosity and Fluid Friction
date: 2025-12-16
tags: [physics, fluid-mechanics, viscosity, friction, rheology]
---

# Viscosity and Fluid Friction

## 1. Introduction

Viscosity is one of the most important properties of fluids, representing the internal friction that resists flow. Understanding viscosity is crucial for applications ranging from engine lubrication to blood flow analysis.

## 2. Definition and Physical Concept

### 2.1 What is Viscosity?

**Viscosity** is the property of a fluid that quantifies its resistance to flow or deformation. It represents the **internal friction** between adjacent layers of fluid moving at different velocities.

**Physical Interpretation:**
- Think of it as the "thickness" or "stickiness" of a fluid
- High viscosity → Flows slowly (honey, syrup)
- Low viscosity → Flows easily (water, air)

**Molecular Origin:**
- **In Liquids**: Cohesive forces between molecules
- **In Gases**: Random molecular collisions and momentum transfer

### 2.2 The Viscous Phenomenon

When a fluid flows, different layers move at different speeds, creating:
1. **Velocity gradient** perpendicular to flow direction
2. **Shear stress** between layers
3. **Energy dissipation** as heat

## 3. Mathematical Description

### 3.1 Newton's Law of Viscosity

Consider two parallel plates separated by a fluid layer of thickness **dy**. The bottom plate is stationary, and the top plate moves with velocity **V**, applying force **F** over area **A**.

**Newton's Law of Viscosity:**
$$\tau = \mu \frac{dv}{dy}$$

where:
- **τ** = shear stress (Pa or N/m²)
- **μ** = dynamic viscosity coefficient (Pa·s)
- **dv/dy** = velocity gradient (s⁻¹)

**Alternative Form:**
$$F = \mu A \frac{dv}{dy}$$

**Physical Meaning:**
- Shear stress is proportional to velocity gradient
- μ is the proportionality constant
- Higher μ → Greater resistance to flow

### 3.2 Coefficient of Viscosity (μ)

**Definition:** The coefficient of viscosity is the shear stress required to maintain a unit velocity gradient between two parallel fluid layers of unit area, unit distance apart.

**From Newton's law, when:**
- dv/dy = 1 s⁻¹
- A = 1 m²
- τ = μ (numerically)

Then: μ equals the shear stress numerically.

**Units:**

| System | Unit | Symbol | Relation |
|--------|------|--------|----------|
| SI | Pascal-second | Pa·s or N·s/m² | Base unit |
| CGS | Poise | P | 1 P = 0.1 Pa·s |
| Common | Centipoise | cP | 1 cP = 0.001 Pa·s = 1 mPa·s |

**Dimensional Formula:** [M L⁻¹ T⁻¹]

**Derivation of Dimensions:**
$$[\mu] = \frac{[\tau]}{[dv/dy]} = \frac{[F/A]}{[v/y]} = \frac{MLT^{-2}/L^2}{L/T \cdot 1/L} = \frac{ML^{-1}T^{-2}}{T^{-1}} = ML^{-1}T^{-1}$$

### 3.3 Kinematic Viscosity (ν)

**Definition:** The ratio of dynamic viscosity to density.

$$\nu = \frac{\mu}{\rho}$$

where:
- ν = kinematic viscosity (m²/s)
- μ = dynamic viscosity (Pa·s)
- ρ = density (kg/m³)

**Units:**
- SI: m²/s
- CGS: Stokes (St), where 1 St = 10⁻⁴ m²/s
- Common: Centistokes (cSt), where 1 cSt = 10⁻⁶ m²/s

**Physical Significance:**
- Represents the ratio of viscous to inertial forces
- Important in calculating Reynolds number: Re = vL/ν
- Called "kinematic" because it depends only on motion, not force

**Why Two Types of Viscosity?**
- **Dynamic viscosity (μ)**: Related to force and stress
- **Kinematic viscosity (ν)**: Related to motion and flow rate
- Both are needed for different applications

## 4. Typical Viscosity Values

### 4.1 Dynamic Viscosity (at 20°C)

| Fluid | μ (Pa·s) | μ (cP) |
|-------|----------|--------|
| Air | 1.8 × 10⁻⁵ | 0.018 |
| Water | 1.0 × 10⁻³ | 1.0 |
| Olive Oil | 0.084 | 84 |
| Glycerin | 1.5 | 1,500 |
| Honey | 2-10 | 2,000-10,000 |
| Motor Oil (SAE 30) | 0.29 | 290 |
| Molasses | 5-10 | 5,000-10,000 |
| Pitch (room temp) | 2.3 × 10⁸ | 2.3 × 10¹¹ |

### 4.2 Kinematic Viscosity (at 20°C)

| Fluid | ν (m²/s) | ν (cSt) |
|-------|----------|---------|
| Air | 1.5 × 10⁻⁵ | 15 |
| Water | 1.0 × 10⁻⁶ | 1.0 |
| Gasoline | 4.3 × 10⁻⁷ | 0.43 |
| Mercury | 1.1 × 10⁻⁷ | 0.11 |

## 5. Effect of Temperature on Viscosity

### 5.1 Liquids
**Viscosity DECREASES with increasing temperature**

**Reason:**
- Higher temperature → More kinetic energy
- Molecules move faster and overcome cohesive forces more easily
- Intermolecular forces weaken

**Empirical Relations:**

**Andrade's Equation:**
$$\mu = A e^{B/T}$$

where A and B are constants, T is absolute temperature.

**Example - Water:**
- At 0°C: μ = 1.79 × 10⁻³ Pa·s
- At 20°C: μ = 1.00 × 10⁻³ Pa·s
- At 100°C: μ = 0.28 × 10⁻³ Pa·s

**Viscosity drops by ~85% from 0°C to 100°C!**

### 5.2 Gases
**Viscosity INCREASES with increasing temperature**

**Reason:**
- Higher temperature → More molecular collisions
- Faster random molecular motion
- Greater momentum transfer between layers

**Sutherland's Formula (for gases):**
$$\mu = \mu_0 \frac{T_0 + C}{T + C}\left(\frac{T}{T_0}\right)^{3/2}$$

where:
- μ₀ = reference viscosity at T₀
- C = Sutherland constant (for air: 110.4 K)

**Example - Air:**
- At 0°C (273 K): μ = 1.72 × 10⁻⁵ Pa·s
- At 20°C (293 K): μ = 1.82 × 10⁻⁵ Pa·s
- At 100°C (373 K): μ = 2.17 × 10⁻⁵ Pa·s

**Viscosity increases by ~26% from 0°C to 100°C**

### 5.3 Summary Graph

```
Liquids:     μ high at low T  →  μ low at high T    (↘)
Gases:       μ low at low T   →  μ high at high T   (↗)
```

## 6. Classification of Fluids

### 6.1 Newtonian Fluids

**Definition:** Fluids that obey Newton's law of viscosity (τ ∝ dv/dy).

**Characteristics:**
- Constant viscosity at a given temperature
- Linear relationship between shear stress and shear rate
- Viscosity independent of shear rate

**Examples:**
- Water
- Air
- Most oils
- Alcohol
- Gasoline
- Glycerin
- Most simple fluids

**Governing Equation:**
$$\tau = \mu \frac{dv}{dy}$$

where μ = constant at fixed temperature and pressure.

### 6.2 Non-Newtonian Fluids

**Definition:** Fluids that do NOT obey Newton's law of viscosity.

**Characteristics:**
- Viscosity depends on shear rate or time
- Non-linear relationship between τ and dv/dy
- Complex rheological behavior

**General Form:**
$$\tau = \eta \frac{dv}{dy}$$

where η (apparent viscosity) is NOT constant.

#### Types of Non-Newtonian Fluids:

**A. Shear-Thinning (Pseudoplastic)**
- Viscosity decreases with increasing shear rate
- **Examples:** 
  - Ketchup (easier to pour when shaken)
  - Paint (flows easily when brushed)
  - Blood
  - Polymer solutions
  - Shampoo

**Practical Application:** House paint - easy to apply (low viscosity when brushed) but doesn't drip when at rest (high viscosity).

**B. Shear-Thickening (Dilatant)**
- Viscosity increases with increasing shear rate
- **Examples:**
  - Cornstarch in water (oobleck)
  - Quicksand
  - Wet sand
  - Some starch solutions

**Practical Demonstration:** Oobleck behaves like a solid when hit hard but flows like liquid when pressure is gentle.

**C. Bingham Plastic**
- Behaves as solid below yield stress
- Flows as viscous fluid above yield stress
- **Examples:**
  - Toothpaste
  - Mayonnaise
  - Clay suspensions
  - Drilling mud

**Equation:**
$$\tau = \tau_0 + \mu_p \frac{dv}{dy} \quad \text{for } \tau > \tau_0$$

where τ₀ = yield stress, μₚ = plastic viscosity

**D. Thixotropic**
- Viscosity decreases with time under constant shear
- Recovers original viscosity when at rest
- **Examples:**
  - Some paints
  - Printing inks
  - Yogurt
  - Gels

**E. Rheopectic**
- Viscosity increases with time under constant shear
- **Examples:**
  - Some gypsum suspensions
  - Printer ink
  - Very rare in nature

## 7. Measurement of Viscosity

### 7.1 Viscometers

**A. Capillary Viscometer (Ostwald)**
- Measures time for fluid to flow through capillary
- Based on Poiseuille's law
- Best for low-viscosity fluids

**B. Rotational Viscometer**
- Measures torque required to rotate spindle in fluid
- Suitable for wide range of viscosities
- Can measure non-Newtonian behavior

**C. Falling Sphere Viscometer**
- Measures terminal velocity of sphere falling through fluid
- Based on Stokes' law
- Good for transparent fluids

**D. Cone and Plate Viscometer**
- Precise measurements for research
- Can control shear rate accurately

### 7.2 Stokes' Law

When a sphere falls through a viscous fluid at low Reynolds number:

$$F_{drag} = 6\pi \mu r v$$

At terminal velocity:
$$v_t = \frac{2r^2(\rho_s - \rho_f)g}{9\mu}$$

where:
- r = sphere radius
- ρₛ = sphere density
- ρ_f = fluid density
- v_t = terminal velocity

**Rearranging for viscosity:**
$$\mu = \frac{2r^2(\rho_s - \rho_f)g}{9v_t}$$

## 8. Practical Applications of Viscosity

### 8.1 Engineering Applications

**1. Lubrication**
- Engine oil must have appropriate viscosity
- Too thin → Poor lubrication, wear
- Too thick → High friction, power loss

**2. Pipeline Flow**
- Viscosity determines pumping power required
- Higher viscosity → Higher pressure drop

**3. Hydraulic Systems**
- Hydraulic fluids need optimal viscosity
- Temperature compensation critical

**4. Paint and Coatings**
- Viscosity affects application and finish
- Must flow easily during application
- Must resist sagging after application

### 8.2 Biological Applications

**1. Blood Flow**
- Blood is non-Newtonian (shear-thinning)
- Viscosity affects heart workload
- Normal blood viscosity: 3-4 cP

**2. Respiratory System**
- Mucus viscosity affects breathing
- Too thick → Difficulty breathing

### 8.3 Food Industry

- Texture and "mouthfeel" depend on viscosity
- Process design (pumping, mixing)
- Quality control

## 9. Worked Examples

### Example 1: Basic Viscosity Calculation

**Problem:** A force of 0.5 N is required to move a plate of area 0.2 m² at 0.3 m/s. The plate is separated from a stationary surface by a 2 mm oil film. Calculate the dynamic viscosity of oil.

**Solution:**
Given:
- F = 0.5 N
- A = 0.2 m²
- v = 0.3 m/s
- dy = 2 mm = 0.002 m

Shear stress: τ = F/A = 0.5/0.2 = 2.5 Pa

Velocity gradient: dv/dy = 0.3/0.002 = 150 s⁻¹

From Newton's law:
$$\mu = \frac{\tau}{dv/dy} = \frac{2.5}{150} = 0.0167 \text{ Pa·s} = 16.7 \text{ cP}$$

### Example 2: Kinematic Viscosity

**Problem:** Engine oil at 20°C has dynamic viscosity μ = 0.29 Pa·s and density ρ = 880 kg/m³. Calculate its kinematic viscosity.

**Solution:**
$$\nu = \frac{\mu}{\rho} = \frac{0.29}{880} = 3.3 \times 10^{-4} \text{ m}^2\text{/s} = 330 \text{ cSt}$$

### Example 3: Temperature Effect

**Problem:** Water viscosity is 1.00 mPa·s at 20°C and 0.28 mPa·s at 100°C. Calculate the percentage decrease.

**Solution:**
$$\text{Percentage decrease} = \frac{1.00 - 0.28}{1.00} \times 100\% = 72\%$$

Water becomes 72% less viscous when heated from 20°C to 100°C.

### Example 4: Glycerin Layer

**Problem:** There is a 3 mm thick layer of glycerin between two plates. The viscosity of glycerin is 2 N·s/m². The area of the plate is 48 cm². How much force is required to move the plate at 6 cm/s?

**Solution:**
Given:
- dy = 3 mm = 3 × 10⁻³ m
- μ = 2 N·s/m² = 2 Pa·s
- A = 48 cm² = 48 × 10⁻⁴ m²
- dv = 6 cm/s = 6 × 10⁻² m/s

Using: F = μA(dv/dy)

$$F = 2 \times 48 \times 10^{-4} \times \frac{6 \times 10^{-2}}{3 \times 10^{-3}}$$

$$F = 2 \times 48 \times 10^{-4} \times 20 = 0.192 \text{ N}$$

## 10. Summary

### Key Points
1. Viscosity is internal friction in fluids resisting deformation
2. Dynamic viscosity (μ) relates to force; kinematic viscosity (ν) relates to motion
3. For liquids: viscosity decreases with temperature
4. For gases: viscosity increases with temperature
5. Newtonian fluids have constant viscosity; non-Newtonian fluids don't
6. Viscosity is crucial in lubrication, pipeline design, and biological systems

### Important Formulas

| Concept | Formula | Units |
|---------|---------|-------|
| Newton's Law | τ = μ(dv/dy) | Pa |
| Dynamic Viscosity | μ = τ/(dv/dy) | Pa·s |
| Kinematic Viscosity | ν = μ/ρ | m²/s |
| Stokes' Drag | F = 6πμrv | N |

## 11. Practice Problems

**Problem 1:** Calculate the force required to move a 50 cm × 50 cm plate at 0.5 m/s over an oil film 1 mm thick with μ = 0.1 Pa·s.

**Problem 2:** A sphere of radius 2 mm and density 2500 kg/m³ falls through glycerin (μ = 1.5 Pa·s, ρ = 1260 kg/m³). Calculate terminal velocity.

**Problem 3:** If kinematic viscosity of water is 10⁻⁶ m²/s and density is 1000 kg/m³, find dynamic viscosity.

**Problem 4:** Explain why motor oil becomes thinner when the engine warms up and why this matters.

## 12. Further Reading and References

**Online Resources:**
1. Viscosity of Common Fluids - Engineering ToolBox
   https://www.engineeringtoolbox.com/absolute-viscosity-liquids-d_1259.html
2. Non-Newtonian Fluids - Lecture Notes
   https://web.mit.edu/nnf/
3. Interactive Viscosity Calculator
   https://www.viscopedia.com/viscosity-calculator/

**Videos:**
1. "What is Viscosity?" - Physics Explained
2. "Newtonian vs Non-Newtonian Fluids" - Mark Rober
3. "Walking on Oobleck" - Mythbusters

**Textbooks:**
1. Çengel & Cimbala - *Fluid Mechanics: Fundamentals and Applications*
2. Munson et al. - *Fundamentals of Fluid Mechanics*
3. Bird, Stewart & Lightfoot - *Transport Phenomena*

**Research:**
1. Advances in rheology and viscosity measurement (2025)
2. Temperature dependence of viscosity - Recent studies

---
*This document covers viscosity comprehensively. Next topic: Conservation laws and Bernoulli's equation.*
