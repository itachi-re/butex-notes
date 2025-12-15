---
subject: PHY-101
topic: Surface Tension and Capillarity
date: 2025-12-16
tags: [physics, fluid-mechanics, surface-tension, capillarity]
---

# Surface Tension and Capillarity

## 1. Introduction to Surface Tension

Surface tension is a fundamental property of liquids arising from intermolecular forces. It causes the liquid surface to behave like an elastic membrane, minimizing its surface area.

**Definition:** Surface tension is the force per unit length acting along the surface of a liquid, or equivalently, the energy per unit area required to create new surface.

$$\gamma = \frac{F}{L} = \frac{E}{A}$$

**SI Unit:** N/m or J/m²  
**CGS Unit:** dyne/cm

---

## 2. Molecular Origin

### 2.1 Intermolecular Forces

**Cohesive Forces:** Attractive forces between molecules of the same substance.

**Adhesive Forces:** Attractive forces between molecules of different substances.

### 2.2 Surface Molecule Behavior

* **Bulk molecules:** Experience balanced forces from all directions
* **Surface molecules:** Experience net inward force (no molecules above)
* **Result:** Surface molecules are pulled inward, creating surface tension

**Energy Perspective:**
* Surface molecules have higher potential energy than bulk molecules
* System tends to minimize surface area to minimize energy
* This is why liquid droplets are spherical (minimum surface area for given volume)

---

## 3. Surface Tension Values

### Common Liquids at 20°C:

| Liquid | Surface Tension (mN/m) |
|--------|------------------------|
| Mercury | 485 |
| Water | 72.8 |
| Blood | 58 |
| Glycerol | 63 |
| Ethanol | 22 |
| Acetone | 23 |
| Soap Solution | 25-30 |

### Temperature Effect:
Surface tension **decreases** with increasing temperature because:
* Higher temperature → Increased molecular motion
* Reduced cohesive forces at surface
* Linear decrease: γ(T) ≈ γ₀ - kT

**Example:**
Water at 0°C: γ = 75.6 mN/m  
Water at 100°C: γ = 58.9 mN/m

---

## 4. Mathematical Formulation

### 4.1 Pressure Difference Across Curved Surface

For a spherical droplet or bubble:

**Young-Laplace Equation:**
$$\Delta P = \frac{2\gamma}{R}$$

For a soap bubble (two surfaces):
$$\Delta P = \frac{4\gamma}{R}$$

Where:
* ΔP = Pressure difference (Pa)
* γ = Surface tension (N/m)
* R = Radius of curvature (m)

### Example 4.1: Water Droplet Pressure

A water droplet has radius 1 mm. Find internal pressure increase.

**Solution:**
$$\Delta P = \frac{2 \times 0.0728}{0.001} = 145.6 \text{ Pa} ≈ 0.00144 \text{ atm}$$

### Example 4.2: Soap Bubble

A soap bubble (γ = 0.030 N/m) has diameter 5 cm. Find excess pressure.

**Solution:**
$$\Delta P = \frac{4 \times 0.030}{0.025} = 4.8 \text{ Pa}$$

---

## 5. Contact Angle and Wetting

### 5.1 Contact Angle (θ)

The angle between the tangent to the liquid surface and the solid surface, measured **through the liquid** at the point of contact.

**Young's Equation:**
$$\gamma_{SV} = \gamma_{SL} + \gamma_{LV}\cos\theta$$

Where:
* γ_SV = Solid-vapor surface energy
* γ_SL = Solid-liquid surface energy
* γ_LV = Liquid-vapor surface tension
* θ = Contact angle

### 5.2 Wetting Behavior

**Complete Wetting (θ = 0°):**
* Liquid spreads completely on surface
* Strong adhesion > cohesion
* Example: Water on clean glass

**Partial Wetting (0° < θ < 90°):**
* Liquid partially spreads
* Moderate adhesion
* Example: Water on wax-coated surface

**Non-Wetting (θ > 90°):**
* Liquid forms droplets
* Cohesion > adhesion
* Example: Mercury on glass, water on lotus leaf

**Superhydrophobic (θ > 150°):**
* Extreme non-wetting
* Self-cleaning surfaces
* Example: Lotus leaf effect

### 5.3 Practical Examples

