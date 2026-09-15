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

## 9. Half Pyramid Using Stars

### Definition
A **half pyramid** is a left-aligned triangular pattern where the number of printed characters **increases by one on each row**, with no leading spaces.

### Expected Output

For `n = 5`:

```text
*
**
***
****
*****
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= i; j++) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
*
**
***
****
*****
```

### How It Works
* **Outer loop (`i`)** → controls the **rows**, from `1` to `n`.
* **Inner loop (`j`)** → runs from `1` to `i`, printing one `*` per iteration.
* Because the inner loop's limit is `i`, the number of stars **increases by 1 on each row**.

```text
Row 1 → 1 star
Row 2 → 2 stars
Row 3 → 3 stars
Row 4 → 4 stars
Row 5 → 5 stars
```

---

## 10. Full Pyramid Using Stars

### Definition
A **full (centered) pyramid** adds **leading spaces** before the stars so the shape appears centered, with an **odd number of stars** on each row.

### Expected Output

For `n = 5`:

```text
    *
   ***
  *****
 *******
*********
```

### Logic

```text
Spaces = n - i
Stars  = 2*i - 1
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n - i; j++) {
            printf(" ");
        }
        for (j = 1; j <= 2 * i - 1; j++) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
    *
   ***
  *****
 *******
*********
```

### How It Works
* **Outer loop (`i`)** → controls the rows.
* **First inner loop (`j`)** → prints `n - i` spaces so each row is centered relative to the widest row.
* **Second inner loop (`j`)** → prints `2*i - 1` stars, which always gives an **odd count** (1, 3, 5, 7, 9…).
* As `i` increases, spaces **decrease** and stars **increase**, producing the centered triangle shape.

| Row (`i`) | Spaces | Stars |
| --------: | -----: | ----: |
|         1 |      4 |     1 |
|         2 |      3 |     3 |
|         3 |      2 |     5 |
|         4 |      1 |     7 |
|         5 |      0 |     9 |

---

## 11. Half Pyramid Using Numbers (1 to 5)

### Definition
Instead of printing a fixed symbol, this pattern prints **increasing numbers** starting from `1` on every row.

### Expected Output

```text
1
12
123
1234
12345
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= i; j++) {
            printf("%d", j);
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
1
12
123
1234
12345
```

### How It Works
* **Outer loop (`i`)** → controls the rows.
* **Inner loop (`j`)** → runs from `1` to `i`, and `j` **itself is printed** (not `*`).
* Since `j` always restarts at `1`, every row prints the sequence `1, 2, 3, ... i`.

**Note:** The only change from Question 9 is that `printf("*")` becomes `printf("%d", j)` — the loop structure is identical.

---

## 12. Reversed Full Pyramid Using Stars

### Definition
This pattern is the **vertical mirror** of the full pyramid (Question 10): it starts wide at the top and narrows toward the bottom.

### Expected Output

For `n = 5`:

```text
*********
 *******
  *****
   ***
    *
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= i - 1; j++) {
            printf(" ");
        }
        for (j = 1; j <= 2 * (n - i + 1) - 1; j++) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
*********
 *******
  *****
   ***
    *
```

### How It Works
* **Spaces** now use `i - 1`, so they **increase** as the rows go down (the opposite of Question 10).
* **Stars** use `2*(n-i+1) - 1`, which **decreases** as `i` increases.
* Row number and star count are **inversely related**: the first row (`i=1`) gets the most stars, the last row (`i=n`) gets the fewest.
* This is the full pyramid from Question 10 with the **row order flipped**.

---

## 13. Number Pyramid (5 to 1)

### Definition
An inverted numeric pattern where each row prints the sequence `1, 2, 3, ...` up to a **decreasing limit**.

### Expected Output

```text
12345
1234
123
12
1
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = n; i >= 1; i--) {
        for (j = 1; j <= i; j++) {
            printf("%d", j);
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
12345
1234
123
12
1
```

