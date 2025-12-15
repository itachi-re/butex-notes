---
subject: PHY-101
topic: Viscosity and Stokes' Law
date: 2025-12-16
tags: [physics, fluid-mechanics, viscosity, stokes-law, terminal-velocity]
---

# Viscosity and Stokes' Law

## 1. Viscosity - The Internal Friction

### 1.1 Definition

Viscosity is the fluid's resistance to shear or internal friction when different parts of the fluid are in relative motion. It quantifies how "thick" or "sticky" a fluid is.

**Physical Interpretation:**
* High viscosity → Fluid flows slowly (honey, oil)
* Low viscosity → Fluid flows easily (water, air)

---

## 2. Newton's Law of Viscosity

For a fluid flowing in layers (laminar flow), the shear stress is proportional to the velocity gradient:

$$\tau = \mu \frac{dv}{dy}$$

Where:
* τ = Shear stress (Pa or N/m²)
* μ = Dynamic (absolute) viscosity (Pa·s)
* dv/dy = Velocity gradient perpendicular to flow (s⁻¹)

**Fluids obeying this linear relationship are called Newtonian fluids.**

### 2.1 Velocity Profile in Couette Flow

Consider fluid between two parallel plates separated by distance h. The bottom plate is stationary, and the top plate moves with velocity V.

**Velocity distribution:**
$$v(y) = \frac{V}{h}y$$

**Shear stress:**
$$\tau = \mu \frac{V}{h}$$

**Force required to maintain motion:**
$$F = \tau \times A = \mu \frac{VA}{h}$$

### Example 2.1:
Two plates separated by 2 mm have an oil layer (μ = 0.5 Pa·s) between them. Top plate (area 1 m²) moves at 3 m/s. Find force required.

**Solution:**
$$F = 0.5 \times \frac{3 \times 1}{0.002} = 750 \text{ N}$$

---

## 3. Types of Viscosity

### 3.1 Dynamic Viscosity (μ)

**SI Unit:** Pa·s (Pascal-second) = N·s/m² = kg/(m·s)  
**CGS Unit:** Poise (P); 1 Pa·s = 10 P  
**Common Unit:** centiPoise (cP); 1 cP = 0.001 Pa·s

### 3.2 Kinematic Viscosity (ν)

$$\nu = \frac{\mu}{\rho}$$

**SI Unit:** m²/s  
**CGS Unit:** Stoke (St); 1 m²/s = 10⁴ St  
**Common Unit:** centiStoke (cSt); 1 cSt = 10⁻⁶ m²/s

**Physical Meaning:** Kinematic viscosity represents the ratio of viscous forces to inertial forces and governs momentum diffusion.

### Example 3.1:
SAE 30 motor oil at 20°C has μ = 0.29 Pa·s and ρ = 870 kg/m³. Find kinematic viscosity.

**Solution:**
$$\nu = \frac{0.29}{870} = 3.33 \times 10^{-4} \text{ m}^2/\text{s} = 333 \text{ cSt}$$

---

## 4. Viscosity of Common Fluids

### At 20°C:

| Fluid | Dynamic Viscosity μ (mPa·s) | Kinematic Viscosity ν (mm²/s) |
|-------|---------------------------|---------------------------|
| Air | 0.018 | 15.1 |
| Water | 1.002 | 1.004 |
| Blood | 3-4 | ~3 |
| Olive Oil | 84 | 91 |
| Glycerin | 1,412 | 1,120 |
| Honey | 2,000-10,000 | ~2,000 |
| SAE 10 Oil | 85 | 100 |
| SAE 30 Oil | 290 | 333 |

---

## 5. Temperature Effects on Viscosity

### 5.1 Liquids

Viscosity **decreases** with increasing temperature:

**Approximate Relationship:**
$$\mu(T) = A e^{B/T}$$

Where A and B are constants.

**Reason:** Higher temperature → Increased molecular motion → Reduced intermolecular forces → Lower resistance to flow

**Example:**
* Water at 0°C: μ = 1.787 mPa·s
* Water at 20°C: μ = 1.002 mPa·s
* Water at 100°C: μ = 0.282 mPa·s

### 5.2 Gases

Viscosity **increases** with increasing temperature:

**Sutherland's Law:**
$$\mu(T) = \mu_0 \frac{T_0 + S}{T + S}\left(\frac{T}{T_0}\right)^{3/2}$$

**Reason:** Higher temperature → Faster molecular motion → More frequent molecular collisions → Higher momentum transfer → Higher viscosity

**Example (Air):**
* At 0°C: μ = 0.0171 mPa·s
* At 20°C: μ = 0.0182 mPa·s
* At 100°C: μ = 0.0218 mPa·s

---

## 6. Stokes' Law

### 6.1 Statement