| Surface-Liquid Pair | Contact Angle | Behavior |
|---------------------|---------------|----------|
| Water on clean glass | ~0° | Complete wetting |
| Water on paraffin | ~107° | Non-wetting |
| Mercury on glass | ~140° | Non-wetting |
| Water on Teflon | ~110° | Non-wetting |
| Water on lotus leaf | ~160° | Superhydrophobic |

---

## 6. Capillarity (Capillary Action)

### 6.1 Definition

Capillarity is the phenomenon of a liquid rising (or falling) in a narrow tube against (or with) gravity due to surface tension.

### 6.2 Capillary Rise/Depression Formula

**Jurin's Law:**

$$h = \frac{2\gamma\cos\theta}{\rho g r}$$

Where:
* h = Height of capillary rise (m) [+ for rise, - for depression]
* γ = Surface tension (N/m)
* θ = Contact angle
* ρ = Liquid density (kg/m³)
* g = Acceleration due to gravity (m/s²)
* r = Tube radius (m)

### 6.3 Derivation

At equilibrium, upward force due to surface tension equals downward gravitational force:

**Upward force:** F_up = 2πr γ cosθ  
**Downward force:** F_down = πr²h ρg

Equating:
$$2\pi r \gamma \cos\theta = \pi r^2 h \rho g$$

$$h = \frac{2\gamma\cos\theta}{\rho g r}$$

### Example 6.1: Water in Glass Capillary

A glass tube of radius 0.5 mm is dipped in water. Find capillary rise.

**Given:**
* γ = 0.0728 N/m
* θ ≈ 0° (water wets glass completely, cosθ = 1)
* ρ = 1000 kg/m³
* r = 0.0005 m

**Solution:**
$$h = \frac{2 \times 0.0728 \times 1}{1000 \times 9.81 \times 0.0005} = \frac{0.1456}{4.905} = 0.0297 \text{ m} ≈ 3 \text{ cm}$$

### Example 6.2: Mercury Depression

Mercury in a glass tube of radius 1 mm. Find capillary depression.

**Given:**
* γ = 0.485 N/m
* θ ≈ 140° (cosθ = -0.766)
* ρ = 13,600 kg/m³
* r = 0.001 m

**Solution:**
$$h = \frac{2 \times 0.485 \times (-0.766)}{13600 \times 9.81 \times 0.001} = \frac{-0.743}{133.4} = -0.0056 \text{ m} ≈ -5.6 \text{ mm}$$

The negative sign indicates depression (mercury level is lower in the capillary).

---

## 7. Important Observations

### 7.1 Effect of Tube Radius

$$h \propto \frac{1}{r}$$

* Smaller radius → Greater capillary rise
* Doubling radius → Halving the rise height
* Significant only for tubes < 10 mm diameter

### 7.2 Meniscus Formation

**Concave Meniscus (θ < 90°):**
* Liquid wets the tube
* Liquid rises (h > 0)
* Example: Water in glass

**Convex Meniscus (θ > 90°):**
* Liquid doesn't wet tube
* Liquid depresses (h < 0)
* Example: Mercury in glass

### 7.3 Energy Considerations

**Free Energy Change:**
$$\Delta G = \gamma_{SL}A_{SL} + \gamma_{LV}A_{LV} - \gamma_{SV}A_{SV}$$

For hydrophilic surfaces (θ < 90°), ΔG < 0, so capillary filling is spontaneous.

---

## 8. Practical Applications

### 8.1 Natural Phenomena

**1. Plant Physiology:**
* Water transport from roots to leaves
* Capillary action in xylem vessels
* Sap flow in trees up to 100+ meters

**2. Paper and Fabrics:**
* Absorption of ink by paper
* Wicking in towels and sponges
* Oil rising in lamp wicks

**3. Soil Science:**
* Water retention in soil
* Moisture distribution
* Irrigation efficiency

**4. Blood Circulation:**
* Blood flow in capillaries
* Tissue fluid exchange

### 8.2 Engineering Applications

**1. Flow Measurement:**
* Capillary viscometers
* Microfluidic devices

**2. Material Testing:**
* Wettability assessment
* Contact angle measurement
* Quality control of coatings

**3. Industrial Processes:**
* Non-destructive testing (liquid penetrant)
* Inkjet printing
* Chromatography

