---
subject: PHY-101
topic: Conservation Laws in Fluid Mechanics
date: 2025-12-16
tags: [physics, fluid-mechanics, conservation, continuity, bernoulli, energy]
---

# Conservation Laws in Fluid Mechanics

## 1. Introduction

The fundamental conservation laws form the backbone of fluid mechanics. These universal principles govern all fluid flow phenomena and provide the mathematical framework for analyzing fluid systems.

### The Three Fundamental Conservation Laws:
1. **Conservation of Mass** → Continuity Equation
2. **Conservation of Energy** → Bernoulli's Equation / Energy Equation
3. **Conservation of Momentum** → Momentum Equation (Navier-Stokes)

## 2. Conservation of Mass: Continuity Equation

### 2.1 Physical Principle

**Statement:** For any control volume, the mass entering must equal the mass leaving plus the mass accumulated inside (in absence of sources or sinks).

**For steady flow:** Mass entering = Mass leaving

### 2.2 Mathematical Formulation

**For incompressible fluids (ρ = constant):**

Consider a streamtube with:
- Section 1: Area A₁, velocity v₁
- Section 2: Area A₂, velocity v₂

**Mass Flow Rate:**
$$\dot{m} = \rho A v = \text{constant}$$

**Since ρ is constant:**
$$A_1 v_1 = A_2 v_2 = Q = \text{constant}$$

This is the **Equation of Continuity** for incompressible flow.

**General Form (for any number of sections):**
$$A_1 v_1 = A_2 v_2 = A_3 v_3 = ... = \text{constant}$$

**In terms of Volume Flow Rate (Q):**
$$Q = A \times v = \text{constant}$$

### 2.3 Physical Implications

**Key Insight:** *Fluid speeds up when area decreases, slows down when area increases.*

**Why?**
- Same amount of fluid must pass through each section per unit time
- Narrow section → must flow faster to pass same volume
- Wide section → can flow slower

**Everyday Examples:**
1. **Garden Hose:** Water shoots faster when you partially cover the nozzle (reducing area)
2. **River Flow:** Water speeds up in narrow gorges, slows in wide sections
3. **Blood Vessels:** Blood velocity varies through circulatory system

### 2.4 Mathematical Relationship

From continuity equation:
$$v \propto \frac{1}{A}$$

**Quantitative:** If area doubles, velocity halves; if area halves, velocity doubles.

### 2.5 Worked Examples

**Example 1: Pipe Flow**

**Problem:** Water flows through a pipe at 2 m/s in a section with diameter 10 cm. The pipe narrows to 5 cm diameter. Find the velocity in the narrow section.

**Solution:**
- Section 1: d₁ = 10 cm = 0.1 m, v₁ = 2 m/s
  - A₁ = π(0.05)² = 0.00785 m²
- Section 2: d₂ = 5 cm = 0.05 m, v₂ = ?
  - A₂ = π(0.025)² = 0.00196 m²

From continuity:
$$A_1 v_1 = A_2 v_2$$

$$v_2 = \frac{A_1 v_1}{A_2} = \frac{0.00785 \times 2}{0.00196} = 8 \text{ m/s}$$

**Result:** Diameter halved → Area reduced by factor of 4 → Velocity increased by factor of 4

**Example 2: Branching Pipe**

**Problem:** A 10 cm diameter pipe carrying water at 3 m/s splits into two branches: one 6 cm diameter and another 8 cm diameter. Find velocities in each branch if flow divides equally.

**Solution:**
- Main pipe: A₀ = π(0.05)² = 0.00785 m², v₀ = 3 m/s
- Q₀ = 0.00785 × 3 = 0.0236 m³/s

Since flow divides equally:
- Q₁ = Q₂ = 0.0236/2 = 0.0118 m³/s

For 6 cm branch:
- A₁ = π(0.03)² = 0.00283 m²
- v₁ = Q₁/A₁ = 0.0118/0.00283 = 4.17 m/s

For 8 cm branch:
- A₂ = π(0.04)² = 0.00503 m²
- v₂ = Q₂/A₂ = 0.0118/0.00503 = 2.35 m/s

### 2.6 Differential Form

