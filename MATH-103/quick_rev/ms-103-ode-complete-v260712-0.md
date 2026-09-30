# Differential Equations — Complete Revision Handbook

*Compiled and expanded from class notes. Every formula rechecked, every derivation re-verified, every numerical answer recalculated.*

---

## How This Handbook Is Organized

| Chapter | Topic |
|---|---|
| 1 | First-Order Linear/Separable ODEs — Growth & Decay Applications |
| 2 | Linear Differential Equations of Higher Order with Constant Coefficients |

Each chapter follows: **Theory → Solved Examples (Easy → Exam level) → Practice Questions → Full Solutions → Exam Prep Sheet**.

---

# Chapter 1: First-Order ODEs — Exponential Growth, Decay, and Newton's Law of Cooling

## Learning Objectives

By the end of this chapter you should be able to:
- Recognize and solve a separable first-order ODE of the form $`\dfrac{dQ}{dt} = kQ`$.
- Derive and apply the exponential decay/growth model $`Q(t) = Q_0 e^{kt}`$.
- Apply this model specifically to **Newton's Law of Cooling** and **decay-type "melting/emptying" problems**.
- Convert word problems into initial value problems (IVPs), solve for the constant $`k`$, and answer follow-up quantitative questions.

---

## Theory

### Definitions

> **Separable differential equation:** A first-order ODE that can be written as $`\dfrac{dy}{dx} = g(x)h(y)`$, so that all $`y`$-terms can be moved to one side and all $`x`$-terms to the other.

> **Initial Value Problem (IVP):** A differential equation paired with a specific condition (e.g., $`Q(0)=Q_0`$) that pins down the arbitrary constant, giving a *particular* solution rather than a general family of solutions.

### The Core Model

Many physical processes — radioactive decay, cooling of an object, melting of ice, population growth, drug elimination from the bloodstream — obey the same structural law:

```math
\text{Rate of change of a quantity} \propto \text{the quantity itself}
```

```math
\boxed{\frac{dQ}{dt} = kQ}
```

- If $`k>0`$: exponential **growth** (e.g., population, compound interest).
- If $`k<0`$ (often written as $`-k`$ with $`k>0`$): exponential **decay** (e.g., melting ice, radioactivity, cooling gap).

### Important Formulae

**General solution (by separation of variables):**

```math
\frac{dQ}{Q} = k\,dt \implies \int \frac{dQ}{Q} = \int k\,dt \implies \ln Q = kt + C \implies Q(t) = Q_0 e^{kt}
```

where $`Q_0 = Q(0)`$ is the initial amount.

**Newton's Law of Cooling** — a slightly modified version of the same idea. It states that the rate of change of an object's temperature is proportional to the *difference* between its own temperature $`T`$ and the ambient (surrounding) temperature $`T_s`$:

```math
\frac{dT}{dt} = -k(T - T_s), \qquad k>0
```

Solving by separation of variables:

```math
\frac{dT}{T-T_s} = -k\,dt \implies \ln|T-T_s| = -kt+C \implies T-T_s = Ce^{-kt}
```

```math
\boxed{T(t) = T_s + (T_0 - T_s)e^{-kt}}
```

where $`T_0=T(0)`$ is the initial temperature of the object.

### Derivation Walkthrough (step-by-step, no skipped algebra)

Starting from $`\dfrac{dQ}{dt}=kQ`$:

1. Separate variables: $`\dfrac{dQ}{Q}=k\,dt`$ (valid provided $`Q\neq0`$).
2. Integrate both sides: $`\displaystyle\int\frac{dQ}{Q}=\int k\,dt`$.
3. This gives $`\ln|Q| = kt+C_1`$, where $`C_1`$ is the constant of integration.
4. Exponentiate: $`|Q| = e^{kt+C_1}=e^{C_1}e^{kt}`$.
5. Absorb the constant: let $`Q_0=\pm e^{C_1}`$ (a new constant, determined by the sign/initial condition), so $`Q(t)=Q_0 e^{kt}`$.
6. Apply the initial condition $`Q(0)=Q_0`$: check $`Q(0)=Q_0e^{0}=Q_0`$ ✓, confirming $`Q_0`$ really is the initial quantity.

### Properties

- The model is a **first-order, separable, linear** ODE — the simplest possible growth/decay law.
- The solution curve never actually reaches zero (in pure theory) — it only approaches it asymptotically, since $`e^{kt}>0`$ for all finite $`t`$. In practice, "the ice is gone" or "cooling is complete" is treated as *effectively* zero after enough time.
- **Half-life / "half-time" structure:** if a quantity is known to halve (or reach any fixed fraction) in time $`\tau`$, the solution can be rewritten in the convenient base-$`\tfrac12`$ form:

```math
Q(t) = Q_0\left(\frac12\right)^{t/\tau}
```

This is often faster than solving for $`k`$ explicitly and is algebraically identical to $`Q_0e^{kt}`$ with $`k = -\dfrac{\ln 2}{\tau}`$.

### Common Mistakes

| Mistake | Why it's wrong | Fix |
|---|---|---|
| Forgetting the negative sign in decay problems | $`\frac{dQ}{dt}=kQ`$ with $`k>0`$ describes *growth*, not decay | For decay write $`\frac{dQ}{dt}=-kQ`$ with $`k>0`$, or just let $`k`$ itself be negative and keep track of its sign consistently |
| Mixing up $`T-T_s`$ direction | Sign error flips whether the object is heating or cooling | Always write the law as (object temp $`-`$ ambient temp), so the object cools toward $`T_s`$ when $`T>T_s`$ |
| Using minutes and hours inconsistently in the same equation | Produces wrong exponent | Convert **everything** to the same time unit before substituting |
| Forgetting units on final answer | Loses marks even with correct number | State units (°C, grams, %, minutes) explicitly |

### Shortcuts

- If a problem gives you a "half the quantity is gone in time $`\tau`$" statement, skip solving for $`k`$ in exponential form entirely — jump straight to $`Q(t)=Q_0(1/2)^{t/\tau}`$.
- For Newton's Law of Cooling problems that give you *two* data points (besides $`T_s`$), you can find $`k`$ directly by dividing one equation by the other — the $`Q_0`$ or $`(T_0-T_s)`$ terms cancel.

### Exam Tips

- Always **define your variable** first: "Let $`Q(t)`$ be the amount of ice remaining at time $`t`$ (minutes), and let $`k>0`$ be the melting constant." This is often worth marks on its own.
- State *why* the equation is separable, and show the separation step explicitly — examiners award marks for method, not just the final formula.
- When asked for "amount left" or "percentage remaining," always double-check whether the question wants a **numeric value** or a **percentage of the original** — both are common but different final answers.

### Important Identities

```math
e^{\ln x} = x, \qquad \ln(e^x)=x, \qquad e^{a\ln b} = b^a
```

These are essential for converting between the $`e^{kt}`$ form and the $`(1/2)^{t/\tau}`$ form.

### Frequently Asked Questions

**Q: Why does Newton's Law of Cooling use $`(T-T_s)`$ instead of just $`T`$?**
A: Because an object doesn't cool to absolute zero — it cools *toward room temperature*. The driving force behind heat loss is the temperature *difference*, not the absolute temperature. As $`T\to T_s`$, the rate of cooling $`\to 0`$, matching physical intuition.

**Q: Is $`k`$ always positive?**
A: By the convention used in this handbook, yes — $`k>0`$ is defined as the decay/cooling constant, and the model is written with an explicit minus sign ($`-k`$) to represent decay. Some textbooks fold the sign into $`k`$ itself; always check which convention a given exam paper uses.

### Summary

- Growth/decay: $`\dfrac{dQ}{dt}=kQ \implies Q(t)=Q_0e^{kt}`$.
- Cooling: $`\dfrac{dT}{dt}=-k(T-T_s) \implies T(t)=T_s+(T_0-T_s)e^{-kt}`$.
- Convenient half-life form: $`Q(t)=Q_0(1/2)^{t/\tau}`$.
- Method: separate variables → integrate → apply initial condition → apply any second data point to solve for $`k`$ → answer the specific question asked.

---

## Solved Examples

### Example 1 (Easy) — Basic decay setup

**Problem:** A radioactive substance decays according to $`\dfrac{dQ}{dt}=-kQ`$. If $`Q_0=100\text{ g}`$ and $`k=0.05\text{ per hour}`$, find $`Q(10)`$.

**Solution:**
Step 1: General solution is $`Q(t)=Q_0e^{-kt}`$.
Step 2: Substitute $`Q_0=100`$, $`k=0.05`$, $`t=10`$:
```math
Q(10) = 100e^{-0.05\times10} = 100e^{-0.5}
```
Step 3: Evaluate $`e^{-0.5}\approx0.6065`$.
```math
Q(10)\approx 100\times0.6065 = 60.65\text{ g}
```

**Final answer:** $`Q(10)\approx 60.65`$ g.

---

### Example 2 (Medium) — Newton's Law of Cooling, reconstructing the notes problem

Your notes show only the tail end of a cooling calculation:

> *"when $`t=3`$, then $`T=25+75e^{3k}`$... $`=25+75(2/3)^3 = 47.22`$"*

> **Missing or illegible in original notes:** the original problem statement and the step establishing $`e^{k}=2/3`$ were not visible in the photographed page. Below is the reconstructed, self-consistent version of the problem that exactly reproduces your numbers, so you can see the full method.

**Reconstructed problem:** A body at $`100°\text{C}`$ is placed in a room at ambient temperature $`25°\text{C}`$. After some earlier stage of the problem it was found that $`e^{k}=\tfrac23`$ (i.e., the cooling constant satisfies this relation from an earlier data point — for instance, "the temperature difference above ambient drops to $`\tfrac23`$ of its previous value each minute"). Find the temperature at $`t=3`$ minutes.

**Solution:**
Step 1: Newton's Law of Cooling: $`T(t) = T_s + (T_0-T_s)e^{kt}`$ (here using $`+k`$ inside the exponent, matching the sign convention in your notes, where $`k`$ itself is understood to be negative/fractional-base).

Step 2: With $`T_s=25`$, $`T_0-T_s=100-25=75`$:
```math
T(t) = 25 + 75e^{kt}
```

Step 3: Since $`e^{k}=\dfrac23`$, we have $`e^{kt}=(e^k)^t=\left(\dfrac23\right)^t`$. At $`t=3`$:
```math
T(3) = 25+75\left(\frac23\right)^3
```

Step 4: Compute $`\left(\dfrac23\right)^3=\dfrac{8}{27}`$.

Step 5: $`75\times\dfrac{8}{27} = \dfrac{600}{27} = 22.\overline{2}`$.

Step 6: $`T(3) = 25+22.22 = 47.22`$.

**Final answer:** $`T(3) \approx 47.22°\text{C}`$ — matches your notes exactly. ✓ (verified)

---

### Example 3 (Hard) — Ice-melting HW problem, fully solved

**Problem (from your notes, HW dated 2026-07-05):** The rate at which the ice melts is proportional to the amount of ice at the instant. Find the amount of ice left after 2 hours if half the quantity melts in 30 minutes.

**Solution:**

**Step 1 — Set up the model.**
Let $`Q(t)`$ be the amount of ice remaining at time $`t`$ (minutes) since the process started. Since the rate of melting is proportional to the amount of ice present at that instant, and the quantity is *decreasing*:
```math
\frac{dQ}{dt} = -kQ, \qquad k>0 \text{ is the melting constant}
```
(the negative sign indicates the quantity of ice is decreasing over time).

**Step 2 — Recognize the equation type.**
This is a separable, first-order, linear differential equation.

**Step 3 — Separate variables.**
```math
\frac{dQ}{Q} = -k\,dt
```

**Step 4 — Integrate both sides.**
```math
\int \frac{dQ}{Q} = -k\int dt \implies \ln Q = -kt + C
```

**Step 5 — Solve for $`Q(t)`$.**
```math
Q(t) = e^{-kt+C} = e^{C}e^{-kt} = Q_0 e^{-kt}
```
where $`Q_0=Q(0)`$ is the initial amount of ice.

**Step 6 — Apply the given condition to find $`k`$.**
Given: half the ice melts in 30 minutes, i.e. $`Q(30)=\dfrac{Q_0}{2}`$.
```math
\frac{Q_0}{2} = Q_0e^{-30k} \implies e^{-30k}=\frac12
```
```math
-30k = \ln\left(\frac12\right) = -\ln 2 \implies k = \frac{\ln 2}{30}
```

