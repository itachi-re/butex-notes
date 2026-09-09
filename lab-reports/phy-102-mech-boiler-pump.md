# Mechanical Engineering Lab Reports
**Author:** Tropa Bose

---

## Experiment 01 — Study of Steam Generating Unit / Boiler

**Objective:** To study the working of various types of steam generators (boilers).

### Introduction
A steam boiler is a closed vessel that generates steam by transferring heat produced by burning fuel to water. The steam produced is used for power generation or process heating.

### Working Principle
Fuel (coal) burns in a furnace → hot gases touch the boiler shell surface → water inside gets heated → steam is generated → steam drives a turbine → turbine rotation generates electricity.

Boiler mountings and accessories are also present to increase efficiency.

### Assignment 1

**Q1. Differentiate between Fire Tube and Water Tube Boiler. Which is mostly used in the textile industry?**

| Feature | Fire Tube Boiler | Water Tube Boiler |
|---|---|---|
| Flow of Fluid | Hot gases pass through tubes; water surrounds them | Water flows inside tubes; hot gases surround them |
| Pressure Range | Low to medium (up to ~25 bar) | High (up to ~150 bar or more) |
| Steam Generation Rate | Low | High |
| Initial Cost | Lower | Higher |
| Maintenance | Easier and cheaper | Requires skilled maintenance; more expensive |
| Construction | Simple and compact | Complex; requires more space |
| Heat Transfer Rate | Lower | Higher |
| Suitability | Small plants and heating applications | Large power plants and industrial applications |
| Explosion Risk | Higher (large water volume under pressure) | Lower (less water content in boiler) |
| Examples | Lancashire, Cochran, Locomotive boilers | Babcock & Wilcox, Stirling, Lamont boilers |

**Fire tube boilers are mostly used in the textile industry** (especially small and medium-scale textile plants).

**Reasons:**
1. Lower installation and maintenance costs.
2. Suitable steam pressure and temperature for processes like dyeing, drying, printing, and finishing.
3. Easy to operate and manage.

**Q2. Schematic Diagram of a Boiler Plant**

```
Air → [Air Pre-heater] → [Economiser] → Feed Water Pump
                                 ↓
[Boiler] → Gases → [Super-heater] → Steam → To Engine
   ↓
  Ash
   ↑
Water (returned)
```

**Q3. Importance of Boilers in the Textile Sector**

| Process | Role of Boiler |
|---|---|
| Dyeing | Controls colour quality and consistency |
| Printing | Helps in colour fixing and clear patterns |
| Finishing | Enhances fabric appearance and texture |
| Drying | Removes moisture safely without damage |
| Yarn Treatment | Improves yarn flexibility and weaving process |
| Process Heating | Provides consistent, controlled heating for all operations |

**Q4 (Math) — Minimum Chimney Height**

**Given:** m = 18 kg air/kg fuel, h = 25 mm of water, T₁ = 27°C = 300 K, T₂ = 315°C = 588 K

**Formula:** `h = 353H (1/T₁ − (m+1)/(m·T₂))`

```
25 = 353H (1/300 − 19/(18×588))
25 = 353H (3.33×10⁻³ − 1.795×10⁻³)
25 = 0.5428H
H = 46.05 m
```
**∴ Minimum height of chimney = 46.05 m**

---

## Experiment 02 — Study of Centrifugal Pump & Reciprocating Pump

**Objective:** To study the working principles of centrifugal and reciprocating pumps.

### Introduction
Pumps are commonly installed in waterworks and wastework systems to raise water levels and boost pressure. The design and components of a pumping station are vital to its effectiveness.

### Working of Centrifugal Pump
1. Water is drawn from the source through the suction pipe.
2. The impeller rotates, spinning liquid outwards → centrifugal acceleration with kinetic energy.
3. The pump volute (casing) catches the liquid and slows it down.
4. In the discharge nozzle, velocity is converted to pressure — **Bernoulli's Principle**.

**Components:** Eye of pump, Impeller, Casing, Suction pipe, Sump, Foot valve, Delivery pipe.

### Working of Reciprocating Pump
1. Power source gives rotary motion to crank.
2. Connecting rod translates rotary → reciprocating motion to piston in cylinder.
3. **Suction stroke:** Crank moves from inner to outer dead centre → vacuum created → water enters.
4. **Delivery stroke:** Piston moves from outer to inner dead centre → piston forces water out through delivery valve.

### Assignment 2

**Q1. Operation Characteristics of Two Centrifugal Pumps**

