---
subject: PHY-101
topic: Bernoulli's Equation
date: 2025-12-16
tags: [physics, fluid-mechanics, energy-conservation, bernoulli]
---

# Bernoulli's Equation (Conservation of Energy)

## 1. Introduction

Bernoulli's equation is a fundamental principle in fluid dynamics that describes the relationship between pressure, velocity, and elevation in a moving fluid. It is essentially a statement of the **conservation of energy** for flowing fluids.

**Historical Context:**
Formulated by Daniel Bernoulli in 1738, this equation relates flow work, kinetic energy, and potential energy along a streamline.

---

## 2. Statement of Bernoulli's Principle

**"As the velocity of a fluid increases, the pressure exerted by the fluid decreases, and vice versa."**

This counterintuitive principle explains many everyday phenomena, from the lift on airplane wings to the operation of carburetors.

---

## 3. Mathematical Form

### 3.1 Standard Form

For an ideal, incompressible, steady flow along a streamline:

$$P + \frac{1}{2}\rho v^2 + \rho gh = \text{Constant}$$

Or between two points along a streamline:

$$P_1 + \frac{1}{2}\rho v_1^2 + \rho gh_1 = P_2 + \frac{1}{2}\rho v_2^2 + \rho gh_2$$

Where:
* P = Static pressure (Pa)
* ρ = Fluid density (kg/m³)
* v = Flow velocity (m/s)
* g = Acceleration due to gravity (9.81 m/s²)
* h = Elevation above datum (m)

### 3.2 Head Form (Pressure Head)

Dividing by ρg:

$$\frac{P}{\rho g} + \frac{v^2}{2g} + h = \text{Constant}$$

Each term has dimensions of length (head):
* P/(ρg) = **Pressure head** (m)
* v²/(2g) = **Velocity head** (m)
* h = **Elevation head** (m)

### 3.3 Energy Per Unit Mass Form

Dividing by ρ:

$$\frac{P}{\rho} + \frac{v^2}{2} + gh = \text{Constant}$$

Each term has dimensions of energy per unit mass (J/kg).

### 3.4 Energy Per Unit Volume Form

$$P + \frac{1}{2}\rho v^2 + \rho gh = \text{Constant}$$

Each term has dimensions of pressure or energy per unit volume (Pa or J/m³):
* P = **Static pressure**
* ½ρv² = **Dynamic pressure**
* ρgh = **Hydrostatic pressure**

---

## 4. Physical Interpretation of Terms

### 4.1 Static Pressure (P)
The actual thermodynamic pressure of the fluid, measured perpendicular to the flow direction.

### 4.2 Dynamic Pressure (½ρv²)
The kinetic energy per unit volume associated with the fluid's motion. Represents the pressure rise when fluid is brought to rest.

### 4.3 Hydrostatic Pressure (ρgh)
The potential energy per unit volume due to the fluid's elevation in a gravitational field.

**Total Pressure (Stagnation Pressure):**
$$P_0 = P + \frac{1}{2}\rho v^2$$

---

## 5. Assumptions and Conditions

Bernoulli's equation is valid under the following conditions:

1. **Steady flow:** No temporal variations (∂/∂t = 0)
2. **Incompressible fluid:** Constant density (ρ = constant)
3. **Inviscid flow:** Negligible viscous effects (friction)
4. **Along a streamline:** The equation applies along a single streamline
5. **No work interaction:** No pumps, turbines, or external work
6. **No heat transfer:** Adiabatic flow
7. **Irrotational flow:** No fluid rotation (for potential flow)

---

## 6. Derivation from Energy Conservation

Consider a fluid element moving along a streamline:

**Work done by pressure forces + Work done by gravity = Change in kinetic energy**

$$-\frac{dP}{\rho} - g \, dh = v \, dv$$

Integrating:

$$-\int\frac{dP}{\rho} - g\int dh = \int v \, dv$$

For incompressible flow (ρ = constant):

$$-\frac{P}{\rho} - gh = \frac{v^2}{2} + C$$

Rearranging:

$$P + \frac{1}{2}\rho v^2 + \rho gh = \text{Constant}$$

---

## 7. Applications and Examples