When a small spherical object moves through a viscous fluid at low Reynolds number, it experiences a drag force proportional to its velocity, radius, and the fluid's viscosity.

**Stokes' Drag Force:**
$$F_d = 6\pi\mu r v$$

Where:
* F_d = Drag force (N)
* μ = Dynamic viscosity (Pa·s)
* r = Radius of sphere (m)
* v = Velocity of sphere (m/s)

### 6.2 Conditions for Validity

1. **Spherical particle**
2. **Smooth surface**
3. **Low Reynolds number** (Re < 1)
4. **Laminar flow** around the sphere
5. **Infinite medium** (no wall effects)
6. **Steady motion**

$$Re = \frac{\rho v (2r)}{\mu} < 1$$

---

## 7. Terminal Velocity

### 7.1 Concept

When an object falls through a fluid, it accelerates until the drag force equals the weight minus buoyancy. At this point, acceleration becomes zero, and the object moves with constant velocity called **terminal velocity**.

### 7.2 Derivation

Forces on a falling sphere:
* **Weight:** W = mg = ρ_s Vg = ρ_s (4πr³/3)g
* **Buoyancy:** F_b = ρ_f Vg = ρ_f (4πr³/3)g
* **Drag:** F_d = 6πμrv

At terminal velocity (v_t), net force = 0:

$$\rho_s \frac{4\pi r^3}{3}g - \rho_f \frac{4\pi r^3}{3}g = 6\pi\mu r v_t$$

$$\frac{4\pi r^3 g}{3}(\rho_s - \rho_f) = 6\pi\mu r v_t$$

**Stokes' Terminal Velocity Formula:**

$$v_t = \frac{2r^2g(\rho_s - \rho_f)}{9\mu}$$

### Example 7.1: Raindrop Falling

A small water droplet (r = 0.1 mm, ρ = 1000 kg/m³) falls through air (μ = 1.8×10⁻⁵ Pa·s, ρ = 1.2 kg/m³). Find terminal velocity.

**Solution:**
$$v_t = \frac{2(10^{-4})^2 \times 9.81 \times (1000 - 1.2)}{9 \times 1.8 \times 10^{-5}}$$

$$v_t = \frac{2 \times 10^{-8} \times 9.81 \times 999}{1.62 \times 10^{-4}} = \frac{1.96 \times 10^{-4}}{1.62 \times 10^{-4}} = 1.21 \text{ m/s}$$

**Check Reynolds number:**
$$Re = \frac{1.2 \times 1.21 \times (2 \times 10^{-4})}{1.8 \times 10^{-5}} = 0.016 < 1$$ ✓ (Valid)

### Example 7.2: Ball Bearing in Oil

A steel ball (r = 1 mm, ρ_s = 7850 kg/m³) falls through oil (μ = 0.1 Pa·s, ρ_f = 900 kg/m³). Find terminal velocity.

**Solution:**
$$v_t = \frac{2(0.001)^2 \times 9.81 \times (7850 - 900)}{9 \times 0.1}$$

$$v_t = \frac{2 \times 10^{-6} \times 9.81 \times 6950}{0.9} = \frac{0.136}{0.9} = 0.151 \text{ m/s} ≈ 15 \text{ cm/s}$$

---

## 8. Key Observations from Stokes' Law

### 8.1 Dependence on Radius

$$v_t \propto r^2$$

* Doubling radius → Quadrupling terminal velocity
* Small particles fall very slowly
* Larger particles fall much faster

**Example:**
* Dust particle (r = 10 μm) falls at ~0.003 m/s (stays suspended for hours)
* Raindrop (r = 1 mm) falls at ~4 m/s

### 8.2 Dependence on Density Difference

$$v_t \propto (\rho_s - \rho_f)$$

* Greater density difference → Higher terminal velocity
* If ρ_s = ρ_f, particle remains suspended (neutral buoyancy)
* If ρ_s < ρ_f, particle rises (negative terminal velocity)

### 8.3 Dependence on Viscosity

$$v_t \propto \frac{1}{\mu}$$

* Higher viscosity → Lower terminal velocity
* Used in sedimentation analysis
* Basis for viscosity measurement (falling ball viscometer)

---

## 9. Applications of Stokes' Law

### 9.1 Sedimentation

**Settling of Particles:**
* Water treatment: Settling tanks for particle removal
* Mining: Separation of minerals by density
* Biology: Blood cell separation in centrifuge
* Geology: Sediment deposition in rivers and oceans

**Stokes' Settling Velocity** used to design:
* Settling basins
* Clarifiers
* Centrifuges

### 9.2 Atmospheric Sciences

**Aerosol Dynamics:**
* Dust particles settling
* Fog droplet formation
* Pollutant dispersion
* Cloud physics

**Rain Formation:**
* Small droplets (r < 0.1 mm) have low terminal velocity
* Larger drops form by coalescence
* Maximum raindrop size limited by breakup

