# C Programming — Class Test Preparation Notes

---

## 1. Operator Precedence in C

### Definition
**Operator precedence** determines the **order in which operators are evaluated** in an expression containing more than one operator. Operators with **higher precedence** are evaluated **before** operators with lower precedence.

### Importance
- Ensures expressions are evaluated **consistently and predictably**.
- Prevents **ambiguity** in complex expressions.
- Helps avoid **logical errors** in programs.
- Related concept: **Associativity** — the direction (left-to-right or right-to-left) in which operators of the *same* precedence are evaluated.

### Priority Order (High → Low) — Common Operators

| Precedence | Operator(s) | Description | Associativity |
|---|---|---|---|
| 1 (Highest) | `()` `[]` `->` `.` | Function call, array subscript, member access | Left to Right |
| 2 | `++` `--` `!` `~` `sizeof` `(type)` (unary) `*` `&` | Unary operators, type cast, address/pointer | Right to Left |
| 3 | `*` `/` `%` | Multiplication, Division, Modulus | Left to Right |
| 4 | `+` `-` | Addition, Subtraction | Left to Right |
| 5 | `<<` `>>` | Bitwise shift | Left to Right |
| 6 | `<` `<=` `>` `>=` | Relational | Left to Right |
| 7 | `==` `!=` | Equality | Left to Right |
| 8 | `&` | Bitwise AND | Left to Right |
| 9 | `^` | Bitwise XOR | Left to Right |
| 10 | `\|` | Bitwise OR | Left to Right |
| 11 | `&&` | Logical AND | Left to Right |
| 12 | `\|\|` | Logical OR | Left to Right |
| 13 | `?:` | Conditional (ternary) | Right to Left |
| 14 | `= += -= *= /=` etc. | Assignment | Right to Left |
| 15 (Lowest) | `,` | Comma | Left to Right |

### Example Expressions

```c
#include <stdio.h>
int main() {
    int a = 5, b = 10, c = 2, result;

    result = a + b * c;   // * has higher precedence than +
    printf("Result1 = %d\n", result);  // 5 + (10*2) = 25

    result = (a + b) * c; // parentheses override precedence
    printf("Result2 = %d\n", result);  // (5+10)*2 = 30

    return 0;
}
```

**Output:**
```
Result1 = 25
Result2 = 30
```

**Explanation:** In `a + b * c`, multiplication (`*`) has **higher precedence** than addition (`+`), so `b * c` is evaluated first. Using **parentheses** forces a different evaluation order.

---

## 2. Type Casting / Type Conversion in C

### Definition
**Type conversion** is the process of converting a variable of one data type into another data type. In C, this is done either **automatically by the compiler** or **manually by the programmer**.

### Need and Purpose
- To perform arithmetic operations between **different data types**.
- To **avoid data loss** or unexpected results.
- To achieve **precise control** over computations (e.g., float division instead of integer division).
- To pass correct data types to functions.

### Syntax (Explicit Casting)
```c
(target_data_type) expression;
```

### Example
```c
#include <stdio.h>
int main() {
    int a = 7, b = 2;
    float result;

    result = (float) a / b;   // explicit type casting
    printf("Result = %.2f\n", result);

    return 0;
}
```

**Output:**
```
Result = 3.50
```

**Explanation:** Without casting, `a / b` would perform **integer division**, giving `3`. Casting `a` to `float` forces **floating-point division**, giving the accurate result `3.50`.

---

## 3. Implicit and Explicit Type Conversion

### Implicit Type Conversion (Type Promotion)
**Definition:** Conversion done **automatically by the compiler** without the programmer's intervention, usually to avoid data loss (lower type → higher type).

```c
#include <stdio.h>
int main() {
    int a = 10;
    float b = 5.5;
    float sum;

    sum = a + b;  // int 'a' is implicitly converted to float
    printf("Sum = %.2f\n", sum);
    return 0;
}
```
**Output:** `Sum = 15.50`