### Example 7.1: Flow from a Tank (Torricelli's Theorem)

A large tank filled with water to height h has a small hole at the bottom. Find the velocity of water flowing out.

**Solution:**

At surface (point 1): P₁ = P_atm, v₁ ≈ 0, h₁ = h  
At hole (point 2): P₂ = P_atm, v₂ = ?, h₂ = 0

Applying Bernoulli's equation:

$$P_1 + \frac{1}{2}\rho v_1^2 + \rho gh_1 = P_2 + \frac{1}{2}\rho v_2^2 + \rho gh_2$$

Since P₁ = P₂ and v₁ ≈ 0:

$$\rho gh = \frac{1}{2}\rho v_2^2$$

$$v_2 = \sqrt{2gh}$$

**This is Torricelli's Theorem:** The velocity of efflux equals the velocity a body would acquire falling freely through height h.

**Example Calculation:**
If h = 10 m:
$$v_2 = \sqrt{2 \times 9.81 \times 10} = 14.0 \text{ m/s}$$

### Example 7.2: Converging Pipe

Water flows through a horizontal pipe that narrows from diameter 10 cm to 5 cm. If velocity at the larger section is 2 m/s and pressure is 200 kPa, find the pressure at the smaller section.

**Solution:**

From continuity: v₂ = (A₁/A₂)v₁ = 4v₁ = 8 m/s

Since pipe is horizontal (h₁ = h₂):

$$P_1 + \frac{1}{2}\rho v_1^2 = P_2 + \frac{1}{2}\rho v_2^2$$

$$P_2 = P_1 + \frac{1}{2}\rho(v_1^2 - v_2^2)$$

$$P_2 = 200000 + \frac{1}{2}(1000)(4 - 64)$$

$$P_2 = 200000 - 30000 = 170 \text{ kPa}$$

**Observation:** Velocity increased from 2 to 8 m/s, causing pressure to drop by 30 kPa.

### Example 7.3: Lift on Airplane Wing

Air flows over an airfoil. Over the top surface, velocity is 120 m/s; under the bottom, 90 m/s. Air density is 1.2 kg/m³. Find the pressure difference creating lift.

**Solution:**

Applying Bernoulli (neglecting height difference):

$$\Delta P = P_{bottom} - P_{top} = \frac{1}{2}\rho(v_{top}^2 - v_{bottom}^2)$$

$$\Delta P = \frac{1}{2}(1.2)(120^2 - 90^2) = 0.6(14400 - 8100)$$

$$\Delta P = 0.6 \times 6300 = 3780 \text{ Pa} ≈ 3.8 \text{ kPa}$$

This pressure difference creates upward lift force.

---

## 8. Modified Bernoulli's Equation (Engineering Form)

For real fluids with losses:

$$\frac{P_1}{\rho g} + \frac{v_1^2}{2g} + h_1 + h_{pump} = \frac{P_2}{\rho g} + \frac{v_2^2}{2g} + h_2 + h_{turbine} + h_L$$

Where:
* h_pump = Head added by pump
* h_turbine = Head extracted by turbine
* h_L = Head loss due to friction

---

## 9. Practical Applications

### 9.1 Venturimeter (Flow Measurement)

A device using Bernoulli's principle to measure flow rate in pipes.

**Principle:** Fluid accelerates through a constriction, causing pressure drop proportional to flow rate.

**Equation:**
$$Q = C_d A_2 \sqrt{\frac{2(P_1 - P_2)}{\rho(1 - (A_2/A_1)^2)}}$$

Where C_d is the coefficient of discharge (typically 0.95-0.98).

**Example:**
In a venturimeter, D₁ = 10 cm, D₂ = 5 cm, pressure drop = 20 kPa. Find flow rate (water).

$$A_1 = 0.00785 \text{ m}^2, \quad A_2 = 0.00196 \text{ m}^2$$

$$Q = 0.98 \times 0.00196 \times \sqrt{\frac{2 \times 20000}{1000(1 - 0.0625)}}$$

$$Q = 0.00192 \times \sqrt{\frac{40000}{937.5}} = 0.0125 \text{ m}^3/\text{s} = 12.5 \text{ L/s}$$

### 9.2 Pitot Tube (Velocity Measurement)