For general 3D incompressible flow:
$$\nabla \cdot \vec{v} = \frac{\partial u}{\partial x} + \frac{\partial v}{\partial y} + \frac{\partial w}{\partial z} = 0$$

This is the **incompressible continuity equation** in Cartesian coordinates.

## 3. Conservation of Energy: Bernoulli's Equation

### 3.1 Energy Forms in Flowing Fluid

A flowing fluid possesses three types of mechanical energy per unit volume:

**1. Pressure Energy (Flow Work):**
$$E_p = P$$

**2. Kinetic Energy:**
$$E_k = \frac{1}{2}\rho v^2$$

**3. Potential Energy (Gravitational):**
$$E_{pot} = \rho g h$$

### 3.2 Bernoulli's Equation

**Statement:** For an ideal, incompressible fluid in steady flow along a streamline, the total mechanical energy per unit volume remains constant.

**Mathematical Form:**
$$P + \frac{1}{2}\rho v^2 + \rho gh = \text{Constant}$$

**Between two points on a streamline:**
$$P_1 + \frac{1}{2}\rho v_1^2 + \rho gh_1 = P_2 + \frac{1}{2}\rho v_2^2 + \rho gh_2$$

**Alternative Form (Energy per unit mass):**
$$\frac{P}{\rho} + \frac{v^2}{2} + gh = \text{Constant}$$

**Alternative Form (Energy per unit weight - Head Form):**
$$\frac{P}{\rho g} + \frac{v^2}{2g} + h = \text{Constant}$$

where each term has dimension of length (meters).

### 3.3 Physical Interpretation of Terms

**1. Pressure Head:** $\frac{P}{\rho g}$
- Height of fluid column producing pressure P
- Represents pressure energy

**2. Velocity Head:** $\frac{v^2}{2g}$
- Height through which fluid must fall to attain velocity v
- Represents kinetic energy

**3. Elevation Head:** $h$
- Height above reference level
- Represents potential energy

**Total Head:** $H = \frac{P}{\rho g} + \frac{v^2}{2g} + h = \text{constant}$

### 3.4 Assumptions and Limitations

**Bernoulli's equation is valid for:**
1. ✓ Steady flow (∂/∂t = 0)
2. ✓ Incompressible fluid (ρ = constant)
3. ✓ Inviscid flow (μ = 0, no friction)
4. ✓ Along a streamline
5. ✓ No shaft work (pumps, turbines)
6. ✓ No heat transfer

**When NOT to use Bernoulli:**
1. ✗ Across machines (pumps, turbines, fans)
2. ✗ In regions with significant friction
3. ✗ Across sudden expansions or contractions
4. ✗ In heating or cooling sections
5. ✗ For compressible high-speed flows
6. ✗ In turbulent wakes or separated regions

### 3.5 Bernoulli's Principle

**Statement:** For a horizontal flow (h = constant), when velocity increases, pressure decreases, and vice versa.

$$P + \frac{1}{2}\rho v^2 = \text{constant}$$

**Implications:**
- High velocity → Low pressure
- Low velocity → High pressure

This principle explains many phenomena:
- Aircraft lift
- Curveball in baseball
- Venturi effect
- Atomizers and carburetors

### 3.6 Worked Examples

**Example 1: Water Tank Discharge**

**Problem:** A large tank of water has a small hole at depth h = 5 m below the surface. Find the velocity of water exiting the hole. (Atmospheric pressure at both surface and exit)

**Solution:**
Apply Bernoulli between surface (1) and exit (2):
- Point 1 (surface): P₁ = P_atm, v₁ ≈ 0 (large tank), h₁ = h
- Point 2 (exit): P₂ = P_atm, v₂ = ?, h₂ = 0

$$P_1 + \frac{1}{2}\rho v_1^2 + \rho gh_1 = P_2 + \frac{1}{2}\rho v_2^2 + \rho gh_2$$

$$P_{atm} + 0 + \rho gh = P_{atm} + \frac{1}{2}\rho v_2^2 + 0$$

$$\rho gh = \frac{1}{2}\rho v_2^2$$

$$v_2 = \sqrt{2gh} = \sqrt{2 \times 9.81 \times 5} = 9.90 \text{ m/s}$$

