# Experiment 4 — Specific Heat of a Liquid by the Method of Cooling

## Aim
To determine the specific heat of a liquid by the method of cooling, comparing its cooling with that of an equal volume of water.

## Theory
Specific heat $S$ is the heat needed to raise the temperature of unit mass of a material by 1 °C. By Newton's law of cooling, the rate of cooling of a body is directly proportional to the temperature difference between the body and its surroundings; this difference must be small. A heated liquid left to cool loses heat at a rate proportional to its temperature excess over the surroundings.

Symbols:

- $m$ = mass of calorimeter with stirrer (kg); $s$ = specific heat of calorimeter material (called $S_c$ in the calculation).
- $M_1$ = mass of liquid (kg); $S_1$ = specific heat of liquid (J kg$^{-1}$ K$^{-1}$); $t_1$ = time for liquid to cool from $\theta_1$ °C to $\theta_2$ °C (s).
- $M_2$ = mass of water of the same volume as the liquid (kg); $S_2$ = specific heat of water (J kg$^{-1}$ K$^{-1}$); $t_2$ = time for water to cool from $\theta_1$ °C to $\theta_2$ °C (s).

Rates of cooling:

$$
\text{liquid: } \frac{(M_1 S_1 + ms)(\theta_1 - \theta_2)}{t_1}\ \mathrm{J\,s^{-1}}, \qquad
\text{water: } \frac{(M_2 S_2 + ms)(\theta_1 - \theta_2)}{t_2}\ \mathrm{J\,s^{-1}}
$$

The two rates are equal (Newton's law of cooling):

$$
\frac{(M_1 S_1 + ms)(\theta_1 - \theta_2)}{t_1} = \frac{(M_2 S_2 + ms)(\theta_1 - \theta_2)}{t_2}
$$

$$
S_1 = \frac{M_2 S_2 t_1 + ms\,(t_1 - t_2)}{M_1 t_2}
$$

## Principle / Law
**Newton's law of cooling:** the rate of loss of heat of a liquid is directly proportional to the difference between its temperature and that of the surroundings. Under the same conditions, the liquid and the water therefore have equal rates of cooling over the same temperature fall.

## Apparatus
1. Calorimeter with a stirrer
2. Chamber having two walls
3. Sensitive thermometer
4. Balance
5. Burner
6. Stop-watch

## Diagram
![Calorimeter set-up for the cooling method](../../assets/specific-heat-calorimeter.svg)

*Fig. 1: calorimeter (with liquid, thermometer and stirrer) inside a wool-packed wooden box.*

## Procedure
1. Weigh a clean, dry calorimeter together with its stirrer.
2. Heat water in another container to 70–75 °C, pour it into the calorimeter up to a fixed mark, and place the calorimeter in the two-walled chamber.
3. Stir slowly and record the water temperature every 2 minutes (every 3 minutes after 30 minutes) as it cools (it is above room temperature). Take 20 readings, then weigh the calorimeter with water. Mass of water = this weighing minus the first (empty) weighing.
4. Discard the water, clean and dry the calorimeter. Pour in the experimental liquid heated to 70–75 °C up to the same mark and place it in the chamber.
5. Stir slowly and repeat step 3 for the liquid (20 readings). Weigh the calorimeter with liquid; mass of liquid = this (3rd) weighing minus the first.
6. Enter all data in a table and draw a graph from it.

## Observation Table
**Weighings**

| Weighing | Mass (g) |
|:---|:---:|
| 1. Empty calorimeter with stirrer, $M_c$ | 12 |
| 2. Calorimeter with water | 112 |
| 3. Calorimeter with liquid | 112 |
| Mass of water, $M_w$ = (2) − (1) | 100 |
| Mass of liquid, $M_l$ = (3) − (1) | 100 |

**Table:** Time–Temperature record

| No. of observation | Time (min) | Temperature (°C), Water | Temperature (°C), Liquid |
|:---:|:---:|:---:|:---:|
| 1 | 0 | 70.0 | 70.0 |
| 2 | 2 | 67.5 | 66.5 |
| 3 | 4 | 65.0 | 63.5 |
| 4 | 6 | 62.5 | 60.5 |
| 5 | 8 | 60.5 | 58.0 |
| 6 | 10 | 58.5 | 55.5 |
| 7 | 12 | 56.5 | 53.5 |
| 8 | 14 | 55.0 | 51.5 |
| 9 | 16 | 53.5 | 49.5 |
| 10 | 18 | 52.0 | 48.0 |
| 11 | 20 | 50.5 | 46.0 |
| 12 | 22 | 49.0 | 45.0 |
| 13 | 24 | 48.0 | 43.5 |
| 14 | 26 | 46.5 | 42.5 |
| 15 | 28 | 45.5 | 41.5 |
| 16 | 30 | 44.5 | 40.5 |
| 17 | 33 | 43.0 | 39.0 |
| 18 | 36 | 42.0 | 38.0 |
| 19 | 39 | 40.5 | 37.0 |
| 20 | 42 | 39.5 | 36.0 |

## Graph
![Cooling curves of water and liquid](../../assets/cooling-curve.svg)

- Axes: temperature (°C) on the y-axis, time (min) on the x-axis; two cooling curves, labelled Water and Liquid.
- Both curves start at 70 °C. The liquid cools faster, so its curve lies below the water curve throughout.
- Horizontal lines are drawn at $\theta_1 = 60$ °C and $\theta_2 = 50$ °C. From the graph, the liquid takes $t_1 = 9$ min and the water takes $t_2 = 12$ min to cool from $\theta_1$ to $\theta_2$.

## Calculation
Data: $M_c = 12$ g, $S_c = 0.0909$ cal/g·°C, $M_w = 100$ g, $S_w = 1$ cal/gm·°C, $M_l = 100$ g, $t_1 = 9$ min, $t_2 = 12$ min.

Notation in this calculation: $M_c S_c = ms$, $M_w S_w = M_2 S_2$, $M_l = M_1$.

$$
S_1 = \frac{M_w S_w t_1 + M_c S_c (t_1 - t_2)}{M_l\, t_2}
$$

$$
S_1 = \frac{(100 \times 1 \times 9) + 12 \times 0.0909\,(9 - 12)}{100 \times 12} = 0.747\ \mathrm{cal/gm\cdot{}^\circ C}
$$

(Arithmetic check: numerator $= 900 - 3.27 = 896.73$; $896.73 / 1200 = 0.7473$.)

## Result
Specific heat of the liquid, $S_1 = 0.747\ \mathrm{cal/gm\cdot{}^\circ C}$.

## Precautions
1. Take equal volumes of water and liquid (fill to the same mark).
2. Do not use a volatile liquid.
3. Use a clean, dry calorimeter and weigh it accurately.
4. Stir slowly and read temperature and time accurately.

## Sources of Error
- Unclean calorimeter and inaccurate weighing, temperature or time readings make the result inaccurate.
- Unequal volumes of water and liquid introduce error.
- The bottom of the calorimeter was blackened, which increased its heat radiation.