### How It Works
* **Outer loop (`i`)** → counts **downward** from `n` to `1`, so the row limit shrinks each time.
* **Inner loop (`j`)** → still runs from `1` to `i`, printing `j`.
* Because the outer loop's **starting point** decreases the inner-loop limit, each successive row has **one fewer digit** than the one before.

---

## 14. Inverted Half Pyramid Using Stars

### Definition
The **mirror image** of the half pyramid (Question 9): it starts with the most stars and reduces by one each row.

### Expected Output

```text
*****
****
***
**
*
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n - i + 1; j++) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
*****
****
***
**
*
```

### How It Works
* **Outer loop (`i`)** → still counts **upward** from `1` to `n` (unlike Question 13, which counted down).
* **Inner loop (`j`)** → runs to `n - i + 1`, which **decreases** as `i` increases.
* **Difference from Question 9:** the inner-loop limit is `n - i + 1` instead of `i`, flipping the direction of growth while the outer loop stays the same.

---

## 15. Number Pattern Increasing by Rows

### Definition
Each row repeats **its own row number**, rather than counting `1` to `i`.

### Expected Output

```text
1
22
333
4444
55555
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= i; j++) {
            printf("%d", i);
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
1
22
333
4444
55555
```

### How It Works
* **Outer loop (`i`)** → controls both the row number and (through the inner loop limit) how many times it repeats.
* **Inner loop (`j`)** → only used as a **counter**; the value actually printed is `i`, not `j`.
* **Common mistake:** printing `j` instead of `i` here gives Question 11's pattern instead — always check *which variable* is being printed.

---

## 16. Number Pattern Repeated in Reverse

### Definition
Combines the decreasing repetition count of Question 14 with printing the **row number** instead of a star.

### Expected Output

```text
11111
2222
333
44
5
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n - i + 1; j++) {
            printf("%d", i);
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
11111
2222
333
44
5
```

### How It Works
* **Outer loop (`i`)** → increases normally, giving the printed number (`1, 2, 3, 4, 5`).
* **Inner loop (`j`)** → limit is `n - i + 1`, so it **decreases** each row.
* Result: the **printed digit increases** row by row while the **number of repetitions decreases** — the two trends move in opposite directions.

---

## 17. Full Pyramid Using Numbers

### Definition
A **centered numeric pyramid** where each row prints an increasing then symmetric-looking digit sequence (using the running inner-loop value), padded with leading spaces.

### Expected Output

```text
    1
   123
  12345
 1234567
123456789
```

### Logic

```text
Spaces = n - i
Digits printed = 2*i - 1 (values 1..2*i-1)
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n - i; j++) {
            printf(" ");
        }
        for (j = 1; j <= 2 * i - 1; j++) {
            printf("%d", j);
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
    1
   123
  12345
 1234567
123456789
```

### How It Works
* **Leading spaces** use the same `n - i` formula as the star full pyramid (Question 10).
* The **odd count** `2*i - 1` again decides how many digits appear on each row.
* Instead of printing `*`, the second inner loop prints `j`, so the digits **count up from 1** each row: `1`, then `1 2 3`, then `1 2 3 4 5`, and so on.

**Note:** For `2*i - 1 > 9`, digits beyond `9` will print as two characters (`10`, `11`, …), which shifts the visual alignment — this is a common exam gotcha worth mentioning if `n` is large.

---

## 18. Reversed Number Pyramid

### Definition
The **vertical mirror** of Question 17 — wide at the top, narrowing toward the bottom.

### Expected Output

```text
123456789
 1234567
  12345
   123
    1
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= i - 1; j++) {
            printf(" ");
        }
        for (j = 1; j <= 2 * (n - i + 1) - 1; j++) {
            printf("%d", j);
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
123456789
 1234567
  12345
   123
    1
```

### How It Works
* This uses the **same space/digit formulas as Question 12** (reversed full pyramid), just printing `j` instead of `*`.
* **Spaces** (`i - 1`) increase down the rows; the **digit count** (`2*(n-i+1) - 1`) decreases.
* It is exactly the **reverse row order** of Question 17.