- **Single pump:** Produces a relatively low pressure increase in the fluid.
- **Two pumps in series:** Used to overcome larger system head loss than one pump can handle alone. Single-stage pumps in series are rare; multistage centrifugal pumps are preferred.
- **Two pumps in parallel:** Used to overcome larger volume flows. Zero flow or shut-valve heads must match for the pumps. Steep pump curves are preferred.

**Q2. Why Cavitation Occurs and Ways to Treat It**

**Causes:**
1. Rapid pressure drop
2. High velocity
3. Temperature increase
4. Obstructions and turbulence
5. Poor impeller design

**Treatment:**
1. Control temperature within a specific range.
2. Maintain proper fluid pressure by controlling velocity and flow area.
3. Keep suction pressure above the liquid's saturation pressure.
4. Keep suction head small or mount pump near the reservoir.

### Math Problems

**Q3.6.1 — Single Acting Reciprocating Pump (Coefficient of Discharge & % Slip)**

**Given:** D = 300 mm = 0.3 m, L = 200 mm = 0.2 m, N = 30 rpm, Qₐ = 6.5 L/s = 0.0065 m³/s

```
Area, A = π(D/2)² = π(0.15)² = 0.0707 m²
Theoretical discharge, Qth = LAN/60 = (0.2 × 0.0707 × 30)/60 = 0.00707 m³/s
Coefficient of discharge, Cd = Qa/Qth = 0.0065/0.00707 = 0.92
Percentage slip = (Qth − Qa)/Qth × 100 = (0.0071 − 0.0065)/0.0071 × 100 = 8.45%
```

**Q3.6.2 — Double Acting Reciprocating Pump (Power Required)**

**Given:** L = 300 mm = 0.3 m, D = 150 mm = 0.15 m, Hd = 26 m, Hs = 4 m, N = 60 rpm, η = 80% = 0.8

```
Area, A = π(0.075)² = 0.01767 m²
Theoretical discharge (double acting), Qs = 2LAN/60 = (2×0.3×0.01767×60)/60 = 0.0106 m³/s
Theoretical power, Po = wQs(Hs + Hd) = 9.81 × 0.0106 × (4+26) × 1000/1000 = 3.12 kW
Input power, Pi = Po/η = 3.12/0.8 = 3.9 kW
```

---

## Experiment 03 — Study of Engines (Petrol, Diesel & Gas) & Turbines

**Objective:** Familiarization with the working principles of power generators — engines (petrol, diesel & gas) and turbines.

### Introduction
A **heat engine** is a machine that converts heat energy into mechanical energy. Combustion of fuel (coal, petrol, diesel) generates heat → supplied to a working substance → expansion in machines converts heat to useful work.

**Types:** (i) External Combustion, (ii) Internal Combustion

A **turbine** is a device that extracts mechanical energy from a fluid, converting it to rotational energy of a turbine wheel.

### Assignment 3

**Q1. Spark Ignition (SI) vs Compression Ignition (CI) Engine**

| Feature | Spark Ignition (SI) | Compression Ignition (CI) |
|---|---|---|
| Working Cycle | Otto cycle | Diesel cycle |
| Fuel | Petrol / High octane | Diesel / High cetane |
| Self-Ignition Temp. | High | Low |
| Mixture Introduction | Gaseous mixture (air+fuel) in suction stroke | Fuel injected directly into combustion chamber |
| Fuel Supply | Carburetor | Injector and high pressure pump |
| Compression Ratio | 6 to 10.5 | 14 to 22 |

**Q2. 2-Stroke vs 4-Stroke Engine**

| Feature | 2-Stroke | 4-Stroke |
|---|---|---|
| Cycle Events | All four events in one up + one down stroke | All four events in two up + two down strokes |
| Power Delivery | Every revolution of crankshaft | Every two revolutions of crankshaft |
| Power-to-Weight Ratio | Higher | Lower |
| Cost | Less expensive | More expensive |
| Fuel Efficiency | Less | More |
| Pollution | More | Less |
| Size | Light and compact | Heavy and bulky |
| Wear and Tear | Higher rate | Lower rate |

**Q3 (Math) — Otto Cycle Engine Efficiency**

**Given:** d = 150 mm = 0.15 m, l = 225 mm = 0.225 m, Vc = 1.25×10⁻³ m³, γ = 1.4

```
Swept Volume, Vs = π/4 × d² × l = π/4 × (0.15)² × 0.225 = 3.98×10⁻³ m³
Compression ratio, rc = (Vc + Vs)/Vc = (1.25×10⁻³ + 3.98×10⁻³)/(1.25×10⁻³) = 4.18
η = 1 − 1/(rc^(γ−1)) = 1 − 1/(4.18^0.4) = 0.406 = 40.6%
```