**Step 7 — Substitute $`k`$ back into $`Q(t)`$.**
```math
Q(t) = Q_0e^{-\frac{\ln2}{30}t} = Q_0\left(e^{\ln2}\right)^{-t/30} = Q_0\left(\frac12\right)^{t/30}
```

**Step 8 — Evaluate at $`t=2`$ hours $`=120`$ minutes.**
```math
Q(120) = Q_0\left(\frac12\right)^{120/30} = Q_0\left(\frac12\right)^{4} = \frac{Q_0}{16}
```

**Step 9 — Express as a percentage.**
```math
\frac{Q_0}{16} = 0.0625\,Q_0 = 6.25\%\text{ of the original ice}
```

**Final answer:** After 2 hours, $`\dfrac{Q_0}{16}`$ of the ice remains — i.e., **6.25% of the original quantity**. ✓ (verified by direct computation: $`Q_0/16 = 0.0625Q_0`$)

---

### Example 4 (Previous-Exam Style) — Two-stage cooling problem

**Problem:** A cup of coffee at $`90°\text{C}`$ is left in a room at $`20°\text{C}`$. After 5 minutes it cools to $`70°\text{C}`$. Find (a) the cooling constant $`k`$, and (b) the temperature after 15 minutes.

**Solution:**

**(a)** Using $`T(t)=T_s+(T_0-T_s)e^{-kt}`$ with $`T_s=20`$, $`T_0=90`$:
```math
T(t) = 20+70e^{-kt}
```
At $`t=5`$, $`T=70`$:
```math
70 = 20+70e^{-5k} \implies 50=70e^{-5k}\implies e^{-5k}=\frac{50}{70}=\frac57
```
```math
-5k=\ln\left(\frac57\right)\implies k=-\frac{1}{5}\ln\left(\frac57\right) = \frac15\ln\left(\frac75\right)
```
Numerically: $`\ln(7/5)=\ln(1.4)\approx0.3365`$, so $`k\approx0.0673`$ per minute.

**(b)** At $`t=15`$:
```math
T(15) = 20+70e^{-15k} = 20+70\left(e^{-5k}\right)^3 = 20+70\left(\frac57\right)^3
```
```math
\left(\frac57\right)^3 = \frac{125}{343}\approx0.3644
```
```math
T(15)\approx 20+70\times0.3644 = 20+25.51=45.51°\text{C}
```

**Final answer:** $`k\approx0.0673\text{ min}^{-1}`$, and $`T(15)\approx45.5°\text{C}`$.

---

## Practice Questions — Chapter 1

*Full worked solutions follow immediately after each level's question block.*

### Level 1 (Basics)

1. Solve $`\dfrac{dQ}{dt}=3Q`$ with $`Q(0)=50`$. Find $`Q(2)`$.
2. Solve $`\dfrac{dy}{dx}=-2y`$ with $`y(0)=10`$. Find $`y(1)`$.
3. A quantity decays according to $`Q(t)=Q_0e^{-kt}`$. If $`Q_0=200`$ and $`k=0.1`$, find $`Q(5)`$.
4. If half a substance decays in 10 years, express $`Q(t)`$ in the $`(1/2)^{t/\tau}`$ form.
5. Write the general solution of $`\dfrac{dT}{dt}=-k(T-30)`$.
6. If $`T_0=80`$, $`T_s=30`$, write $`T(t)`$ explicitly (leaving $`k`$ as a symbol).
7. Solve $`\dfrac{dP}{dt}=0.02P`$, $`P(0)=1000`$. Find $`P(10)`$ (population growth).
8. True or false: in $`\dfrac{dQ}{dt}=kQ`$, if $`k<0`$ the quantity grows over time. Justify.
9. Convert $`Q(t)=500e^{-0.2t}`$ into the form $`Q_0(1/2)^{t/\tau}`$ (find $`\tau`$).
10. A body is at $`60°\text{C}`$ in a $`20°\text{C}`$ room. Write the IVP (equation + initial condition) that models its cooling.

### Level 2 (Standard)

11. Ice melts such that a quarter of it is gone after 20 minutes. Find $`k`$.
12. A hot metal rod at $`150°\text{C}`$ cools to $`110°\text{C}`$ in 4 minutes in a $`30°\text{C}`$ room. Find $`k`$.
13. Using Q.12's data, find the temperature after 10 minutes.
14. A radioactive isotope has a half-life of 8 days. What fraction remains after 20 days?
15. A population doubles every 15 years. Find the growth constant $`k`$.
16. If $`Q(4)=\dfrac{Q_0}{3}`$, find $`k`$ in terms of $`\ln 3`$.
17. A cooling object satisfies $`T(0)=100`$, $`T_s=25`$, and $`T(2)=70`$. Find $`k`$.
18. Using Q.17's data, find $`T(6)`$.
19. Bacteria grow from 500 to 2000 in 3 hours. Find the growth constant.
20. Using Q.19's data, predict the population after 5 hours.

### Level 3 (Exam)

21. Ice melts at a rate proportional to the amount present. If 30% melts in the first hour, find the percentage remaining after 3 hours.
22. A body cools from $`95°\text{C}`$ to $`75°\text{C}`$ in 2 minutes in surroundings at $`25°\text{C}`$. Find how long it takes to reach $`40°\text{C}`$.
23. A tank of chemical decays (breaks down) such that 10% is lost every hour. Model this as $`\dfrac{dQ}{dt}=kQ`$ and find $`k`$. (Hint: "10% lost per hour" means $`Q(1)=0.9Q_0`$.)
24. Using Q.23, find how many hours until only 50% remains.
25. A substance decays to $`\dfrac{1}{8}`$ of its original amount in 30 years. Find the half-life.
26. Two thermometers, both starting at $`T_0=100°\text{C}`$ in the same $`20°\text{C}`$ room, are read at $`t=5`$ min: one shows $`60°\text{C}`$, the other shows $`50°\text{C}`$. Explain (conceptually) which has the larger cooling constant $`k`$, and why.
27. A pond's fish population declines by $`\frac{1}{5}`$ every year due to a disease modeled by $`\dfrac{dP}{dt}=-kP`$. Find $`k`$ and the time for the population to halve.
28. Coffee cools from $`85°\text{C}`$ to $`65°\text{C}`$ in 6 minutes in a $`20°\text{C}`$ room. Find the temperature after 12 minutes without recomputing $`k`$ numerically (use the "square the ratio" shortcut).
29. If ice takes $`T`$ minutes to lose half its mass, express algebraically the time needed to lose 87.5% of its mass, in terms of $`T`$.
30. A quantity $`Q`$ satisfies $`Q(2)=80`$ and $`Q(5)=10`$ under $`\dfrac{dQ}{dt}=kQ`$. Find $`Q_0`$ and $`k`$.

### Level 4 (Challenging)

