---
subject: PHY-101
topic: Applications of Fluid Mechanics and Surface Tension
date: 2025-12-16
tags: [physics, fluid-mechanics, applications, surface-tension, capillarity]
---

# Applications of Fluid Mechanics and Surface Tension

## 1. Surface Tension

### 1.1 Definition and Physical Concept

**Surface Tension (σ or γ)** is the property of a liquid surface that allows it to resist an external force due to the cohesive nature of liquid molecules at the interface.

**Physical Origin:**
- Molecules inside the liquid are attracted equally in all directions by neighboring molecules
- Molecules at the surface experience a net inward force
- Surface molecules are pulled inward, creating tension
- Surface acts like a stretched elastic membrane

**Definition:** Surface tension is the force per unit length acting perpendicular to an imaginary line drawn on the liquid surface.

$$\sigma = \frac{F}{L}$$

where:
- σ = surface tension (N/m or J/m²)
- F = force acting on the surface (N)
- L = length along which force acts (m)

### 1.2 Units and Typical Values

**Units:**
- SI: N/m (newtons per meter)
- CGS: dyne/cm
- Alternative: J/m² (energy per unit area)

**Conversion:** 1 N/m = 1000 dyne/cm

**Typical Values (at 20°C):**

| Liquid | Surface Tension (N/m) |
|--------|----------------------|
| Mercury | 0.486 |
| Water | 0.0728 |
| Glycerin | 0.063 |
| Ethanol | 0.0223 |
| Benzene | 0.0289 |
| Soap solution | 0.025 |
| Oil | 0.03-0.04 |

### 1.3 Factors Affecting Surface Tension

**1. Temperature**
- Surface tension **decreases** with increasing temperature
- Higher temperature → More kinetic energy → Weaker intermolecular forces
- Relationship approximately linear for small temperature ranges

**Example - Water:**
- At 0°C: σ = 0.0756 N/m
- At 20°C: σ = 0.0728 N/m
- At 100°C: σ = 0.0589 N/m

**2. Impurities and Surfactants**
- Dissolved substances can increase or decrease surface tension
- **Surfactants** (surface active agents) significantly reduce surface tension
- Examples: Soap, detergents
- This is why soap helps with cleaning - reduces water's surface tension

**3. Nature of Liquid**
- Stronger intermolecular forces → Higher surface tension
- Mercury (metallic bonds) > Water (H-bonds) > Organic liquids (weak forces)

### 1.4 Surface Energy

**Concept:** Work must be done to increase the surface area of a liquid.

**Surface Energy per unit area = Surface Tension**

$$W = \sigma \Delta A$$

where:
- W = work done (J)
- σ = surface tension (J/m²)
- ΔA = increase in surface area (m²)

**Example:** Creating a soap film of area A requires work:
$$W = 2\sigma A$$
(Factor of 2 because soap film has two surfaces)

### 1.5 Phenomena Due to Surface Tension

**A. Water Droplets are Spherical**
- Sphere has minimum surface area for given volume
- Surface tension minimizes surface energy
- Forms spherical shape

**B. Needle Floating on Water**
- Even though steel is denser than water
- Surface tension force can support small objects
- Surface depression creates upward force

**C. Water Striders Walk on Water**
- Insects use surface tension to stay on water surface
- Distribute weight over large surface area
- Hydrophobic leg hairs increase support

**D. Bubbles and Drops**
- Surface tension maintains spherical shape
- Pressure inside > pressure outside

### 1.6 Excess Pressure in Drops and Bubbles

**A. Spherical Liquid Drop**

Pressure inside drop exceeds outside pressure:

$$\Delta P = P_{inside} - P_{outside} = \frac{2\sigma}{r}$$

where:
- ΔP = excess pressure
- σ = surface tension
- r = radius of drop

**Physical Explanation:**
- Surface tension acts to compress the drop
- Creates higher pressure inside
- Smaller drops → Higher excess pressure

**B. Soap Bubble**

Soap bubble has **two surfaces** (inside and outside):

$$\Delta P = \frac{4\sigma}{r}$$

**Factor of 4** because two surfaces contribute.

**C. Cylindrical Liquid Column (in a tube)**

$$\Delta P = \frac{\sigma}{r}$$

**Example Problem:**

**Problem:** Calculate excess pressure inside a water drop of radius 0.5 mm. (σ_water = 0.072 N/m)

**Solution:**
$$\Delta P = \frac{2\sigma}{r} = \frac{2 \times 0.072}{0.5 \times 10^{-3}} = 288 \text{ Pa}$$

