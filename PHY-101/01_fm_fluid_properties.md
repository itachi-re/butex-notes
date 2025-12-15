---
subject: PHY-101
topic: Fundamental Properties of Fluids
date: 2025-12-16
tags: [physics, fluid-mechanics, density, viscosity, properties]
---

# Fundamental Properties of Fluids

## 1. Definition of Fluids

A fluid is any substance that can flow and take the shape of its container. Unlike solids, fluids have relatively mobile molecules and no predefined shape. Both liquids and gases are classified as fluids.

**Key Characteristics:**
* Continuous deformation under shear stress
* Ability to flow from high-pressure to low-pressure regions
* Takes the shape of the container
* Cannot sustain tangential or shear forces when at rest

### Example:
Water flowing in a pipe, air moving through a ventilation system, and oil lubricating engine parts are all examples of fluids in motion.

---

## 2. Density (ρ)

Density is the ratio of mass to volume of a fluid, representing how much matter is packed into a given space. It is one of the most fundamental fluid properties.

$$\rho = \frac{m}{V}$$

Where:
* ρ = Density (kg/m³)
* m = Mass (kg)
* V = Volume (m³)

**SI Unit:** kg/m³  
**CGS Unit:** g/cm³

### Common Fluid Densities (at standard conditions):
| Fluid | Density (kg/m³) |
|-------|-----------------|
| Water (4°C) | 1000 |
| Mercury | 13,600 |
| Air (at STP) | 1.225 |
| Gasoline | 720 |
| Oil | 870 |

### Temperature and Pressure Effects:
For liquids, density decreases with increasing temperature due to thermal expansion. For gases, density decreases with increasing temperature according to the ideal gas law.

**Example:**
A cube of water with side length 10 cm has a volume of 1000 cm³ (1 liter). Its mass is 1000 g or 1 kg, giving density = 1 kg/L = 1000 kg/m³.

---

## 3. Specific Weight (γ)

Specific weight represents the weight per unit volume of a fluid.

$$\gamma = \rho g$$

Where:
* γ = Specific weight (N/m³)
* ρ = Density (kg/m³)
* g = Acceleration due to gravity (9.81 m/s²)

**Example:**
For water: γ = 1000 kg/m³ × 9.81 m/s² = 9810 N/m³

---

## 4. Specific Gravity (SG)

Specific gravity is the ratio of a fluid's density to the density of a reference substance, typically water at 4°C for liquids.

$$SG = \frac{\rho_{fluid}}{\rho_{water}}$$

**Properties:**
* Dimensionless quantity
* For water, SG = 1.0
* Mercury has SG ≈ 13.6
* Gasoline has SG ≈ 0.72

### Example:
If a liquid has density 850 kg/m³, its specific gravity is:
$$SG = \frac{850}{1000} = 0.85$$

---

## 5. Viscosity (μ, ν)

Viscosity is the fluid's resistance to shear when different parts of the fluid are in relative motion - its internal friction.

### 5.1 Dynamic (Absolute) Viscosity (μ)

Dynamic viscosity represents the ratio of shear stress to velocity gradient.

$$\tau = \mu \frac{dv}{dy}$$

Where:
* τ = Shear stress (Pa)
* μ = Dynamic viscosity (Pa·s)
* dv/dy = Velocity gradient

**SI Unit:** Pa·s (Pascal-second) or N·s/m²  
**CGS Unit:** Poise (P); 1 Pa·s = 10 Poise

### Common Viscosity Values:
| Fluid | Dynamic Viscosity (mPa·s at 20°C) |
|-------|-----------------------------------|
| Water | 1.002 |
| Air | 0.018 |
| Honey | ~10,000 |
| Motor Oil | 50-500 |

### 5.2 Kinematic Viscosity (ν)

Kinematic viscosity is the ratio of dynamic viscosity to density.

$$\nu = \frac{\mu}{\rho}$$

**SI Unit:** m²/s  
**CGS Unit:** Stoke (St); 1 m²/s = 10⁴ Stokes

**Example:**
For water at 20°C:
$$\nu = \frac{1.002 \times 10^{-3}}{1000} = 1.002 \times 10^{-6} \text{ m}^2/\text{s}$$

### Temperature Effects:
For liquids, viscosity decreases with increasing temperature as molecules move faster. For gases, viscosity increases with temperature.

---

## 6. Compressibility and Bulk Modulus

