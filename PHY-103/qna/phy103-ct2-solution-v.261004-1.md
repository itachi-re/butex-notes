# PHY103: Physics-II — Class Test 2 (Solved)

**Compiled by:** sigkill0x00

**Institution:** Sheikh Rehana Textile Engineering College, Gopalganj
**Time:** 30 min · **Full marks:** 10 · *Answer any one set.* Both sets are solved below.

**Conventions:** $W$ = work done **by** the gas, $\Delta U=Q-W$.

---

# Set-A `[3+4+3=10]`

## Q1. What is hysteresis? State and explain the hysteresis curve of a magnetic material. **[3]**

### Definition
**Hysteresis** is the lagging of the magnetic induction $B$ behind the magnetising field $H$ when a ferromagnetic material is taken through a cycle of magnetisation and demagnetisation. $B$ depends not only on the present $H$ but also on the previous magnetic history of the sample.

### The hysteresis curve ($B$–$H$ loop)

Draw $B$ on the vertical axis and $H$ on the horizontal axis. Starting from an unmagnetised specimen:

| Stage | What happens | Point |
|---|---|---|
| Virgin curve | $H$ is increased from $0$; $B$ rises along $O\to a$ until the material saturates | $a$ = saturation |
| $H$ decreased to $0$ | $B$ does **not** return to zero; it falls only to $+B_r$ | $B_r$ = **retentivity** (residual induction) |
| $H$ reversed | $B$ becomes zero only when a reverse field $-H_c$ is applied | $H_c$ = **coercivity** (coercive field) |
| Reverse field increased | $B$ reaches negative saturation | $a'$ |
| $H$ brought to $0$, then increased again | Passes through $-B_r$, then $+H_c$, and returns to $a$ | Loop closes |

### Key quantities
- **Retentivity** $B_r$: the induction left in the material when $H=0$.
- **Coercivity** $H_c$: the reverse field needed to reduce the residual induction to zero.
- **Loop area:** the area enclosed by the loop equals the energy dissipated as heat per unit volume per cycle:

$$
\text{Energy loss per cycle per unit volume}=\oint H\,dB
$$

### Soft vs hard magnetic materials

| Property | Soft (e.g. soft iron) | Hard (e.g. steel) |
|---|---|---|
| Loop | Narrow, small area | Wide, large area |
| Coercivity | Low | High |
| Hysteresis loss | Small | Large |
| Use | Transformer cores, electromagnets | Permanent magnets |

---

## Q2. Define magnetic induction. Derive an equation of magnetic force on a moving charge in a magnetic field. **[4]**

### Magnetic induction (magnetic flux density), $\mathbf B$
The magnetic induction at a point is the vector quantity defined by the force on a moving test charge: when a charge $q$ moves with velocity $\mathbf v$ perpendicular to the field and experiences force $F$,

$$
B=\frac{F}{qv}\qquad(\text{SI unit: tesla, } 1\ \mathrm T=1\ \mathrm{N\,A^{-1}m^{-1}})
$$

**1 tesla** is the field in which a charge of 1 C moving at 1 m/s perpendicular to the field experiences a force of 1 N.

### Derivation of $\mathbf F=q\,\mathbf v\times\mathbf B$

Start from the force on a current-carrying conductor in a field $\mathbf B$:

$$
\mathbf F=I\,\mathbf l\times\mathbf B
$$

**Step 1 — current in terms of drift velocity.** Take a straight conductor of length $l$ and cross-section $A$, with $n$ free charge carriers per unit volume, each of charge $q$, drifting with velocity $v$:

$$
I=nqvA
$$

**Step 2 — force on the whole conductor.** Taking the direction of $\mathbf l$ along $\mathbf v$,

$$
\mathbf F=nqA\,l\,(\mathbf v\times\mathbf B)
$$

**Step 3 — number of carriers.** The volume is $Al$, so the number of carriers is $N=nAl$:

$$
\mathbf F_{\rm total}=N\,q\,(\mathbf v\times\mathbf B)
$$

**Step 4 — force on one charge.**

$$
\boxed{\mathbf F=q\,(\mathbf v\times\mathbf B)},\qquad
\boxed{F=qvB\sin\theta}
$$

where $\theta$ is the angle between $\mathbf v$ and $\mathbf B$.

### Special cases
- $\theta=0^\circ$ or $180^\circ$ (moving along the field): $F=0$.
- $\theta=90^\circ$: $F=qvB$ (maximum). The force is perpendicular to both $\mathbf v$ and $\mathbf B$, so it does no work and the charge moves in a circle of radius $r=\dfrac{mv}{qB}$.
- Direction is given by the right-hand rule (reverse for a negative charge).

---

## Q3. Numerical **[3]**

A wire of length 10 cm carrying a current of 1000 mA experiences a force of 5 N when placed at an angle of $30^\circ$ with a uniform magnetic field. Find $B$.

**Given**
- $l=10\ \mathrm{cm}=0.10\ \mathrm m$
- $I=1000\ \mathrm{mA}=1\ \mathrm A$
- $F=5\ \mathrm N$
- $\theta=30^\circ$

**Formula**

$$
F=BIl\sin\theta\;\Rightarrow\;B=\frac{F}{Il\sin\theta}
$$

**Substitution**

$$
B=\frac{5}{(1)(0.10)\sin30^\circ}=\frac{5}{(1)(0.10)(0.5)}=\frac{5}{0.05}
$$

**Answer**

$$
\boxed{B=100\ \mathrm T}
$$