### Explicit Type Conversion (Type Casting)
**Definition:** Conversion done **manually by the programmer** using the cast operator `(type)`.

```c
#include <stdio.h>
int main() {
    float f = 9.7;
    int i;

    i = (int) f;  // explicit conversion, decimal part truncated
    printf("i = %d\n", i);
    return 0;
}
```
**Output:** `i = 9`

### Differences

| Basis | Implicit Conversion | Explicit Conversion |
|---|---|---|
| **Performed by** | Compiler automatically | Programmer manually |
| **Keyword/Syntax** | None required | `(type)` cast operator used |
| **Also called** | Type promotion / coercion | Type casting |
| **Data loss risk** | Usually safe (lower→higher type) | Can cause data loss (higher→lower type) |
| **Example** | `int + float → float` | `(int) 9.7 → 9` |

---

## 4. Statements in C Language

### Definition
A **statement** is an executable instruction in a C program that performs some action, such as assigning a value, calling a function, or controlling program flow. Every statement in C ends with a **semicolon (`;`)** (except compound and control statements).

### Classification of Statements

| Type | Description |
|---|---|
| **Expression Statement** | An expression followed by `;` (e.g., `a = b + c;`) |
| **Compound Statement (Block)** | Group of statements enclosed in `{ }` |
| **Control Statements** | Direct the flow of execution (decision-making, looping) |
| **Selection Statements** | `if`, `if-else`, `switch` |
| **Iteration Statements** | `for`, `while`, `do-while` |
| **Jump Statements** | `break`, `continue`, `goto`, `return` |
| **Null Statement** | An empty statement `;` |

### Brief Explanation with Examples

**1. Expression Statement**
```c
x = a + b;   // assignment expression statement
printf("Hello");  // function call statement
```

**2. Compound Statement**
```c
{
    int x = 5;
    printf("%d", x);
}
```

**3. Control Statement**
```c
if (a > b) {
    printf("a is greater");
}
```

**4. Jump Statement**
```c
for (int i = 0; i < 5; i++) {
    if (i == 3) break;   // jump statement
}
```

---

## 5. Null Statement in C

### Definition
A **null statement** (also called an **empty statement**) is a statement that consists of **only a semicolon (`;`)** and performs **no action**.

### Syntax
```c
;
```

### Example
```c
#include <stdio.h>
int main() {
    int i;
    for (i = 0; i < 5; i++);   // null statement as loop body
    printf("Loop ended, i = %d\n", i);
    return 0;
}
```

**Output:**
```
Loop ended, i = 5
```

**Explanation:** The `for` loop here has **no body** — the semicolon right after `for(...)` acts as the null statement, so the loop simply increments `i` five times without doing anything else.

