# MDM-102 — C Programming: Unified Quick Revision

> One-stop revision sheet merged from the class-test notes, the Q1–Q20 exam answers, and the two study guides.
> Standard C (gcc). Sizes assume a typical 64-bit GCC system (old Turbo C: `int` = 2 bytes).
> Exam format that scores: **Define → Explain → Example → Diagram**. For "difference between" always use a **table**.

## Contents

1. [Computer fundamentals](#1-computer-fundamentals)
2. [Algorithm, pseudocode, flowchart](#2-algorithm-pseudocode-flowchart)
3. [Tokens, identifiers, keywords](#3-tokens-identifiers-keywords)
4. [Data types, specifiers, ASCII, escapes](#4-data-types-format-specifiers-ascii-escapes)
5. [Constants and variables](#5-constants-and-variables)
6. [Operators](#6-operators)
7. [Type conversion and casting](#7-type-conversion-and-casting)
8. [Statements](#8-statements)
9. [Decision making: if, switch](#9-decision-making-if-switch)
10. [Loops, break, continue](#10-loops-break-continue)
11. [Arrays: 1D, 2D, 3D](#11-arrays-1d-2d-3d)
12. [I/O functions](#12-io-functions)
13. [Pattern / pyramid programs](#13-pattern--pyramid-programs)
14. [Solved mini-numericals and output traps](#14-solved-mini-numericals-and-output-traps)
15. [Common mistakes](#15-common-mistakes)
16. [Frequently confused pairs](#16-frequently-confused-pairs)
17. [Viva rapid-fire](#17-viva-rapid-fire)
18. [Mnemonics](#18-mnemonics)
19. [Practice questions](#19-practice-questions)
20. [Syntax at a glance](#20-syntax-at-a-glance)

---

## 1. Computer fundamentals

**Computer system** = Hardware + Software + Data (+ people/procedures), working on the **IPO(S) cycle**: Input → Process → Output → Storage.

**Software** = intangible set of instructions telling hardware what to do.

| Class | Meaning | Examples |
|---|---|---|
| **System software** | Manages hardware, runs applications | OS (Windows, Linux, Android), device drivers, firmware (BIOS/UEFI), translators (compiler, interpreter, assembler) |
| **Application software** | Does a task for the user, runs on top of system software | Word, Excel, browser, payroll, CAD |
| Utility (often a sub-class) | Maintains/optimises the system | Antivirus, compression, disk cleanup |

| Compiler | Interpreter |
|---|---|
| Translates **whole** program to machine code first | Executes **line by line** |
| Produces an executable file | No separate executable |
| Reports all errors after compiling | Stops at first error |

**Compilation pipeline:** Source `.c` → Preprocessing (`#include`, `#define`) → Compilation → Assembly → Linking → executable. Execution starts at `main()`.

---

## 2. Algorithm, pseudocode, flowchart

- **Algorithm:** finite, step-by-step, unambiguous, language-independent procedure to solve a problem. Example: a cooking recipe.
- **Properties — FIDOE:** **F**initeness (terminates), **I**nput (zero or more), **D**efiniteness (every step unambiguous), **O**utput (one or more), **E**ffectiveness (each step basic and doable). Extras: correctness, efficiency.
- **Pseudocode:** informal structured-English version of an algorithm (`START, READ, IF, ELSE, WHILE, PRINT, END`). **Not compilable.**
- **Flowchart:** diagram of an algorithm with standard symbols.

| Symbol | Shape | Use |
|---|---|---|
| Start / Stop | Oval (terminator) | Begin / end |
| Input / Output | Parallelogram | `READ`, `PRINT` |
| Process | Rectangle | Calculation, assignment |
| Decision | Diamond | Yes/No test |
| Flow lines | Arrows | Direction of flow |

### Largest of three numbers (classic)

```text
Step 1: Start
Step 2: Read a, b, c
Step 3: If a > b
            If a > c  largest = a   else largest = c
        Else
            If b > c  largest = b   else largest = c
Step 4: Print largest
Step 5: Stop
```
Time complexity **O(1)** (at most 2 comparisons). Trace `a=12, b=45, c=7`: `a>b` false → `b>c` true → **45**. Equal values `5,5,5` → `largest = c = 5`.

```c
#include <stdio.h>
int main(void) {
    int a, b, c, largest;
    scanf("%d %d %d", &a, &b, &c);
    largest = (a > b) ? ((a > c) ? a : c) : ((b > c) ? b : c);   // ternary form
    printf("Largest = %d\n", largest);
    return 0;
}
```

---

## 3. Tokens, identifiers, keywords

**Token** = smallest lexical unit the compiler recognises. Six types: **keywords, identifiers, constants, strings, operators, special symbols (punctuators)**.

`int age = 20;` → 5 tokens: `int` (keyword), `age` (identifier), `=` (operator), `20` (constant), `;` (punctuator).

### Identifier rules

1. Letters `a–z A–Z`, digits `0–9`, underscore `_` only.
2. Must **start with a letter or `_`**, never a digit.
3. **Case-sensitive** (`Age`, `age`, `AGE` are different).
4. No spaces or special characters (`@ # % - $ .`).
5. **Cannot be a keyword.**
6. Unique within the same scope.
7. Only the first N characters are significant (C89: 31 internal / 6 external; C99: 63 / 31).
8. Avoid `__x` and `_X` (reserved for compiler/library).

| Identifier | Valid? | Reason |
|---|---|---|
| `roll_no`, `_temp`, `Sum2`, `Marks_2024` | ✅ | follow the rules |
| `2total` | ❌ | starts with digit |
| `my-var` | ❌ | hyphen |
| `my var` | ❌ | space |
| `float` | ❌ | keyword |
| `price$`, `@grade` | ❌ | special character |

Things named by identifiers: variable, function, array, struct/union/enum tag, member, `typedef` name, macro, label, pointer. `main` and `printf` are **identifiers, not keywords**. `sizeof` **is** a keyword.

### Keywords (32 in C89, all lowercase)

| Group | Keywords |
|---|---|
| Data types | `int char float double void short long signed unsigned` |
| User-defined | `struct union enum typedef` |
| Storage class | `auto extern register static` |
| Qualifiers | `const volatile` |
| Decision | `if else switch case default` |
| Loops | `for while do` |
| Jump | `break continue goto return` |
| Operator | `sizeof` |

C99/C11 extras: `inline restrict _Bool _Complex _Imaginary _Alignas _Alignof _Atomic _Generic _Noreturn _Static_assert _Thread_local`.

| Keyword | Identifier |
|---|---|
| Predefined, fixed meaning | Programmer-defined |
| Fixed count (32) | Unlimited |
| Always lowercase | Any case |
| Cannot be redefined | Can be (different scopes) |
| Controls syntax | Names program entities |

---

## 4. Data types, format specifiers, ASCII, escapes

**Data type** = kind of value, memory needed, and operations allowed. Needed so the compiler knows memory size, bit interpretation, legal operations, and can catch errors.

```
Data types
├── Basic:         int, char, float, double, void
├── Derived:       array, pointer, function
└── User-defined:  struct, union, enum, typedef
```

| Type | Size | Range | printf / scanf |
|---|---|---|---|
| `char` | 1 B | −128 to 127 | `%c` (`%d` for code) |
| `unsigned char` | 1 B | 0 to 255 | `%c`, `%u` |
| `short` | 2 B | −32,768 to 32,767 | `%hd` |
| `unsigned short` | 2 B | 0 to 65,535 | `%hu` |
| `int` | 4 B | −2,147,483,648 to 2,147,483,647 | `%d` / `%i` |
| `unsigned int` | 4 B | 0 to 4,294,967,295 | `%u` |
| `long` | 8 B (4 B Windows) | ≈ ±9.22×10¹⁸ | `%ld` |
| `unsigned long` | 8 B | 0 to ≈1.8×10¹⁹ | `%lu` |
| `long long` | 8 B | ≈ ±9.22×10¹⁸ | `%lld` |
| `float` | 4 B | ≈ ±3.4×10³⁸, 6–7 digits | `%f` |
| `double` | 8 B | ≈ ±1.7×10³⁰⁸, 15–16 digits | printf `%f`, scanf **`%lf`** |
| `long double` | 12/16 B | larger | `%Lf` |
| `void` | none | no value | — |
| `_Bool` | 1 B | 0 or 1 | `%d` |

- `sizeof(char)` is **always 1**. Other sizes are implementation-defined (the standard fixes only minimum ranges).
- `sizeof` is an operator evaluated at compile time. Print with `%zu`.

### Other specifiers

`%s` string · `%p` pointer · `%x`/`%X` hex · `%o` octal · `%e` exponent · `%%` prints `%`.
Width/precision: `%5d` (min width 5), `%-10s` (left-align), `%.2f` (2 decimals), `%08.3f`.

### ASCII anchors

| Range | Code | Tricks |
|---|---|---|
| `'0'`–`'9'` | 48–57 | digit → value: `ch - '0'`; value → digit: `v + '0'` |
| `'A'`–`'Z'` | 65–90 | upper → lower: **+32** |
| `'a'`–`'z'` | 97–122 | lower → upper: **−32** |

Control: NUL 0 · BEL 7 · BS 8 · TAB 9 · LF 10 · CR 13 · ESC 27 · DEL 127.

### Escape sequences

| Esc | Meaning | Esc | Meaning |
|---|---|---|---|
| `\n` | newline | `\\` | backslash |
| `\t` | tab | `\"` | double quote |
| `\r` | carriage return | `\'` | single quote |
| `\b` | backspace | `\a` | beep |
| `\0` | null (string end) | `\v` `\f` | vertical tab, form feed |

---

## 5. Constants and variables

| Basis | Constant | Variable |
|---|---|---|
| Value | Fixed during execution | Can change |
| Declaration | `const int MAX = 100;` / `#define MAX 100` | `int count;` |
| Modification | Compile error | Allowed |
| Memory | Literal may have none | Always has a location |
| Examples | `3.14`, `'A'`, `"Hi"` | `radius`, `area` |

**Types of constants:** integer (decimal; octal prefix `0`; hex prefix `0x`; suffix `U`, `L`) · floating (`3.14`, `2.5e3`, suffix `f`) · character (`'A'`, ASCII 65) · string (`"Hello"` = 6 bytes, ends with `'\0'`).
Examples: `025` = 21, `0x1F` = 31, `2.5e3` = 2500.

**Variable declaration rules:** follow identifier rules · declare before use with a type · `int a, b, c;` allowed · may initialise (`int x = 10;`) · ends with `;` · no duplicate name in same scope.
**Declaration** = name + type. **Initialisation** = first value. A `const` must be initialised where defined.

### Ways of defining constants

| Method | Syntax | Pros | Cons |
|---|---|---|---|
| Literal | `100`, `'A'`, `3.14` | simple | no name, magic numbers |
| `const` | `const float PI = 3.14159;` | typed, scoped, has address, visible in debugger | uses memory; not a true constant expression in C (not portable for array size) |
| `#define` | `#define MAX 100` (no `=`, no `;`) | no memory, usable for array size, macros with args | no type check, no scope, hard to debug |
| `enum` | `enum Day {SUN, MON=5, TUE, WED};` | auto-numbering from 0, compile-time, grouped | integers only |

`enum Day {SUN, MON=5, TUE, WED}` → SUN=0, MON=5, TUE=6, WED=7.

| `const` | `#define` |
|---|---|
| Handled by **compiler** | Handled by **preprocessor** (text substitution) |
| Type-checked | No type check |
| Memory allocated | No memory |
| Block/file scope | Global from definition to end of file |
| `&` allowed | `&` not allowed |
| Ends with `;`, uses `=` | No `;`, no `=` |
| No macro arguments | Macro arguments allowed |

**Macro trap:** `#define SQ(x) x*x` → `SQ(2+3)` = `2+3*2+3` = **11**, not 25. Fix: `#define SQ(x) ((x)*(x))`.

---

## 6. Operators

**Operator** = symbol that performs an operation on operand(s). By operand count: unary, binary, **ternary** (`?:` is the only one).

| Category | Operators |
|---|---|
| Arithmetic | `+ - * / %` (`%` integers only) |
| Relational | `== != > < >= <=` |
| Logical | `&& \|\| !` |
| Assignment | `= += -= *= /= %=` |
| Inc/Dec | `++ --` |
| Bitwise | `& \| ^ ~ << >>` |
| Conditional | `?:` |
| Special | `sizeof`, `&`, `*`, `,` |

### Logical operators

| A | B | `A && B` | `A \|\| B` | `!A` |
|---|---|---|---|---|
| 0 | 0 | 0 | 0 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 1 | 0 |

- Result is always `0` or `1`. Any non-zero = true, only `0` = false.
- **Short-circuit:** `A && B` skips `B` if `A` is false; `A || B` skips `B` if `A` is true.

### Precedence (high → low)

| # | Operators | Associativity |
|---|---|---|
| 1 | `()` `[]` `->` `.` | L → R |
| 2 | `++ -- ! ~ sizeof (type)` unary `* &` | **R → L** |
| 3 | `* / %` | L → R |
| 4 | `+ -` | L → R |
| 5 | `<< >>` | L → R |
| 6 | `< <= > >=` | L → R |
| 7 | `== !=` | L → R |
| 8 | `&` | L → R |
| 9 | `^` | L → R |
| 10 | `\|` | L → R |
| 11 | `&&` | L → R |
| 12 | `\|\|` | L → R |
| 13 | `?:` | **R → L** |
| 14 | `= += -= *= /=` … | **R → L** |
| 15 | `,` | L → R |

Trick: *Unary before binary, multiply before add, relational before logical, logical before assignment, comma last.*
`a=5, b=10, c=2`: `a + b*c` = **25**; `(a+b)*c` = **30**.

### `i++` vs `++i`

| | `i++` (post) | `++i` (pre) |
|---|---|---|
| Order | use, then increment | increment, then use |
| Expression value | old `i` | new `i` |
| `i` afterwards | `i+1` | `i+1` |
| `i=5` | `a = i++;` → a=5, i=6 | `a = ++i;` → a=6, i=6 |

- Same result as a standalone statement (`i++;` = `++i;`). Differ only when the **value is used**.
- Operand must be an **lvalue**: `5++`, `(a+b)++` are errors.
- `*p++` → read then move pointer; `*++p` → move then read. `arr[i++] = 0;` uses `i`, then advances.
- ⚠️ `y = x++ + ++x;` and `printf("%d %d", i++, i);` are **undefined/unspecified** (no sequence point). Never write them.

### Conditional (ternary) operator

`condition ? expr1 : expr2;` → true (non-zero) gives `expr1`, else `expr2`. It is an **expression** (returns a value), right-associative: `a ? b : c ? d : e` = `a ? b : (c ? d : e)`.

```c
max = (a > b) ? a : b;
printf("%d is %s\n", n, (n % 2 == 0) ? "Even" : "Odd");
grade = (m >= 80) ? 'A' : (m >= 60) ? 'B' : 'C';       // nested
```

| Ternary | if-else |
|---|---|
| Expression, returns a value | Statement |
| One expression per branch | Many statements per branch |
| Usable inside another expression | Not usable |
| Poor for complex logic | Good |

---

## 7. Type conversion and casting

**Type conversion** = converting a value from one type to another. Needed so mixed-type operands are brought to a common type.

**Hierarchy (low → high):** `char → short → int → unsigned int → long → unsigned long → long long → float → double → long double`.
`char`/`short` are first **promoted to `int`** in expressions.

| Basis | Implicit | Explicit (casting) |
|---|---|---|
| Done by | Compiler | Programmer |
| Also called | Automatic, promotion, coercion | Type casting |
| Syntax | none | `(type) expression` |
| Direction | Usually low → high (safe) | Any direction |
| Data loss | Only on assignment to smaller type | Possible (programmer's responsibility) |
| Example | `float f = 5;` `c + 1` (char→int) | `int x = (int)5.7;` |

- **Widening** (small → large) is safe. **Narrowing** (large → small, float → int) may lose data.
- Float → int **truncates toward zero**: `(int)3.99 = 3`, `(int)-2.7 = -2`.
- Cast has **higher precedence than `/`**, so `(float)a / b` casts only `a`.

```c
int a = 7, b = 2;
printf("%d\n",  a / b);            // 3        integer division
printf("%f\n",  (float)a / b);     // 3.500000 cast first
printf("%f\n",  (float)(a / b));   // 3.000000 divide first, then cast
float f = 10 / 4;                  // 2.000000 (int division happens first)
int n = 3.99;                      // n = 3
char ch = 300;                     // 300 − 256 = 44
```

Classic trap: signed vs unsigned comparison (`-1 < 1u` is **false**, because `-1` converts to a huge unsigned value).
Average with a cast: `(float)total / count` (17/5 → 3.4) vs `(float)(total / count)` (→ 3.0).

---

## 8. Statements

**Statement** = complete instruction translated into executable action; most end with `;`. A block `{ }` is **one statement** and needs no closing `;`.

| Type | Description | Example |
|---|---|---|
| Expression | expression + `;` | `x = a + b;` `i++;` `printf("Hi");` |
| Null | only `;`, does nothing | `for (i = 0; i < 5; i++);` |
| Compound (block) | group in `{ }` | `{ int t = a; a = b; b = t; }` |
| Selection | choose a path | `if`, `if-else`, `switch` |
| Iteration | repeat | `for`, `while`, `do-while` |
| Jump | transfer control | `break`, `continue`, `goto`, `return` |
| Labeled | statement with a label | `end: printf("Done");`, `case`, `default` |

**Null statement uses:** placeholder where a statement is required; empty loop body (delay loops, work done in the update expression); target for a `goto` label.
`for (i = 0; i < 5; i++);  printf("%d", i);` → prints **5**.
⚠️ `if (x > 0);` the stray `;` makes the `if` do nothing.

---

## 9. Decision making: if, switch

In C, **any non-zero value is true, `0` is false.**

### `if` forms

| Form | Syntax | Use |
|---|---|---|
| Simple `if` | `if (cond) { ... }` | run only when true |
| `if-else` | `if (cond) { A } else { B }` | two-way |
| `else-if` ladder | `if … else if … else …` | many conditions; **first true wins**; `else` if none |
| Nested `if` | `if` inside `if`/`else` | dependent decisions |

```c
if (marks >= 80)      printf("A+\n");
else if (marks >= 70) printf("A\n");
else if (marks >= 60) printf("B\n");
else if (marks >= 40) printf("C\n");
else                  printf("Fail\n");        // marks = 76 → A
```

- `else` pairs with the **nearest unmatched `if`**.
- `=` (assign) vs `==` (compare): `if (x = 5)` is **always true**.

### `switch`

```c
switch (expression) {            // int / char / enum only
    case const1: statements; break;
    case const2: statements; break;
    default:     statements;     // optional, any position
}
```

- `case` values must be **unique integral constants** (no floats, strings, variables).
- Without `break`, execution **falls through** into following cases. `break` exits the switch only, not an enclosing loop.
- Grouped cases (`case 'a': case 'e': ...`) = intentional fall-through.

Fall-through trace, `x = 2`: `case 1: "One"` · `case 2: "Two"` · `case 3: "Three"; break;` → prints **Two, Three**.

| `switch` | `if-else` |
|---|---|
| Equality with constants only | Any condition (ranges, `&&`, `\|\|`, floats) |
| int / char / enum | Any type |
| Often faster (jump table) | Sequential |
| Better for many fixed choices | Better for few/complex conditions |
| `default` | `else` |
| Fall-through (needs `break`) | None |

Calculator pattern: `scanf("%f %c %f", &a, &op, &b);` then `switch (op)` with `'+' '-' '*' '/'`; check `b != 0` in the `/` case; `default` → invalid operator.

---

## 10. Loops, break, continue

| Loop | Syntax | Test | Use |
|---|---|---|---|
| `for` | `for (init; cond; update)` | before | known number of repeats |
| `while` | `while (cond) { ... }` | before | repeat until condition changes |
| `do-while` | `do { ... } while (cond);` | **after** (runs ≥ 1 time) | menu / at-least-once |

| | `break` | `continue` |
|---|---|---|
| Effect | exits loop/`switch` entirely | skips rest of **current iteration** |
| Used in | loops and `switch` | loops only |
| Control goes to | statement after the loop | next iteration (`for`: update; `while`: condition) |
| Applies to | **innermost** loop only | innermost loop only |

```c
for (i = 1; i <= 10; i++) { if (i == 5) break;    printf("%d ", i); }   // 1 2 3 4
for (i = 1; i <=  5; i++) { if (i == 3) continue; printf("%d ", i); }   // 1 2 4 5
```
⚠️ `continue` in a `while` **before** updating the counter → infinite loop. `continue` alone in a `switch` is invalid.

### Standard loop programs

```c
// Sum 1..N
for (i = 1; i <= n; i++) sum = sum + i;            // n=5 → 15

// Odd / even checker: remainder test, no loop needed for one number
if (num % 2 == 0) printf("Even"); else printf("Odd");

// Print odd and even from 1..N
for (i = 1; i <= n; i++) printf("%d is %s\n", i, (i % 2 == 0) ? "Even" : "Odd");
for (i = 1; i <= n; i += 2) printf("%d ", i);      // odds,  step 2 (no %)
for (i = 2; i <= n; i += 2) printf("%d ", i);      // evens, step 2
```
Even ⇔ `n % 2 == 0`. For `N = 7`: Odd 1 3 5 7 · Even 2 4 6. For many inputs, put the `scanf` + test inside a `for`/`while` (stop on 0 with `while`).

---

## 11. Arrays: 1D, 2D, 3D

**Array** = fixed-size collection of **same-type** elements in **contiguous memory**, accessed by a common name and a 0-based index.
Why: many related values without many variables, loop-friendly, O(1) random access.

```c
int a[5];                          // garbage if local
int b[5] = {10, 20, 30, 40, 50};
int c[5] = {1, 2};                 // {1,2,0,0,0}
int d[]  = {5, 6, 7};              // size 3
b[2] = 99;                         // valid indices 0 .. size−1
```
- **No bounds checking:** `b[5]` is undefined behaviour. `for (i = 0; i <= 3; i++)` on `a[3]` is the classic off-by-one.
- Advantages: easy traversal, O(1) access, compact code. Limits: fixed size, one type, costly insert/delete, wastes memory if oversized.
- Sum/average: `avg = (float)sum / 5;`

| | 1D | 2D | 3D |
|---|---|---|---|
| Declaration | `int a[5];` | `int m[2][3];` | `int c[2][2][3];` |
| Meaning | list | rows × cols | layers × rows × cols |
| Uses | list of marks | matrix, table, board, pixel grid | RGB image (H×W×3), table time-series |
| Traversal | 1 loop | 2 nested loops | 3 nested loops |

```c
int m[2][3] = { {1,2,3}, {4,5,6} };      m[1][2] = 60;       // row 1, col 2
int c[2][2][3] = { {{1,2,3},{4,5,6}}, {{7,8,9},{10,11,12}} };  c[1][0][2] = 9;
```
In every dimension **after the first**, the size must be given when initialising or passing to a function.

**Row-major storage:** rows are laid out one after another (last index changes fastest). `int m[2][3]` → `m[0][0], m[0][1], m[0][2], m[1][0], m[1][1], m[1][2]`.

**Address formulas** (`base`, element size `s`):
- 2D `a[R][C]`: `addr(a[i][j]) = base + (i × C + j) × s`
- 3D `a[L][R][C]`: `addr(a[i][j][k]) = base + ((i × R + j) × C + k) × s`

*Numerical (2D):* `int a[3][4]`, base 1000, `s = 4`, `a[2][1]` = 1000 + (2×4 + 1)×4 = **1036**.
*Numerical (3D):* `int a[2][3][4]`, base 2000, `s = 4`, `a[1][2][3]` = 2000 + ((1×3 + 2)×4 + 3)×4 = 2000 + 92 = **2092**.

Matrix addition: `c[i][j] = a[i][j] + b[i][j];` inside two nested loops. `a[2][3]` is a 2-D index, `a[2,3]` is the comma operator (= `a[3]`).

---

## 12. I/O functions

```
I/O functions (<stdio.h>)
├── Formatted:   printf(), scanf()
└── Unformatted: getchar(), putchar(), gets(), puts(), getch(), putch()   (getch/putch: <conio.h>, non-standard)
```

| Basis | Formatted | Unformatted |
|---|---|---|
| Functions | `printf`, `scanf` | `getchar`, `putchar`, `gets`, `puts`, `getch`, `putch` |
| Specifiers | required | not used |
| Data | any type | char / string only |
| Control (width, precision) | yes | no |
| Several values per call | yes | no |

| Function | Purpose |
|---|---|
| `getchar()` | reads 1 char (waits for Enter) |
| `putchar(c)` | writes 1 char |
| `gets(s)` | reads a line, **unsafe, removed in C11** |
| `fgets(buf, size, stdin)` | safe line input; **keeps `'\n'`** |
| `puts(s)` | writes string **+ newline** |
| `getch()` / `putch()` | no-echo char input / char output (Turbo C/Windows) |

```c
scanf("%d %f %c", &age, &cgpa, &grade);        // 20 3.756 A
printf("Age=%d CGPA=%.2f Grade=%c\n", age, cgpa, grade);   // CGPA=3.76
fgets(name, sizeof(name), stdin);
name[strcspn(name, "\n")] = '\0';              // strip newline (<string.h>)
```

**Pitfalls**
1. Missing `&` in `scanf` (`scanf("%d", n)` ✗). Arrays/strings need no `&`: `scanf("%s", name);`.
2. Leftover `'\n'` after `scanf("%d")` is read by the next `getchar()`/`%c`. Fix: `scanf(" %c", &ch);` (space skips whitespace).
3. `%s` in `scanf` stops at whitespace (one word). Use `fgets` for a full line.
4. `scanf` needs `%lf` for `double`; `printf` uses `%f` for both float and double.
5. Wrong specifier (e.g. `%d` for a float) prints garbage.

| `scanf("%s")` | `fgets` |
|---|---|
| one word, unbounded | whole line, bounded |

---

## 13. Pattern / pyramid programs

**Structure:** outer loop `i` = row · space loop `s` = leading blanks (full pyramids only) · symbol loop `j` = stars/numbers · `printf("\n")` **after the inner loops, inside the outer loop**.

### Row formulas (`n` rows, row `i`)

| Pattern | Spaces | Symbols | Outer loop | Prints |
|---|---|---|---|---|
| Half pyramid | none | `j <= i` | 1 → n | `*` |
| Inverted half | none | `j <= i` | n → 1 | `*` |
| Inverted half (alt.) | none | `j <= n-i+1` | 1 → n | `*` |
| Full pyramid | `n-i` | `j <= 2*i-1` | 1 → n | `*` |
| Inverted/reversed full | `n-i` | `j <= 2*i-1` | n → 1 | `*` |
| Half numbers `1,12,123…` | none | `j <= i` | 1 → n | `j` |
| Half numbers `5,54,543…` | none | `j <= i` | 1 → n | `n-j+1` |
| `12345,1234,…,1` | none | `j <= n-i+1` | 1 → n | `j` |
| `1,22,333,…` | none | `j <= i` | 1 → n | `i` |
| `11111,2222,…,5` | none | `j <= n-i+1` | 1 → n | `i` |
| Full numbers `1,123,12345…` | `n-i` | `j <= 2*i-1` | 1 → n | `j` |
| Reversed `123456789,1234567,…` | `n-i` | `j <= 2*i-1` | n → 1 | `j` |
| Mirror `1,121,12321…` | `n-i` | rise `1..i`, fall `i-1..1` | 1 → n | `j` |
| Floyd's triangle | none | `j <= i` | 1 → n | counter `k++` (never resets) |
| Character `A,AB,ABC…` | none | `j <= i` | 1 → n | `ch++`, **reset `ch='A'` each row** |

### Expected output, n = 5

```text
Half            Full             Inverted half   Reversed full
*                   *            *****           *********
**                 ***           ****             *******
***               *****          ***               *****
****             *******         **                 ***
*****           *********        *                   *

1,22,333…       Full numbers     Reversed nums   Floyd
1               (1..2i-1)        123456789       1
22                  1             1234567        23
333                123             12345         456
4444              12345             123          78910
55555            1234567             1           1112131415
                123456789
```

### Core skeletons

```c
// Full pyramid of stars
for (i = 1; i <= n; i++) {
    for (s = 1; s <= n - i; s++)      printf(" ");
    for (j = 1; j <= 2 * i - 1; j++)  printf("*");
    printf("\n");
}

// Floyd's triangle: counter outside the loops
int k = 1;
for (i = 1; i <= n; i++) {
    for (j = 1; j <= i; j++) printf("%d", k++);
    printf("\n");
}

// Character half pyramid
for (i = 1; i <= n; i++) {
    char ch = 'A';                              // reset every row
    for (j = 1; j <= i; j++) printf("%c", ch++);
    printf("\n");
}
```

**Rules to remember**
- Learn the two formulas: **`n - i` spaces** and **`2*i - 1` symbols**.
- To **invert**, reverse the outer loop (`for (i = n; i >= 1; i--)`); inner loops stay the same.
- To **count down**, print `n - j + 1` instead of `j`.
- To print numbers, swap `printf("*")` for `printf("%d", value)`; structure unchanged.
- `2*i - 1` works because each row adds one symbol on each side: 1, 3, 5, 7… (odd numbers).
- Digit patterns assume `n <= 9` (two-digit values break alignment).
- Spaces loop `n - i + 1` → pyramid shifts one column right. Inner `j < i` → one symbol too few. `2*i + 1` → starts at 3, not 1. Missing `printf("\n")` → all rows on one line; inside the inner loop → one symbol per line.

---

## 14. Solved mini-numericals and output traps

| Code | Result | Why |
|---|---|---|
| `a=5, b=10, c=2; a + b * c` | **25** | `*` before `+` |
| `(a + b) * c` | **30** | parentheses override |
| `7 / 2` | **3** | integer division |
| `(float)7 / 2` | **3.5** | cast on `7` first |
| `(float)(7 / 2)` | **3.0** | divide first |
| `5 / 2 * 2.0` | **4.0** | `(5/2)=2`, then `2*2.0` |
| `10 % 3` | **1** | remainder |
| `-7 % 3` | **−1** | sign follows dividend (C99) |
| `(int)-2.7` | **−2** | truncates toward zero |
| `int i=5; a=i++;` | a=5, i=6 | post |
| `int i=5; a=++i;` | a=6, i=6 | pre |
| `x=10: x++, x, ++x, x--, --x` printed | 10 11 12 12 10 | trace |
| `arr={10,20,30}; *p++ then *++p` | 10 30 | read-then-move, move-then-read |
| `a=0,b=5; if (a && ++b)` | b stays **5** | short-circuit |
| `a=0,b=5; if (a \|\| ++b)` | b becomes **6** | `a` false, so `++b` runs |
| `#define SQ(x) x*x; SQ(2+3)` | **11** | text substitution |
| `char ch = 300;` | **44** | 300 − 256 |
| `float f = 10/4;` | **2.000000** | int division first |
| `enum {SUN, MON=5, TUE}` TUE | **6** | continues from previous |
| `switch(2)` w/o breaks (cases 1,2,3) | Two, Three | fall-through |
| `for(i=0;i<5;i++);` then print `i` | **5** | null body |
| `sum 1..5` | **15** | loop add |
| `int a[3][4]` base 1000, `s=4`, `a[2][1]` | **1036** | row-major |
| `c + 1` with `c = 'A'` | **66** | char → int promotion |
| `5 > 3 > 1` | **0** | `(5>3)=1`, then `1 > 1` |
| `a ? b : c ? d : e` | `a ? b : (c ? d : e)` | right-assoc |

---

## 15. Common mistakes

1. `=` instead of `==` in a condition.
2. Missing `&` in `scanf` for basic types.
3. Missing `break` in `switch` → fall-through.
4. `#define` with `;` or `=`; `const` without `;`.
5. Using a keyword or a digit-leading name as an identifier; forgetting case-sensitivity.
6. Array index `= size` (off-by-one); reading uninitialised variables.
7. Mismatched format specifier (`%d` for float; `%f` in `scanf` for double).
8. Integer division where a float result is wanted (`float avg = sum / n;` → cast one operand).
9. Writing `y = x++ + ++x;` (undefined behaviour).
10. Stray `;` after `if (...)` or `for (...)`.
11. Believing `int` is always 4 bytes (implementation-defined).
12. Forgetting `#include <stdio.h>`; forgetting `return 0;`.
13. Mismatched braces in nested `if`/loops.
14. Using `gets` (unsafe). Use `fgets`.
15. Drawing a flowchart with the wrong symbol (rectangle for a decision) or without arrows.
16. Forgetting pseudocode is not compilable; mixing up algorithm and source code.
17. Forgetting `const` is **not** a constant expression in C (array size at file scope → use `#define`/`enum`).

---

## 16. Frequently confused pairs

| Pair | Difference |
|---|---|
| Identifier vs keyword | programmer-chosen name vs reserved word |
| Token vs identifier | identifier is only one kind of token |
| Declaration vs initialisation | name + type vs first value |
| `=` vs `==` | assign vs compare |
| `i++` vs `++i` | old value vs new value in the expression |
| `const` vs `#define` | compiler, typed vs preprocessor, text substitution |
| Implicit vs explicit conversion | compiler vs programmer `(type)` |
| `break` vs `continue` | leave loop vs skip to next iteration |
| `if-else` vs `switch` | any condition vs integral constants |
| `while` vs `do-while` | test first vs test last |
| `puts` vs `printf` | string + newline vs formatted |
| `scanf("%s")` vs `fgets` | one word, unbounded vs whole line, bounded |
| `a[2][3]` vs `a[2,3]` | 2-D index vs comma operator |
| `int/int` vs `float/int` | integer vs floating-point division |
| Compiler vs interpreter | whole program vs line by line |
| System vs application software | runs the machine vs does user tasks |
| Half vs full pyramid | `i` symbols, no spaces vs `2*i-1` symbols with `n-i` spaces |

---

## 17. Viva rapid-fire

- **Computer system?** Hardware + software + data on the IPO cycle.
- **Two classes of software?** System and application.
- **Firmware?** Low-level software embedded in hardware (BIOS/UEFI).
- **Algorithm properties?** FIDOE: finiteness, input, definiteness, output, effectiveness.
- **Is pseudocode compiled?** No, it is only a design tool.
- **Flowchart decision symbol / I/O symbol?** Diamond / parallelogram.
- **Complexity of largest-of-three?** O(1).
- **How many keywords in C?** 32 (ANSI C).
- **Can an identifier start with a digit?** No. **Case-sensitive?** Yes.
- **Are `main`, `printf` keywords?** No (identifiers). **`sizeof`?** Yes.
- **Four basic types?** `int char float double` (plus `void`).
- **`sizeof(char)`?** Always 1.
- **Format specifier for double in `scanf`?** `%lf`.
- **Only 3-operand operator?** `?:`.
- **Difference between `=` and `==`?** Assign vs compare.
- **Why `2*i - 1` stars?** Each row adds one on both sides: 1, 3, 5, 7…
- **How to invert a full pyramid?** Outer loop from `n` down to `1`.
- **Can `continue` be used with `switch` alone?** No, it needs an enclosing loop.
- **Why avoid `gets`?** No size limit → buffer overflow; removed in C11.
- **What does `break` do inside a `switch` within a loop?** Exits the `switch` only.
- **Are array bounds checked?** No.
- **Order of 2D array in memory?** Row-major.
- **Who processes `#define`?** The preprocessor.
- **Does `int a[5]` allow `a[5]`?** No; valid indices 0–4.

---

## 18. Mnemonics

- **FIDOE** → algorithm properties.
- **ASCII anchors:** digits **48**, uppercase **65**, lowercase **97**; case gap = **32**.
- **Post = use, then change. Pre = change, then use.**
- **Precedence:** unary → `* / %` → `+ -` → relational → logical → assignment → comma.
- **Keyword groups:** data types · control flow · storage class · structures · others (`const volatile sizeof return`).
- **Pyramid:** `n - i` spaces, `2*i - 1` symbols. Invert = reverse the outer loop. Count down = `n - j + 1`.
- **Basic types:** "I Can't Function Daily" → Int, Char, Float, Double.

---

## 19. Practice questions

1. State the identifier rules. Which are invalid and why: `_temp`, `9lives`, `sum-total`, `Float`, `float`?
2. Define a keyword. Name five. Which of `main`, `sizeof`, `printf` are keywords?
3. Classify C data types with an example of each basic type.
4. Differentiate constants and variables.
5. Explain four ways of defining a constant with syntax and examples.
6. What does `int i = 5; printf("%d %d", i++, i);` print, and why is the answer unspecified?
7. Write a program showing `a++` vs `++a` when assigned.
8. Write the largest of three numbers using the ternary operator.
9. Why does `(float)(7/2)` give `3.0` but `(float)7/2` give `3.5`?
10. Differentiate `break` and `continue` with a program and output.
11. Read 5 integers; print their sum and the largest.
12. Explain type conversion: integer promotion and the conversion hierarchy.
13. Compare implicit and explicit conversion in a table with two examples each.
14. List the types of statements with one example each.
15. Explain the four forms of `if` with syntax and examples.
16. Explain `switch`. What happens without `break`?
17. Print all odd and even numbers from 1 to N.
18. Define 2D and 3D arrays; print a 2 × 3 matrix and the sum of its elements.
19. `scanf` vs `fgets`; why must `gets` not be used?
20. Find the error: `int a[3] = {1,2,3}; for (int i = 0; i <= 3; i++) printf("%d", a[i]);` *(Answer: `i <= 3` reads `a[3]`, out of bounds; use `i < 3`.)*
21. Print half, full and inverted-half star pyramids for `n = 5`.
22. Print `1,12,123…` and `5,54,543…`. *(Answer: print `n - j + 1` instead of `j`.)*
23. Print `1,121,12321…` and `5,545,54345…` for `n = 5`.
24. Why does the full-pyramid space loop run `n - i` times? What if it is `n - i + 1`? *(Answer: row `i` needs `n - i` blanks to centre it; `n - i + 1` adds one blank per row and shifts the pyramid right.)*
25. Write the algorithm and flowchart for the largest of three numbers.
26. Define algorithm and pseudocode; list the properties of an algorithm.
27. What is a computer system? Classify software.
28. Explain logical operators with truth tables and short-circuit evaluation.

---

## 20. Syntax at a glance

```c
#include <stdio.h>
#define PI 3.14159                      /* macro: no = and no ; */

int main(void) {
    int x = 10;                         /* variable   */
    const int MAX = 100;                /* constant   */
    int y;
    float f;

    y = x++;                            /* post */
    y = ++x;                            /* pre  */
    int m = (x > y) ? x : y;            /* ternary */
    f = (float)x / y;                   /* cast */

    if (cond) { /* ... */ } else if (cond2) { /* ... */ } else { /* ... */ }
    switch (ch) { case 'a': /* ... */ break; default: /* ... */ ; }

    for (int i = 0; i < n; i++) { /* ... */ }
    while (cond) { /* ... */ }
    do { /* ... */ } while (cond);

    int a[5] = {1, 2, 3, 4, 5};
    int mat[2][3] = {{1, 2, 3}, {4, 5, 6}};
    int cube[2][2][3];

    printf("%d %.2f %c %s\n", i, f, ch, str);
    scanf("%d %lf", &i, &d);            /* & needed, %lf for double */
    fgets(buf, sizeof buf, stdin);
    return 0;
}
```

*Compile:* `gcc -std=c99 -Wall -Wextra file.c -o file`

---

*End of quick revision — mdm-102-quick-revision-v261008-0.md*
