# Physics-II (PHY-103) — Standard Derivations D-43 to D-47

[← Index](README.md) · [Previous](06-derivations-D40-D42.md) · [Next →](08-derivations-D48-D51.md)

## [D-43] Kinetic Theory of Gases — Fundamental Postulates and Pressure Formula

**Postulates:**

1. A gas consists of a very large number of identical molecules in continuous, random motion.
2. Molecules are point masses — their own volume is negligible compared to the container volume.
3. Collisions between molecules, and with the container walls, are perfectly elastic.
4. No intermolecular forces act except during collision.
5. The time of collision is negligible compared to time between collisions.
6. Molecules obey Newtonian mechanics.

**Derivation of pressure ($P=\frac{1}{3}\dfrac{mnc^2}{V}$, or $P=\frac{1}{3}\rho \overline{c^2}$):** Consider $n$ molecules, each of mass $m$, in a cubical box of side $l$ (volume $V=l^3$). For one molecule with velocity component $c_x$ along $x$, momentum change per collision with a wall $=2mc_x$; time between successive collisions on the same wall $=2l/c_x$. Force on wall from this molecule:

$$
f=\frac{2mc_x}{2l/c_x}=\frac{mc_x^2}{l}
$$

Summing over all $n$ molecules and averaging: total force $=\dfrac{nm\overline{c_x^2}}{l}$; pressure $=\dfrac{\text{Force}}{l^2}=\dfrac{nm\overline{c_x^2}}{l^3}=\dfrac{nm\overline{c_x^2}}{V}$.

By symmetry, $\overline{c_x^2}=\overline{c_y^2}=\overline{c_z^2}=\frac{1}{3}\overline{c^2}$ (mean square speed), so:

$$
P=\frac{1}{3}\frac{nm\overline{c^2}}{V}=\frac{1}{3}\rho\overline{c^2}
$$

where $n$ = number of molecules, $m$ = mass of each, $\overline{c^2}$ = mean square speed, $V$ = volume, $\rho=nm/V$ = density (symbols have their usual meaning).

**Show pressure = $\frac{2}{3}$ × (kinetic energy per unit volume):** Mean KE per unit volume $=\dfrac{1}{V}\cdot n\cdot\frac{1}{2} m\overline{c^2}=\dfrac{nm\overline{c^2}}{2V}$. From $P=\dfrac{1}{3}\dfrac{nm\overline{c^2}}{V}$:

$$
P=\frac{2}{3}\left(\frac{1}{2}\frac{nm\overline{c^2}}{V}\right)=\frac{2}{3}\times(\text{KE per unit volume})
$$

**Show work done is directly proportional to kinetic energy (isothermal work vs KE), and average KE of a gas molecule:** From $PV=RT=\frac{2}{3} N_A\left(\frac{1}{2} m\overline{c^2}\right)$ (per mole; $N_A$=Avogadro number), average translational KE per molecule:

$$
\overline{KE}=\frac{1}{2} m\overline{c^2}=\frac{3}{2} kT
$$

where $k=R/N_A=1.38\times10^{-23}\,\text{J K}^{-1}$ is Boltzmann's constant. Since $PV=\frac{2}{3}\times(\text{total KE})=RT$ for one mole, the term $PV$ (which equals the isothermal work $RT\ln(V_2/V_1)$ integrated appropriately, or simply $PV=nRT$ for the gas) is directly proportional to the total translational kinetic energy of the gas molecules, both being proportional to absolute temperature $T$.

## [D-44] Degrees of Freedom

**Definition:** The number of independent coordinates (or independent ways of absorbing energy) required to completely specify the position and configuration of a molecule in space. A monatomic gas molecule has 3 (translational) degrees of freedom; a diatomic molecule has 5 (3 translational + 2 rotational, at ordinary temperatures); a polyatomic (non-linear) molecule has 6 (3 translational + 3 rotational). By the **law of equipartition of energy**, each degree of freedom contributes $\frac{1}{2}kT$ of energy per molecule on average.

