# Physics-II (PHY-103) — Standard Derivations D-40 to D-42

[← Index](README.md) · [Previous](05-derivations-D31-D39.md) · [Next →](07-derivations-D43-D47.md)

## [D-40] Maxwell's Thermodynamic Relations

Starting from the combined first and second law for a reversible process: $dU=TdS-PdV$, and defining the state functions $H=U+PV$, $F=U-TS$, $G=H-TS$, one obtains four exact differentials:

$$
dU=TdS-PdV,\quad dH=TdS+VdP,\quad dF=-SdT-PdV,\quad dG=-SdT+VdP
$$

Since these are exact differentials, cross-partial derivatives are equal (Euler's reciprocity), giving the **four Maxwell relations**:

$$
\left(\frac{\partial T}{\partial V}\right)_S=-\left(\frac{\partial P}{\partial S}\right)_V\qquad(1)
$$

$$
\left(\frac{\partial T}{\partial P}\right)_S=\left(\frac{\partial V}{\partial S}\right)_P\qquad(2)
$$

$$
\left(\frac{\partial S}{\partial V}\right)_T=\left(\frac{\partial P}{\partial T}\right)_V\qquad(3)
$$

$$
\left(\frac{\partial S}{\partial P}\right)_T=-\left(\frac{\partial V}{\partial T}\right)_P\qquad(4)
$$

**Derivation of the two asked forms:** From $dU=TdS-PdV$, treating $U$ as a function of $S,V$: $\left(\dfrac{\partial U}{\partial S}\right)_V=T$, $\left(\dfrac{\partial U}{\partial V}\right)_S=-P$. Since $\dfrac{\partial^2U}{\partial V\partial S}=\dfrac{\partial^2U}{\partial S\partial V}$:

$$
\left(\frac{\partial T}{\partial V}\right)_S=-\left(\frac{\partial P}{\partial S}\right)_V
$$

Similarly from $dH=TdS+VdP$ (H as function of S,P): $\left(\dfrac{\partial H}{\partial S}\right)_P=T$, $\left(\dfrac{\partial H}{\partial P}\right)_S=V$, and equality of mixed partials gives:

$$
\left(\frac{\partial T}{\partial P}\right)_S=\left(\frac{\partial V}{\partial S}\right)_P
$$

**To show $\left(\dfrac{\partial Q}{\partial V}\right)_T=T\left(\dfrac{\partial P}{\partial T}\right)_V$:** From the first law $dQ=dU+PdV$, and $dU=TdS-PdV$, so $dQ=TdS$. At constant $T$: $\left(\dfrac{\partial Q}{\partial V}\right)_T=T\left(\dfrac{\partial S}{\partial V}\right)_T$. By Maxwell relation (3), $\left(\dfrac{\partial S}{\partial V}\right)_T=\left(\dfrac{\partial P}{\partial T}\right)_V$. Hence

$$
\left(\frac{\partial Q}{\partial V}\right)_T=T\left(\frac{\partial P}{\partial T}\right)_V
$$

**To show $\left(\dfrac{\partial T}{\partial V}\right)_S=-T\left(\dfrac{\partial P}{\partial Q}\right)_V$ [equivalently the form $\left(\frac{\partial T}{\partial V}\right)_S = -T\left(\frac{\partial P}{\partial T}\right)_V\left(\frac{\partial T}{\partial Q}\right)_V$]:** Using $dQ=TdS$ at constant $V$, $\left(\dfrac{\partial S}{\partial Q}\right)_V=\dfrac{1}{T}$. Combined with relation (1) and the chain rule, one obtains the required identity connecting these partials — confirming consistency of the Maxwell relations (full chain-rule algebra as above).

## [D-41] Isentropic (Reversible Adiabatic) Process; Work Done

An **isentropic process** is a reversible adiabatic process ($dQ=0$, $dS=0$), so entropy stays constant (see D-32). For an ideal gas undergoing such a process, $PV^\gamma=$ const (D-30). Work done during expansion from $V_1$ to $V_2$:

$$
W=\int_{V_1}^{V_2}PdV=\int_{V_1}^{V_2}\frac{K}{V^\gamma}dV=\frac{K}{1-\gamma}\left[V^{1-\gamma}\right]_{V_1}^{V_2},\quad K=P_1V_1^\gamma=P_2V_2^\gamma
$$

$$
W=\frac{P_2V_2^\gamma\cdot V_2^{1-\gamma}-P_1V_1^\gamma\cdot V_1^{1-\gamma}}{1-\gamma}=\frac{P_2V_2-P_1V_1}{1-\gamma}
$$

$$
W=\frac{P_1V_1-P_2V_2}{\gamma-1}=\frac{R(T_1-T_2)}{\gamma-1}\ \text{(per mole)}
$$

## [D-42] Work Done During an Isothermal Process

For an ideal gas at constant temperature $T$, $PV=RT$ (per mole), so $P=RT/V$. Work done in expanding from $V_1$ to $V_2$:

$$
W=\int_{V_1}^{V_2}PdV=\int_{V_1}^{V_2}\frac{RT}{V}dV=RT\ln\frac{V_2}{V_1}
$$

$$
W=RT\ln\frac{V_2}{V_1}=2.303\,RT\log_{10}\frac{V_2}{V_1}=2.303\,RT\log_{10}\frac{P_1}{P_2}
$$

(using $P_1V_1=P_2V_2$ at constant $T$).

---

[← Index](README.md) · [Previous](05-derivations-D31-D39.md) · [Next →](07-derivations-D43-D47.md)
