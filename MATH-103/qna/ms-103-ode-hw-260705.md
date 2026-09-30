# Ice Melting Problem — Exponential Decay

## Setting Up the Differential Equation

Let $Q(t)$ be the amount of ice remaining at time $t$ (in minutes).

Since the rate of melting is proportional to the amount of ice present at that instant:

$$
\frac{dQ}{dt} = -kQ
$$

where $k > 0$ is the proportionality (melting) constant. The negative sign indicates that the quantity of ice is *decreasing* over time.

## Solving the ODE

This is a separable first-order linear differential equation:

$$
\frac{dQ}{Q} = -k\,dt
$$

Integrating both sides:

$$
\int \frac{dQ}{Q} = -k\int dt
$$

$$
\ln Q = -kt + C
$$

Exponentiating:

$$
Q(t) = Q_0 e^{-kt}
$$

where $Q_0 = Q(0)$ is the initial amount of ice.

## Applying the Given Condition

We're told that **half the ice melts in 30 minutes**, i.e., $Q(30) = \dfrac{Q_0}{2}$.

$$
\frac{Q_0}{2} = Q_0 e^{-30k}
$$

$$
e^{-30k} = \frac{1}{2}
$$

Taking the natural log:

$$
-30k = \ln\left(\frac{1}{2}\right) = -\ln 2
$$

$$
k = \frac{\ln 2}{30}
$$

## General Solution (rewritten in base 2)

Substituting $k$ back:

$$
Q(t) = Q_0 e^{-\left(\frac{\ln 2}{30}\right)t} = Q_0 \left(e^{\ln 2}\right)^{-t/30}
$$

$$
Q(t) = Q_0 \left(\frac{1}{2}\right)^{t/30}
$$

This form is convenient — it directly shows the ice halving every 30 minutes (a **half-life** interpretation).

## Evaluating at t = 2 hours (120 minutes)

$$
Q(120) = Q_0 \left(\frac{1}{2}\right)^{120/30} = Q_0 \left(\frac{1}{2}\right)^{4}
$$

$$
Q(120) = \frac{Q_0}{16}
$$

## Result

$$
Q(120) = \frac{Q_0}{16} = 6.25\%\ \text{of the original ice}
$$

**Interpretation:** Every 30 minutes, the remaining ice is halved:

| Time (min) | Fraction Remaining |
|:----------:|:-------------------:|
| 0          | $Q_0$ (100%)        |
| 30         | $Q_0/2$ (50%)        |
| 60         | $Q_0/4$ (25%)        |
| 90         | $Q_0/8$ (12.5%)      |
| 120        | $Q_0/16$ (6.25%)     |

After **2 hours**, only $\dfrac{1}{16}$ of the original ice remains — a classic exponential decay pattern, mathematically identical to radioactive decay with a "half-life" of 30 minutes.