### 1.7 Contact Angle and Wetting

**Contact Angle (θ):** Angle formed between the liquid surface and the solid surface at the point of contact.

**Cases:**

**1. θ < 90° → Liquid wets the surface**
- Adhesive forces > Cohesive forces
- Liquid spreads on surface
- Example: Water on clean glass
- Meniscus curves upward at edges

**2. θ > 90° → Liquid does not wet surface**
- Cohesive forces > Adhesive forces
- Liquid forms droplets
- Example: Mercury on glass, water on wax
- Meniscus curves downward at edges

**3. θ = 0° → Perfect wetting**
- Liquid spreads completely
- Forms thin film

**4. θ = 180° → Complete non-wetting**
- Liquid forms perfect sphere

## 2. Capillarity

### 2.1 Capillary Action

**Definition:** The phenomenon of rise or fall of liquid in a narrow tube due to surface tension.

**Observations:**
- Water rises in a glass capillary tube (θ < 90°)
- Mercury falls in a glass capillary tube (θ > 90°)
- Narrower tube → Greater rise/fall

### 2.2 Height of Capillary Rise/Fall

**Formula for height of rise (h):**

$$h = \frac{2\sigma \cos\theta}{\rho g r}$$

where:
- h = height of rise (or fall if negative) (m)
- σ = surface tension (N/m)
- θ = contact angle
- ρ = density of liquid (kg/m³)
- g = acceleration due to gravity (m/s²)
- r = radius of capillary tube (m)

**Alternative Form:**
$$h = \frac{2\sigma \cos\theta}{\rho g d}$$

where d = diameter of tube

**Key Points:**
- **h ∝ 1/r**: Narrower tube → Greater height
- **h ∝ σ**: Higher surface tension → Greater height
- **h ∝ 1/ρ**: Less dense liquid → Greater height
- For water in glass: θ ≈ 0°, so cos θ ≈ 1

**Derivation (Brief):**
1. Upward force due to surface tension = 2πr σ cos θ
2. Downward force due to weight = πr²hρg
3. At equilibrium: 2πr σ cos θ = πr²hρg
4. Solving for h gives the formula above

### 2.3 Worked Examples

**Example 1: Water Rise in Capillary**

**Problem:** A capillary tube of internal radius 0.5 mm is dipped in water. Calculate the height to which water will rise. (σ = 0.072 N/m, ρ = 1000 kg/m³, θ ≈ 0° for water-glass)

**Solution:**
$$h = \frac{2\sigma \cos\theta}{\rho g r} = \frac{2 \times 0.072 \times \cos(0°)}{1000 \times 9.81 \times 0.5 \times 10^{-3}}$$

$$h = \frac{0.144}{4.905} = 0.0294 \text{ m} = 2.94 \text{ cm}$$

**Example 2: Mercury Depression**

**Problem:** Mercury in a glass capillary tube of radius 1 mm is depressed by 0.34 cm. Calculate the surface tension of mercury. (ρ_Hg = 13,600 kg/m³, θ = 140°)

**Solution:**
Rearranging the formula:
$$\sigma = \frac{\rho g r h}{2\cos\theta}$$

Note: h is negative for depression, but we use magnitude and account for depression by the obtuse angle.

$$\sigma = \frac{13,600 \times 9.81 \times 1 \times 10^{-3} \times 3.4 \times 10^{-3}}{2 \times \cos(140°)}$$

$$\sigma = \frac{0.453}{2 \times (-0.766)} = 0.486 \text{ N/m}$$

### 2.4 Applications of Capillarity

**1. Biological Systems**
- **Plant Xylem:** Water rises from roots to leaves through narrow vessels
- **Blood Capillaries:** Name comes from capillary action
- **Tear ducts:** Transport tears through narrow channels

**2. Everyday Life**
- **Paper Towels:** Absorb water through capillary action
- **Wicks in Lamps:** Oil rises through wick
- **Sponges:** Absorb water through porous structure
- **Inkjet Printers:** Controlled ink flow

**3. Construction and Engineering**
- **Concrete:** Water can rise through pores, causing damage
- **Damp Proofing:** Prevent water rise in building walls
- **Soil Science:** Water movement in soil

**4. Medical and Laboratory**
- **Blood Tests:** Capillary action fills test strips
- **Thin Layer Chromatography:** Separation technique
- **Micropipettes:** Sample handling

## 3. Practical Applications of Bernoulli's Equation

### 3.1 Atomizer and Spray Bottle

**Principle:**
- Fast-moving air creates low pressure (Bernoulli)
- Atmospheric pressure pushes liquid up tube
- Liquid mixes with air stream
- Forms fine spray