Measures fluid velocity by comparing static and stagnation pressures.

**Principle:** Fluid brought to rest at stagnation point.

**Stagnation Pressure:**
$$P_0 = P + \frac{1}{2}\rho v^2$$

**Velocity:**
$$v = \sqrt{\frac{2(P_0 - P)}{\rho}} = \sqrt{\frac{2\Delta P}{\rho}}$$

**Example:**
A pitot tube in water shows pressure difference of 50 kPa. Find velocity.

$$v = \sqrt{\frac{2 \times 50000}{1000}} = \sqrt{100} = 10 \text{ m/s}$$

### 9.3 Orifice Meter

Similar to venturimeter but uses a sharp-edged orifice plate.

**Coefficient of discharge:** C_d ≈ 0.60-0.65 (lower than venturimeter due to vena contracta).

### 9.4 Aerodynamics

* **Airfoil lift:** Faster flow over curved top creates lower pressure
* **Carburetor:** Low pressure in constriction draws fuel
* **Atomizers and sprayers:** High velocity creates suction

### 9.5 Civil Engineering

* **Dam spillways:** Design for energy dissipation
* **Siphons:** Transfer liquid over barrier
* **Water supply systems:** Pipeline design

---

## 10. Limitations and Real-World Considerations

### 10.1 Viscous Effects
Real fluids have viscosity, causing:
* Energy losses due to friction
* Boundary layer formation
* Pressure drop along pipes

### 10.2 Compressibility
For high-speed gas flows (Mach > 0.3), density changes must be considered.

### 10.3 Unsteady Flow
Bernoulli's equation doesn't account for acceleration effects in unsteady flow.

### 10.4 Rotational Flow
The equation applies strictly only to irrotational flow along streamlines.

---

## 11. Common Misconceptions

1. **"Bernoulli's equation applies everywhere in a flow"**
   * FALSE: It applies only along streamlines

2. **"Higher velocity always means lower pressure"**
   * TRUE only if no elevation change and no external work

3. **"Bernoulli explains all aerodynamic lift"**
   * PARTIALLY: Circulation and angle of attack also crucial

---

## 12. Comparison Table: Bernoulli vs. Reality

| Aspect | Ideal (Bernoulli) | Real Fluid |
|--------|-------------------|------------|
| Viscosity | Zero | Present |
| Energy Loss | None | Friction losses |
| Pressure Recovery | 100% | 70-90% |
| Velocity Profile | Uniform | Non-uniform |
| Applicability | Theoretical | With corrections |

---

## References for Further Study

1. **Bernoulli's Equation - Princeton University**
   https://www.princeton.edu/~asmits/Bicycle_web/Bernoulli.html

2. **Engineering Bernoulli Equation - R. Shankar Subramanian**
   https://people.clarkson.edu/projects/subramanian/

3. **Application of Bernoulli's Equation**
   https://civilchapola.com/application-of-bernoullis-equation/

4. **Pitot Tube Analysis**
   https://www.engineeringtoolbox.com/pitot-tubes-d_612.html

5. **Fluid Mechanics - MIT OpenCourseWare**
   https://ocw.mit.edu/

---

## Key Formulas Summary

| Application | Formula | Description |
|-------------|---------|-------------|
| General Form | P + ½ρv² + ρgh = const | Energy conservation |
| Head Form | P/(ρg) + v²/(2g) + h = const | All terms as height |
| Torricelli's Theorem | v = √(2gh) | Efflux velocity |
| Dynamic Pressure | P_d = ½ρv² | Kinetic energy term |
| Stagnation Pressure | P_0 = P + ½ρv² | Total pressure |
| Pitot Tube | v = √(2ΔP/ρ) | Velocity measurement |
| Venturimeter | Q ∝ √ΔP | Flow measurement |

---

## Problem-Solving Steps

1. **Identify** two points along a streamline
2. **List** known quantities: P, v, h at both points
3. **Check assumptions:** Is flow steady, incompressible, inviscid?
4. **Apply** appropriate form of Bernoulli's equation
5. **Use continuity** if needed to relate velocities
6. **Solve** algebraically for unknown
7. **Verify** result is physically reasonable
8. **Include units** in final answer
