---
subject: PHY-101
topic: Introduction to Fluid Mechanics and Fundamental Properties
date: 2025-12-16
tags: [physics, fluid-mechanics, fluids, properties]
---

# Introduction to Fluid Mechanics and Fundamental Properties

## 1. What is Fluid Mechanics?

**Fluid Mechanics** is the branch of physics that deals with the study of fluids (liquids and gases) and the forces acting on them. It encompasses both fluid statics (fluids at rest) and fluid dynamics (fluids in motion).

### Historical Context
- **Ancient Greece**: Archimedes (287-212 BC) formulated the principle of buoyancy
- **17th-18th Century**: Major contributions by Pascal, Newton, Bernoulli, and Euler
- **Modern Era**: Application to aerospace, civil, chemical, and biomedical engineering

### Applications
- **Aerospace Engineering**: Aircraft design, drag reduction
- **Civil Engineering**: Dam design, water supply systems
- **Biomedical**: Blood flow analysis, respiratory systems
- **Environmental**: Weather prediction, ocean currents
- **Industrial**: Pipeline design, pumps, turbines

## 2. Definition and Properties of Fluids

### 2.1 What is a Fluid?

**A fluid is a substance that:**
1. Cannot sustain a shear (tangential) stress when at rest
2. Continuously deforms under the application of shear stress, no matter how small
3. Takes the shape of its container
4. Can flow and fill spaces

**Key Distinction from Solids:**
- **Solids**: Deform when shear stress is applied but maintain their shape
- **Fluids**: Continue to deform as long as shear stress is applied

### 2.2 Types of Fluids

#### Liquids
- **Incompressible** (density remains nearly constant)
- **Definite volume** but no definite shape
- **Examples**: Water, oil, mercury, blood

#### Gases
- **Compressible** (density varies with pressure and temperature)
- **No definite volume** or shape
- **Examples**: Air, oxygen, nitrogen, steam

### 2.3 Fundamental Fluid Properties

#### A. Density (ρ)
**Definition**: Mass per unit volume of a fluid

$$\rho = \frac{m}{V}$$

**Units**: 
- SI: kg/m³
- CGS: g/cm³

**Examples:**
- Water (at 4°C): ρ = 1000 kg/m³
- Air (at sea level, 20°C): ρ = 1.2 kg/m³
- Mercury: ρ = 13,600 kg/m³
- Glycerin: ρ = 1260 kg/m³

**Important Notes:**
- Density of liquids is approximately constant (incompressible)
- Density of gases varies significantly with pressure and temperature
- For ideal gas: ρ = P/(RT)

#### B. Specific Gravity (SG)
**Definition**: Ratio of fluid density to the density of water at 4°C

$$SG = \frac{\rho_{fluid}}{\rho_{water}} = \frac{\rho_{fluid}}{1000 \text{ kg/m}^3}$$

**Characteristics:**
- Dimensionless quantity
- No units
- Water has SG = 1.0
- If SG > 1, fluid sinks in water
- If SG < 1, fluid floats on water

**Examples:**
- Mercury: SG = 13.6
- Gasoline: SG = 0.72
- Seawater: SG = 1.025

#### C. Specific Weight (γ)
**Definition**: Weight per unit volume

$$\gamma = \rho g$$

where g = 9.81 m/s² (acceleration due to gravity)

**Units**: N/m³

**Example:**
- Water: γ = 1000 × 9.81 = 9810 N/m³

#### D. Pressure (P)
**Definition**: Normal force per unit area acting on a surface

$$P = \frac{F}{A}$$

**Units:**
- SI: Pascal (Pa) = N/m²
- Other: bar, atm, psi, mmHg

**Conversions:**
- 1 atm = 101,325 Pa = 1.01325 bar
- 1 bar = 10⁵ Pa
- 1 psi = 6894.76 Pa

**Types of Pressure:**
1. **Absolute Pressure**: Measured from absolute zero (vacuum)
2. **Gauge Pressure**: Measured from atmospheric pressure
   - P_gauge = P_absolute - P_atmospheric
3. **Atmospheric Pressure**: Pressure exerted by air column
   - At sea level: 101,325 Pa

**Pascal's Law:** Pressure applied to a confined fluid is transmitted equally in all directions throughout the fluid.

## 3. The Continuum Assumption

### 3.1 Concept
Even though fluids are composed of discrete molecules, in fluid mechanics we treat them as **continuous matter** without gaps.

### 3.2 When is it Valid?
The continuum assumption is valid when:
- The characteristic length scale >> mean free path of molecules
- Typically valid for most engineering applications
- Breaks down in:
  - Rarefied gases (high altitude, vacuum)
  - Nanotechnology applications
  - Molecular-scale flows