**This is Torricelli's Theorem!**

**Example 2: Venturi Meter**

**Problem:** In a horizontal venturi meter, the main pipe diameter is 10 cm and throat diameter is 5 cm. Water flows at 2 m/s in the main pipe. If pressure in main pipe is 200 kPa, find pressure at throat.

**Solution:**
Given:
- d₁ = 10 cm, v₁ = 2 m/s, P₁ = 200 kPa
- d₂ = 5 cm, v₂ = ?, P₂ = ?
- ρ = 1000 kg/m³

Step 1: Find v₂ using continuity
$$A_1 v_1 = A_2 v_2$$
$$\pi(0.05)^2 \times 2 = \pi(0.025)^2 \times v_2$$
$$v_2 = 8 \text{ m/s}$$

Step 2: Apply Bernoulli (horizontal, so h₁ = h₂)
$$P_1 + \frac{1}{2}\rho v_1^2 = P_2 + \frac{1}{2}\rho v_2^2$$

$$200,000 + \frac{1}{2}(1000)(2)^2 = P_2 + \frac{1}{2}(1000)(8)^2$$

$$200,000 + 2,000 = P_2 + 32,000$$

$$P_2 = 170,000 \text{ Pa} = 170 \text{ kPa}$$

**Result:** Pressure decreased by 30 kPa at the throat where velocity increased.

**Example 3: Pitot Tube**

**Problem:** A Pitot tube in an air stream shows a pressure difference of 500 Pa between stagnation and static pressure. Find the air velocity. (ρ_air = 1.2 kg/m³)

**Solution:**
At stagnation point: v = 0
$$P_0 = P_s + \frac{1}{2}\rho v^2$$

where P₀ = stagnation pressure, P_s = static pressure

$$\Delta P = P_0 - P_s = \frac{1}{2}\rho v^2$$

$$v = \sqrt{\frac{2\Delta P}{\rho}} = \sqrt{\frac{2 \times 500}{1.2}} = 28.9 \text{ m/s}$$

## 4. Special Applications

### 4.1 Torricelli's Theorem

**Statement:** The velocity of fluid flowing out of a hole at depth h below the free surface is equal to the velocity acquired by a body falling freely through the same height.

$$v = \sqrt{2gh}$$

**Derivation:** Already shown in Example 1 above.

**Applications:**
- Tank drainage
- Orifice flow
- Dam spillways

**Practical Note:** Real velocity is slightly less due to friction:
$$v_{actual} = C_v \sqrt{2gh}$$

where C_v = coefficient of velocity ≈ 0.97-0.99

### 4.2 Venturi Meter

**Purpose:** Measure flow rate in pipes using pressure difference.

**Principle:**
- Fluid accelerates in converging section (throat)
- Pressure drops at throat (Bernoulli)
- Measure pressure difference between inlet and throat
- Calculate flow rate

**Flow Rate Formula:**
$$Q = A_2\sqrt{\frac{2(P_1 - P_2)}{\rho(1 - (A_2/A_1)^2)}}$$

**Advantages:**
- Accurate
- Low permanent pressure loss
- No moving parts

**Applications:**
- Water treatment plants
- Industrial process control
- Engine carburetors

### 4.3 Siphon

**Principle:** Atmospheric pressure pushes liquid up and over a barrier to drain to lower level.

**Conditions:**
- Exit must be below liquid surface
- Tube must be filled initially
- Maximum height limited by atmospheric pressure

**Maximum Height:**
$$h_{max} = \frac{P_{atm}}{\rho g}$$

For water: h_max ≈ 10.3 m at sea level

### 4.4 Airplane Wing Lift

**Bernoulli's Principle Application:**
- Air flows faster over curved upper surface
- Faster flow → Lower pressure on top
- Higher pressure on bottom → Net upward force (lift)

**Lift Force (simplified):**
$$F_L = \frac{1}{2}\rho (v_{top}^2 - v_{bottom}^2) A$$

**Note:** Real lift is more complex, involving circulation and angle of attack.

## 5. Modified Bernoulli Equation

### 5.1 Including Energy Losses