### 9.3 Viscosity Measurement

**Falling Ball Viscometer:**
* Measure terminal velocity of sphere
* Calculate viscosity using Stokes' law:

$$\mu = \frac{2r^2g(\rho_s - \rho_f)}{9v_t}$$

**Example:**
Steel ball (r = 2 mm, ρ = 7850 kg/m³) falls through unknown liquid (ρ = 880 kg/m³) with v_t = 0.05 m/s. Find viscosity.

$$\mu = \frac{2(0.002)^2 \times 9.81 \times (7850 - 880)}{9 \times 0.05} = 1.22 \text{ Pa·s}$$

### 9.4 Microfluidics

* Drug delivery systems
* Lab-on-chip devices
* Particle sorting
* Cell analysis

### 9.5 Industrial Processes

* Paint and coating thickness
* Ink jet printing
* Aerosol generation
* Powder technology

### 9.6 Biological Systems

* Sperm cell motility
* Bacterial swimming
* Plankton movement
* Blood cell flow in capillaries

---

## 10. Limitations of Stokes' Law

### 10.1 High Reynolds Number

For Re > 1, inertial effects become important:
* Flow no longer purely viscous
* Wake formation behind sphere
* Drag increases non-linearly

**Empirical Corrections:**
* Oseen's correction for Re < 5
* Standard drag coefficient for higher Re

### 10.2 Non-Spherical Particles

Stokes' law assumes spherical shape. For irregular particles:
* Use equivalent sphere diameter
* Apply shape factors
* Empirical corrections

### 10.3 Wall Effects

In confined spaces (tubes, narrow containers):
* Walls increase drag
* Faxén's correction factor needed
* Terminal velocity reduced

### 10.4 Particle-Particle Interaction

For concentrated suspensions:
* Hindered settling occurs
* Effective viscosity increases
* Richardson-Zaki correlation used

---

## 11. Modified Stokes' Law

### 11.1 Oseen's Correction (Re < 5)

$$F_d = 6\pi\mu r v\left(1 + \frac{3}{16}Re\right)$$

### 11.2 Standard Drag Equation (Re > 1000)

$$F_d = \frac{1}{2}C_D \rho A v^2$$

Where C_D is the drag coefficient:
* Sphere at Re ≈ 10⁵: C_D ≈ 0.5
* Streamlined body: C_D ≈ 0.04

---

## 12. Comparison: Stokes vs. Turbulent Drag

| Aspect | Stokes' Regime (Re < 1) | Turbulent Regime (Re > 1000) |
|--------|------------------------|------------------------------|
| Drag Force | F ∝ v | F ∝ v² |
| Flow Pattern | Laminar | Turbulent |
| Velocity Gradient | Linear | Non-linear |
| Wake | None | Prominent |
| Examples | Fog droplets | Raindrops, baseballs |

---

## 13. Viscosity Measurement Devices

### 13.1 Capillary Viscometer
Measures time for fluid to flow through capillary tube.

### 13.2 Rotational Viscometer
Measures torque to rotate cylinder in fluid.

### 13.3 Falling Ball Viscometer
Uses Stokes' law directly.

### 13.4 Vibrational Viscometer
Uses vibrating element damping.

---

## References for Further Study

1. **Stokes' Law and Terminal Velocity**
   https://www.physicscatalyst.com/fluid/stokes-law.php

2. **Viscosity - Engineering Toolbox**
   https://www.engineeringtoolbox.com/

3. **Fluid Properties - ScienceDirect**
   https://www.sciencedirect.com/topics/engineering/fluid-property

4. **Viscosity Temperature Charts**
   http://www.viscopedia.com/

5. **Terminal Velocity Calculator**
   https://www.omnicalculator.com/physics/terminal-velocity

---

## Key Formulas Summary

| Concept | Formula | Description |
|---------|---------|-------------|
| Shear Stress | τ = μ(dv/dy) | Newton's law |
| Kinematic Viscosity | ν = μ/ρ | Viscosity/density ratio |
| Stokes' Drag | F_d = 6πμrv | Drag on sphere |
| Terminal Velocity | v_t = 2r²g(ρ_s-ρ_f)/(9μ) | Settling velocity |
| Reynolds Number | Re = ρvD/μ | Flow regime indicator |
| Viscosity from v_t | μ = 2r²g(ρ_s-ρ_f)/(9v_t) | Falling ball method |

---

## Problem-Solving Strategy

1. **Identify** the type of problem (drag force, terminal velocity, viscosity measurement)
2. **List** known parameters: r, ρ_s, ρ_f, μ, v
3. **Check** if Stokes' law is valid (Re < 1)
4. **Apply** appropriate formula
5. **Solve** algebraically
6. **Verify** Reynolds number and assumptions
7. **State units** in final answer