**Common mistakes:** forgetting to convert cm $\to$ m and mA $\to$ A; using $\cos30^\circ$ instead of $\sin30^\circ$ (the angle is between the wire and the field).

---

# Set-B `[3+4+3=10]`

## Q1. State and explain Newton's law of cooling. **[3]**

### Statement
The rate of loss of heat of a body is directly proportional to the temperature difference between the body and its surroundings, provided the temperature difference is small.

### Explanation
Let $T$ be the temperature of the body, $T_s$ the (constant) temperature of the surroundings, and $T_0$ the initial temperature of the body.

$$
\frac{dT}{dt}=-k\,(T-T_s),\qquad k>0
$$

Separating variables and integrating:

$$
\int_{T_0}^{T}\frac{dT}{T-T_s}=-k\int_0^t dt\;\Rightarrow\;\ln\frac{T-T_s}{T_0-T_s}=-kt
$$

$$
\boxed{T(t)=T_s+(T_0-T_s)\,e^{-kt}}
$$

- Cooling is fastest at the start (large $T-T_s$) and slows down as $T\to T_s$.
- $T$ approaches $T_s$ asymptotically.
- Plotting $\ln(T-T_s)$ against $t$ gives a straight line of slope $-k$, which is the experimental test of the law.

### Limitations
The law holds for small temperature differences; the surroundings must stay at constant temperature with controlled air flow; $k$ depends on surface area and finish. At large $\Delta T$, radiation ($\propto T^4$) makes cooling nonlinear.

---

## Q2. Define isothermal process. Derive an expression for the work done during an isothermal process. **[4]**

### Definition
An **isothermal process** is one that takes place at constant temperature. For an ideal gas, $PV=n_{\rm mol}RT=\text{constant}$ (Boyle's law). The system must be in good thermal contact with a reservoir and the change must be slow.

### Derivation
For a small expansion, $dW=P\,dV$. Total work from $V_1$ to $V_2$:

$$
W=\int_{V_1}^{V_2}P\,dV
$$

Using $P=\dfrac{n_{\rm mol}RT}{V}$ with $T$ constant:

$$
W=n_{\rm mol}RT\int_{V_1}^{V_2}\frac{dV}{V}=n_{\rm mol}RT\ln\frac{V_2}{V_1}
$$

Since $P_1V_1=P_2V_2$,

$$
\boxed{W=n_{\rm mol}RT\ln\frac{V_2}{V_1}=n_{\rm mol}RT\ln\frac{P_1}{P_2}=2.303\,n_{\rm mol}RT\log_{10}\frac{V_2}{V_1}}
$$

### First-law consequence
For an ideal gas $U$ depends only on $T$, so $\Delta U=0$ and, with $\Delta U=Q-W$:

$$
Q=W
$$

All heat absorbed is converted into work. $W>0$ for expansion and $W<0$ for compression. The work equals the area under the $P$–$V$ curve.

---

## Q3. Numerical **[3]**

A 39 dm³ cylinder contains 212 g of oxygen gas at $-21^\circ\mathrm C$. What mass of oxygen must be released to reduce the pressure in the cylinder to 1.24 bar? ($r=0.0821\ \mathrm{dm^3\,bar\,K^{-1}\,mol^{-1}}$)

**Given**
- $V=39\ \mathrm{dm^3}$ (fixed)
- Initial mass $=212\ \mathrm g$; molar mass of $\mathrm O_2=32\ \mathrm{g\,mol^{-1}}$
- $T=-21^\circ\mathrm C=252\ \mathrm K$ (constant)
- Final pressure $P_2=1.24\ \mathrm{bar}$

**Required** Mass of gas released $=m_1-m_2$.

**Formula**

$$
PV=nRT\;\Rightarrow\;n=\frac{PV}{RT}
$$

**Step 1 — initial moles**

$$
n_1=\frac{212}{32}=6.625\ \mathrm{mol}
$$

(Initial pressure, for reference: $P_1=\dfrac{n_1RT}{V}=\dfrac{6.625\times0.0821\times252}{39}\approx3.51$ bar.)

**Step 2 — moles remaining at 1.24 bar**

$$
n_2=\frac{P_2V}{RT}=\frac{1.24\times39}{0.0821\times252}=\frac{48.36}{20.689}=2.337\ \mathrm{mol}
$$

**Step 3 — mass remaining**

$$
m_2=2.337\times32\approx74.8\ \mathrm g
$$

**Step 4 — mass released**

$$
m_{\rm released}=212-74.8=137.2\ \mathrm g
$$

**Answer**

$$
\boxed{\text{Mass of } \mathrm O_2 \text{ released}\approx137\ \mathrm g\ \ (\approx4.29\ \mathrm{mol})}
$$

**Common mistakes:** using $-21$ instead of $252\ \mathrm K$; forgetting that the volume and temperature stay fixed so only $n$ changes; giving moles instead of mass.

---

## Quick revision

- [ ] Hysteresis: define, $B_r$, $H_c$, loop area $=$ energy loss
- [ ] $\mathbf F=q\mathbf v\times\mathbf B$, $F=qvB\sin\theta$; $F=BIl\sin\theta$
- [ ] Newton's cooling: $T=T_s+(T_0-T_s)e^{-kt}$
- [ ] Isothermal: $W=n_{\rm mol}RT\ln(V_2/V_1)$, $Q=W$
- [ ] Convert units first (cm, mA, °C $\to$ K) and write the formula before substituting
