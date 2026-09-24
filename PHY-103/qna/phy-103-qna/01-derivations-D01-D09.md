# Physics-II (PHY-103) — Standard Derivations D-1 to D-9

[← Index](README.md) · [Next →](02-derivations-D10-D17.md)

## [D-1] Gauss's Law — Statement and Proof

**Statement:** The total electric flux through any closed surface (a Gaussian surface) is equal to $1/\epsilon_0$ times the net charge enclosed by that surface.

$$
\oint \vec{E}\cdot d\vec{A} = \frac{q_{enc}}{\epsilon_0}
$$

**Proof (for a point charge):** Consider a point charge $q$ at the centre of a sphere of radius $r$. By Coulomb's law, the field at the surface is

$$
E=\frac{1}{4\pi\epsilon_0}\frac{q}{r^2}
$$

directed radially outward, i.e., everywhere parallel to $d\vec{A}$. The flux is

$$
\phi=\oint \vec{E}\cdot d\vec{A}=E\oint dA = E(4\pi r^2)=\frac{1}{4\pi\epsilon_0}\frac{q}{r^2}(4\pi r^2)=\frac{q}{\epsilon_0}
$$

$$
\phi=\frac{q_{enc}}{\epsilon_0}
$$

Since the flux is independent of $r$, this holds for any closed surface enclosing $q$ (by the solid-angle argument, flux through any closed surface subtending $4\pi$ steradians at the charge is the same). For several enclosed charges, superposition gives $q_{enc}=\sum q_i$.

## [D-2] Coulomb's Law — Statement and Explanation

**Statement:** The force of attraction or repulsion between two point charges is directly proportional to the product of the charges and inversely proportional to the square of the distance between them, acting along the line joining them.

$$
F=\frac{1}{4\pi\epsilon_0}\frac{q_1q_2}{r^2}
$$

where $q_1,q_2$ are the charges (C), $r$ is separation (m), $\epsilon_0=8.854\times10^{-12}\,\text{F m}^{-1}$ is the permittivity of free space. The force is repulsive for like charges, attractive for unlike charges, and acts along the line joining the charges (a central force). **Unit charge** is defined as that charge which, when placed at 1 m from an equal charge in vacuum, repels it with a force of $\frac{1}{4\pi\epsilon_0}=9\times10^9\,\text{N}$.

## [D-3] Coulomb's Law Deduced from Gauss's Law

Enclose a point charge $q$ in an imaginary sphere of radius $r$. By symmetry $\vec{E}$ is radial and constant in magnitude over the surface. From Gauss's law:

$$
\oint \vec{E} \cdot d\vec{A} = E(4\pi r^2)=\frac{q}{\epsilon_0}\ \Rightarrow\ E=\frac{1}{4\pi\epsilon_0}\frac{q}{r^2}
$$

The force on a second charge $q_2$ placed at that point is $F=q_2E$, giving

$$
F=\frac{1}{4\pi\epsilon_0}\frac{q_1q_2}{r^2}
$$

which is Coulomb's law.

## [D-4] Electric Field and Electric Field Intensity — Definition

**Electric field:** The region of space around a charge within which another charge experiences a force.

**Electric field intensity ($\vec{E}$):** Force experienced per unit positive test charge placed at a point:

$$
\vec{E}=\lim_{q_0\to0}\frac{\vec{F}}{q_0}=\frac{1}{4\pi\epsilon_0}\frac{q}{r^2}\hat{r}
$$

SI unit: N/C or V/m.

## [D-5] Relation Between Electric Intensity and Charge Density (Point charge / sphere)

For a uniformly charged sphere of radius $R$, volume charge density $\rho = q/(\frac{4}{3}\pi R^3)$. By Gauss's law, for a Gaussian sphere of radius $r\le R$:

$$
E(4\pi r^2)=\frac{q_{enc}}{\epsilon_0}=\frac{\rho(\frac{4}{3}\pi r^3)}{\epsilon_0}\ \Rightarrow\ E=\frac{\rho r}{3\epsilon_0}
$$

$$
E=\frac{\rho r}{3\epsilon_0}\quad(r\le R),\qquad E=\frac{q}{4\pi\epsilon_0 r^2}\ (r\ge R)
$$

showing $E$ is directly proportional to the charge density $\rho$ (and to $r$ inside the sphere).

## [D-6] Electric Dipole — Field Varies as $1/r^3$

An electric dipole is two equal and opposite charges $+q,-q$ separated by distance $2a$; dipole moment $p=q(2a)$.

**On the axial line** at distance $r$ from the centre ($r\gg a$):

$$
E_{axial}=\frac{1}{4\pi\epsilon_0}\left[\frac{q}{(r-a)^2}-\frac{q}{(r+a)^2}\right]=\frac{1}{4\pi\epsilon_0}\frac{4qar}{(r^2-a^2)^2}\approx\frac{1}{4\pi\epsilon_0}\frac{2p}{r^3}\quad(r\gg a)
$$

**On the equatorial line:**

$$
E_{eq}=\frac{1}{4\pi\epsilon_0}\frac{p}{r^3}\quad(r\gg a)
$$

Thus on the axial line the field is

$$
E=\frac{1}{4\pi\epsilon_0}\frac{2p}{r^3}
$$

— directly proportional to twice the dipole moment and inversely proportional to the cube of the distance, as required.

## [D-7] Field Due to a Point Charge at a Point on the Perpendicular Bisector of Two Charges

Two equal charges $+q$ at $A$ and $B$, separated by $2a$; point $P$ on the perpendicular bisector at distance $R$ from the midpoint. Distance from each charge to $P$ is $\sqrt{R^2+a^2}$. Each charge produces field $E'=\frac{1}{4\pi\epsilon_0}\frac{q}{R^2+a^2}$ along $AP$ and $BP$; components perpendicular to the bisector cancel, components along the bisector add:

$$
E=2E'\cos\theta=2\cdot\frac{1}{4\pi\epsilon_0}\frac{q}{R^2+a^2}\cdot\frac{R}{\sqrt{R^2+a^2}}
$$

$$
E=\frac{1}{4\pi\epsilon_0}\frac{2qR}{(R^2+a^2)^{3/2}}
$$

directed along the bisector, away from the midpoint (for like charges).

## [D-8] Capacitor and Capacitance — Definition

A **capacitor** is a device consisting of two conductors separated by an insulator (dielectric), used to store electric charge/energy. **Capacitance** is the ratio of charge stored to the potential difference between the plates:

$$
C=\frac{Q}{V}
$$

where $C$ = capacitance (Farad, F), $Q$ = charge (C), $V$ = potential difference (V). $1\,\text{F}=1\,\text{C/V}$.

## [D-9] Parallel Plate Capacitor — Derivation of Capacitance

Two parallel plates, each of area $A$, separated by distance $d$, with a dielectric of permittivity $\epsilon=\epsilon_0\epsilon_r$ between them, carrying charge $+Q,-Q$. Surface charge density $\sigma=Q/A$. The field between the plates (from Gauss's law for a parallel-plate arrangement):

$$
E=\frac{\sigma}{\epsilon}=\frac{Q}{\epsilon A}
$$

Potential difference:

$$
V=Ed=\frac{Qd}{\epsilon A}
$$

Hence

$$
C=\frac{Q}{V}=\frac{\epsilon A}{d}=\frac{\epsilon_0\epsilon_r A}{d}
$$

For air/vacuum, $\epsilon_r=1$, so $C=\epsilon_0 A/d$.

---

[← Index](README.md) · [Next →](02-derivations-D10-D17.md)