### 6.1 Bulk Modulus of Elasticity (K)

Bulk modulus measures a fluid's resistance to compression, quantifying how much pressure is required to produce a given fractional change in volume.

$$K = -\frac{\Delta P}{\Delta V / V}$$

Where:
* K = Bulk modulus (Pa)
* ΔP = Change in pressure
* ΔV/V = Volumetric strain

**Properties:**
* Liquids have high bulk moduli and are often treated as incompressible
* Gases have low bulk moduli and compress easily
* For water: K ≈ 2.2 GPa

### 6.2 Coefficient of Compressibility (β)

$$\beta = \frac{1}{K}$$

**Example:**
If water's bulk modulus is 2.2 GPa:
$$\beta = \frac{1}{2.2 \times 10^9} = 4.55 \times 10^{-10} \text{ Pa}^{-1}$$

---

## 7. Pressure (P)

Pressure is defined as force per unit area acting perpendicular to a surface.

$$P = \frac{F}{A}$$

**SI Unit:** Pascal (Pa) = N/m²  
**Other Units:** bar, atm, psi, mmHg

### Types of Pressure:
1. **Absolute Pressure:** Total pressure measured from absolute zero
2. **Gauge Pressure:** Pressure relative to atmospheric pressure
3. **Atmospheric Pressure:** 101.325 kPa (1 atm) at sea level

**Relationship:**
$$P_{absolute} = P_{gauge} + P_{atmospheric}$$

### Pressure in Static Fluids:
$$P = P_0 + \rho g h$$

Where h is the depth below the free surface.

**Example:**
Pressure at 10 m depth in water:
$$P = 101325 + (1000)(9.81)(10) = 199,425 \text{ Pa} ≈ 2 \text{ atm}$$

---

## 8. Classification Based on Properties

### 8.1 Ideal vs. Real Fluids

**Ideal Fluid:**
* Zero viscosity (inviscid)
* Incompressible
* No energy losses
* Only exists theoretically

**Real Fluid:**
* Has viscosity
* May be compressible (gases)
* Energy losses due to friction
* All practical fluids

### 8.2 Newtonian vs. Non-Newtonian Fluids

**Newtonian Fluids:**
* Linear relationship between shear stress and shear rate with constant viscosity
* Examples: Water, air, most gases, light oils

**Non-Newtonian Fluids:**
* Viscosity changes with applied stress
* Examples: Blood, ketchup, paint, polymer solutions

---

## 9. Important Concepts

### 9.1 Continuum Assumption
A medium characterized by density is called a continuum and follows classical laws of mechanics. This assumes the fluid is continuous rather than composed of discrete molecules.

### 9.2 No-Slip Condition
At the wall, velocity is zero relative to the wall - a characteristic of all viscous fluids.

---

## 10. Practical Applications

1. **Hydraulic Systems:** Utilize incompressibility of liquids
2. **Lubrication:** Depends on viscosity to reduce friction
3. **Flow Measurement:** Uses density and viscosity relationships
4. **Pressure Systems:** Based on hydrostatic pressure principles
5. **Pumping Systems:** Accounts for fluid properties in design

---

## References for Further Study

1. **Fluid Mechanics Fundamentals and Applications** - Cengel & Cimbala (2014)
   https://engineeringbookslibrary.wordpress.com/

2. **Introduction to Aerospace Flight Vehicles** - Fundamental Properties
   https://eaglepubs.erau.edu/introductiontoaerospaceflightvehicles/

3. **Fluid Mechanics for Chemical Engineers** - Physical Properties
   https://www.informit.com/articles/article.aspx?p=2832417&seqNum=4

4. **MIT OpenCourseWare - Fluid Mechanics**
   https://ocw.mit.edu/

5. **University Physics - Fluid Mechanics Summary**
   https://phys.libretexts.org/

---

## Key Formulas Summary

| Property | Formula | Units |
|----------|---------|-------|
| Density | ρ = m/V | kg/m³ |
| Specific Weight | γ = ρg | N/m³ |
| Specific Gravity | SG = ρ/ρ_water | - |
| Dynamic Viscosity | τ = μ(dv/dy) | Pa·s |
| Kinematic Viscosity | ν = μ/ρ | m²/s |
| Bulk Modulus | K = -ΔP/(ΔV/V) | Pa |
| Pressure | P = F/A | Pa |
| Hydrostatic Pressure | P = ρgh | Pa |