## [D-45] Mean Free Path — Definition and Derivation

**Definition:** The average distance travelled by a gas molecule between two successive collisions with other molecules.

**Derivation:** Consider a molecule of diameter $d$ moving with mean speed $\bar{c}$ among $n$ molecules per unit volume (assumed stationary for a first approximation). It sweeps a cylindrical volume of cross-section $\pi d^2$ per unit time, colliding with all molecules whose centres lie within $\pi d^2\bar{c}$ (per second). Number of collisions per second $=n\pi d^2\bar{c}$. Mean free path (first approximation):

$$
\lambda=\frac{\text{distance travelled per second}}{\text{number of collisions per second}}=\frac{\bar{c}}{n\pi d^2\bar{c}}=\frac{1}{n\pi d^2}
$$

Accounting for the relative motion of all molecules (Maxwell's correction, relative speed $=\sqrt{2}\,\bar{c}$ on average):

$$
\lambda=\frac{1}{\sqrt{2}\,n\pi d^2}
$$

where $n$ = number of molecules per unit volume, $d$ = molecular diameter.

## [D-46] Newton's Law of Cooling

**Statement:** The rate of loss of heat (or rate of fall of temperature) of a body is directly proportional to the difference in temperature between the body and its surroundings, provided this difference is small.

$$
-\frac{dT}{dt}\propto(T-T_0)\ \Rightarrow\ -\frac{dT}{dt}=k(T-T_0)
$$

where $T$ = body temperature, $T_0$ = surrounding temperature, $k$ = a constant depending on the surface area, nature of surface, etc. Integrating: $T-T_0=(T_i-T_0)e^{-kt}$ — temperature falls exponentially toward $T_0$.

```text
T
|\
| \___
|     \____
T0|__________\_________  t
```

x-axis: time; y-axis: temperature; curve approaches $T_0$ asymptotically, confirming exponential (not linear) cooling.

## [D-47] Photoelectric Effect and Einstein's Photoelectric Equation

**Photoelectric effect:** The phenomenon in which electrons are emitted from a metal surface when light (electromagnetic radiation) of sufficiently high frequency falls on it.

**Is it a wave or particle phenomenon?** The photoelectric effect cannot be explained by the classical wave theory of light — wave theory predicts that kinetic energy of emitted electrons should depend on light intensity (not frequency) and that there should be a time lag at low intensity, both contrary to observation (KE depends on frequency, not intensity; emission is instantaneous; a threshold frequency exists below which no emission occurs regardless of intensity). These facts are explained only by treating light as a stream of particles (photons) of energy $h\nu$ — i.e., the photoelectric effect is a consequence of the **particle (quantum) nature** of radiation, not its wave character.

**Einstein's photoelectric equation — derivation:** A photon of energy $h\nu$ incident on the metal surface transfers its entire energy to a single electron. Part of this energy ($W_0$, the work function) is used to free the electron from the metal surface; the rest appears as the kinetic energy of the emitted (photo)electron:

$$
h\nu=W_0+\frac{1}{2}mv_{max}^2
$$

where $h$ = Planck's constant, $\nu$ = frequency of incident light, $W_0=h\nu_0$ = work function ($\nu_0$ = threshold frequency), $\frac{1}{2}mv_{max}^2$ = maximum kinetic energy of emitted electron.

$$
h\nu=h\nu_0+\frac{1}{2}mv_{max}^2
$$

This is **Einstein's photoelectric equation**. It correctly predicts: no emission below threshold frequency $\nu_0$; KE increases linearly with $\nu$ but is independent of intensity; emission is instantaneous (single photon–electron interaction).

**Work function formula for numericals:** $W_0=h\nu_0=\dfrac{hc}{\lambda_0}$, where $\lambda_0$ is the threshold wavelength.

---

[← Index](README.md) · [Previous](06-derivations-D40-D42.md) · [Next →](08-derivations-D48-D51.md)