### Use Cases
- Used as a **placeholder** where a statement is syntactically required but no action is needed.
- Used in **empty loop bodies** (e.g., delay loops, or when all work is done in the loop's update expression).
- Used as a target for **labels** in `goto` statements.

---

## 6. Decision-Making Statements in C

### (a) `if` Statement

**Syntax:**
```c
if (condition) {
    // statements executed if condition is true
}
```

```c
#include <stdio.h>
int main() {
    int num = 10;
    if (num > 0) {
        printf("%d is positive\n", num);
    }
    return 0;
}
```
**Output:** `10 is positive`

---

### (b) `if-else` Statement

**Syntax:**
```c
if (condition) {
    // executed if true
} else {
    // executed if false
}
```

```c
#include <stdio.h>
int main() {
    int num = -5;
    if (num >= 0)
        printf("Positive\n");
    else
        printf("Negative\n");
    return 0;
}
```
**Output:** `Negative`

---

### (c) Nested `if-else` Statement

**Definition:** An `if` or `if-else` statement placed **inside another** `if` or `else` block.

**Syntax:**
```c
if (condition1) {
    if (condition2) {
        // statements
    } else {
        // statements
    }
} else {
    // statements
}
```

```c
#include <stdio.h>
int main() {
    int a = 15, b = 20;
    if (a > 10) {
        if (b > 15)
            printf("a>10 and b>15\n");
        else
            printf("a>10 and b<=15\n");
    } else {
        printf("a<=10\n");
    }
    return 0;
}
```
**Output:** `a>10 and b>15`

---

### (d) `else-if` Ladder

**Definition:** Used to test **multiple conditions** sequentially; the first true condition's block executes.

**Syntax:**
```c
if (condition1) {
    // statements
} else if (condition2) {
    // statements
} else if (condition3) {
    // statements
} else {
    // default statements
}
```

```c
#include <stdio.h>
int main() {
    int marks = 75;
    if (marks >= 90)
        printf("Grade A\n");
    else if (marks >= 75)
        printf("Grade B\n");
    else if (marks >= 60)
        printf("Grade C\n");
    else
        printf("Grade F\n");
    return 0;
}
```
**Output:** `Grade B`

---

## 7. Switch Statement in C

### Definition
The **switch statement** is a multi-way decision-making statement that tests the value of a variable/expression against a list of **case values** and executes the matching block.

### Syntax
```c
switch (expression) {
    case value1:
        // statements
        break;
    case value2:
        // statements
        break;
    ...
    default:
        // statements
}
```

### Rules
1. The **switch expression** must evaluate to an **integer or character** type (not float/string).
2. **`case`** values must be **constant expressions** and **unique**.
3. The **`break`** statement is used to exit the switch; without it, execution **falls through** to the next case.
4. The **`default`** case is optional and executes when no `case` matches.
5. `switch` statements can be **nested**.

### Example Program
```c
#include <stdio.h>
int main() {
    int day = 3;
    switch (day) {
        case 1:
            printf("Monday\n");
            break;
        case 2:
            printf("Tuesday\n");
            break;
        case 3:
            printf("Wednesday\n");
            break;
        default:
            printf("Invalid day\n");
    }
    return 0;
}
```
**Output:** `Wednesday`

---

## 8. Loop Programs

### (a) Sum of Numbers (1 to N)

```c
#include <stdio.h>
int main() {
    int n, i, sum = 0;
    printf("Enter n: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        sum = sum + i;
    }

    printf("Sum = %d\n", sum);
    return 0;
}
```
**Sample Output (n=5):**
```
Enter n: 5
Sum = 15
```

**Loop Logic:** The `for` loop runs from `i = 1` to `i = n`, **adding each value of `i`** to `sum` on every iteration.

---

### (b) Check Odd or Even Number

```c
#include <stdio.h>
int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);

    if (num % 2 == 0)
        printf("%d is Even\n", num);
    else
        printf("%d is Odd\n", num);

    return 0;
}
```
**Sample Output (num=7):**
```
Enter a number: 7
7 is Odd
```

**Loop Logic (Note):** Odd/even checking itself uses the **modulus operator (`%`)**, not a loop. If required to check **multiple numbers**, a loop can be added:

```c
#include <stdio.h>
int main() {
    int n, i, num;
    printf("How many numbers? ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        printf("Enter number %d: ", i);
        scanf("%d", &num);
        if (num % 2 == 0)
            printf("%d is Even\n", num);
        else
            printf("%d is Odd\n", num);
    }
    return 0;
}
```

**Explanation:** The **`for` loop** repeats input-and-check `n` times; inside each iteration, `num % 2 == 0` tests whether the **remainder on division by 2 is zero** (even) or not (odd).

---

## Quick Revision Table

| Concept | Key Idea |
|---|---|
| Operator Precedence | Order of evaluation of operators |
| Type Casting | Manual conversion using `(type)` |
| Implicit Conversion | Automatic, compiler-driven |
| Statement | Executable instruction ending in `;` |
| Null Statement | Just `;` — does nothing |
| if / if-else | Basic single/double-branch decision |
| Nested if-else | if inside another if |
| else-if ladder | Multiple sequential conditions |
| switch | Multi-way branching on a single value |
| Loops (`for`) | Repeated execution with counter control |

---
*End of Notes — Good luck with your test!*