**Applications:**
- Perfume sprayers
- Paint sprayers
- Garden sprayers
- Fuel injectors

### 3.2 Carburetor (in older engines)

**Function:** Mix fuel with air for combustion

**Principle:**
- Air flows through venturi (narrow section)
- Velocity increases, pressure decreases
- Low pressure draws fuel from reservoir
- Fuel mixes with air

**Modern equivalent:** Fuel injection systems (more precise)

### 3.3 Pitot Tube (Aircraft Speed Measurement)

**Principle:**
- Measures difference between:
  - **Stagnation pressure** (total pressure at zero velocity)
  - **Static pressure** (ambient pressure)

**Formula:**
$$v = \sqrt{\frac{2(P_0 - P_s)}{\rho}}$$

where:
- P₀ = stagnation pressure
- P_s = static pressure

**Applications:**
- Airspeed indicators in aircraft
- Wind tunnel measurements
- Industrial flow measurements

### 3.4 Hydraulic Jump

**Phenomenon:** Abrupt rise in water level in open channel flow

**Occurs when:**
- Fast, shallow flow (supercritical) → Slow, deep flow (subcritical)
- Energy dissipation
- Visible in rivers, spillways, kitchen sinks

**Applications:**
- Energy dissipation below dams
- Mixing in water treatment
- Aeration of water

### 3.5 Wind Lift (Roofs in Storms)

**Problem:** Strong winds can lift roofs off buildings

**Explanation:**
- Fast wind over roof → Low pressure on top
- Still air inside → Higher pressure below
- Net upward force can exceed roof weight

**Solution:** Proper roof anchoring and ventilation

## 4. Fluid Mechanics in Nature

### 4.1 Blood Circulation

**Continuity Equation Application:**
- Blood vessels branch from aorta to capillaries
- Total cross-sectional area increases
- Blood velocity decreases in capillaries
- Allows time for nutrient/waste exchange

**Typical Values:**
- Aorta: v ≈ 40 cm/s
- Capillaries: v ≈ 0.05 cm/s (800× slower!)

### 4.2 Respiratory System

**Fluid Flow in Airways:**
- Air velocity varies through bronchial tree
- Laminar flow in small airways
- Turbulent flow in trachea during exercise
- Surface tension in alveoli (surfactant reduces it)

### 4.3 Bird Flight

**Bernoulli's Principle:**
- Airfoil-shaped wings
- Faster flow over top surface
- Pressure difference creates lift
- Wing angle (angle of attack) crucial

**Continuity:** Air accelerates over wing

### 4.4 Fish Swimming

**Streamlined Shape:**
- Reduces drag (resistance)
- Minimizes energy expenditure
- Form drag vs. friction drag

**Buoyancy:** 
- Swim bladder for neutral buoyancy
- Archimedes' principle

## 5. Industrial Applications

### 5.1 Hydraulic Systems

**Principle:** Pascal's Law
- Pressure transmitted equally throughout enclosed fluid
- Force multiplication

**Applications:**
- Car brakes
- Hydraulic lifts
- Heavy machinery
- Aircraft control systems

### 5.2 Pumps

**Types:**
- **Centrifugal Pumps:** Increase kinetic then pressure energy
- **Positive Displacement:** Direct pressure increase
- **Jet Pumps:** Use high-speed jet (Bernoulli)

**Power Requirement:**
$$P = \rho g Q H$$

where H = total head

### 5.3 Turbines

**Function:** Extract energy from flowing fluid

**Types:**
- **Hydroelectric:** Water pressure/velocity → Electricity
- **Wind Turbines:** Air kinetic energy → Mechanical → Electrical
- **Steam Turbines:** High-pressure steam → Mechanical work

**Efficiency:** Ratio of extracted to available energy

### 5.4 Pipeline Design

**Considerations:**
- Continuity equation for sizing
- Bernoulli for pressure drop
- Friction losses (Darcy-Weisbach equation)
- Pump requirements

**Real Flow (including losses):**
$$\frac{P_1}{\rho g} + \frac{v_1^2}{2g} + z_1 = \frac{P_2}{\rho g} + \frac{v_2^2}{2g} + z_2 + h_L$$

where h_L = head loss due to friction

## 6. Environmental and Geophysical Applications

### 6.1 Ocean Currents

