# PHY-102 — Physics-I Lab Reports
**Subject Code:** PHY-102 | **Level:** 01, Term: 01

---

## Table of Contents

1. [Experiment 01 — Vernier Calipers: Width of a Rectangular Object](#experiment-01--vernier-calipers-width-of-a-rectangular-object)
2. [Experiment 02 — Screw Gauge: Thickness of a Thin Object](#experiment-02--screw-gauge-thickness-of-a-thin-object)
3. [Experiment 03 — Focal Length of a Convex Lens (Displacement Method)](#experiment-03--focal-length-of-a-convex-lens-displacement-method)
4. [Experiment 04 — Acceleration Due to Gravity *g* (Simple Pendulum)](#experiment-04--acceleration-due-to-gravity-g-simple-pendulum)
5. [Experiment 05 — Acceleration Due to Gravity *g* (Compound / Bar Pendulum)](#experiment-05--acceleration-due-to-gravity-g-compound--bar-pendulum)
6. [Experiment 06 — Moment of Inertia of a Flywheel](#experiment-06--moment-of-inertia-of-a-flywheel)
7. [References & Extended Knowledge](#references--extended-knowledge)

---

## Experiment 01 — Vernier Calipers: Width of a Rectangular Object

### Apparatus
Vernier calipers, rectangular object.

### Description of Apparatus
The Vernier caliper, invented by French mathematician **Pierre Vernier**, is a precision measuring instrument capable of determining the length of a rod, the external or internal diameter of a cylinder, and the depth of small vessels. Its body consists of a steel strip graduated in centimetres — the **main scale** — over which a shorter **Vernier scale** slides and can be locked at any position using a clamping screw.

Two sets of jaws extend perpendicularly from the scales. The lower external jaws measure outer dimensions, the upper internal jaws measure internal diameters, and a long thin strip attached to the back protrudes as the jaws open to measure depths. The minimum distance the instrument can resolve is its **least count**, defined as the difference between one main scale division and one Vernier scale division.

### Theory

If the value of one main scale division is $x$ and the Vernier scale carries $n$ divisions, the least count is:

$$\text{LC} = \frac{x}{n} = \frac{\text{Value of 1 main scale division}}{\text{Total divisions on Vernier scale}}$$

The **zero error** arises when the zero marks of the two scales fail to coincide when the jaws are fully closed.
- **Positive zero error:** Vernier zero lies to the *right* of the main scale zero. The coinciding Vernier division multiplied by LC gives the error; it is subtracted from the observed reading.
- **Negative zero error:** Vernier zero lies to the *left*. Subtract the coinciding division from the total VSD count, multiply by LC; this is added to the reading.

$$\text{Correct Reading} = \text{Observed Reading} - \text{Zero Error (with sign)}$$

### Procedure
1. Count the total Vernier divisions $n$ and the value of one main scale division $x$. Calculate LC.
2. Close the jaws completely and check for zero error by the method above.
3. Grip the object firmly but not forcefully between the external jaws. Read the main scale division just behind the Vernier zero (MSR), then identify the Vernier division that aligns most precisely with any main scale line (coinciding VSD). Total reading = MSR + (VSD × LC).
4. Subtract zero error with its sign to get the correct reading.
5. Repeat at several positions along the object and average the results.

### Observations

- Total Vernier scale divisions, $n = 20$
- Value of 1 MSD, $x = 1\ \text{mm}$
- **Least Count** $= \dfrac{1}{20} = 0.05\ \text{mm}$

**Table 1 — Zero Error** (Positive assumed):

| SL | MSR (mm) | Coinciding VSD | VS Reading $=$ VSD $\times$ LC (mm) | Total (mm) |
|----|----------|----------------|--------------------------------------|------------|
| 1  | 0        | 8              | $8 \times 0.05 = 0.40$               | 0.40       |
| 2  | 0        | 7              | $7 \times 0.05 = 0.35$               | 0.35       |
| 3  | 0        | 8              | $8 \times 0.05 = 0.40$               | 0.40       |
| 4  | 0        | 9              | $9 \times 0.05 = 0.45$               | 0.45       |

$$\text{Mean Zero Error} = \frac{0.40+0.35+0.40+0.45}{4} = 0.40\ \text{mm}$$

**Table 2 — Width of Rectangular Object:**

| SL | MSR (mm) | Coinciding VSD | VS Reading (mm) | Total (mm) |
|----|----------|----------------|-----------------|------------|
| 1  | 19.0     | 8              | 0.40            | 19.40      |
| 2  | 19.0     | 7              | 0.35            | 19.35      |
| 3  | 19.0     | 8              | 0.40            | 19.40      |
| 4  | 18.9     | 9              | 0.45            | 19.35      |
| 5  | 19.1     | 8              | 0.40            | 19.50      |

$$\text{Mean Observed Width} = \frac{19.40+19.35+19.40+19.35+19.50}{5} = \frac{97.00}{5} = 19.40\ \text{mm}$$

### Calculation

$$\text{Correct Width} = 19.40 - 0.40 = \boxed{19.00\ \text{mm}}$$

### Precautions
- The object must not be gripped too tightly or too loosely, as either extreme introduces error.
- Eyes must be perpendicular to the scale while reading to avoid parallax error.
- Readings should be taken at different positions along the width and in two perpendicular directions to account for the object's possible non-uniformity.

> **Result:** The width of the given rectangular object is **19.00 mm**.

---

## Experiment 02 — Screw Gauge: Thickness of a Thin Object

### Apparatus
Screw gauge, thin object (wire / sheet).

### Description of Apparatus
The screw gauge has a **U-shaped steel frame** with a plane metallic stud A at one end and an internally threaded nut N at the other. A screw with flat end B moves through this nut. The frame above the nut carries the **main scale** in millimetres with zero towards the stud. Fitted over the cylindrical frame is a hollow rotating cylinder whose forward edge — the **head scale** — is divided into 50 or 100 equal parts. A **ratchet** attached at the far end by a spring slips when the object is gripped just firmly enough, preventing over-tightening.

### Theory

The screw gauge works on the principle that one full rotation of the head advances the screw by exactly one thread pitch. The **least count** is:

$$\text{LC} = \frac{\text{Pitch}}{N}$$

**Zero error** is checked by closing the gap between A and B without any object.
- **Positive zero error:** Head scale zero remains *below* the baseline. The coinciding head division × LC is the error.
- **Negative zero error:** Head scale zero goes *above* the baseline. Subtract the coinciding division from $N$, multiply by LC.

The **backlash error** arises from wear in the screw threads: if the rotation direction is reversed suddenly, the head moves but the screw does not, causing the head scale reading to change while the main scale stays fixed. This is avoided by always rotating in one direction only.

$$\text{Correct Reading} = \text{Observed Reading} - \text{Zero Error (with sign)}$$

### Procedure
1. Rotate the head one full turn and read the pitch from the main scale. Count head scale divisions $N$. Calculate LC.
2. Close the gap fully using only the ratchet. Determine zero error.
3. Open the gap sufficiently, place the object, and close using only the ratchet until it clicks — never force beyond this.
4. Read MSR (number of main scale divisions visible) and the head scale division coinciding with the baseline. Head scale reading = coinciding HSD × LC. Total reading = MSR + head scale reading.
5. Subtract zero error with sign. Repeat at several positions and take the mean.

### Observations

- Pitch $= 1\ \text{mm}$
- Total head scale divisions, $N = 100$
- **Least Count** $= \dfrac{1}{100} = 0.01\ \text{mm}$

**Table 1 — Zero Error** (Positive assumed):

| SL | MSR (mm) | Coinciding HSD | HS Reading $=$ HSD $\times$ LC (mm) | Total (mm) |
|----|----------|----------------|--------------------------------------|------------|
| 1  | 0        | 3              | $3 \times 0.01 = 0.03$               | 0.03       |
| 2  | 0        | 1              | $1 \times 0.01 = 0.01$               | 0.01       |
| 3  | 0        | 2              | $2 \times 0.01 = 0.02$               | 0.02       |
| 4  | 0        | 1              | $1 \times 0.01 = 0.01$               | 0.01       |

$$\text{Mean Zero Error} = \frac{0.03+0.01+0.02+0.01}{4} = 0.0175\ \text{mm}$$

**Table 2 — Thickness of Object:**

| SL | MSR (mm) | Coinciding HSD | HS Reading (mm) | Total (mm) |
|----|----------|----------------|-----------------|------------|
| 1  | 1.5      | 5              | 0.05            | 1.55       |
| 2  | 1.5      | 4              | 0.04            | 1.54       |
| 3  | 1.6      | 5              | 0.05            | 1.65       |
| 4  | 1.4      | 6              | 0.06            | 1.46       |
| 5  | 1.5      | 4              | 0.04            | 1.54       |

$$\text{Mean Observed Thickness} = \frac{1.55+1.54+1.65+1.46+1.54}{5} = 1.548\ \text{mm}$$

### Calculation

$$\text{Correct Thickness} = 1.548 - 0.0175 = \boxed{1.5305\ \text{mm}}$$

### Precautions
- Advance the screw using the ratchet only — never apply direct force to avoid distorting the object.
- Measure at several positions and orientations along the object and take their average.
- Do not reverse the rotation mid-measurement; if reversal is necessary, advance further first and then reverse to eliminate backlash.

> **Result:** The thickness of the given thin object is **1.5305 mm**.

---

## Experiment 03 — Focal Length of a Convex Lens (Displacement Method)

### Apparatus
Optical bench, convex lens with holder, image screen, illuminated cross-wire object, light source.

### Theory

Place an object and a screen a fixed distance $D$ apart on an optical bench. A convex lens inserted between them will produce a sharp image at the screen for certain positions of the lens. Applying the lens formula $\dfrac{1}{v} - \dfrac{1}{u} = \dfrac{1}{f}$ with the sign convention ($u$ negative) and the constraint $u + v = D$:

$$\frac{1}{D-u} + \frac{1}{u} = \frac{1}{f} \implies u^2 - uD + Df = 0$$

This quadratic yields two distinct real solutions — two lens positions $L_1$ and $L_2$ both forming sharp images — only when the discriminant is positive, i.e., when $D > 4f$. The two solutions are:

$$u_1 = \frac{D}{2} - \frac{\sqrt{D^2-4Df}}{2}, \qquad u_2 = \frac{D}{2} + \frac{\sqrt{D^2-4Df}}{2}$$

The separation between these two positions is the **displacement**:

$$x = u_2 - u_1 = \sqrt{D^2 - 4Df} \implies x^2 = D^2 - 4Df$$

Solving for the focal length:

$$\boxed{f = \frac{D^2 - x^2}{4D}} \qquad P\,(\text{D}) = \frac{100}{f'\,(\text{cm})}$$

### Procedure
1. Obtain an approximate focal length by holding the lens before a distant bright source and focussing its image onto paper. This guides the minimum $D$ to use.
2. Place the object near one end of the optical bench and fix the screen at a distance $D$ that comfortably exceeds $4f$ (by about 5 cm).
3. Slide the lens toward the object until a **real, inverted, and magnified** image appears sharply on the screen. Record this lens position as $L_1$.
4. Continue sliding the lens away from the object until a second sharp image forms — this time **real, inverted, and diminished**. Record this as $L_2$.
5. Compute $x = |L_1 - L_2|$. Note object and screen positions to get $D$.
6. Repeat the entire procedure at least five times with different $D$ values. Compute $f$ for each trial and take the mean $f'$.

### Data Table

| $n$ | $O$ (cm) | $I$ (cm) | $L_1$ (cm) | $L_2$ (cm) | $x$ (cm) | $D$ (cm) | $f$ (cm) |
|-----|----------|----------|------------|------------|----------|----------|----------|
| 1   | 0        | 89       | 36.6       | 54.0       | 17.4     | 89       | 21.40    |
| 2   | 0        | 90       | 36.0       | 53.5       | 17.5     | 90       | 21.65    |
| 3   | 0        | 92       | 37.0       | 56.1       | 19.1     | 92       | 22.01    |
| 4   | 0        | 94       | 36.3       | 58.8       | 22.5     | 94       | 22.15    |
| 5   | 0        | 98       | 33.6       | 64.0       | 30.4     | 98       | 22.14    |

### Calculation

**Sample** ($n = 1$):

$$f_1 = \frac{89^2 - 17.4^2}{4 \times 89} = \frac{7921 - 302.76}{356} = \frac{7618.24}{356} = 21.40\ \text{cm}$$

$$f' = \frac{21.40+21.65+22.01+22.15+22.14}{5} = 21.87\ \text{cm}$$

$$P = \frac{100}{21.87} = 4.57\ \text{D} \qquad \%\ \text{error} = \left|\frac{21.87-20}{20}\right| \times 100 = 9.35\%$$

### Discussion

The formula is only valid when $D > 4f$. As $D$ approaches $4f$ from above, $x$ shrinks toward zero, making the two lens positions indistinguishable and inflating the percentage error sharply. Conversely, making $D$ very large causes $x$ to approach $D$ itself, which is equally problematic. The optimal range is roughly $D \approx 1.5$ to $2 \times 4f$. Since small changes in $D$ near the boundary produce large changes in $x$, the object-screen separation should be varied in steps of **4 to 5 cm** to maintain experimental control.

> **Result:** Mean focal length $f' =$ **21.87 cm**, Power $P =$ **4.57 D** (% error = 9.35%).

---

## Experiment 04 — Acceleration Due to Gravity $g$ (Simple Pendulum)

### Apparatus
Heavy metallic bob with hook, inextensible thread, stop clock, clamp stand, metre scale, Vernier calipers, a cork split at the centre to grip the thread.

### Theory

A simple pendulum is a point mass suspended by a massless, inextensible string. When displaced by a small angle $\theta$ and released, the restoring force is directly proportional to displacement — the bob executes **simple harmonic motion (SHM)**. The time period is:

$$T = 2\pi\sqrt{\frac{l}{g}} \implies \boxed{g = 4\pi^2 \cdot \frac{l}{T^2}}$$

where $l$ is the **effective length** (suspension point to centre of bob) and $g$ is the local gravitational acceleration. Since $g$ is constant at a given location, the ratio $l/T^2$ is constant for any pendulum length at that place. A graph of $l$ versus $T^2$ is therefore a straight line through the origin with slope $l/T^2$, from which $g = 4\pi^2 \times \text{slope}$.

The effective length is $l = l_\text{thread} + l_\text{hook} + r_\text{bob}$.

### Procedure

**Finding the radius of the bob:**
Measure the bob's diameter with Vernier calipers at three positions (and two perpendicular orientations at each). Subtract zero error and divide the mean diameter by 2 to obtain the radius $r$.

**Setting up the pendulum:**
Tie one end of the thread to the bob's hook. Mark 34 cm, 42 cm, and 54 cm on the thread with ink. Clamp the other end tightly between two halves of a cork fixed to a stand so that the 34 cm mark sits at the lower surface of the cork — the point of suspension. Ensure neither the bob nor the thread touches the table or the ground.

**Measuring the time period:**
Mark the floor beneath the bob's rest position. Displace the bob about 5 cm (so $\sin\theta \approx \theta$ holds well) and release it gently to swing in a straight vertical line — no lateral or rotational motion. Start the clock as the bob passes through the mean position and count 10 complete vibrations; repeat three times. Mean time $= t$, period $T = t/10$. Repeat for thread lengths 42 cm and 54 cm.

### Observations

**Radius of Bob** (Vernier LC = 0.005 cm, zero error = 0):

| SL | MSR (cm) | Coinciding VSD | Diameter (cm) |
|----|----------|----------------|---------------|
| 1  | 1.11     | 6              | 1.140         |
| 2  | 1.12     | 4              | 1.140         |
| 3  | 1.11     | 7              | 1.145         |

Mean diameter $= 1.142\ \text{cm}$ → **Radius** $r = 0.571\ \text{cm}$, Hook length $l_1 = 0.21\ \text{cm}$

**Time Period Table** (effective $l = l_\text{thread} + 0.21 + 0.571$):

| SL | $l_2$ (cm) | $l$ (cm) | $t_1$ (s) | $t_2$ (s) | $t_3$ (s) | Mean $t$ (s) | $T$ (s) | $l/T^2$ |
|----|------------|----------|-----------|-----------|-----------|--------------|---------|---------|
| 1  | 34         | 34.78    | 11.94     | 12.00     | 11.92     | 11.95        | 1.195   | 24.36   |
| 2  | 42         | 42.78    | 13.28     | 13.25     | 13.27     | 13.26        | 1.326   | 24.33   |
| 3  | 54         | 54.78    | 15.34     | 15.31     | 15.36     | 15.33        | 1.533   | 23.31   |

### Calculation

$$\overline{l/T^2} = \frac{24.36+24.33+23.31}{3} = 23.999\ \text{cm\,s}^{-2}$$

$$g = 4\pi^2 \times 23.999 = 39.478 \times 23.999 = \boxed{947.5\ \text{cm/s}^2 = 9.47\ \text{m/s}^2}$$

### Discussion

The derivation assumes the bob's path is a straight line, but in practice it traces a circular arc. This is valid only when $\sin\theta \approx \theta$, i.e., for $\theta \lesssim 5°$. Additionally, the formula ignores air resistance — real pendulums are damped, and the medium introduces a small systematic reduction in the period. Furthermore, the pendulum is idealized as a point mass on a massless string; the finite mass of the thread and the finite volume of the bob both introduce deviations. For these reasons, a truly accurate determination of $g$ using a simple pendulum is inherently limited, and the compound pendulum (next experiment) is preferred for precision.

> **Result:** $g =$ **9.47 m/s²**

---

## Experiment 05 — Acceleration Due to Gravity $g$ (Compound / Bar Pendulum)

### Apparatus
Bar pendulum (metallic bar ~1 m with drilled holes), knife-edge platform with levelling screws, spirit level, precision stop watch, metre scale, telescope.

### Description of Apparatus
The bar pendulum consists of a metallic bar approximately one metre long, carrying a series of circular holes of about 5 mm diameter at regular 5 cm intervals along its length. It is suspended from a horizontal knife-edge passing through any chosen hole. The knife-edge is mounted in a platform equipped with adjusting screws so the platform can be made perfectly horizontal using a spirit level.

### Theory

A rigid body mounted on a horizontal, frictionless axis and set to oscillate under gravity is a **compound pendulum**. Let $G$ be the centre of gravity, $P$ the point of suspension, $l = GP$, and $m$ the mass. For small angular displacement $\theta$, the restoring torque is $\tau = -mgl\sin\theta \approx -mgl\theta$, giving SHM:

$$I\frac{d^2\theta}{dt^2} = -mgl\theta \implies T = 2\pi\sqrt{\frac{I}{mgl}}$$

Applying the parallel axis theorem, $I = I_G + ml^2 = mk^2 + ml^2$ where $k$ is the radius of gyration about an axis through $G$. Substituting:

$$T = 2\pi\sqrt{\frac{k^2+l^2}{gl}} = 2\pi\sqrt{\frac{L}{g}}, \quad \text{where } L = l + \frac{k^2}{l} \tag{equivalent simple pendulum length}$$

The equation $l^2 - Ll + k^2 = 0$ has two positive roots $l_1, l_2$ satisfying $l_1 + l_2 = L$ and $l_1 l_2 = k^2$. This means on **each side of $G$**, there exist two suspension positions giving the same period — four such positions in total. The distance between two such asymmetrically located points on opposite sides of $G$ is $L$, hence:

$$\boxed{g = 4\pi^2 \cdot \frac{L}{T^2}}$$

The point O at distance $L$ from $P$ on the opposite side of $G$ is called the **centre of oscillation** — suspending the bar from O gives the exact same period as suspending from P.

### Procedure
1. Suspend the bar from the hole nearest to one end using the knife-edge. Focus a telescope on a vertical scratch mark on the bar.
2. Set the bar oscillating in a vertical plane with small amplitude (within 4° of arc).
3. Using the precision stop watch, time 20 complete oscillations three times by observing transits of the mark through the telescope. Find mean time $t$; period $T = t/20$. Measure distance $d$ of the hole from one end of the bar.
4. Repeat for each hole, progressing toward the centre $G$ until $T$ becomes very large.
5. Invert the bar and repeat from the other end.
6. Plot the **T–d graph**: $d$ on the x-axis, $T$ on the y-axis. Two symmetric curves appear. Draw a horizontal line ABCDE parallel to the x-axis, intersecting the curves at A, B, D, E. The vertical line of symmetry meets this line at C, fixing the position of $G$. The equivalent pendulum length is $L = \dfrac{AD + BE}{2}$. Read $T$ from the graph. Repeat for several horizontal lines, compute $g$ each time, and take the mean.

### Data Table — T & d (20 oscillations)

| End A | $d$ (cm) | $t_{20}$ (s) | $T$ (s) | | End B | $d$ (cm) | $t_{20}$ (s) | $T$ (s) |
|-------|----------|--------------|---------|---|-------|----------|--------------|---------|
| H-1   | 45       | 16.58        | 1.658   | | H-1   | 45       | 16.21        | 1.621   |
| H-2   | 40       | 15.73        | 1.573   | | H-2   | 40       | 15.73        | 1.573   |
| H-3   | 35       | 15.31        | 1.531   | | H-3   | 35       | 15.42        | 1.542   |
| H-4   | 30       | 15.01        | 1.501   | | H-4   | 30       | 15.23        | 1.523   |
| H-5   | 25       | 15.31        | 1.531   | | H-5   | 25       | 15.51        | 1.551   |
| H-6   | 20       | 15.76        | 1.576   | | H-6   | 20       | 16.54        | 1.654   |
| H-7   | 15       | 16.77        | 1.677   | | H-7   | 15       | 17.32        | 1.732   |
| H-8   | 10       | 18.86        | 1.886   | | H-8   | 10       | 18.42        | 1.842   |
| H-9   | 05       | 20.21        | 2.021   | | H-9   | 05       | 19.21        | 1.921   |

### Calculation (from T–d graph)

| $n$ | $L$ (cm) | $T$ (s) | $g = 4\pi^2 L/T^2\ (\text{cm/s}^2)$ |
|-----|----------|---------|--------------------------------------|
| 1   | 63.5     | 1.61    | 967.12                               |
| 2   | 63.0     | 1.59    | 983.80                               |
| 3   | 61.0     | 1.55    | 1002.37                              |

**Verification ($n = 1$):**
$g = 4\pi^2 \times 63.5 / 1.61^2 = 39.478 \times 63.5 / 2.5921 = 967.1\ \text{cm/s}^2$ ✓

$$\text{Mean}\ g = \frac{967.12+983.80+1002.37}{3} = \boxed{984.43\ \text{cm/s}^2 = 9.844\ \text{m/s}^2}$$

### Discussion
- Oscillation must remain in a **vertical plane** with amplitude within 4° — any rotational or conical motion invalidates the SHM assumption.
- A precision stop watch is essential because the formula involves $T^2$, so any error in $T$ is squared and amplified significantly.
- Air currents in the vicinity of the pendulum distort the period; the experiment should be conducted away from draughts.
- The compound pendulum is inherently more accurate than the simple pendulum: it eliminates string-mass error, finite bob-size error, and allows $g$ to be extracted graphically from many data points simultaneously. Kater's reversible pendulum (1818) — a refined version of this — is one of the most precise classical methods for measuring $g$.

> **Result:** $g =$ **9.844 m/s²**

---

## Experiment 06 — Moment of Inertia of a Flywheel

### Apparatus
Flywheel on bearings, stop watch, set square, masses (500 gm and 1500 gm), metre scale, Vernier calipers, wooden blocks.

### Description of Apparatus
The flywheel is a heavy wheel of large radius mounted on a slender axle of radius $r$. A cord is wrapped around the axle and a mass $M$ is attached to its free end. When released, the falling mass drives the flywheel into rotation. Bearing friction is always present and must be accounted for. The axle radius $r$ is measured with Vernier calipers in two mutually perpendicular orientations; the mean is used.

### Theory

When mass $M$ falls through height $h$ from rest, its potential energy is partitioned into three parts: translational kinetic energy of the mass, rotational kinetic energy of the flywheel, and work done against bearing friction over $n_1$ revolutions (while the cord is still wound):

$$Mgh = \frac{1}{2}M\omega^2 r^2 + \frac{1}{2}I\omega^2 + n_1 f \tag{i}$$

Here $\omega$ is the angular velocity at the instant the cord detaches (when $M$ hits the floor), and $f$ is the frictional energy lost per revolution. After detachment, the flywheel continues to rotate, executing $n_2$ more revolutions in time $t$ before coming to rest — its entire remaining kinetic energy consumed by friction:

$$\frac{1}{2}I\omega^2 = n_2 f \implies f = \frac{I\omega^2}{2n_2} \tag{ii}$$

Since the wheel decelerates uniformly from $\omega$ to 0 over time $t$, its average angular velocity is $\omega/2$. But by definition of average angular velocity:

$$\frac{\omega}{2} = \frac{\text{total angle}}{\text{time}} = \frac{2\pi n_2}{t} \implies \omega = \frac{4\pi n_2}{t}$$

Substituting $f$ from (ii) into (i) and solving for $I$:

$$\boxed{I = \frac{2Mgh - M\omega^2 r^2}{\omega^2\!\left(1 + \dfrac{n_1}{n_2}\right)}}$$

### Procedure
1. Wrap the cord around the axle and attach mass $M$. Hold the wheel stationary with the mass just below the axle (position A). Mark this level on a nearby stand.
2. Place wooden blocks on the floor beneath the mass. Release the wheel. As $M$ falls from A to B (the top of the blocks), count the revolutions $n_1$ made by the flywheel by observing a chalk mark on the rim. Note $h = AB$.
3. When $M$ lands on the blocks and the cord detaches, start the stop watch. Count the further revolutions $n_2$ until the wheel stops, noting the time $t$.
4. Rotate the wheel in reverse to raise $M$ back to A, remove the blocks, and release. This gives $n_2$ and $t$ for that mass without the blocks interrupting. (The ratio $n_1/n_2$ in the formula accounts for friction during the fall.)
5. Repeat three times for each mass. Use two different masses. Measure axle radius $r$ with Vernier calipers.

### Observations

**Radius of Axle** (Vernier LC = 0.005 cm):

| SL | MSR (cm) | VSD | Diameter (cm) | Radius (cm) |
|----|----------|-----|---------------|-------------|
| a1 | 2.10     | 4   | 2.120         | 1.060       |
| a2 | 2.05     | 3   | 2.065         | 1.033       |
| a3 | 2.07     | 4   | 2.120         | 1.060       |
| b1 | 2.07     | 5   | 2.095         | 1.048       |
| b2 | 2.10     | 5   | 2.095         | 1.048       |
| b3 | 2.04     | 4   | 2.120         | 1.060       |

**Mean radius** $r = 1.05\ \text{cm}$

**Table — $n_1$, $n_2$, $t$:**

| Obs | $M$ (gm) | $h$ (cm) | $n_1$ | Mean $n_1$ | $n_2$ | Mean $n_2$ | $t$ (s) | Mean $t$ (s) |
|-----|----------|----------|-------|-----------|-------|-----------|---------|-------------|
| 01  | 500      | 100      | 10    |           | 11    |           | 7.0     |             |
| 02  | 500      | 150      | 11    | 11        | 17    | 14.67     | 8.5     | 7.97        |
| 03  | 500      | 100      | 12    |           | 16    |           | 8.4     |             |
| 01  | 1500     | 150      | 11    |           | 26    |           | —       |             |
| 02  | 1500     | 100      | 10    | 11        | 29    | 26.67     | —       | 11.24       |
| 03  | 1500     | 100      | 12    |           | 25    |           | —       |             |

### Calculation

**For $M = 500\ \text{gm}$**, $h = 150\ \text{cm}$, $n_1=11$, $n_2=14.67$, $t=7.97\ \text{s}$, $g=980\ \text{cm/s}^2$:

$$\omega_1 = \frac{4\pi \times 14.67}{7.97} = \frac{184.35}{7.97} = 23.13\ \text{rad/s}$$

$$I_1 = \frac{2(500)(980)(150) - 500(23.13)^2(1.05)^2}{(23.13)^2\!\left(1+\dfrac{11}{14.67}\right)} = \frac{147{,}000{,}000 - 294{,}919}{535.0 \times 1.750} = \frac{146{,}705{,}081}{936.25} = 156{,}693\ \text{gm·cm}^2$$

**For $M = 1500\ \text{gm}$**, $h = 150\ \text{cm}$, $n_1=11$, $n_2=26.67$, $t=11.24\ \text{s}$:

$$\omega_2 = \frac{4\pi \times 26.67}{11.24} = \frac{335.19}{11.24} = 29.82\ \text{rad/s}$$

$$I_2 = \frac{2(1500)(980)(150) - 1500(29.82)^2(1.05)^2}{(29.82)^2\!\left(1+\dfrac{11}{26.67}\right)} = \frac{441{,}000{,}000 - 1{,}470{,}720}{889.2 \times 1.4124} = \frac{439{,}529{,}280}{1{,}255.9} = 349{,}932\ \text{gm·cm}^2$$

$$\boxed{I = \frac{I_1+I_2}{2} = \frac{156{,}693+349{,}932}{2} = 253{,}313\ \text{gm·cm}^2 \approx 25.33 \times 10^{-3}\ \text{kg·m}^2}$$

> **Result:** Moment of inertia of the flywheel $I =$ **253,313 gm·cm²**

---

---

## References & Extended Knowledge

> *Supplementary — separate from the main exam content above.*

### Vernier Calipers
- Standard LC values: 0.1 mm (10 VSD), 0.05 mm (20 VSD), 0.02 mm (50 VSD)
- Invented by Pierre Vernier, published in *La Construction, l'Usage, et les Propriétés du Quadrant Nouveau de Mathématique*, 1631.
- **Ref:** Serway & Jewett, *Physics for Scientists and Engineers*, 9th ed., Ch. 1; [NIST](https://physics.nist.gov)

### Screw Gauge
- Standard metric micrometer: pitch = 0.5 mm, $N = 50$ → LC = 0.01 mm. Lab screw gauges often use pitch = 1 mm, $N = 100$ → same LC.
- **Ref:** H.C. Verma, *Concepts of Physics*, Vol. 1, Ch. 2

### Convex Lens — Displacement (Bessel's) Method
- Named after Friedrich Bessel (1840). Also known as the **conjugate foci method**.
- Optimal accuracy range: $D \approx 1.5$ to $2 \times 4f$
- Accepted value for standard lab convex lens: $f \approx 20\ \text{cm}$
- **Ref:** Hecht, *Optics*, 5th ed., §5.2; Jenkins & White, *Fundamentals of Optics*, Ch. 3

### Acceleration Due to Gravity

| Location | Accepted $g$ (m/s²) |
|----------|---------------------|
| Equator  | 9.780               |
| Bangladesh ≈ 23°N | 9.786      |
| Mid-latitudes (standard) | 9.806  |
| Poles    | 9.832               |

- Simple pendulum valid only for $\theta < 5°$; errors from thread mass and finite bob size are unavoidable.
- Kater's reversible pendulum (1818): most accurate classical method for $g$; uses the interchangeability of suspension and oscillation points.
- **Ref:** Kater, H. (1818), *Phil. Trans. Royal Society*; BIPM standard: $g_n = 9.80665\ \text{m/s}^2$

### Moment of Inertia — Flywheel
- Theoretical $I$ for solid disk: $I = \tfrac{1}{2}MR^2$; for ring: $I = \tfrac{1}{2}M(R_1^2+R_2^2)$
- The term $\left(1+\dfrac{n_1}{n_2}\right)$ in the denominator is the friction correction — without it, $I$ would be underestimated.
- **Ref:** Irodov, *Problems in General Physics*, §1.6, Problem 1.283; Marion & Thornton, *Classical Dynamics*, Ch. 9

### Quick Formula Reference

$$f = \frac{D^2-x^2}{4D} \quad P\,(\text{D}) = \frac{100}{f\,(\text{cm})} \quad g = \frac{4\pi^2 l}{T^2} \quad I = \frac{2Mgh - M\omega^2r^2}{\omega^2(1+n_1/n_2)} \quad \omega = \frac{4\pi n_2}{t}$$

$$\text{LC}_\text{vernier} = \frac{x}{n} \qquad \text{LC}_\text{screw} = \frac{\text{pitch}}{N}$$