For real flows with friction:
$$\frac{P_1}{\rho g} + \frac{v_1^2}{2g} + h_1 = \frac{P_2}{\rho g} + \frac{v_2^2}{2g} + h_2 + h_L$$

where h_L = head loss due to friction

### 5.2 Including Pump/Turbine Work

**With Pump:**
$$\frac{P_1}{\rho g} + \frac{v_1^2}{2g} + h_1 + h_p = \frac{P_2}{\rho g} + \frac{v_2^2}{2g} + h_2 + h_L$$

**With Turbine:**
$$\frac{P_1}{\rho g} + \frac{v_1^2}{2g} + h_1 = \frac{P_2}{\rho g} + \frac{v_2^2}{2g} + h_2 + h_t + h_L$$

where:
- h_p = head added by pump
- h_t = head extracted by turbine

### 5.3 Power in Fluid Flow

**Power Associated with Fluid Flow:**
$$\text{Power} = \left(P + \frac{1}{2}\rho v^2 + \rho gh\right)Q$$

Each term:
- **PQ**: Power to create pressure
- **½ρv²Q**: Power for kinetic energy
- **ρghQ**: Power for potential energy

**Pump Power Required:**
$$P_{pump} = \rho g Q H$$

where H = total head increase

## 6. Summary Tables

### 6.1 Continuity Equation Summary

| Condition | Equation | Units |
|-----------|----------|-------|
| Incompressible | A₁v₁ = A₂v₂ | m³/s |
| Mass flow | ṁ = ρAv | kg/s |
| Volume flow | Q = Av | m³/s |

### 6.2 Bernoulli Equation Forms

| Form | Equation | Each Term Represents |
|------|----------|---------------------|
| Energy/volume | P + ½ρv² + ρgh = const | Pa (N/m²) |
| Energy/mass | P/ρ + v²/2 + gh = const | J/kg (m²/s²) |
| Head | P/(ρg) + v²/(2g) + h = const | m (length) |

## 7. Practice Problems

**Problem 1:** Water flows through a horizontal pipe. At section 1 (diameter 20 cm), velocity is 3 m/s and pressure is 250 kPa. At section 2 (diameter 10 cm), find velocity and pressure.

**Problem 2:** A tank 4 m tall is filled with water. Find velocity of water exiting from a hole at the bottom.

**Problem 3:** An aircraft flies at 100 m/s. Air density is 1.2 kg/m³. If air velocity over wing is 120 m/s, find pressure difference between top and bottom of wing.

**Problem 4:** In a venturi meter, d₁ = 15 cm, d₂ = 7.5 cm, and pressure difference = 40 kPa. Find flow rate of water.

## 8. Advanced Topics (Brief Introduction)

### 8.1 Energy Equation
More general than Bernoulli, includes:
- Heat transfer
- Viscous losses
- Shaft work

### 8.2 Momentum Equation
- Based on Newton's second law
- Used for force calculations
- Covers jet impact, propulsion

### 8.3 Navier-Stokes Equations
- Complete equations of motion
- Include viscosity effects
- Basis of computational fluid dynamics (CFD)

## 9. Further Reading and Resources

**Online Simulations:**
1. Venturi Effect Simulator
   https://www.grc.nasa.gov/www/k-12/airplane/bern.html
2. Bernoulli's Principle Interactive
   https://www.khanacademy.org/science/ap-physics-1/ap-fluids/

**Educational Videos:**
1. "Bernoulli's Principle Explained" - Veritasium
2. "Continuity Equation" - Khan Academy
3. "Flow Measurement Devices" - Engineering Lectures

**Textbooks:**
1. Çengel & Cimbala - *Fluid Mechanics* (Ch. 5)
2. White - *Fluid Mechanics* (Ch. 3-4)
3. Munson et al. - *Fundamentals of Fluid Mechanics* (Ch. 3-5)

**Technical References:**
1. ASME Standards - Flow Measurement
2. ISO 5167 - Orifice Plates, Nozzles and Venturi Tubes
3. Perry's Chemical Engineers' Handbook

---
*This comprehensive coverage of conservation laws provides the foundation for advanced fluid mechanics topics including pipe flow, boundary layers, and turbomachinery.*