**Driven by:**
- Wind stress (surface currents)
- Density differences (deep currents)
- Coriolis effect (Earth's rotation)

**Bernoulli Application:**
- Gulf Stream velocity and pressure

### 6.2 Atmospheric Circulation

**Fluid Mechanics Principles:**
- Pressure gradients drive wind
- Coriolis effect deflects motion
- Continuity in air masses

### 6.3 Groundwater Flow

**Darcy's Law:**
$$Q = -KA\frac{dh}{dx}$$

where:
- K = hydraulic conductivity
- A = cross-sectional area
- dh/dx = hydraulic gradient

## 7. Modern Applications and Research

### 7.1 Microfluidics

**Definition:** Manipulation of fluids at microscale (10⁻⁶ to 10⁻³ m)

**Characteristics:**
- Laminar flow dominates
- Surface tension effects important
- Capillary forces significant

**Applications:**
- Lab-on-a-chip devices
- DNA sequencing
- Drug delivery systems
- Point-of-care diagnostics

### 7.2 Computational Fluid Dynamics (CFD)

**Purpose:** Numerical simulation of fluid flows

**Applications:**
- Aircraft design
- Automotive aerodynamics
- Weather prediction
- Biomedical simulations

**Software Tools:**
- ANSYS Fluent
- OpenFOAM
- COMSOL Multiphysics

### 7.3 Nanotechnology

**Fluid Behavior at Nanoscale:**
- Continuum assumption may break down
- Molecular dynamics simulations needed
- Surface effects dominate

**Applications:**
- Nanofluidic devices
- Drug delivery
- Molecular sensors

## 8. Summary

### Key Formulas

| Concept | Formula | Application |
|---------|---------|-------------|
| Surface Tension | σ = F/L | Force per unit length |
| Excess Pressure (Drop) | ΔP = 2σ/r | Pressure inside drop |
| Excess Pressure (Bubble) | ΔP = 4σ/r | Soap bubble |
| Capillary Rise | h = 2σcosθ/(ρgr) | Height of liquid rise |
| Continuity | A₁v₁ = A₂v₂ | Volume flow rate |
| Bernoulli | P + ½ρv² + ρgh = const | Energy conservation |

### Important Concepts

1. **Surface tension** arises from intermolecular forces at liquid surfaces
2. **Capillarity** is surface tension combined with adhesion/cohesion
3. **Bernoulli's equation** relates pressure, velocity, and elevation
4. **Continuity equation** expresses conservation of mass
5. Applications span from microscale to atmospheric scale

## 9. Practice Problems

**Problem 1:** Calculate the excess pressure inside a soap bubble of diameter 4 mm if surface tension is 0.03 N/m.

**Problem 2:** Water rises 3.2 cm in a capillary tube of radius 0.4 mm. Calculate the surface tension of water (assume θ = 0°).

**Problem 3:** In a horizontal pipe carrying water, the diameter changes from 15 cm to 7.5 cm. If velocity in the larger section is 2 m/s and pressure is 300 kPa, find pressure in the smaller section.

**Problem 4:** Explain why water forms droplets on a freshly waxed car but spreads on a dirty, unwaxed surface.

## 10. Further Reading and Resources

**Online Resources:**
1. Surface Tension Demonstrations
   https://www.youtube.com/results?search_query=surface+tension+demonstrations
2. Capillary Action Experiments
   https://www.sciencebuddies.org/
3. CFD Tutorials
   https://www.cfd-online.com/

**Interactive Simulations:**
1. PhET Simulations - Fluid Pressure and Flow
   https://phet.colorado.edu/
2. Wolfram Demonstrations - Capillarity
   https://demonstrations.wolfram.com/

**Advanced Topics:**
1. Two-phase flows
2. Multiphase flows
3. Non-Newtonian fluid dynamics
4. Turbulence modeling
5. Biofluid mechanics

**Recommended Textbooks:**
1. Çengel & Cimbala - *Fluid Mechanics: Fundamentals and Applications*
2. White - *Fluid Mechanics*
3. Munson et al. - *Fundamentals of Fluid Mechanics*
4. Kundu & Cohen - *Fluid Mechanics*
5. Batchelor - *An Introduction to Fluid Dynamics* (Advanced)

**Research Journals:**
1. Journal of Fluid Mechanics
2. Physics of Fluids
3. Experiments in Fluids
4. International Journal of Multiphase Flow

---

## Conclusion

This comprehensive coverage of fluid mechanics provides a solid foundation for understanding fluid behavior in engineering, nature, and modern technology. The principles of continuity, Bernoulli's equation, viscosity, and surface tension are fundamental to countless applications from microscale devices to global atmospheric circulation.

*End of Fluid Mechanics Course Notes - PHY-101*

---