**Diesel Cycle Engine Efficiency (Given:** d=150mm, l=200mm, Vc=10% of Vs, cut-off at 6% of stroke, γ=1.4**)**

```
Vs = π/4×(0.15)²×0.2 = 3.53×10⁻³ m³
Vc = 0.1×Vs = 3.53×10⁻⁴ m³
rc = (Vc + Vs)/Vc = 11
V3−V2 = 0.06(V1−V2) → rc_cut = 1.6
η_diesel = 1 − (1/rc^(γ−1)) × (ρ^γ − 1)/(γ(ρ−1)) = 57.53%
```

**Q4. Turbine at Kaptai Hydroelectric Power Plant**

- **Turbine Type:** Francis turbine (reaction turbine)
- **Reason:** Francis turbines are well-suited for medium head (10–300 m), which matches the conditions at the Karnaphuli River where the Kaptai Dam is located.
- **Installed Capacity:** 5 units, total capacity of 230 MW.

---

## Experiment 04 — Study of Refrigeration Unit

**Objective:** Familiarization with the working principle of a refrigeration unit.

### Introduction
**Refrigeration** is the process of removing heat from a substance under controlled conditions, including reducing and maintaining the temperature of a body below the general temperature of its surroundings.

**Air Conditioning** is the branch of engineering science dealing with conditioning of air — supplying and maintaining desirable internal atmospheric conditions for human comfort, irrespective of external conditions. It involves simultaneous control of temperature, humidity, cleanliness, and air motion.

### Vapour Compression Refrigeration
During evaporation, the liquid refrigerant absorbs latent heat from the space/product to be cooled → changes from liquid to gaseous state. The vapour is compressed → condensed (vapour liquefies by rejecting heat to cooling water or air). The system is called vapour compression because it is the compression of refrigerant that permits heat pumping.

**Working Processes:**
- **Process 1→2:** Adiabatic/Isentropic compression
- **Process 2→3:** Constant pressure condensation / heat rejection
- **Process 3→4:** Throttling
- **Process 4→1:** Constant pressure evaporation / heat absorption

**System Components:** Compressor motor → Compressor → Oil separator → Condenser → Expansion cylinder → Evaporator

### Assignment 4

**Q1. Winter & Summer Air Conditioning Systems**

**Winter System:** Air is heated and humidified.
- Outside air flows through a damper → mixes with re-circulated air → filter (removes dirt/dust) → preheat coil → humidifier → reheat coil → fan → conditioned space.
- Part of used air is exhausted; remainder is re-circulated.

**Summer System:** Air is cooled and dehumidified.
- Outside air → damper → mixes with re-circulated air → filter → cooling coil → perforated membrane (loses moisture to sump) → heating coil → fan → conditioned space.
- Part of used air is rejected; remainder is re-conditioned.

### Math Problems

**Q5.1 — Ice Plant Problem**

**Given:** m = 10,000 kg, T₁ = 0°C, T₂ = 20°C, COP = 2.5, η = 90% = 0.9

```
Q1 (20°C water → 0°C water) = msΔT = 10000 × 4.186 × 20 = 837,200 kJ
Q2 (0°C water → 0°C ice) = mLf = 10000 × 334 = 3,340,000 kJ
Total heat removed, Q = 4,177,200 kJ/day = 48.35 kW
W = Q/COP = 48.35/2.5 = 19.34 kW
Power input, P = W/η = 19.34/0.9 = 21.5 kW
```

**Q5.2**

```
m = 500 kg, T₂ = 20°C, T₁ = −5°C, Lf = 105 kJ/kg, s = 1.26 kJ/kg·K
Q1 = 500×1.26×20 = 12,600 kJ
Q2 = 500×105 = 52,500 kJ
Q3 = 500×1.26×5 = 3,150 kJ
Total Q = 68,250 kJ (in 10 hrs) = 1.9 kW
Refrigeration capacity = 1.9/3.5 = 0.541 TR
```

**Q5.3**

```
(i)  COP_R = T1/(T2−T1) = 260/(305−260) = 5.78
(ii) COP_HP = T2/(T2−T1) = 305/(305−260) = 6.78
(iii)COP_E = (T2−T1)/T2 = 45/305 = 0.148
```

---

## Experiment 05 — Study of Steam Turbine and Gas Turbine

**Objective:** Familiarization with the working principles of steam turbine and gas turbine.

### Introduction
A **steam turbine** is a mechanical device that extracts thermal energy from pressurized steam and converts it into rotary motion.

