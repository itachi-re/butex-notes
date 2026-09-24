# Physics-II (PHY-103) — Standard Derivations D-48 to D-51

[← Index](README.md) · [Previous](07-derivations-D43-D47.md) · [Next →](09-2023-exam.md)

## [D-48] Compton Effect

**Description:** When a beam of X-rays (or other high-energy photons) is scattered by loosely bound (nearly free) electrons in matter, the scattered radiation contains, besides the original wavelength, a component of longer wavelength. This increase in wavelength on scattering is called the **Compton effect**, explained by treating the photon as a particle with momentum $h/\lambda$, colliding elastically with a free electron and transferring some energy and momentum to it (like a billiard-ball collision), conserving both energy and momentum.

**Derivation (outline) of the Compton shift formula:** Applying conservation of energy and momentum to the photon–electron collision (incident photon energy $h\nu$, momentum $h\nu/c$; scattered photon $h\nu'$ scattered at angle $\varphi$; electron recoils with relativistic energy/momentum), and eliminating the electron's recoil variables, one obtains:

$$
\lambda'-\lambda=\frac{h}{m_0c}(1-\cos\varphi)
$$

where $\lambda,\lambda'$ = wavelengths of incident and scattered photon, $h$ = Planck's constant, $m_0$ = rest mass of electron, $c$ = speed of light, $\varphi$ = scattering angle. The quantity $h/(m_0c)=2.43\times10^{-12}$ m is the **Compton wavelength** of the electron.

## [D-49] Blackbody Radiation, Emissive Power, Absorptive Power; Kirchhoff's Law of Radiation

**Blackbody radiation:** The radiation emitted by an ideal black body — a perfect absorber (and hence, when in thermal equilibrium, perfect emitter) of all wavelengths of radiation incident on it, emitting a continuous spectrum depending only on its temperature.

**Emissive power ($e$):** The total amount of radiant energy emitted per unit area per unit time by a surface, at a given temperature (summed over, or per unit wavelength interval as **spectral emissive power** $e_\lambda$).

**Absorptive power ($a$):** The ratio of the radiant energy absorbed by a surface to the total radiant energy incident on it, in a given time (a pure, dimensionless number, $\le1$; $a=1$ for a perfect black body).

**Kirchhoff's law of radiation — statement:** At a given temperature, the ratio of emissive power to absorptive power, for any wavelength, is the same for all bodies and is equal to the emissive power of a perfectly black body at that temperature and wavelength:

$$
\frac{e_\lambda}{a_\lambda}=E_\lambda(\text{black body})=\text{constant (for a given }T,\lambda\text{)}
$$

**Deduction:** consider a body inside an enclosure at temperature $T$, in thermal equilibrium — it must emit exactly as much as it absorbs (else its temperature would change), i.e. $e_\lambda \propto a_\lambda$ for every body, with the same proportionality constant $E_\lambda$ (the black-body value), since a black body ($a_\lambda=1$) has emissive power exactly $E_\lambda$. Hence good absorbers are good emitters, and vice versa.

## [D-50] Van der Waals Equation and Critical Constants

**Van der Waals equation** (correcting the ideal gas law for finite molecular size and intermolecular attraction), for 1 mole:

$$
\left(P+\frac{a}{V^2}\right)(V-b)=RT
$$

where $a,b$ are van der Waals constants (correcting for intermolecular attraction and finite molecular volume respectively).

**Critical constants:** At the critical point, the isotherm has a horizontal inflection: $\left(\dfrac{\partial P}{\partial V}\right)_T=0$ and $\left(\dfrac{\partial^2P}{\partial V^2}\right)_T=0$. Writing $P=\dfrac{RT}{V-b}-\dfrac{a}{V^2}$ and solving these two conditions simultaneously with the equation itself gives:

$$
V_c=3b,\qquad P_c=\frac{a}{27b^2},\qquad T_c=\frac{8a}{27Rb}
$$

**Corrections to the Van der Waals equation of state:** Real gas behaviour deviates further at very high pressure/low temperature; refinements include the Berthelot equation (temperature-dependent $a$), the virial equation of state, and accounting for association/dissociation of molecules — the simple van der Waals equation is only a first-order correction and fails quantitatively near the critical point and for strongly polar/associating gases.

## [D-51] Platinum Resistance Thermometer

**Principle:** The electrical resistance of a pure metal (platinum) increases linearly (over a limited range) with temperature; by measuring resistance and comparing to calibration values at fixed points, the unknown temperature can be determined:

$$
R_t=R_0(1+\alpha t)\quad\text{(linear approx.)}\qquad\text{or, more precisely:}\qquad t=\frac{R_t-R_0}{R_{100}-R_0}\times100\,^\circ\text{C}\ \ (\text{platinum scale})
$$

with a **Callendar correction** using constant $\delta$ for the "gas scale" temperature: $t_{gas}=t_{Pt}+\delta\left(\dfrac{t_{Pt}}{100}\right)\left(\dfrac{t_{Pt}}{100}-1\right)$.

**Advantages:** High melting point → wide temperature range (−200 °C to +1200 °C); chemically inert/stable (doesn't oxidise easily); good reproducibility and accuracy; linear-ish response.

**Disadvantages:** Expensive (platinum); slower response than thermocouples; bulkier; small resistance change per degree needs sensitive bridge measurement; self-heating error if current too large.

---

[← Index](README.md) · [Previous](07-derivations-D43-D47.md) · [Next →](09-2023-exam.md)