---

## 19. Floyd's Triangle

### Definition
**Floyd's Triangle** is a right-angled triangular pattern of **consecutive natural numbers**, where the numbering **never resets** — it keeps incrementing across the whole triangle, not just within a row.

### Expected Output

```text
1
23
456
78910
1112131415
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j, num = 1;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= i; j++) {
            printf("%d", num);
            num++;
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
1
23
456
78910
1112131415
```

### How It Works
* **`num`** is declared **outside** both loops and initialized to `1` **once**, before the outer loop starts.
* Every time a value is printed, `num++` increments it — it is **never reset** to `1` at the start of a row.
* **Key distinction from Question 11:** in Question 11 the inner loop variable `j` (which restarts at `1` every row) is printed; in Floyd's Triangle, a **separate continuously-incrementing variable** is printed instead.

---

## 20. Character Half Pyramid

### Definition
Same structure as the half pyramid (Question 9), but prints **consecutive letters** instead of stars or numbers.

### Expected Output

```text
A
AB
ABC
ABCD
ABCDE
```

### Program

```c
#include <stdio.h>

int main() {
    int n, i, j;
    char ch;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        ch = 'A';
        for (j = 1; j <= i; j++) {
            printf("%c", ch);
            ch++;
        }
        printf("\n");
    }

    return 0;
}
```

**Sample Output (n=5):**
```
Enter number of rows: 5
A
AB
ABC
ABCD
ABCDE
```

### How It Works
* **Character arithmetic:** in C, `char` values are stored as their **ASCII codes** (`'A'` = 65), so `ch++` moves to the **next letter** in the alphabet.
* `ch` is **reset to `'A'`** at the start of every row (inside the outer loop, before the inner loop), so each row always begins from `A` again.
* **Inner loop (`j`)** → only controls **how many letters** are printed; the letter itself comes from `ch`, which increments independently.

---

## Common Mistakes in Pyramid Programs

- **Forgetting `printf("\n");`** after the inner loop — all rows run together into one line.
- **Using the wrong inner-loop condition**, e.g. `j < i` instead of `j <= i`, which prints one character too few.
- **Confusing rows (`i`) with columns (`j`)** — printing `i` when `j` was intended (or vice versa) silently produces a different pattern.
- **Forgetting the spaces loop** in centered pyramids — without it, stars appear left-aligned instead of centered.
- **Using `i` where `j` should be printed** — e.g. in Question 11, printing `i` instead of `j` would print `1`, `22`, `333` (Question 15's pattern) instead of `1`, `12`, `123`.
- **Incorrectly calculating `2*i - 1`** — a common slip is writing `2*i + 1` or `2*(i-1)`, both of which break the odd-number-of-stars property.
- **Accidentally printing an extra space/character** — e.g. looping `j <= n - i + 1` for spaces instead of `j <= n - i` shifts the whole pyramid one column to the right.

### Wrong vs Correct Example

**Wrong (off-by-one in the spacing loop):**
```c
for (j = 1; j <= n - i + 1; j++) {   // WRONG: one extra space per row
    printf(" ");
}
```

**Correct:**
```c
for (j = 1; j <= n - i; j++) {       // CORRECT number of spaces
    printf(" ");
}
```

Using `n - i + 1` adds one unwanted space to every row, which shifts the whole pyramid to the right and breaks the centered alignment.

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
| Half Pyramid | `j <= i` |
| Inverted Half Pyramid | `j <= n-i+1` |
| Full Pyramid | Spaces (`n-i`) + `2*i-1` stars |
| Reversed Full Pyramid | Increasing spaces (`i-1`) + decreasing stars |
| Number Pyramid | Print `j` |
| Repeated Number Pattern | Print `i` |
| Floyd's Triangle | Continuous counter (never resets) |
| Character Pyramid | `ch` reset to `'A'` each row, incremented per column |

---
*End of Notes — Good luck with your test!*