A **gas turbine** is an internal combustion engine that uses air as the working fluid. It extracts chemical energy from fuel and converts it to mechanical energy using gaseous energy of the working fluid (air) to drive the engine and propeller.

### Working Principle — Steam Turbine (Rankine Cycle)
1. Water pumped to high pressure (State 1 → 2).
2. Water heated in boiler to generate high pressure steam (State 2 → 3).
3. High pressure steam expands through steam turbine → converted to mechanical power (State 3 → 4).
4. Low pressure steam exits; condensed liquid returned to pump. Cycle repeats.

### Working Principle — Gas Turbine (Brayton Cycle)
1. **Inlet (1):** Air enters at atmospheric pressure and constant volume.
2. **Compressor (2):** Air pressure increases, volume decreases.
3. **Combustor (3):** Air mixes with fuel and burns; pressure constant, volume increases sharply.
4. **Turbine (4):** Gases expand, rotor converts kinetic and thermal energy to mechanical energy (work output).
5. **Exhaust (5):** Gases released at large drop in volume and constant pressure. Cycle complete.

### Assignment 5

**Q1. Gas Turbine vs Steam Turbine**

| Criteria | Gas Turbine | Steam Turbine |
|---|---|---|
| Working Fluid | Hot gases (air + fuel) | Steam (water vapour) |
| Heat Source | Direct combustion of fuel (natural gas, kerosene, etc.) | External boiler heats water |
| Operating Temp. | Higher (up to 1500°C or more) | Lower (typically 540°C for superheated steam) |
| Startup Time | Fast startup and shutdown | Slower (boiler warm-up required) |
| Efficiency (simple cycle) | Lower (~30–40%) | Higher standalone: 35–45% |
| Efficiency (combined cycle) | Very high (~60% or more) | Also used as bottoming cycle |
| Size & Weight | More compact and lighter | Larger and heavier for same power output |
| Applications | Aircraft, power generation, industrial processes | Power plants, marine propulsion, industrial |
| Cooling System | Often requires air cooling | Requires water cooling systems |
| Environmental Impact | Higher NOₓ emissions | Potentially cleaner if powered by renewable steam |
| Maintenance | Less space; more frequent inspection | Regular overhaul; generally more durable |

---

## References & Additional Resources

> *These are supplementary references for deeper understanding — keep separate from exam notes.*

1. **R.K. Rajput** — *Thermal Engineering*, Laxmi Publications — comprehensive coverage of boilers, engines, turbines, and refrigeration.
2. **P.K. Nag** — *Engineering Thermodynamics*, McGraw-Hill — Rankine cycle, Brayton cycle, Otto and Diesel cycles in detail.
3. **R.S. Khurmi** — *Theory of Machines*, S. Chand — centrifugal and reciprocating pump theory.
4. **Yunus Çengel & Michael Boles** — *Thermodynamics: An Engineering Approach*, McGraw-Hill — widely used international textbook for all thermodynamic cycles.
5. **ASHRAE Handbook** — *Fundamentals* — refrigeration and air conditioning standards and systems.
6. **Bangladesh Power Development Board (BPDB)** — Kaptai Hydroelectric Power Plant details: [bpdb.gov.bd](https://www.bpdb.gov.bd)
7. **Engineering Toolbox** — Online reference for engineering formulas and data: [engineeringtoolbox.com](https://www.engineeringtoolbox.com)
8. **NPTEL (IIT lectures)** — Free video lectures on Thermal Engineering: [nptel.ac.in](https://nptel.ac.in)

### Quick Formula Sheet

| Formula | Description |
|---|---|
| `h = 353H(1/T₁ − (m+1)/mT₂)` | Chimney draught height |
| `Qth = LAN/60` (single) | Reciprocating pump discharge |
| `Qth = 2LAN/60` (double) | Double acting pump discharge |
| `Cd = Qa/Qth` | Coefficient of discharge |
| `% Slip = (Qth−Qa)/Qth × 100` | Pump slip |
| `rc = (Vc + Vs)/Vc` | Compression ratio |
| `η_otto = 1 − 1/rc^(γ−1)` | Otto cycle efficiency |
| `η_diesel = 1 − (1/rc^(γ−1)) × (ρ^γ−1)/(γ(ρ−1))` | Diesel cycle efficiency |
| `COP_R = T₁/(T₂−T₁)` | COP of refrigerator |
| `COP_HP = T₂/(T₂−T₁)` | COP of heat pump |
| `Po = wQ(Hs + Hd)` | Power for reciprocating pump |