31. A body cools in a room whose own temperature is *rising* linearly as $`T_s(t)=20+0.5t`$ (not constant). Set up (but do not fully solve) the resulting non-homogeneous ODE for $`T(t)`$, and explain why the simple exponential model no longer applies directly.
32. Prove that for any decay process $`Q(t)=Q_0e^{kt}`$, the time required to go from any level $`Q_1`$ down to $`Q_1/2`$ is always the same constant (the half-life), regardless of $`Q_1`$.
33. A substance decays with two competing pathways, $`\dfrac{dQ}{dt}=-(k_1+k_2)Q`$. If pathway 1 alone would give a half-life of 10 years and pathway 2 alone a half-life of 15 years, find the combined half-life.
34. Newton's Law of Cooling is modified for a body radiating heat (Stefan–Boltzmann-like) as $`\dfrac{dT}{dt}=-k(T^4-T_s^4)`$. Explain (conceptually, no need to solve) why this equation is *not* solvable by the same separation technique used in this chapter in as simple a closed form, and identify what makes it separable in principle but harder in practice.
35. Given that 40% of a radioactive sample decays in 5 hours, find what percentage remains after 5 hours **and** after 15 hours, and verify the two answers are consistent with the exponential law (i.e., that tripling the time doesn't simply triple the decay percentage).
36. A cooling body reaches $`T_s + \frac{1}{e}(T_0-T_s)`$ at some time $`t^*`$. Show that $`t^*=1/k`$, and give a physical interpretation of this quantity (this is the "time constant" of the system).
37. If ice melts twice as fast in sunlight ($`k_{\text{sun}}=2k_{\text{shade}}`$), and it takes 40 minutes to fully "effectively vanish" (defined as reaching 1% of original mass) in the shade, estimate the corresponding time in sunlight.
38. Derive the general solution of $`\dfrac{dQ}{dt}=kQ+b`$ (a constant forcing term added), and explain how this differs structurally from the pure decay/growth model in this chapter.
39. A quantity decays according to $`\dfrac{dQ}{dt}=-kQ`$ but is measured with a systematic instrument offset, so the recorded reading is $`R(t)=Q(t)+c`$ for some constant $`c`$. If $`R_0=105`$ and true $`Q_0=100`$ (so $`c=5`$), and $`k=0.1`$, find $`R(10)`$.
40. A city's population is modeled by $`\dfrac{dP}{dt}=kP`$ with $`k=0.03/\text{year}`$. In how many years will the population triple? Express your answer both as an exact expression involving $`\ln 3`$ and as a decimal.

---

## Complete Solutions — Chapter 1 Practice Questions

**1.** $`Q(t)=50e^{3t}`$. $`Q(2)=50e^6\approx50\times403.43=20171.5`$.

**2.** $`y(t)=10e^{-2t}`$. $`y(1)=10e^{-2}\approx10\times0.1353=1.353`$.

**3.** $`Q(5)=200e^{-0.5}\approx200\times0.6065=121.31`$.

**4.** Half-life $`\tau=10`$ years, so $`Q(t)=Q_0\left(\dfrac12\right)^{t/10}`$.

**5.** Separate: $`\dfrac{dT}{T-30}=-k\,dt \implies \ln|T-30|=-kt+C \implies T(t)=30+Ae^{-kt}`$, where $`A=T_0-30`$.

**6.** $`T(t)=30+(80-30)e^{-kt}=30+50e^{-kt}`$.

**7.** $`P(t)=1000e^{0.02t}`$. $`P(10)=1000e^{0.2}\approx1000\times1.2214=1221.4`$.

**8.** **False.** If $`k<0`$ in $`\dfrac{dQ}{dt}=kQ`$, the solution $`Q(t)=Q_0e^{kt}`$ has a negative exponent effectively, so $`Q`$ *decreases* toward 0 as $`t`$ increases — this is decay, not growth. Growth requires $`k>0`$.

**9.** Write $`e^{-0.2t}=\left(\dfrac12\right)^{t/\tau}`$. Taking $`\ln`$ of both sides: $`-0.2t = \dfrac{t}{\tau}\ln\left(\dfrac12\right) = -\dfrac{t\ln2}{\tau}`$. So $`0.2=\dfrac{\ln2}{\tau}\implies \tau=\dfrac{\ln2}{0.2}=\dfrac{0.6931}{0.2}\approx3.466`$.

**10.** $`\dfrac{dT}{dt}=-k(T-20)`$, $`T(0)=60`$.

**11.** $`Q(20)=\dfrac34 Q_0`$ (a quarter gone means three-quarters remain).
```math
\frac34=e^{-20k}\implies -20k=\ln\left(\frac34\right)\implies k=-\frac{1}{20}\ln\left(\frac34\right)=\frac{1}{20}\ln\left(\frac43\right)
```
Numerically: $`\ln(4/3)\approx0.2877`$, so $`k\approx0.01438\text{ min}^{-1}`$.

**12.** $`T_s=30`$, $`T_0=150`$, $`T(4)=110`$.
```math
110=30+120e^{-4k}\implies 80=120e^{-4k}\implies e^{-4k}=\frac23
```
```math
k=-\frac14\ln\left(\frac23\right)=\frac14\ln\left(\frac32\right)\approx\frac14(0.4055)\approx0.1014\text{ min}^{-1}
```

**13.** $`T(10)=30+120e^{-10k}=30+120\left(e^{-4k}\right)^{10/4}=30+120\left(\frac23\right)^{2.5}`$.
$`\left(\dfrac23\right)^{2.5}=e^{2.5\ln(2/3)}=e^{2.5\times(-0.4055)}=e^{-1.0137}\approx0.3629`$.
$`T(10)\approx30+120\times0.3629=30+43.55=73.55°\text{C}`$.

**14.** Half-life 8 days: $`Q(t)=Q_0(1/2)^{t/8}`$. At $`t=20`$: $`(1/2)^{20/8}=(1/2)^{2.5}\approx0.1768`$. So about **17.68%** remains.

**15.** Doubling: $`Q_0(1/2)^{-1}`$... use $`2=e^{15k}\implies k=\dfrac{\ln2}{15}\approx0.0462\text{ yr}^{-1}`$.

**16.** $`\dfrac{Q_0}{3}=Q_0e^{4k}\implies e^{4k}=\dfrac13\implies 4k=-\ln3\implies k=-\dfrac{\ln3}{4}`$ (negative, confirming decay).

**17.** $`T(t)=25+75e^{-kt}`$ (since $`T_0-T_s=100-25=75`$). At $`t=2`$: $`70=25+75e^{-2k}\implies 45=75e^{-2k}\implies e^{-2k}=\dfrac{45}{75}=\dfrac35`$.
```math
k=-\frac12\ln\left(\frac35\right)=\frac12\ln\left(\frac53\right)\approx\frac12(0.5108)\approx0.2554\text{ min}^{-1}
```

**18.** $`T(6)=25+75\left(e^{-2k}\right)^3=25+75\left(\dfrac35\right)^3=25+75\times\dfrac{27}{125}=25+16.2=41.2°\text{C}`$.

**19.** $`2000=500e^{3k}\implies e^{3k}=4\implies k=\dfrac{\ln4}{3}\approx\dfrac{1.3863}{3}\approx0.4621\text{ hr}^{-1}`$.

**20.** $`P(5)=500e^{5k}=500\left(e^{3k}\right)^{5/3}=500\times4^{5/3}`$. $`4^{5/3}=e^{(5/3)\ln4}=e^{(5/3)(1.3863)}=e^{2.3105}\approx10.08`$. $`P(5)\approx500\times10.08=5040`$.

**21.** 30% melts in 1 hour means 70% remains: $`Q(1)=0.7Q_0`$, so $`e^{k}=0.7`$ (using $`Q(t)=Q_0e^{kt}`$, $`k<0`$ inherently since $`0.7<1`$).
```math
Q(3)=Q_0(e^k)^3=Q_0(0.7)^3=Q_0\times0.343
```
**34.3% remains** after 3 hours.

**22.** $`T_s=25`$, $`T_0=95`$. At $`t=2`$, $`T=75`$: $`75=25+70e^{-2k}\implies50=70e^{-2k}\implies e^{-2k}=\dfrac57`$.
$`k=-\dfrac12\ln(5/7)=\dfrac12\ln(7/5)\approx\dfrac12(0.3365)\approx0.1682\text{ min}^{-1}`$.
Now find $`t`$ when $`T=40`$: $`40=25+70e^{-kt}\implies15=70e^{-kt}\implies e^{-kt}=\dfrac{15}{70}=\dfrac{3}{14}`$.
$`-kt=\ln(3/14)\implies t=\dfrac{-\ln(3/14)}{k}=\dfrac{\ln(14/3)}{0.1682}`$.
$`\ln(14/3)=\ln(4.667)\approx1.5404`$. $`t\approx\dfrac{1.5404}{0.1682}\approx9.16`$ minutes.

**23.** $`Q(1)=0.9Q_0=Q_0e^{k}\implies e^k=0.9\implies k=\ln(0.9)\approx-0.1054\text{ hr}^{-1}`$ (negative, confirming decay, as expected).

**24.** Need $`t`$ such that $`Q_0(0.9)^t=0.5Q_0\implies(0.9)^t=0.5\implies t\ln(0.9)=\ln(0.5)\implies t=\dfrac{\ln0.5}{\ln0.9}=\dfrac{-0.6931}{-0.1054}\approx6.58`$ hours.

**25.** $`\dfrac18=(1/2)^{30/\tau}\implies\dfrac18=(1/2)^3`$, so $`\dfrac{30}{\tau}=3\implies\tau=10`$ years.

**26.** The thermometer reading $`50°\text{C}`$ has cooled more (dropped 50° from 100° vs. the other's 40° drop) in the same 5 minutes, so it has the **larger $`k`$** — a larger $`k`$ means the exponential term $`e^{-kt}`$ shrinks faster, producing a faster approach to ambient temperature.

**27.** $`\dfrac15`$ decline per year means $`P(1)=0.8P_0=P_0e^{-k}\implies e^{-k}=0.8\implies k=-\ln(0.8)=\ln(1.25)\approx0.2231\text{ yr}^{-1}`$.
Half-life: $`(0.8)^t=0.5\implies t=\dfrac{\ln0.5}{\ln0.8}=\dfrac{-0.6931}{-0.2231}\approx3.106`$ years.

**28.** $`T(6)=65`$, $`T_0=85`$, $`T_s=20`$: ratio $`e^{-6k}=\dfrac{65-20}{85-20}=\dfrac{45}{65}=\dfrac{9}{13}`$.
$`T(12)=20+65\left(e^{-6k}\right)^2=20+65\left(\dfrac{9}{13}\right)^2=20+65\times\dfrac{81}{169}`$.
$`65\times\dfrac{81}{169}=\dfrac{5265}{169}\approx31.16`$. $`T(12)\approx20+31.16=51.16°\text{C}`$.
(Shortcut used: squaring the known ratio $`9/13`$ instead of recomputing $`k`$ numerically.)

**29.** $`87.5\%=\dfrac78`$ lost means $`\dfrac18`$ remains $`=(1/2)^3`$. Since each half-life is $`T`$ minutes, losing $`\dfrac78`$ requires **3 half-lives**, i.e. time $`=3T`$ minutes.

**30.** $`\dfrac{Q(5)}{Q(2)}=\dfrac{10}{80}=\dfrac18=e^{k(5-2)}=e^{3k}\implies e^{3k}=\dfrac18=(1/2)^3 \implies e^k=\dfrac12 \implies k=-\ln2\approx-0.6931`$.
Then $`Q_0`$: $`Q(2)=Q_0e^{2k}=Q_0(1/2)^2=Q_0/4=80\implies Q_0=320`$.

**31.** With a time-varying ambient temperature, the ODE becomes $`\dfrac{dT}{dt}=-k(T-(20+0.5t))=-kT+k(20+0.5t)`$, i.e. $`\dfrac{dT}{dt}+kT = 20k+0.5kt`$ — a **non-homogeneous linear** first-order ODE (linear but not separable in the simple sense, since $`T_s`$ is no longer constant). It requires an integrating factor method ($`\mu(t)=e^{kt}`$) rather than the pure separation-of-variables shortcut used throughout this chapter.

**32.** Let $`Q(t_1)=Q_1`$. We want $`t_2`$ such that $`Q(t_2)=Q_1/2`$. Since $`Q(t)=Q_0e^{kt}`$:
```math
\frac{Q(t_2)}{Q(t_1)}=\frac{Q_0e^{kt_2}}{Q_0e^{kt_1}}=e^{k(t_2-t_1)}=\frac12
```
This gives $`t_2-t_1=\dfrac{\ln(1/2)}{k}`$, a constant depending only on $`k`$ — **not** on $`t_1`$ or $`Q_1`$. Hence the time to halve is always the same, proving the half-life is a fixed property of the decay constant $`k`$ alone. $`\blacksquare`$

**33.** Individual decay constants: $`k_1=\dfrac{\ln2}{10}`$, $`k_2=\dfrac{\ln2}{15}`$.
Combined constant $`k=k_1+k_2=\ln2\left(\dfrac{1}{10}+\dfrac{1}{15}\right)=\ln2\left(\dfrac{3+2}{30}\right)=\dfrac{5\ln2}{30}=\dfrac{\ln2}{6}`$.
Combined half-life $`=\dfrac{\ln2}{k}=\dfrac{\ln2}{\ln2/6}=6`$ years.

**34.** The equation $`\dfrac{dT}{dt}=-k(T^4-T_s^4)`$ is technically still **separable** in principle — you *can* write $`\dfrac{dT}{T^4-T_s^4}=-k\,dt`$ — but the left side requires factoring a quartic difference (using partial fractions with complex/real factor combinations of $`T^4-T_s^4=(T^2-T_s^2)(T^2+T_s^2)=(T-T_s)(T+T_s)(T^2+T_s^2)`$) and integrating each piece, producing a mixture of logarithmic and arctangent terms rather than a single clean exponential. So it's separable "in principle" but algebraically much harder to integrate in closed form than the linear-in-$`T`$ case used in this chapter.

**35.** $`Q(5)=0.6Q_0`$ (since 40% decayed). So $`e^{5k}=0.6`$.
At $`t=5`$: 60% remains (given).
At $`t=15=3\times5`$: $`Q(15)=Q_0(e^{5k})^3=Q_0(0.6)^3=Q_0\times0.216`$, i.e. **21.6% remains**.
Consistency check: tripling the time cubes the *remaining fraction* (multiplicative, not additive) — $`0.6^3=0.216\neq0.6\times3\times(\text{something linear})`$, confirming the process is genuinely exponential, not linear.

**36.** $`T(t)=T_s+(T_0-T_s)e^{-kt}`$. We want $`T(t^*)-T_s=\dfrac{1}{e}(T_0-T_s)`$:
```math
(T_0-T_s)e^{-kt^*}=\frac{1}{e}(T_0-T_s)\implies e^{-kt^*}=e^{-1}\implies -kt^*=-1\implies t^*=\frac1k
```
**Interpretation:** $`t^*=1/k`$ is the *time constant* of the cooling process — the time it takes for the temperature gap to fall to about 37% ($`1/e\approx0.368`$) of its original value. It's a standard measure of "how fast" an exponential process settles, analogous to time constants in RC circuits.

**37.** "Effectively vanish" = reach 1% means $`e^{k_{\text{shade}}\cdot40}=0.01`$ (treating $`k`$ as the log-decay rate, negative sign implicit), so $`k_{\text{shade}}=\dfrac{\ln(0.01)}{40}`$.
Since $`k_{\text{sun}}=2k_{\text{shade}}`$, the sunlight process reaches the same 1% threshold in half the time (because doubling the rate constant halves the time needed to reach any fixed ratio, from $`t=\ln(0.01)/k`$):
```math
t_{\text{sun}} = \frac{\ln(0.01)}{k_{\text{sun}}}=\frac{\ln(0.01)}{2k_{\text{shade}}}=\frac{t_{\text{shade}}}{2}=\frac{40}{2}=20\text{ minutes}
```

**38.** For $`\dfrac{dQ}{dt}=kQ+b`$: this is a **linear non-homogeneous** first-order ODE. Rewrite as $`\dfrac{dQ}{dt}-kQ=b`$. Using integrating factor $`\mu=e^{-kt}`$:
```math
\frac{d}{dt}\left(Qe^{-kt}\right)=be^{-kt} \implies Qe^{-kt} = -\frac{b}{k}e^{-kt}+C \implies Q(t) = Ce^{kt}-\frac{b}{k}
```
Applying $`Q(0)=Q_0`$: $`C=Q_0+\dfrac{b}{k}`$, giving $`Q(t)=\left(Q_0+\dfrac{b}{k}\right)e^{kt}-\dfrac{b}{k}`$.
**Key structural difference:** unlike the pure model in this chapter, this solution does **not** decay/grow to zero — it approaches a nonzero steady state $`-b/k`$ (for $`k<0`$) as $`t\to\infty`$, because of the constant forcing term $`b`$.

**39.** True quantity: $`Q(t)=100e^{-0.1t}`$. Since $`c=5`$ is a constant offset independent of $`t`$: $`R(t)=Q(t)+5=100e^{-0.1t}+5`$.
At $`t=10`$: $`Q(10)=100e^{-1}\approx36.79`$. So $`R(10)\approx36.79+5=41.79`$.

**40.** Need $`t`$ such that $`P(t)=3P_0`$: $`3=e^{0.03t}\implies 0.03t=\ln3\implies t=\dfrac{\ln3}{0.03}`$.
Exact: $`t=\dfrac{\ln3}{0.03}`$ years. Decimal: $`\ln3\approx1.0986`$, so $`t\approx\dfrac{1.0986}{0.03}\approx36.6`$ years.

---

## Chapter 1 — Exam Prep

### Formula Sheet / One-Page Quick Revision

```math
\frac{dQ}{dt}=kQ \;\Longrightarrow\; Q(t)=Q_0e^{kt}
```

```math
\frac{dT}{dt}=-k(T-T_s) \;\Longrightarrow\; T(t)=T_s+(T_0-T_s)e^{-kt}
```

```math
Q(t)=Q_0\left(\frac12\right)^{t/\tau}\quad\text{(}\tau=\text{half-life)}\qquad k=\frac{\ln2}{\tau}
```

**Method checklist for any growth/decay word problem:**
1. Define $`Q(t)`$ or $`T(t)`$ clearly, state units.
2. Write down the proportionality statement as a differential equation.
3. Separate variables, integrate, apply $`Q(0)=Q_0`$.
4. Use the *second* given data point to solve for $`k`$.
5. Substitute to answer the specific question (value, time, or percentage).

### Frequently Repeated University Question Patterns

- "The rate of X is proportional to X. Find X after time $`t`$ given a halving/tripling condition." → direct decay/growth model.
- Two-stage Newton's Law of Cooling problems (find $`k`$ from one data point, then predict a later/earlier temperature).
- "What percentage remains after..." → always express final answer as $`Q_0\times(\text{fraction})`$, then convert to %.

### Common Traps

- Confusing "half remains" with "half is lost" — read carefully.
- Time unit mismatches (minutes vs. hours) — always double check.
- Forgetting to state the general solution formula with the correct sign before substituting numbers (loses method marks even if final numeric answer is right).

---

# Chapter 2: Linear Differential Equations of Higher Order with Constant Coefficients

## Learning Objectives

By the end of this chapter you should be able to:
- Write an $`n`$th-order linear ODE with constant coefficients using the differential operator $`D`$.
- Find the **Complementary Function (C.F.)** by solving the Auxiliary Equation, covering all three root cases.
- Find the **Particular Integral (P.I.)** using the five standard shortcut rules for $`e^{ax}`$, $`x^n`$, $`\sin ax/\cos ax`$, $`e^{ax}\varphi(x)`$, and the direct integration rule.
- Combine C.F. and P.I. to state the **general solution** (also called the "complete primitive").

---

## Theory

### Definitions

> **Linear differential equation of order $`n`$ with constant coefficients:** an equation of the form
> ```math
> \frac{d^ny}{dx^n}+a_1\frac{d^{n-1}y}{dx^{n-1}}+\cdots+a_ny = R
> ```
> where $`a_1,a_2,\dots,a_n`$ are constants and $`R`$ is a function of $`x`$ (or a constant).

> **Differential operator $`D`$:** shorthand notation defined by
> ```math
> Dy=\frac{dy}{dx},\quad D^2y=\frac{d^2y}{dx^2},\quad \dots,\quad D^ny=\frac{d^ny}{dx^n}
> ```

> **Inverse operator $`\dfrac{1}{D}`$:** represents the operation of integration (once); $`\dfrac{1}{D^2}`$ represents integrating twice; $`\dfrac{1}{D^n}`$ represents integrating $`n`$ times.

> **Complementary Function (C.F.):** the general solution of the associated **homogeneous** equation $`f(D)y=0`$ (i.e., with $`R`$ replaced by zero).

> **Particular Integral (P.I.):** any one specific solution of the full equation $`f(D)y=R`$ that accounts for the right-hand side.

### Important Formulae

Using operator notation, the $`n`$th-order equation becomes:
```math
f(D)y = R, \qquad \text{where } f(D)=D^n+a_1D^{n-1}+\cdots+a_n
```

**General solution (complete primitive):**
```math
\boxed{y = \text{C.F.} + \text{P.I.}}
```

### Method of Finding the C.F.

To find the C.F., set $`R=0`$ and consider the homogeneous equation. For a second-order example:
```math
f(D)y=0, \qquad (D^2+a_1D+a_2)y=0
```

Try a trial solution $`y=C_1e^{mx}`$. Substituting $`y=e^{mx}`$, $`Dy=me^{mx}`$, $`D^2y=m^2e^{mx}`$ into the equation gives:
```math
m^2+a_1m+a_2=0
```

This is called the **Auxiliary Equation (A.E.)**. Its roots determine the form of the C.F.

#### Case I — Roots Real and Distinct ($`m_1\neq m_2`$)

```math
\boxed{y_{\text{C.F.}} = C_1e^{m_1x}+C_2e^{m_2x}}
```

#### Case II — Roots Real and Equal ($`m_1=m_2=m`$)

```math
\boxed{y_{\text{C.F.}} = (C_1+C_2x)e^{mx}}
```

(For a repeated root of multiplicity $`r`$ in general, the C.F. contribution is $`(C_1+C_2x+C_3x^2+\cdots+C_rx^{r-1})e^{mx}`$.)

#### Case III — Roots Complex Conjugate ($`m=\alpha\pm i\beta`$)

```math
\boxed{y_{\text{C.F.}} = e^{\alpha x}(C_1\cos\beta x+C_2\sin\beta x)}
```

### Method for Finding the P.I.

Given $`f(D)y=R`$, the Particular Integral is $`y=\dfrac{1}{f(D)}R`$. Five standard rules:

**Rule 1 — Exponential $`e^{ax}`$:**
```math
\frac{1}{f(D)}e^{ax}=\frac{1}{f(a)}e^{ax}, \quad \text{if } f(a)\neq0
```
If $`f(a)=0`$ (i.e., $`a`$ is a root of the A.E.):
```math
\frac{1}{f(D)}e^{ax}=x\cdot\frac{1}{f'(a)}e^{ax}, \quad \text{if } f'(a)\neq0
```
If $`f(a)=0`$ **and** $`f'(a)=0`$ (repeated root, multiplicity 2):
```math
\frac{1}{f(D)}e^{ax}=x^2\cdot\frac{1}{f''(a)}e^{ax}
```
(This pattern continues for higher-multiplicity roots.)

**Rule 2 — Polynomial $`x^n`$:**
```math
\frac{1}{f(D)}x^n = [f(D)]^{-1}x^n
```
Expand $`[f(D)]^{-1}`$ as a binomial/power series in $`D`$ (since $`D^{n+1}x^n=0`$ and higher, the series terminates), then operate term by term on $`x^n`$.

**Rule 3 — Trigonometric $`\sin ax`$ or $`\cos ax`$:**
```math
\frac{1}{f(D^2)}\sin ax = \frac{1}{f(-a^2)}\sin ax, \qquad \frac{1}{f(D^2)}\cos ax = \frac{1}{f(-a^2)}\cos ax
```
(valid when $`f`$ is expressed purely in terms of $`D^2`$; replace $`D^2\to-a^2`$). If $`f(-a^2)=0`$:
```math
\frac{1}{f(D^2)}\sin ax = x\cdot\frac{1}{f'(-a^2)}\sin ax \quad\text{(similarly for cosine)}
```

**Rule 4 — Shift Theorem, $`e^{ax}\varphi(x)`$:**
```math
\frac{1}{f(D)}\left[e^{ax}\varphi(x)\right] = e^{ax}\cdot\frac{1}{f(D+a)}\varphi(x)
```
This lets you "pull out" the exponential and shift the operator, reducing the problem to finding $`\dfrac{1}{f(D+a)}\varphi(x)`$.

**Rule 5 — Direct Integration (first-order operator):**
```math
\frac{1}{D+a}\varphi(x) = e^{-ax}\int e^{ax}\varphi(x)\,dx
```
Useful as a fallback when the other rules don't directly apply.

### Derivations (Why the Rules Work)

**Rule 1 derivation:** If $`f(D)y=e^{ax}`$ and $`f(a)\neq0`$, try $`y=\dfrac{1}{f(a)}e^{ax}`$. Check: $`f(D)\left[\dfrac{1}{f(a)}e^{ax}\right] = \dfrac{1}{f(a)}f(D)e^{ax}`$. Since $`D^ke^{ax}=a^ke^{ax}`$ for any $`k`$, we get $`f(D)e^{ax}=f(a)e^{ax}`$, so the whole expression becomes $`\dfrac{1}{f(a)}\cdot f(a)e^{ax}=e^{ax}`$ ✓, confirming the P.I. This is exactly the "resonance breakdown" — when $`f(a)=0`$, this trial solution fails (division by zero), which is *why* $`a`$ being a root of the A.E. forces the extra factor of $`x`$ (this is the standard "resonance" fix, analogous to repeated roots in the C.F. itself).

### Properties

- The C.F. always has exactly $`n`$ arbitrary constants for an $`n`$th-order equation — matching the $`n`$ degrees of freedom needed for a general solution.
- The P.I. contains **no** arbitrary constants — it is one specific function satisfying the full equation.
- If $`R(x)`$ is a sum of several types of terms (e.g., $`e^{ax}+x^n+\sin bx`$), the P.I. can be found **term by term** and added together (linearity of the operator).

### Common Mistakes

| Mistake | Why it's wrong | Fix |
|---|---|---|
| Forgetting to check $`f(a)=0`$ before applying Rule 1 directly | Leads to division by zero, silently wrong answer | Always evaluate $`f(a)`$ first; if zero, move to the $`x\cdot(\cdot)`$ or $`x^2\cdot(\cdot)`$ version |
| Using $`f(D^2)\to f(-a^2)`$ substitution on a term where $`D`$ appears to an odd power | The substitution rule only works cleanly when $`f`$ is a genuine function of $`D^2`$ | If odd-order derivatives are present, use the shift theorem or direct integration instead |
| Mixing up C.F. and P.I. roles (adding constants into the P.I.) | Produces answers with too many/extra unknowns, or double-counts constants | Only the C.F. carries $`C_1, C_2,\dots`$; the P.I. is a specific function |
| Sign errors when factoring the Auxiliary Equation | Wrong roots → wrong C.F. entirely | Always verify roots by expanding $`(m-m_1)(m-m_2)`$ back out and checking it matches the original A.E. |
| Truncating the binomial expansion in Rule 2 too early or too late | Wrong polynomial P.I. | Expand exactly up to the degree of $`x^n`$ — terms of $`D^k`$ for $`k>n`$ automatically vanish, so stop there |

### Shortcuts

- For polynomial $`R`$, remember only derivatives of order $`\le n`$ (where $`x^n`$ is the polynomial degree) survive — everything else in the binomial series is automatically zero, so you never need to expand further than that.
- When $`f(D)`$ is a pure quadratic and the root check for Rule 1 fails once (i.e. $`f(a)=0`$), check immediately whether it's a *repeated* root (since then $`f'(a)=0`$ too) — this tells you straight away whether you need $`x\cdot(\cdot)`$ or $`x^2\cdot(\cdot)`$, without computing $`f'(a)`$ from scratch.

### Exam Tips

- Always **state the C.F. and P.I. separately**, clearly labeled, before combining into the final general solution — most marking schemes award partial credit per-piece.
- Double-check your A.E. roots by substitution before writing the final C.F. — a sign slip here invalidates the whole answer even if your method is otherwise correct.
- For the P.I., if $`R`$ has multiple terms, solve for the P.I. of each term separately and sum — do not try to lump them into one expansion.

### Important Identities

```math
D^ke^{ax}=a^ke^{ax}, \qquad D^2\sin ax = -a^2\sin ax, \qquad D^2\cos ax=-a^2\cos ax
```

```math
(1+u)^{-1}\approx1-u+u^2-u^3+\cdots \quad(\text{binomial series, used in Rule 2})
```

### Frequently Asked Questions

**Q: Why does a repeated root give $`(C_1+C_2x)e^{mx}`$ instead of just $`C_1e^{mx}`$?**
A: A single exponential $`e^{mx}`$ only provides one independent solution, but a second-order equation needs *two* linearly independent solutions to form a general solution. It can be shown (via reduction of order) that $`xe^{mx}`$ is a second, independent solution whenever $`m`$ is a repeated root — hence the extra $`x`$ factor.

**Q: What if the R.H.S. $`R(x)`$ is itself part of the C.F. (i.e., resonance)?**
A: This is exactly the situation Rule 1's "if $`f(a)=0`$" case handles — you multiply by an extra power of $`x`$ for each order of repetition in the root, ensuring the P.I. remains linearly independent from the C.F.

### Summary

- General solution: $`y=\text{C.F.}+\text{P.I.}`$
- C.F. from A.E. roots: distinct real → $`C_1e^{m_1x}+C_2e^{m_2x}`$; repeated → $`(C_1+C_2x)e^{mx}`$; complex → $`e^{\alpha x}(C_1\cos\beta x+C_2\sin\beta x)`$.
- P.I. via 5 rules depending on the form of $`R(x)`$: exponential, polynomial, trig, exponential×function (shift theorem), or direct integration.

---

## Solved Examples

### Example 1 (Easy) — Case I: Real and Distinct Roots

**Problem (from notes):** Solve $`(D^2-9D-52)y=0`$.

> **Note on original notes:** the photographed working shows a partially corrected auxiliary equation (an earlier attempt appears crossed out). The verified, self-consistent auxiliary equation matching your final answer is $`m^2-9m-52=0`$, solved below.

**Solution:**
Step 1: This is a linear, second-order, homogeneous differential equation.
Step 2: Let $`y=C_1e^{mx}`$ be a trial solution. Substituting gives the Auxiliary Equation:
```math
m^2-9m-52=0
```
Step 3: Split the middle term to factor: we need two numbers that multiply to $`-52`$ and add to $`-9`$: these are $`-13`$ and $`4`$ (check: $`-13\times4=-52`$ ✓, $`-13+4=-9`$ ✓).
```math
m^2-13m+4m-52=0 \implies m(m-13)+4(m-13)=0 \implies (m-13)(m+4)=0
```
Step 4: Roots: $`m=13`$ or $`m=-4`$ — real and distinct.
Step 5: By Case I, the solution is:
```math
y = C_1e^{-4x}+C_2e^{13x}
```

**Final answer:** $`y=C_1e^{-4x}+C_2e^{13x}`$ ✓ (verified: matches notes)

---

### Example 2 (Medium) — Case II: Real and Equal Roots

**Problem (from notes):** Solve $`(D^2-6D+9)y=0`$.

**Solution:**
Step 1: Linear, second-order, homogeneous.
Step 2: Trial solution $`y=C_1e^{mx}`$ gives the A.E.:
```math
m^2-6m+9=0
```
Step 3: Recognize this as a perfect square: $`m^2-6m+9=(m-3)^2`$.
```math
(m-3)^2=0 \implies m=3,3 \text{ (repeated root)}
```
Step 4: By Case II:
```math
y = (C_1+C_2x)e^{3x}
```

**Final answer:** $`y=(C_1+C_2x)e^{3x}`$ ✓ (verified: matches notes)

---

### Example 3 (Hard) — Case III: Complex Conjugate Roots

**Problem (from notes):** Solve $`(D^2-4D+13)y=0`$.

**Solution:**
Step 1: Linear, second-order, homogeneous.
Step 2: A.E.: $`m^2-4m+13=0`$.
Step 3: Apply the quadratic formula: $`m=\dfrac{4\pm\sqrt{(-4)^2-4(1)(13)}}{2(1)}=\dfrac{4\pm\sqrt{16-52}}{2}=\dfrac{4\pm\sqrt{-36}}{2}`$.
Step 4: $`\sqrt{-36}=6i`$, so $`m=\dfrac{4\pm6i}{2}=2\pm3i`$.
Step 5: Complex conjugate roots with $`\alpha=2`$, $`\beta=3`$. By Case III:
```math
y = e^{2x}\left(C_1\cos3x+C_2\sin3x\right)
```

**Final answer:** $`y=e^{2x}(C_1\cos3x+C_2\sin3x)`$ ✓ (verified: matches notes, with the stray duplicated "$`e`$" in the original handwriting cleaned up)

---

### Example 4 (Previous-Exam Style) — Full C.F. + P.I., matching notes' worked example

**Problem (from notes):** Solve $`\dfrac{d^2y}{dx^2}-6\dfrac{dy}{dx}+9y = 6e^{3x}+3x-\log2`$.

**Solution:**

**Step 1 — Find the C.F.**
A.E.: $`m^2-6m+9=0 \implies (m-3)^2=0 \implies m=3,3`$ (repeated).
```math
\text{C.F.} = (C_1+C_2x)e^{3x}
```

**Step 2 — Set up the P.I., splitting $`R`$ into three pieces.**
```math
\text{P.I.} = \frac{1}{D^2-6D+9}\left[6e^{3x}+3x-\log2\right] = \underbrace{\frac{6e^{3x}}{D^2-6D+9}}_{\text{PI}_1}+\underbrace{\frac{3x}{D^2-6D+9}}_{\text{PI}_2}-\underbrace{\frac{\log2}{D^2-6D+9}}_{\text{PI}_3}
```

**Step 3 — Compute $`\text{PI}_1`$ (Rule 1, exponential).**
Here $`f(D)=D^2-6D+9`$, and $`a=3`$.
Check $`f(3)=9-18+9=0`$ — resonance case, move to $`f'(D)=2D-6`$, $`f'(3)=6-6=0`$ — **still zero**, so this is a repeated-root resonance; move to $`f''(D)=2`$ (constant), $`f''(3)=2`$.
By the extended Rule 1 (double resonance):
```math
\text{PI}_1 = 6\cdot\frac{x^2}{f''(3)}e^{3x} = 6\cdot\frac{x^2}{2}e^{3x}=3x^2e^{3x}
```

**Step 4 — Compute $`\text{PI}_2`$ (Rule 2, polynomial).**
```math
\text{PI}_2 = \frac{3x}{D^2-6D+9} = \frac{3}{9}\cdot\frac{x}{1+\frac{D^2-6D}{9}} = \frac13\left[1+\frac{D^2-6D}{9}\right]^{-1}x
```
Expand using the binomial series $`\left(1+u\right)^{-1}\approx1-u+u^2-\cdots`$, keeping only terms that survive when applied to a degree-1 polynomial $`x`$ (i.e., $`D^2x=0`$, so any term with $`D^2`$ or higher vanishes):
```math
\frac13\left[1-\frac{D^2-6D}{9}+\cdots\right]x = \frac13\left[x - \frac{D^2x-6Dx}{9}\right] = \frac13\left[x-\frac{0-6(1)}{9}\right]=\frac13\left[x+\frac{6}{9}\right]=\frac13\left[x+\frac23\right]
```
```math
\text{PI}_2 = \frac{x}{3}+\frac29
```

**Step 5 — Compute $`\text{PI}_3`$ (constant term).**
Treating $`\log2`$ as a constant $`R=\log2`$ (i.e., $`x^0`$), apply Rule 1 with $`a=0`$: $`f(0)=0-0+9=9\neq0`$, so:
```math
\text{PI}_3 = \frac{\log2}{f(0)}=\frac{\log2}{9}
```

**Step 6 — Combine.**
```math
\text{P.I.} = 3x^2e^{3x}+\frac{x}{3}+\frac29-\frac{\log2}{9} = 3x^2e^{3x}+\frac{x}{3}+\frac{2-\log2}{9}
```

**Step 7 — Write the general solution.**
```math
\boxed{y = (C_1+C_2x)e^{3x}+3x^2e^{3x}+\frac{x}{3}+\frac{2-\log2}{9}}
```

**Final answer:** matches your notes exactly. ✓ (verified term by term)

---

## Practice Questions — Chapter 2

*The first six questions below are the HW problems from your notes (dated 2026-07-09), fully solved. Additional questions follow for further practice.*

### Level 1 (Basics) — includes your original HW Part (A)

1. Find the general solution: $`(D^2-4D+13)y=0`$.
2. Find the general solution: $`(D^2-3D+2)y=0`$.
3. Find the general solution: $`(D^2+6D+4)y=0`$.
4. Find the general solution: $`\dfrac{d^2y}{dx^2}-2\dfrac{dy}{dx}+2y=0`$.
5. Write the Auxiliary Equation for $`(D^3+2D^2-D-2)y=0`$.
6. State (without deriving) the C.F. form for a repeated root $`m=-5`$ (multiplicity 2) of a second-order equation.
7. State the C.F. form for complex roots $`m=1\pm4i`$.
8. Find the roots of $`(D^2-5D+6)y=0`$ and hence write the C.F.
9. Find the roots of $`(D^2+2D+1)y=0`$ and hence write the C.F.
10. Find the roots of $`(D^2+9)y=0`$ and hence write the C.F.

### Level 2 (Standard) — includes your original HW Part (B)

11. Find the complete primitive of $`(D^3-3D^2+3D-1)y=xe^x+e^x`$.
12. Find the complete primitive of $`\dfrac{d^2y}{dx^2}-9\dfrac{dy}{dx}+20y=20x+\cos5x`$.
13. Solve $`(D^2-D-2)y=e^{3x}`$.
14. Solve $`(D^2+4)y=\sin2x`$.
15. Solve $`(D^2-4)y=x^2`$.
16. Solve $`(D^2+1)y=\cos x`$.
17. Solve $`(D^2-2D+1)y=e^{x}`$.
18. Solve $`(D^2+D-2)y=e^{2x}`$.
19. Solve $`(D^2+4D+4)y=e^{-2x}`$.
20. Solve $`(D^2-9)y=\sin3x`$.

### Level 3 (Exam)

21. Solve $`(D^2-3D+2)y=4x^2`$.
22. Solve $`(D^2+D)y=x^2+2x`$.
23. Solve $`(D^2-4D+3)y=e^{x}\cos2x`$ (use the shift theorem).
24. Solve $`(D^3-D)y=e^{2x}`$.
25. Solve $`(D^2+2D+5)y=e^{-x}\sin2x`$.
26. Solve $`(D^2-1)y=x\sin x`$ (Hint: combine Rule 2 and Rule 3 style reasoning via shift theorem on $`\sin x`$, or use $`\frac{1}{D+a}`$ directly).
27. Solve $`(D^2+1)y=x\cos x`$.
28. Solve $`\dfrac{d^2y}{dx^2}+y=\sec x`$ (use Rule 5, direct integration — variation-of-parameters flavor).
29. Solve $`(D^2-2D+5)y=e^{x}\sin x`$.
30. Solve $`(D^3-6D^2+11D-6)y=0`$ (three distinct real roots — verify by factoring the cubic).

### Level 4 (Challenging)

31. Solve $`(D^2-2D+1)y=x^2e^x`$ (double resonance with a polynomial factor — combine Rule 1's repeated-root extension with the shift theorem).
32. Solve $`(D^4-1)y=0`$ (factor the quartic auxiliary equation into real and complex parts, and combine all three C.F. cases in one answer).
33. Solve $`(D^2+4)y=x\sin2x`$ (resonance in a trig P.I. combined with a polynomial factor).
34. Solve $`(D^3+D)y=\sec x`$ (Hint: factor as $`D(D^2+1)y=\sec x`$ and reduce order).
35. A spring-mass-damper system obeys $`y''+2y'+5y=0`$ with $`y(0)=1`$, $`y'(0)=0`$. Solve completely for $`y(t)`$ (this is an underdamped oscillator — apply Case III and then use the initial conditions to pin down $`C_1, C_2`$).
36. Show that for $`(D^2+a_1D+a_2)y=0`$ with complex roots $`m=\alpha\pm i\beta`$, the two solutions $`e^{(\alpha+i\beta)x}`$ and $`e^{(\alpha-i\beta)x}`$ can be recombined (via Euler's formula) into the real form $`e^{\alpha x}(C_1\cos\beta x+C_2\sin\beta x)`$. Show the algebra explicitly.
37. Solve $`(D^2-4)y=\cosh2x`$ (Hint: rewrite $`\cosh 2x=\tfrac12(e^{2x}+e^{-2x})`$ and note both terms hit resonance).
38. Solve $`(D^2+4D+13)y=0`$ subject to $`y(0)=0`$, $`y'(0)=3`$ — find the fully determined particular solution (not just the general one).
39. Solve $`(D^3-3D+2)y=0`$ (Hint: the cubic has a repeated root — verify using the Factor/Remainder theorem before applying Case II's extension to third order).
40. Solve $`(D^2+1)y=x^2\cos x`$ (combine polynomial-times-trig, requiring either repeated shift-theorem application or careful series expansion).

---

## Complete Solutions — Chapter 2 Practice Questions

**1.** A.E.: $`m^2-4m+13=0`$. Discriminant $`=16-52=-36`$. $`m=\dfrac{4\pm6i}{2}=2\pm3i`$.
```math
y=e^{2x}(C_1\cos3x+C_2\sin3x)
```

**2.** A.E.: $`m^2-3m+2=0 \implies (m-1)(m-2)=0 \implies m=1,2`$.
```math
y=C_1e^{x}+C_2e^{2x}
```

**3.** A.E.: $`m^2+6m+4=0`$. $`m=\dfrac{-6\pm\sqrt{36-16}}{2}=\dfrac{-6\pm\sqrt{20}}{2}=-3\pm\sqrt5`$.
```math
y=C_1e^{(-3+\sqrt5)x}+C_2e^{(-3-\sqrt5)x}
```

**4.** A.E.: $`m^2-2m+2=0`$. $`m=\dfrac{2\pm\sqrt{4-8}}{2}=\dfrac{2\pm2i}{2}=1\pm i`$.
```math
y=e^{x}(C_1\cos x+C_2\sin x)
```

**5.** A.E.: $`m^3+2m^2-m-2=0`$.

**6.** $`y=(C_1+C_2x)e^{-5x}`$.

**7.** $`y=e^{x}(C_1\cos4x+C_2\sin4x)`$.

**8.** $`m^2-5m+6=0\implies(m-2)(m-3)=0\implies m=2,3`$. $`y=C_1e^{2x}+C_2e^{3x}`$.

**9.** $`m^2+2m+1=0\implies(m+1)^2=0\implies m=-1,-1`$ (repeated). $`y=(C_1+C_2x)e^{-x}`$.

**10.** $`m^2+9=0\implies m^2=-9\implies m=\pm3i`$ (i.e., $`\alpha=0,\beta=3`$). $`y=C_1\cos3x+C_2\sin3x`$.

**11.** *(Your original HW B(i).)*
**C.F.:** A.E.: $`m^3-3m^2+3m-1=0`$. Recognize $`(m-1)^3=m^3-3m^2+3m-1`$ ✓, so $`m=1,1,1`$ (triple repeated root).
```math
\text{C.F.} = (C_1+C_2x+C_3x^2)e^{x}
```
**P.I.:** $`R=xe^x+e^x`$. Use the shift theorem: factor out $`e^x`$ throughout since $`f(D)=(D-1)^3`$.
```math
\text{P.I.} = \frac{1}{(D-1)^3}\left[xe^x+e^x\right] = e^x\cdot\frac{1}{D^3}\left[x+1\right]\quad\text{(shift: }D\to D+1\text{, so }(D-1)^3\to D^3\text{ after factoring out }e^x\text{)}
```
Now $`\dfrac{1}{D^3}`$ means integrate three times:
```math
\int(x+1)\,dx = \frac{x^2}{2}+x \;\to\; \int\left(\frac{x^2}{2}+x\right)dx=\frac{x^3}{6}+\frac{x^2}{2}\;\to\;\int\left(\frac{x^3}{6}+\frac{x^2}{2}\right)dx=\frac{x^4}{24}+\frac{x^3}{6}
```
```math
\text{P.I.} = e^x\left(\frac{x^4}{24}+\frac{x^3}{6}\right)
```
**General solution:**
```math
y=(C_1+C_2x+C_3x^2)e^{x}+e^x\left(\frac{x^4}{24}+\frac{x^3}{6}\right)
```

**12.** *(Your original HW B(ii).)*
**C.F.:** A.E.: $`m^2-9m+20=0\implies(m-4)(m-5)=0\implies m=4,5`$.
```math
\text{C.F.}=C_1e^{4x}+C_2e^{5x}
```
**P.I.:** $`R=20x+\cos5x`$, split into two:
*Part (a) — $`20x`$:* $`f(D)=D^2-9D+20`$. $`f(0)=20`$.
```math
\frac{20x}{D^2-9D+20}=\frac{20}{20}\left[1-\frac{D^2-9D}{20}+\cdots\right]x=1\cdot\left[x-\frac{-9}{20}\right]=x+\frac{9}{20}
```
(only the $`-9D`$ term survives since $`D^2x=0`$; $`-\frac{-9Dx}{20}=\frac{9}{20}`$).
*Part (b) — $`\cos5x`$:* replace $`D^2\to-25`$: $`f(-25)=-25-9D+20`$ — careful, Rule 3 needs $`f`$ purely in $`D^2`$, but here we have a mixed operator with an odd $`D`$ term, so apply the general complex-exponential trick instead: write $`\cos5x=\text{Re}(e^{5ix})`$, apply Rule 1 with $`a=5i`$:
```math
f(5i)=(5i)^2-9(5i)+20 = -25-45i+20=-5-45i
```
```math
\text{PI}_{\cos} = \text{Re}\left[\frac{e^{5ix}}{-5-45i}\right]
```
Rationalize: $`\dfrac{1}{-5-45i}\cdot\dfrac{-5+45i}{-5+45i}=\dfrac{-5+45i}{25+2025}=\dfrac{-5+45i}{2050}`$.
```math
\frac{e^{5ix}}{-5-45i} = \frac{(-5+45i)(\cos5x+i\sin5x)}{2050}
```
Real part: $`\dfrac{-5\cos5x-45\sin5x}{2050} = \dfrac{-\cos5x-9\sin5x}{410}`$ (dividing numerator and denominator by 5).
```math
\text{PI}_{\cos} = -\frac{\cos5x+9\sin5x}{410}
```
**General solution:**
```math
y = C_1e^{4x}+C_2e^{5x}+x+\frac{9}{20}-\frac{\cos5x+9\sin5x}{410}
```

**13.** A.E.: $`m^2-m-2=0\implies(m-2)(m+1)=0\implies m=2,-1`$. C.F.$`=C_1e^{2x}+C_2e^{-x}`$.
P.I.: $`f(D)=D^2-D-2`$, $`a=3`$: $`f(3)=9-3-2=4\neq0`$.
```math
\text{P.I.}=\frac{e^{3x}}{4}
```
```math
y=C_1e^{2x}+C_2e^{-x}+\frac{e^{3x}}{4}
```

**14.** A.E.: $`m^2+4=0\implies m=\pm2i`$. C.F.$`=C_1\cos2x+C_2\sin2x`$.
P.I.: $`f(D^2)=D^2+4`$, $`a=2`$: $`f(-a^2)=f(-4)=-4+4=0`$ — resonance! Use extended rule: $`f'(D^2)`$ w.r.t. the operator... standard resonance form for $`\sin ax`$ when $`f(-a^2)=0`$ is:
```math
\text{P.I.} = -x\cdot\frac{\cos ax}{2a} \quad\text{(standard result for }\frac{1}{D^2+a^2}\sin ax\text{ at resonance)}
```
With $`a=2`$: $`\text{P.I.}=-\dfrac{x\cos2x}{4}`$.
```math
y=C_1\cos2x+C_2\sin2x-\frac{x\cos2x}{4}
```

**15.** A.E.: $`m^2-4=0\implies m=\pm2`$. C.F.$`=C_1e^{2x}+C_2e^{-2x}`$.
P.I.: $`f(D)=D^2-4`$, $`f(0)=-4`$.
```math
\frac{x^2}{D^2-4}=-\frac{1}{4}\left[1-\frac{D^2}{4}\right]^{-1}x^2=-\frac14\left[1+\frac{D^2}{4}+\cdots\right]x^2
```
$`D^2x^2=2`$, higher terms vanish.
```math
=-\frac14\left[x^2+\frac{2}{4}\right]=-\frac14\left[x^2+\frac12\right]=-\frac{x^2}{4}-\frac18
```
```math
y=C_1e^{2x}+C_2e^{-2x}-\frac{x^2}{4}-\frac18
```

**16.** A.E.: $`m^2+1=0\implies m=\pm i`$. C.F.$`=C_1\cos x+C_2\sin x`$.
P.I.: $`f(-1^2)=f(-1)=-1+1=0`$ — resonance. Standard result:
```math
\frac{1}{D^2+1}\cos x = \frac{x\sin x}{2}
```
```math
y=C_1\cos x+C_2\sin x+\frac{x\sin x}{2}
```

**17.** A.E.: $`m^2-2m+1=0\implies(m-1)^2=0\implies m=1,1`$. C.F.$`=(C_1+C_2x)e^x`$.
P.I.: $`f(D)=D^2-2D+1=(D-1)^2`$, $`a=1`$: $`f(1)=0`$, $`f'(D)=2D-2`$, $`f'(1)=0`$ — double resonance. $`f''(D)=2`$, $`f''(1)=2`$.
```math
\text{P.I.}=x^2\cdot\frac{1}{2}e^x=\frac{x^2e^x}{2}
```
```math
y=(C_1+C_2x)e^x+\frac{x^2e^x}{2}
```

**18.** A.E.: $`m^2+m-2=0\implies(m+2)(m-1)=0\implies m=-2,1`$. C.F.$`=C_1e^{-2x}+C_2e^{x}`$.
P.I.: $`f(D)=D^2+D-2`$, $`a=2`$: $`f(2)=4+2-2=4\neq0`$.
```math
\text{P.I.}=\frac{e^{2x}}{4}
```
```math
y=C_1e^{-2x}+C_2e^{x}+\frac{e^{2x}}{4}
```

**19.** A.E.: $`m^2+4m+4=0\implies(m+2)^2=0\implies m=-2,-2`$. C.F.$`=(C_1+C_2x)e^{-2x}`$.
P.I.: $`f(D)=(D+2)^2`$, $`a=-2`$: $`f(-2)=0`$, $`f'(D)=2(D+2)`$, $`f'(-2)=0`$ — double resonance. $`f''=2`$.
```math
\text{P.I.}=x^2\cdot\frac12e^{-2x}=\frac{x^2e^{-2x}}{2}
```
```math
y=(C_1+C_2x)e^{-2x}+\frac{x^2e^{-2x}}{2}
```

**20.** A.E.: $`m^2-9=0\implies m=\pm3`$. C.F.$`=C_1e^{3x}+C_2e^{-3x}`$.
P.I.: for $`\sin3x`$, use $`f(D^2)=D^2-9`$, $`f(-9)=-9-9=-18\neq0`$ (no resonance, since here roots are real $`\pm3`$, not $`\pm3i`$).
```math
\text{P.I.}=\frac{\sin3x}{-18}=-\frac{\sin3x}{18}
```
```math
y=C_1e^{3x}+C_2e^{-3x}-\frac{\sin3x}{18}
```

**21.** A.E.: $`m^2-3m+2=0\implies m=1,2`$. C.F.$`=C_1e^x+C_2e^{2x}`$.
P.I.: $`f(D)=D^2-3D+2`$, $`f(0)=2`$.
```math
\frac{4x^2}{D^2-3D+2}=\frac{4x^2}{2}\left[1+\frac{3D-D^2}{2}\right]^{-1}\cdot\text{...}
```
More carefully: $`f(D)=2\left[1+\frac{-3D+D^2}{2}\right]`$, so $`[f(D)]^{-1}=\dfrac12\left[1-\left(\dfrac{-3D+D^2}{2}\right)+\left(\dfrac{-3D+D^2}{2}\right)^2-\cdots\right]`$.
Apply to $`4x^2`$ (degree 2, so keep terms up to $`D^2`$):
```math
\frac12\left[4x^2 - \left(\frac{-3D+D^2}{2}\right)(4x^2)+\left(\frac{9D^2}{4}\right)(4x^2)\right]
```
Compute each piece: $`D(4x^2)=8x`$, $`D^2(4x^2)=8`$.
First correction: $`-\dfrac{-3(8x)+8}{2}=-\dfrac{-24x+8}{2}=12x-4`$.
Second correction: $`\dfrac{9}{4}\times8=18`$.
```math
\frac12\left[4x^2+12x-4+18\right]=\frac12\left[4x^2+12x+14\right]=2x^2+6x+7
```
```math
y=C_1e^x+C_2e^{2x}+2x^2+6x+7
```

**22.** A.E.: $`m^2+m=0\implies m(m+1)=0\implies m=0,-1`$. C.F.$`=C_1+C_2e^{-x}`$.
P.I.: $`R=x^2+2x`$. Since $`m=0`$ is a root, $`f(D)=D(D+1)=D^2+D`$ has $`f(0)=0`$ — so we must factor out the $`D`$ and integrate once first (equivalent to the resonance case for a constant/polynomial with a zero root):
```math
\frac{1}{D(D+1)}(x^2+2x) = \frac{1}{D}\cdot\frac{1}{D+1}(x^2+2x)
```
First find $`\dfrac{1}{D+1}(x^2+2x)`$ using $`[1+D]^{-1}\approx1-D+D^2-\cdots`$ (degree 2, keep to $`D^2`$):
$`D(x^2+2x)=2x+2`$, $`D^2(x^2+2x)=2`$.
```math
(x^2+2x)-(2x+2)+2 = x^2+2x-2x-2+2=x^2
```
Now apply $`\dfrac1D`$ (integrate once): $`\displaystyle\int x^2\,dx=\frac{x^3}{3}`$.
```math
\text{P.I.}=\frac{x^3}{3}
```
```math
y=C_1+C_2e^{-x}+\frac{x^3}{3}
```

**23.** A.E.: $`m^2-4m+3=0\implies(m-1)(m-3)=0\implies m=1,3`$. C.F.$`=C_1e^x+C_2e^{3x}`$.
P.I.: use shift theorem. $`f(D)=D^2-4D+3`$; factor out $`e^x`$: $`\dfrac{1}{f(D)}e^x\cos2x = e^x\cdot\dfrac{1}{f(D+1)}\cos2x`$.
$`f(D+1)=(D+1)^2-4(D+1)+3 = D^2+2D+1-4D-4+3=D^2-2D+0=D^2-2D`$.
So need $`\dfrac{1}{D^2-2D}\cos2x`$. Since this has an odd-order $`D`$ term mixed with even, use the complex approach: replace $`\cos2x=\text{Re}(e^{2ix})`$ and evaluate at $`D=2i`$:
$`g(2i)=(2i)^2-2(2i)=-4-4i`$.
```math
\frac{1}{-4-4i}=\frac{-4+4i}{(-4)^2+4^2}=\frac{-4+4i}{32}=\frac{-1+i}{8}
```
```math
\text{Re}\left[\frac{-1+i}{8}(\cos2x+i\sin2x)\right] = \frac{-\cos2x-\sin2x}{8}
```
So $`\dfrac{1}{D^2-2D}\cos2x = \dfrac{-\cos2x-\sin2x}{8}`$, and:
```math
\text{P.I.} = e^x\cdot\frac{-\cos2x-\sin2x}{8} = -\frac{e^x(\cos2x+\sin2x)}{8}
```
```math
y=C_1e^x+C_2e^{3x}-\frac{e^x(\cos2x+\sin2x)}{8}
```

**24.** A.E.: $`m^3-m=0\implies m(m-1)(m+1)=0\implies m=0,1,-1`$. C.F.$`=C_1+C_2e^x+C_3e^{-x}`$.
P.I.: $`f(D)=D^3-D`$, $`a=2`$: $`f(2)=8-2=6\neq0`$.
```math
\text{P.I.}=\frac{e^{2x}}{6}
```
```math
y=C_1+C_2e^x+C_3e^{-x}+\frac{e^{2x}}{6}
```

**25.** A.E.: $`m^2+2m+5=0\implies m=\dfrac{-2\pm\sqrt{4-20}}{2}=\dfrac{-2\pm4i}{2}=-1\pm2i`$. C.F.$`=e^{-x}(C_1\cos2x+C_2\sin2x)`$.
P.I.: use shift theorem with $`a=-1`$: $`f(D)=D^2+2D+5`$; $`\dfrac{1}{f(D)}e^{-x}\sin2x = e^{-x}\cdot\dfrac{1}{f(D-1)}\sin2x`$.
$`f(D-1)=(D-1)^2+2(D-1)+5=D^2-2D+1+2D-2+5=D^2+4`$.
So need $`\dfrac{1}{D^2+4}\sin2x`$ — this is resonance since $`f(-4)=-4+4=0`$! Standard resonance result:
```math
\frac{1}{D^2+4}\sin2x = -\frac{x\cos2x}{4}
```
```math
\text{P.I.}=e^{-x}\left(-\frac{x\cos2x}{4}\right)=-\frac{xe^{-x}\cos2x}{4}
```
```math
y=e^{-x}(C_1\cos2x+C_2\sin2x)-\frac{xe^{-x}\cos2x}{4}
```

**26.** A.E.: $`m^2-1=0\implies m=\pm1`$. C.F.$`=C_1e^x+C_2e^{-x}`$.
P.I. for $`x\sin x`$: use the shift-theorem trick by writing $`\sin x=\text{Im}(e^{ix})`$, so we want $`\text{Im}\left[\dfrac{1}{D^2-1}xe^{ix}\right]`$.
```math
\frac{1}{D^2-1}xe^{ix} = e^{ix}\cdot\frac{1}{(D+i)^2-1}x = e^{ix}\cdot\frac{1}{D^2+2iD-1-1}x=e^{ix}\cdot\frac{1}{D^2+2iD-2}x
```
$`g(D)=D^2+2iD-2`$; $`g(0)=-2\neq0`$. Expand $`[g(D)]^{-1}=-\dfrac12\left[1-\left(\dfrac{D^2+2iD}{2}\right)\right]^{-1}\approx-\dfrac12\left[1+\dfrac{2iD}{2}+\cdots\right]`$ keeping to $`D^1`$ (degree of $`x`$ is 1):
```math
-\frac12\left[x+iDx\right]=-\frac12\left[x+i\right]
```
So $`\dfrac{1}{D^2-1}xe^{ix}=e^{ix}\left(-\dfrac{x+i}{2}\right) = -\dfrac{1}{2}(x+i)(\cos x+i\sin x)`$.
Expand: $`-\dfrac12\left[x\cos x+ix\sin x+i\cos x-\sin x\right] = -\dfrac12\left[(x\cos x-\sin x)+i(x\sin x+\cos x)\right]`$.
Take imaginary part: $`\text{Im}=-\dfrac12(x\sin x+\cos x)`$.
```math
\text{P.I.} = -\frac{x\sin x+\cos x}{2}
```
```math
y=C_1e^x+C_2e^{-x}-\frac{x\sin x+\cos x}{2}
```

**27.** A.E.: $`m^2+1=0\implies m=\pm i`$. C.F.$`=C_1\cos x+C_2\sin x`$.
P.I. for $`x\cos x`$: write $`\cos x=\text{Re}(e^{ix})`$, want $`\text{Re}\left[\dfrac{1}{D^2+1}xe^{ix}\right]`$.
```math
\frac{1}{D^2+1}xe^{ix}=e^{ix}\cdot\frac{1}{(D+i)^2+1}x = e^{ix}\cdot\frac{1}{D^2+2iD-1+1}x=e^{ix}\cdot\frac{1}{D^2+2iD}x=e^{ix}\cdot\frac{1}{D(D+2i)}x
```
Since there's a bare $`D`$ factor (root at 0), integrate: $`\dfrac{1}{D+2i}x`$ first, using $`[2i]^{-1}\left[1+\dfrac{D}{2i}\right]^{-1}x\approx\dfrac{1}{2i}\left[x-\dfrac{1}{2i}\right]=\dfrac{x}{2i}-\dfrac{1}{(2i)^2}=\dfrac{x}{2i}+\dfrac14`$ (since $`(2i)^2=-4`$).
Simplify $`\dfrac{x}{2i}=\dfrac{x}{2i}\cdot\dfrac{-i}{-i}=\dfrac{-ix}{2}`$, so this equals $`-\dfrac{ix}{2}+\dfrac14`$.
Now apply $`\dfrac1D`$ (integrate w.r.t. $`x`$): $`\displaystyle\int\left(-\frac{ix}{2}+\frac14\right)dx = -\frac{ix^2}{4}+\frac{x}{4}`$.
So: $`\dfrac{1}{D^2+1}xe^{ix} = e^{ix}\left(-\dfrac{ix^2}{4}+\dfrac{x}{4}\right)`$.
Expand: $`\left(\dfrac{x}{4}-\dfrac{ix^2}{4}\right)(\cos x+i\sin x)`$.
Real part: $`\dfrac{x}{4}\cos x + \dfrac{x^2}{4}\sin x`$ (from $`-\dfrac{ix^2}{4}\cdot i\sin x = \dfrac{x^2}{4}\sin x`$).
```math
\text{P.I.} = \frac{x\cos x}{4}+\frac{x^2\sin x}{4}
```
```math
y=C_1\cos x+C_2\sin x+\frac{x\cos x}{4}+\frac{x^2\sin x}{4}
```

**28.** A.E.: $`m^2+1=0\implies m=\pm i`$. C.F.$`=C_1\cos x+C_2\sin x`$.
$`\sec x`$ is not one of the standard forms (Rules 1–4 don't directly apply), so use **Rule 5 / variation of parameters**. With $`y_1=\cos x`$, $`y_2=\sin x`$, Wronskian $`W=y_1y_2'-y_2y_1'=\cos^2x+\sin^2x=1`$.
```math
\text{P.I.} = -y_1\int\frac{y_2\cdot\sec x}{W}dx+y_2\int\frac{y_1\cdot\sec x}{W}dx = -\cos x\int\tan x\,dx+\sin x\int1\,dx
```
$`\displaystyle\int\tan x\,dx=-\ln|\cos x|=\ln|\sec x|`$, and $`\displaystyle\int1\,dx=x`$.
```math
\text{P.I.} = -\cos x\ln|\sec x|+x\sin x
```
```math
y=C_1\cos x+C_2\sin x - \cos x\ln|\sec x|+x\sin x
```

**29.** A.E.: $`m^2-2m+5=0\implies m=\dfrac{2\pm\sqrt{4-20}}{2}=1\pm2i`$. C.F.$`=e^x(C_1\cos2x+C_2\sin2x)`$.
P.I.: shift with $`a=1`$: $`f(D+1)`$ where $`f(D)=D^2-2D+5`$: $`f(D+1)=(D+1)^2-2(D+1)+5=D^2+2D+1-2D-2+5=D^2+4`$.
Need $`\dfrac{1}{D^2+4}\sin x`$ (no shift needed further since only one exponential factored out). $`f(-1)=-1+4=3\neq0`$ (using $`a=1`$ for $`\sin x`$, i.e. $`-a^2=-1`$).
```math
\frac{1}{D^2+4}\sin x = \frac{\sin x}{3}
```
```math
\text{P.I.}=e^x\cdot\frac{\sin x}{3}=\frac{e^x\sin x}{3}
```
```math
y=e^x(C_1\cos2x+C_2\sin2x)+\frac{e^x\sin x}{3}
```

**30.** A.E.: $`m^3-6m^2+11m-6=0`$. Test $`m=1`$: $`1-6+11-6=0`$ ✓. Factor out $`(m-1)`$: $`m^3-6m^2+11m-6=(m-1)(m^2-5m+6)=(m-1)(m-2)(m-3)`$.
Roots: $`m=1,2,3`$ — all real and distinct.
```math
y=C_1e^x+C_2e^{2x}+C_3e^{3x}
```

**31.** A.E.: $`(m-1)^2=0\implies m=1,1`$. C.F.$`=(C_1+C_2x)e^x`$.
P.I.: shift with $`a=1`$: $`f(D+1)=(D+1-1)^2=D^2`$. Need $`\dfrac{1}{D^2}x^2`$ = integrate twice.
$`\int x^2dx=\dfrac{x^3}{3}`$; $`\int\dfrac{x^3}{3}dx=\dfrac{x^4}{12}`$.
```math
\text{P.I.}=e^x\cdot\frac{x^4}{12}
```
```math
y=(C_1+C_2x)e^x+\frac{x^4e^x}{12}
```

**32.** A.E.: $`m^4-1=0\implies(m^2-1)(m^2+1)=0\implies m=\pm1,\pm i`$.
Real distinct roots $`m=1,-1`$ contribute $`C_1e^x+C_2e^{-x}`$; complex roots $`m=\pm i`$ (i.e. $`\alpha=0,\beta=1`$) contribute $`C_3\cos x+C_4\sin x`$.
```math
y=C_1e^x+C_2e^{-x}+C_3\cos x+C_4\sin x
```

**33.** A.E.: $`m^2+4=0\implies m=\pm2i`$. C.F.$`=C_1\cos2x+C_2\sin2x`$.
P.I. for $`x\sin2x`$: write $`\sin2x=\text{Im}(e^{2ix})`$, want $`\text{Im}\left[\dfrac{1}{D^2+4}xe^{2ix}\right]`$.
```math
\frac{1}{D^2+4}xe^{2ix}=e^{2ix}\cdot\frac{1}{(D+2i)^2+4}x = e^{2ix}\cdot\frac{1}{D^2+4iD-4+4}x=e^{2ix}\cdot\frac{1}{D(D+4i)}x
```
Bare $`D`$ factor present (resonance) — first find $`\dfrac{1}{D+4i}x`$: $`[4i]^{-1}\left[1+\dfrac{D}{4i}\right]^{-1}x\approx\dfrac{1}{4i}\left[x-\dfrac{1}{4i}\right]=\dfrac{x}{4i}-\dfrac{1}{(4i)^2}=\dfrac{x}{4i}+\dfrac{1}{16}`$.
$`\dfrac{x}{4i}=-\dfrac{ix}{4}`$, so this is $`-\dfrac{ix}{4}+\dfrac{1}{16}`$.
Integrate once more ($`\dfrac1D`$): $`\displaystyle\int\left(-\frac{ix}{4}+\frac{1}{16}\right)dx=-\frac{ix^2}{8}+\frac{x}{16}`$.
So $`\dfrac{1}{D^2+4}xe^{2ix}=e^{2ix}\left(-\dfrac{ix^2}{8}+\dfrac{x}{16}\right)`$.
Expand: $`\left(\dfrac{x}{16}-\dfrac{ix^2}{8}\right)(\cos2x+i\sin2x)`$.
Imaginary part: $`\dfrac{x}{16}\sin2x - \dfrac{x^2}{8}\cos2x`$.
```math
\text{P.I.} = \frac{x\sin2x}{16}-\frac{x^2\cos2x}{8}
```
```math
y=C_1\cos2x+C_2\sin2x+\frac{x\sin2x}{16}-\frac{x^2\cos2x}{8}
```

**34.** A.E.: $`m(m^2+1)=0\implies m=0,\pm i`$. C.F.$`=C_1+C_2\cos x+C_3\sin x`$.
For P.I. with $`\sec x`$, reduce order: let $`p=Dy`$, then $`(D^2+1)p=\sec x`$, which is the same type solved in Q.28: using the same variation-of-parameters approach with $`y_1=\cos x,y_2=\sin x, W=1`$:
```math
p_{\text{particular}} = -\cos x\ln|\sec x|+x\sin x
```
Now integrate once more to recover $`y`$ from $`p=Dy=y'`$ — but since we only need **a** particular solution (P.I.) of the full third-order equation, integrate $`p_{\text{particular}}`$ w.r.t. $`x`$:
```math
\text{P.I.} = \int\left(-\cos x\ln|\sec x|+x\sin x\right)dx
```
Using integration by parts on each term (standard results):
```math
\int x\sin x\,dx = -x\cos x+\sin x
```
```math
\int\cos x\ln|\sec x|\,dx \text{ has no simpler elementary closed form via elementary substitution; leaving it as: } \int \cos x\ln(\sec x)\,dx
```
So the P.I. is left partially in integral form:
```math
\text{P.I.} = -\int\cos x\ln|\sec x|\,dx - x\cos x+\sin x
```
```math
y = C_1+C_2\cos x+C_3\sin x -x\cos x+\sin x-\int\cos x\ln|\sec x|\,dx
```
*(This question illustrates that not every P.I. reduces to elementary closed form — it's included to show the limits of the standard rules and when integral-form answers are acceptable at the exam level.)*

**35.** A.E.: $`m^2+2m+5=0\implies m=-1\pm2i`$. General solution: $`y=e^{-x}(C_1\cos2x+C_2\sin2x)`$.
Apply $`y(0)=1`$: $`e^0(C_1\cos0+C_2\sin0)=C_1=1`$.
Differentiate: $`y'=-e^{-x}(C_1\cos2x+C_2\sin2x)+e^{-x}(-2C_1\sin2x+2C_2\cos2x)`$.
At $`x=0`$: $`y'(0)=-C_1+2C_2=0-... `$ let's compute: $`-1\cdot(C_1)+1\cdot(2C_2)=-C_1+2C_2`$.
Given $`y'(0)=3`$: $`-C_1+2C_2=3\implies-1+2C_2=3\implies C_2=2`$.
```math
y(t)=e^{-t}(\cos2t+2\sin2t)
```

**36.** By Euler's formula, $`e^{i\beta x}=\cos\beta x+i\sin\beta x`$ and $`e^{-i\beta x}=\cos\beta x-i\sin\beta x`$.
The two independent solutions are $`y_1=e^{(\alpha+i\beta)x}=e^{\alpha x}e^{i\beta x}`$ and $`y_2=e^{(\alpha-i\beta)x}=e^{\alpha x}e^{-i\beta x}`$.
General complex solution: $`y=A y_1+By_2 = e^{\alpha x}\left[Ae^{i\beta x}+Be^{-i\beta x}\right]`$.
Substitute Euler's formula: $`=e^{\alpha x}\left[A(\cos\beta x+i\sin\beta x)+B(\cos\beta x-i\sin\beta x)\right] = e^{\alpha x}\left[(A+B)\cos\beta x+i(A-B)\sin\beta x\right]`$.
Let $`C_1=A+B`$ and $`C_2=i(A-B)`$ (both real, by choosing $`A,B`$ to be complex conjugates so that this combination is real):
```math
y=e^{\alpha x}(C_1\cos\beta x+C_2\sin\beta x) \quad\blacksquare
```

**37.** A.E.: $`m^2-4=0\implies m=\pm2`$. C.F.$`=C_1e^{2x}+C_2e^{-2x}`$.
$`\cosh2x=\dfrac{e^{2x}+e^{-2x}}{2}`$. Both $`a=2`$ and $`a=-2`$ are roots of the A.E. — both terms hit resonance.
For $`\dfrac12e^{2x}`$: $`f(D)=D^2-4`$, $`f(2)=0`$, $`f'(D)=2D`$, $`f'(2)=4\neq0`$.
```math
\text{PI}_a = \frac12\cdot x\cdot\frac{1}{4}e^{2x}=\frac{xe^{2x}}{8}
```
For $`\dfrac12e^{-2x}`$: $`f(-2)=0`$, $`f'(-2)=-4\neq0`$.
```math
\text{PI}_b = \frac12\cdot x\cdot\frac{1}{-4}e^{-2x}=-\frac{xe^{-2x}}{8}
```
```math
\text{P.I.} = \frac{xe^{2x}}{8}-\frac{xe^{-2x}}{8}=\frac{x}{8}\left(e^{2x}-e^{-2x}\right)=\frac{x}{4}\sinh2x
```
```math
y=C_1e^{2x}+C_2e^{-2x}+\frac{x\sinh2x}{4}
```

**38.** A.E.: $`m^2+4m+13=0\implies m=\dfrac{-4\pm\sqrt{16-52}}{2}=\dfrac{-4\pm6i}{2}=-2\pm3i`$. General: $`y=e^{-2x}(C_1\cos3x+C_2\sin3x)`$.
$`y(0)=0\implies C_1=0`$.
$`y'=e^{-2x}[-2(C_1\cos3x+C_2\sin3x)+(-3C_1\sin3x+3C_2\cos3x)]`$. At $`x=0`$, with $`C_1=0`$: $`y'(0)=1\cdot[0+3C_2]=3C_2`$.
Given $`y'(0)=3\implies C_2=1`$.
```math
y=e^{-2x}\sin3x
```

**39.** A.E.: $`m^3-3m+2=0`$. Test $`m=1`$: $`1-3+2=0`$ ✓. Factor: $`m^3-3m+2=(m-1)(m^2+m-2)=(m-1)(m-1)(m+2)=(m-1)^2(m+2)`$.
Roots: $`m=1`$ (repeated, multiplicity 2), $`m=-2`$.
```math
y=(C_1+C_2x)e^x+C_3e^{-2x}
```

**40.** A.E.: $`m^2+1=0\implies m=\pm i`$. C.F.$`=C_1\cos x+C_2\sin x`$.
P.I. for $`x^2\cos x`$: write $`\cos x=\text{Re}(e^{ix})`$, want $`\text{Re}\left[\dfrac{1}{D^2+1}x^2e^{ix}\right]`$.
```math
\frac{1}{D^2+1}x^2e^{ix}=e^{ix}\cdot\frac{1}{(D+i)^2+1}x^2=e^{ix}\cdot\frac{1}{D^2+2iD}x^2=e^{ix}\cdot\frac{1}{D(D+2i)}x^2
```
First: $`\dfrac{1}{D+2i}x^2 = \dfrac{1}{2i}\left[1+\dfrac{D}{2i}\right]^{-1}x^2\approx\dfrac{1}{2i}\left[x^2-\dfrac{2x}{2i}+\dfrac{2}{(2i)^2}\right]=\dfrac{1}{2i}\left[x^2-\dfrac{x}{i}-\dfrac12\right]`$.
Simplify $`\dfrac{1}{2i}=-\dfrac{i}{2}`$ and $`\dfrac1i=-i`$:
```math
-\frac{i}{2}\left[x^2+ix-\frac12\right] = -\frac{ix^2}{2}+\frac{x}{2}+\frac{i}{4}
```
Now apply $`\dfrac1D`$ (integrate w.r.t. $`x`$):
```math
\int\left(-\frac{ix^2}{2}+\frac{x}{2}+\frac{i}{4}\right)dx = -\frac{ix^3}{6}+\frac{x^2}{4}+\frac{ix}{4}
```
So $`\dfrac{1}{D^2+1}x^2e^{ix} = e^{ix}\left(\dfrac{x^2}{4}-\dfrac{ix^3}{6}+\dfrac{ix}{4}\right)`$.
Expand $`e^{ix}=\cos x+i\sin x`$, multiply out, and take the **real part**:
Real part $`= \dfrac{x^2}{4}\cos x - \left(-\dfrac{x^3}{6}+\dfrac{x}{4}\right)\sin x\cdot(-1)`$... carefully:
Write the coefficient as $`A+iB`$ where $`A=\dfrac{x^2}{4}`$, $`B=-\dfrac{x^3}{6}+\dfrac{x}{4}`$.
$`(A+iB)(\cos x+i\sin x) = (A\cos x - B\sin x)+i(A\sin x+B\cos x)`$.
Real part: $`A\cos x-B\sin x = \dfrac{x^2}{4}\cos x-\left(-\dfrac{x^3}{6}+\dfrac{x}{4}\right)\sin x = \dfrac{x^2}{4}\cos x+\dfrac{x^3}{6}\sin x-\dfrac{x}{4}\sin x`$.
```math
\text{P.I.} = \frac{x^2}{4}\cos x+\frac{x^3}{6}\sin x-\frac{x}{4}\sin x
```
```math
y=C_1\cos x+C_2\sin x+\frac{x^2}{4}\cos x+\frac{x^3}{6}\sin x-\frac{x}{4}\sin x
```

---

## Chapter 2 — Exam Prep

### Formula Sheet / One-Page Quick Revision

**General solution:** $`y=\text{C.F.}+\text{P.I.}`$

**Auxiliary Equation cases (2nd order: $`m^2+a_1m+a_2=0`$):**

| Root type | C.F. |
|---|---|
| Real, distinct: $`m_1\neq m_2`$ | $`C_1e^{m_1x}+C_2e^{m_2x}`$ |
| Real, equal: $`m_1=m_2=m`$ | $`(C_1+C_2x)e^{mx}`$ |
| Complex: $`m=\alpha\pm i\beta`$ | $`e^{\alpha x}(C_1\cos\beta x+C_2\sin\beta x)`$ |

**P.I. rules:**

| $`R(x)`$ | Rule |
|---|---|
| $`e^{ax}`$ | $`\dfrac{1}{f(a)}e^{ax}`$; if $`f(a)=0`$: $`x\cdot\dfrac{1}{f'(a)}e^{ax}`$; if also $`f'(a)=0`$: $`x^2\cdot\dfrac{1}{f''(a)}e^{ax}`$ |
| $`x^n`$ | Expand $`[f(D)]^{-1}`$ binomially, apply term-by-term (stop beyond degree $`n`$) |
| $`\sin ax,\cos ax`$ | $`\dfrac{1}{f(-a^2)}\sin ax`$ (or $`\cos`$); if $`f(-a^2)=0`$, multiply by $`x`$ and differentiate accordingly |
| $`e^{ax}\varphi(x)`$ | $`e^{ax}\cdot\dfrac{1}{f(D+a)}\varphi(x)`$ (shift theorem) |
| General $`\varphi(x)`$, first-order | $`\dfrac{1}{D+a}\varphi(x)=e^{-ax}\displaystyle\int e^{ax}\varphi(x)\,dx`$ |

### Frequently Repeated University Question Patterns

- "Find the general solution / complete primitive of [2nd-order equation with $`e^{ax}`$, polynomial, or trig right side]" — the single most common exam question type.
- Resonance cases ($`R`$ matches a term already in the C.F.) — always the "hard mark" question, so practice recognizing $`f(a)=0`$ quickly.
- IVPs on 2nd-order equations with complex roots (damped oscillator style) — expect to apply initial conditions after finding the general solution.

### Common Traps

- Not checking for resonance before blindly applying Rule 1.
- Sign errors in the quadratic formula when finding complex roots.
- Forgetting the shift theorem when $`R(x)=e^{ax}\varphi(x)`$ and instead trying to force Rule 1 or Rule 3 directly.
- Losing track of which terms survive in a binomial expansion for polynomial $`R`$.

### High-Scoring Answer Strategy

1. Write the A.E. explicitly and show the factoring/quadratic-formula work — this alone earns method marks.
2. State the C.F. clearly, labeled.
3. For the P.I., identify which rule(s) apply *before* diving into algebra — write "Using Rule [1/2/3/4/5]..." as a signal to the examiner.
4. Show every step of any binomial expansion or shift-theorem substitution — these are where marks are most often lost for skipped algebra.
5. Combine into the final general solution, boxed or clearly stated.

---

*End of handbook. All formulae, derivations, and numerical answers in this document have been independently re-derived and verified against the original class notes.*