### 3.3 Implications
Under continuum assumption:
- Fluid properties (density, pressure, velocity) are well-defined at every point
- We can use calculus and differential equations
- Macroscopic properties are meaningful

## 4. Rate of Flow (Discharge)

### 4.1 Volume Flow Rate (Q)
**Definition**: Volume of fluid passing through a cross-section per unit time

$$Q = A \times v$$

where:
- A = cross-sectional area (m²)
- v = average velocity (m/s)

**Units**: m³/s, L/s, ft³/s

### 4.2 Mass Flow Rate (ṁ)
**Definition**: Mass of fluid passing through a cross-section per unit time

$$\dot{m} = \rho Q = \rho A v$$

**Units**: kg/s

### 4.3 Example Problem
**Problem**: Water flows through a pipe of diameter 10 cm at a velocity of 2 m/s. Calculate:
a) Volume flow rate
b) Mass flow rate

**Solution:**
- Diameter d = 10 cm = 0.1 m
- Radius r = 0.05 m
- Area A = πr² = π(0.05)² = 0.00785 m²
- Velocity v = 2 m/s
- Density of water ρ = 1000 kg/m³

a) Q = Av = 0.00785 × 2 = 0.0157 m³/s = 15.7 L/s

b) ṁ = ρQ = 1000 × 0.0157 = 15.7 kg/s

## 5. Surface and Body Forces

### 5.1 Surface Forces
Forces that act on the **boundaries** of a fluid through direct contact
- **Pressure forces**: Act perpendicular to surface
- **Viscous forces**: Act tangential to surface (shear forces)
- Examples: Wall friction, drag forces

### 5.2 Body Forces
Forces distributed over the **volume** of fluid, acting without physical contact
- **Gravitational force**: Weight of fluid (F = mg)
- **Electromagnetic forces**: In conducting fluids
- **Centrifugal forces**: In rotating systems

### 5.3 Stress in Fluids
Stress is force per unit area. In fluids, we have:

**Normal Stress (σ):**
- Acts perpendicular to a surface
- Primarily pressure in fluids at rest

**Shear Stress (τ):**
- Acts parallel to a surface
- Arises due to viscosity in moving fluids
- Zero in fluids at rest

**Notation:** Using double subscript notation τ_ij
- First subscript (i): plane on which stress acts
- Second subscript (j): direction of stress
- Example: τ_xy = shear stress on x-plane in y-direction

## 6. Summary

### Key Takeaways
1. Fluids are substances that continuously deform under shear stress
2. Density, specific gravity, and pressure are fundamental properties
3. The continuum assumption allows us to treat fluids as continuous
4. Flow rate can be expressed as volume or mass per unit time
5. Both surface and body forces act on fluids

### Important Formulas
| Property | Formula | Units |
|----------|---------|-------|
| Density | ρ = m/V | kg/m³ |
| Specific Gravity | SG = ρ_fluid/ρ_water | - |
| Specific Weight | γ = ρg | N/m³ |
| Pressure | P = F/A | Pa (N/m²) |
| Volume Flow Rate | Q = Av | m³/s |
| Mass Flow Rate | ṁ = ρAv | kg/s |

## 7. Practice Problems

**Problem 1:** A liquid has a density of 850 kg/m³. Calculate its specific gravity and specific weight.

**Problem 2:** Oil flows through a circular pipe of radius 5 cm at 1.5 m/s. If the oil density is 900 kg/m³, find the mass flow rate.

**Problem 3:** Convert the following pressures to Pa:
a) 2 atm
b) 760 mmHg
c) 5 bar

## 8. Further Reading and References

**Online Resources:**
1. MIT OpenCourseWare - Fluid Mechanics
   https://ocw.mit.edu/courses/mechanical-engineering/
2. Khan Academy - Fluids
   https://www.khanacademy.org/science/physics/fluids
3. NASA - Beginner's Guide to Aeronautics
   https://www.grc.nasa.gov/www/k-12/airplane/
4. Fluid Mechanics 101 - The Basics
   https://www.engineeringtoolbox.com/fluid-mechanics-t_21.html

**Textbooks:**
1. Çengel, Y. A., & Cimbala, J. M. (2018). *Fluid Mechanics: Fundamentals and Applications* (4th ed.). McGraw-Hill
2. White, F. M. (2015). *Fluid Mechanics* (8th ed.). McGraw-Hill
3. Munson, B. R., et al. (2012). *Fundamentals of Fluid Mechanics* (7th ed.). Wiley

**Video Lectures:**
1. Stanford University - Introduction to Fluid Mechanics
2. NPTEL - Fluid Mechanics by IIT professors
   https://nptel.ac.in/courses/112/105/112105249/

---
*Note: This document is part of a comprehensive fluid mechanics course. Subsequent topics will cover fluid statics, fluid kinematics, conservation laws, and applications.*
