---
subject: PHY-101
topic: Equation of Continuity
date: 2025-12-16
tags: [physics, fluid-mechanics, conservation-laws, continuity]
---

# Equation of Continuity (Conservation of Mass)

## 1. Fundamental Concept

The equation of continuity is based on the principle of **conservation of mass**, which states that mass can neither be created nor destroyed in a closed system. For fluid flow, this means the mass entering a control volume must equal the mass leaving it (for steady flow).

**Physical Interpretation:**
When a fluid flows through a pipe of varying cross-section, if the pipe narrows, the fluid must speed up to maintain the same mass flow rate, and vice versa.

---

## 2. Rate of Flow (Discharge)

### 2.1 Volume Flow Rate (Q)

The volume of fluid passing through a cross-section per unit time.

$$Q = A \times v$$

Where:
* Q = Volume flow rate (m³/s)
* A = Cross-sectional area (m²)
* v = Average velocity (m/s)

**SI Unit:** m³/s  
**Other Units:** L/s, gal/min (GPM)

### 2.2 Mass Flow Rate (ṁ)

The mass of fluid passing through a cross-section per unit time.

$$\dot{m} = \rho A v = \rho Q$$

Where:
* ṁ = Mass flow rate (kg/s)
* ρ = Density (kg/m³)

---

## 3. Derivation of Continuity Equation

### 3.1 For Incompressible Flow

Consider a streamtube (a tube bounded by streamlines) with fluid flowing steadily from section 1 to section 2.

**At Section 1:**
* Area = A₁
* Velocity = v₁
* Density = ρ₁

**At Section 2:**
* Area = A₂
* Velocity = v₂
* Density = ρ₂

By conservation of mass:
$$\text{Mass entering per second} = \text{Mass leaving per second}$$

$$\rho_1 A_1 v_1 = \rho_2 A_2 v_2$$

For **incompressible fluids** (ρ₁ = ρ₂ = ρ = constant):

$$A_1 v_1 = A_2 v_2 = Q = \text{constant}$$

**This is the Equation of Continuity for incompressible flow.**

---

## 4. General Form of Continuity Equation

### 4.1 Integral Form

For a control volume:

$$\frac{d}{dt}\int_{CV} \rho \, dV + \int_{CS} \rho \vec{v} \cdot d\vec{A} = 0$$

Where:
* CV = Control Volume
* CS = Control Surface
* First term = Rate of change of mass within control volume
* Second term = Net mass flux through control surface

### 4.2 Differential Form

For a fluid element:

$$\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \vec{v}) = 0$$

For incompressible flow (ρ = constant):

$$\nabla \cdot \vec{v} = 0$$

In Cartesian coordinates:

$$\frac{\partial u}{\partial x} + \frac{\partial v}{\partial y} + \frac{\partial w}{\partial z} = 0$$

---

## 5. Applications and Examples

### Example 5.1: Flow in Converging Pipe

Water flows through a pipe that narrows from diameter D₁ = 10 cm to D₂ = 5 cm. If the velocity at the larger section is v₁ = 2 m/s, find v₂.

**Solution:**

Areas:
$$A_1 = \frac{\pi D_1^2}{4} = \frac{\pi (0.1)^2}{4} = 7.854 \times 10^{-3} \text{ m}^2$$

$$A_2 = \frac{\pi D_2^2}{4} = \frac{\pi (0.05)^2}{4} = 1.963 \times 10^{-3} \text{ m}^2$$

Using continuity equation:
$$A_1 v_1 = A_2 v_2$$

$$v_2 = \frac{A_1 v_1}{A_2} = \frac{7.854 \times 10^{-3} \times 2}{1.963 \times 10^{-3}} = 8 \text{ m/s}$$

**Key Insight:** When area reduces to 1/4, velocity increases to 4 times (since A₂/A₁ = 1/4, so v₂/v₁ = 4).

### Example 5.2: Three Pipe Junction

Three pipes join at a junction. Pipe 1 (A₁ = 0.02 m², v₁ = 3 m/s) and Pipe 2 (A₂ = 0.03 m², v₂ = 2 m/s) bring water in. Find the velocity in Pipe 3 (A₃ = 0.04 m²) carrying water out.

**Solution:**

By continuity:
$$Q_1 + Q_2 = Q_3$$

$$A_1 v_1 + A_2 v_2 = A_3 v_3$$

$$v_3 = \frac{A_1 v_1 + A_2 v_2}{A_3} = \frac{0.02 \times 3 + 0.03 \times 2}{0.04}$$

$$v_3 = \frac{0.06 + 0.06}{0.04} = \frac{0.12}{0.04} = 3 \text{ m/s}$$

### Example 5.3: Branching Pipes

A pipe (diameter 20 cm, velocity 5 m/s) branches into two pipes of equal diameter 10 cm each. Assuming equal flow in both branches, find the velocity in each branch.

**Solution:**

$$A_{main} = \frac{\pi (0.2)^2}{4} = 0.0314 \text{ m}^2$$

$$A_{branch} = \frac{\pi (0.1)^2}{4} = 0.00785 \text{ m}^2$$

$$Q_{main} = Q_{branch1} + Q_{branch2}$$

For equal flow: Q_{branch1} = Q_{branch2} = Q_{main}/2

$$A_{main} v_{main} = 2 A_{branch} v_{branch}$$