**4. Medical Diagnostics:**
* Lateral flow tests (pregnancy tests, COVID tests)
* Blood glucose meters
* Capillary blood collection

**5. Cleaning and Coating:**
* Detergent action (reducing surface tension)
* Paint spreading
* Surface treatments

### 8.3 Everyday Examples

1. **Sponge absorption:** Capillary action in pores
2. **Paper towel soaking:** Water wicking upward
3. **Candle wick:** Wax rising by capillarity
4. **Fountain pen:** Ink flow controlled by capillarity
5. **Tears drainage:** Capillary action in tear ducts

---

## 9. Factors Affecting Surface Tension

### 9.1 Temperature
* ↑ Temperature → ↓ Surface tension
* At critical temperature, γ → 0

### 9.2 Impurities
* **Surfactants** (soap, detergents) drastically reduce surface tension
* Contamination can alter wetting properties

### 9.3 Pressure
* Minor effect for liquids
* Significant for gas-liquid interfaces at high pressure

---

## 10. Surface Energy and Work

### 10.1 Work to Create New Surface

$$W = \gamma \Delta A$$

Where ΔA is the increase in surface area.

### Example:
Work to blow a soap bubble from radius 1 cm to 2 cm (γ = 0.03 N/m):

Initial area: A₁ = 2 × 4πr₁² = 8π(0.01)² = 0.00251 m²  
Final area: A₂ = 2 × 4πr₂² = 8π(0.02)² = 0.01005 m²

$$W = 0.03 \times (0.01005 - 0.00251) = 2.26 \times 10^{-4} \text{ J}$$

---

## 11. Advanced Concepts

### 11.1 Laplace Pressure for General Surfaces

For non-spherical surfaces:

$$\Delta P = \gamma\left(\frac{1}{R_1} + \frac{1}{R_2}\right)$$

Where R₁ and R₂ are the principal radii of curvature.

### 11.2 Capillary Pressure in Porous Media

$$P_{cap} = \frac{2\gamma\cos\theta}{r}$$

Critical for:
* Oil recovery
* Water movement in soil
* Fuel cell operation

---

## 12. Measurement Techniques

### 12.1 Capillary Rise Method
* Measure height h in capillary
* Calculate γ using Jurin's law

### 12.2 Drop Weight Method
* Measure weight of falling drop
* γ proportional to drop weight

### 12.3 Wilhelmy Plate Method
* Measure force on vertical plate
* Universal method for long-term monitoring

### 12.4 Pendant Drop Method
* Analyze shape of hanging drop
* Uses image processing

---

## References for Further Study

1. **Surface Tension - Wikipedia**
   https://en.wikipedia.org/wiki/Surface_tension

2. **Surface Tension and Capillarity - Vedantu**
   https://www.vedantu.com/jee-main/physics-surface-tension-and-contact-angle

3. **Capillary Action Explained**
   https://www.biolinscientific.com/blog/capillary-action-how-contact-angle-and-surface-tension-are-related

4. **Chemistry LibreTexts - Surface Tension**
   https://chem.libretexts.org/

5. **Engineering LibreTexts - Wetting of Surfaces**
   https://eng.libretexts.org/Bookshelves/Civil_Engineering/Fluid_Mechanics_(Bar-Meir)/

---

## Key Formulas Summary

| Concept | Formula | Description |
|---------|---------|-------------|
| Surface Tension | γ = F/L = E/A | Force per length |
| Young-Laplace (droplet) | ΔP = 2γ/R | Pressure in droplet |
| Young-Laplace (bubble) | ΔP = 4γ/R | Pressure in bubble |
| Young's Equation | γ_SV = γ_SL + γ_LV cosθ | Contact angle |
| Capillary Rise | h = 2γcosθ/(ρgr) | Jurin's law |
| Surface Work | W = γΔA | Energy to create surface |

---

## Quick Reference: Common Values

**Water at 20°C:**
* γ = 72.8 mN/m
* θ (on glass) ≈ 0°
* θ (on wax) ≈ 107°

**Mercury at 20°C:**
* γ = 485 mN/m
* θ (on glass) ≈ 140°

**Soap Solution:**
* γ ≈ 25-30 mN/m (much lower than pure water)