$$v_{branch} = \frac{A_{main} v_{main}}{2 A_{branch}} = \frac{0.0314 \times 5}{2 \times 0.00785} = 10 \text{ m/s}$$

---

## 6. Important Deductions from Continuity Equation

### 6.1 Velocity-Area Relationship

For incompressible flow:
$$\frac{v_2}{v_1} = \frac{A_1}{A_2}$$

**Implications:**
* If area decreases, velocity increases proportionally
* If area increases, velocity decreases proportionally
* Velocity is inversely proportional to area

### 6.2 Practical Observations

1. **Garden Hose:** When you partially block the opening with your thumb (reducing area), water shoots out faster.

2. **Rivers:** In narrow sections, rivers flow faster; in wide sections, they flow slower.

3. **Blood Vessels:** Blood velocity is highest in the aorta and decreases in capillaries due to increased total cross-sectional area.

4. **Venturi Effect:** Basis for many flow measurement devices.

---

## 7. Assumptions and Limitations

### 7.1 Assumptions:
1. **Steady flow:** Conditions don't change with time
2. **One-dimensional flow:** Velocity uniform across each cross-section
3. **No leakage:** Fluid doesn't escape between sections
4. **Incompressible flow** (for the simplified form): ρ = constant

### 7.2 When Continuity Equation Fails:
* Unsteady flow with accumulation
* Compressible flow without proper density correction
* Flow with sources or sinks within control volume
* Multiphase flows without proper treatment

---

## 8. Continuity in Different Coordinate Systems

### 8.1 Cylindrical Coordinates (r, θ, z)

$$\frac{1}{r}\frac{\partial(r v_r)}{\partial r} + \frac{1}{r}\frac{\partial v_\theta}{\partial \theta} + \frac{\partial v_z}{\partial z} = 0$$

### 8.2 Spherical Coordinates (r, θ, φ)

$$\frac{1}{r^2}\frac{\partial(r^2 v_r)}{\partial r} + \frac{1}{r\sin\theta}\frac{\partial(v_\theta \sin\theta)}{\partial \theta} + \frac{1}{r\sin\theta}\frac{\partial v_\phi}{\partial \phi} = 0$$

---

## 9. Continuity for Compressible Flow

For gases and high-speed flows where density changes significantly:

$$\rho_1 A_1 v_1 = \rho_2 A_2 v_2$$

The mass flow rate remains constant, but volume flow rate changes.

**Example:**
Air (ρ₁ = 1.2 kg/m³) flows through a nozzle at v₁ = 10 m/s with A₁ = 0.01 m². If it exits at ρ₂ = 0.8 kg/m³ with A₂ = 0.006 m², find v₂.

$$v_2 = \frac{\rho_1 A_1 v_1}{\rho_2 A_2} = \frac{1.2 \times 0.01 \times 10}{0.8 \times 0.006} = 25 \text{ m/s}$$

---

## 10. Practical Applications

### 10.1 Flow Measurement
* **Venturimeter:** Uses continuity and Bernoulli's equation
* **Orifice meter:** Measures flow rate using area change
* **Flow nozzles:** Industrial flow measurement

### 10.2 Pipe Design
* Sizing pipes for required flow rates
* Designing transitions between different pipe sizes
* Minimizing pressure losses

### 10.3 Aerodynamics
* Wind tunnel testing
* Aircraft wing design
* Nozzle and diffuser design

### 10.4 Biological Systems
* Blood flow in circulatory system
* Air flow in respiratory system
* Sap flow in plants

### 10.5 Environmental Engineering
* River flow analysis
* Groundwater flow
* Atmospheric flows

---

## 11. Connection to Other Principles

The continuity equation is one of the fundamental equations of fluid mechanics, along with:

1. **Bernoulli's Equation** (Energy conservation)
2. **Momentum Equation** (Newton's second law)
3. **Energy Equation** (First law of thermodynamics)

Together, these form the basis for analyzing most fluid flow problems.

---

## References for Further Study

1. **Fluid Mechanics Fundamentals** - Cengel & Cimbala
   Chapter on Conservation of Mass

2. **Introduction to Fluid Mechanics** - Fox & McDonald
   https://www.wiley.com/

3. **MIT OpenCourseWare - Fluid Mechanics**
   Lecture notes on Continuity Equation
   https://ocw.mit.edu/

4. **Engineering Toolbox - Flow Continuity**
   https://www.engineeringtoolbox.com/

5. **Khan Academy - Fluid Mechanics**
   https://www.khanacademy.org/science/physics/fluids

---

## Key Formulas Summary

| Concept | Formula | Application |
|---------|---------|-------------|
| Volume Flow Rate | Q = Av | Basic definition |
| Mass Flow Rate | ṁ = ρAv = ρQ | With density |
| Continuity (Incompressible) | A₁v₁ = A₂v₂ | Most liquids |
| Continuity (Compressible) | ρ₁A₁v₁ = ρ₂A₂v₂ | Gases, high-speed |
| Velocity Ratio | v₂/v₁ = A₁/A₂ | Inverse relationship |
| Differential Form | ∇·v = 0 | Incompressible |

---

## Problem-Solving Strategy

1. **Identify** the control volume or streamtube
2. **Note** the given quantities (areas, velocities, densities)
3. **Apply** appropriate form of continuity equation
4. **Check** if flow is compressible or incompressible
5. **Solve** for unknown quantity
6. **Verify** the result makes physical sense (e.g., smaller area → higher velocity)
