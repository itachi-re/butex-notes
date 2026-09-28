# C Programming — Exam-Style Answers (Q1–Q20)

> All programs are standard C, compiled with `gcc`. Sizes assume a typical 64-bit GCC system (in old Turbo C, `int` = 2 bytes).

---

## 1. Identifier in C Programming

**Definition:** An *identifier* is a user-defined name given to a program element so that it can be referred to later. It is formed from letters, digits and underscores.

**Purpose:** It gives a readable, unique name to an entity so the compiler and programmer can refer to it (instead of using memory addresses).

**What is named with identifiers:**

| Entity | Example identifier |
|---|---|
| Variable | `total_marks`, `age` |
| Function | `add`, `main`, `printf` (library) |
| Array | `marks`, `matrix` |
| Structure / union / enum tag | `student`, `Day` |
| Structure member | `roll`, `name` |
| `typedef` name | `uint` |
| Macro (`#define`) | `MAX`, `PI` |
| Label (for `goto`) | `error` |
| Pointer | `ptr` |

**Program:**

```c
#include <stdio.h>
#define MAX 3                                  // macro identifier

struct student { int roll; };                  // 'student' (tag), 'roll' (member)

int add(int a, int b) { return a + b; }        // 'add' (function), a, b (parameters)

int main() {
    int _count = 2, total_marks = 0;           // valid variable identifiers
    int marks[MAX] = {80, 90, 70};             // array identifier
    struct student s1 = {101};

    for (int i = 0; i < MAX; i++)
        total_marks += marks[i];

    printf("%d %d %d\n", s1.roll, total_marks, add(_count, 3));
    return 0;
}
```

**Output:**
```
101 240 5
```

**Valid vs invalid identifiers:**

| Identifier | Valid? | Reason |
|---|---|---|
| `roll_no` | ✅ | letters + underscore |
| `_temp` | ✅ | may start with `_` |
| `Sum2` | ✅ | digit allowed after first char |
| `2total` | ❌ | starts with a digit |
| `my-var` | ❌ | `-` is not allowed |
| `my var` | ❌ | space not allowed |
| `float` | ❌ | keyword |
| `price$` | ❌ | `$` not allowed (standard C) |

---

## 2. Rules of Identifier

| # | Rule | Valid example | Invalid example & reason |
|---|---|---|---|
| 1 | Only letters (`a–z`, `A–Z`), digits (`0–9`) and underscore `_` are allowed | `total_1` | `total$1` — `$` is a special character |
| 2 | Must begin with a letter or underscore | `_x`, `x1` | `1x` — begins with a digit |
| 3 | Case-sensitive: `Age`, `age`, `AGE` are three different identifiers | `int age; age = 5;` | `int age; Age = 5;` — `Age` is undeclared → compile error |
| 4 | No spaces or special symbols (`@ # % - + .`) | `first_name` | `first name` — space splits it into two tokens |
| 5 | Cannot be a keyword | `Int`, `integer` (different from `int`) | `int` — reserved word |
| 6 | Length: compiler looks at the first *N* characters only (C89: 31 for internal names, 6 for external; C99: 63 internal, 31 external). Names must differ within the significant characters | `student_name_1` | Two 40-character names identical in the first 31 characters may be treated as the same |
| 7 | Must be unique within the same scope | `int a; float b;` | `int a; float a;` — redeclaration in same scope |
| 8 | Avoid names starting with `__` (double underscore) or `_` + capital letter — reserved for the compiler/library | `_count` | `__count`, `_Count` — reserved, undefined behaviour risk |

**Key exam line:** *Identifiers are case-sensitive, cannot start with a digit, cannot contain spaces or special characters (except `_`), and cannot be keywords.*

---

## 3. What is a Keyword?

**Definition:** A *keyword* is a **reserved word** with a fixed, predefined meaning to the compiler. It is written in lowercase.

**Why reserved?** The compiler uses keywords to recognise the structure of the language (declarations, loops, decisions). If they could be reused as variable names, the compiler could not tell the statement `int int = 5;` apart from a declaration.

**The 32 keywords of C (C89), grouped by use:**

| Group | Keywords |
|---|---|
| Data types | `int` `char` `float` `double` `void` `short` `long` `signed` `unsigned` |
| User-defined types | `struct` `union` `enum` `typedef` |
| Storage classes | `auto` `extern` `register` `static` |
| Type qualifiers | `const` `volatile` |
| Decision making | `if` `else` `switch` `case` `default` |
| Loops | `for` `while` `do` |
| Jump statements | `break` `continue` `goto` `return` |
| Operator | `sizeof` |

*(C99/C11 added `inline`, `restrict`, `_Bool`, `_Complex`, `_Imaginary`, `_Alignas`, `_Alignof`, `_Atomic`, `_Generic`, `_Noreturn`, `_Static_assert`, `_Thread_local`.)*

**Keyword vs Identifier:**

| Basis | Keyword | Identifier |
|---|---|---|
| Meaning | Predefined, fixed by the language | Defined by the programmer |
| Number | Fixed (32 in C89) | Unlimited |
| Case | Always lowercase | Any case |
| Can be redefined? | No | Yes (different scopes) |
| Purpose | Controls syntax | Names program entities |

**Example:**
```c
int marks = 90;   // 'int' is a keyword, 'marks' is an identifier
```

---

## 4. Data Types: Types

**Definition:** A *data type* specifies the kind of value a variable can hold, the amount of memory it needs, and the operations allowed on it.

**Why needed?** (i) The compiler must know how much memory to allocate, (ii) how to interpret the bits, (iii) which operations are legal, (iv) it helps detect errors at compile time.

**Classification:**

```
Data types
├── Basic (primary):  int, char, float, double, void
├── Derived:          array, pointer, function
└── User-defined:     struct, union, enum, typedef
```

### (a) Basic types (typical sizes)

| Type | Size | Range | Format specifier |
|---|---|---|---|
| `char` | 1 B | −128 to 127 | `%c` (or `%d`) |
| `unsigned char` | 1 B | 0 to 255 | `%c`, `%u` |
| `short` | 2 B | −32,768 to 32,767 | `%hd` |
| `int` | 4 B | −2,147,483,648 to 2,147,483,647 | `%d` / `%i` |
| `unsigned int` | 4 B | 0 to 4,294,967,295 | `%u` |
| `long` | 8 B (4 B on Windows) | ±9.22 × 10¹⁸ | `%ld` |
| `long long` | 8 B | ±9.22 × 10¹⁸ | `%lld` |
| `float` | 4 B | ≈ ±3.4 × 10³⁸, 6–7 digits precision | `%f` |
| `double` | 8 B | ≈ ±1.7 × 10³⁰⁸, 15–16 digits precision | `%lf` |
| `long double` | 12/16 B | ≈ ±1.1 × 10⁴⁹³², 18+ digits | `%Lf` |
| `void` | — | no value (used for functions returning nothing, generic pointers) | — |

```c
int age = 20;
char grade = 'A';
float cgpa = 3.75f;
double pi = 3.14159265358979;
void show(void);          // function returning nothing
```

### (b) Derived types
```c
int arr[5];        // array   – collection of same-type elements
int *p = &age;     // pointer – stores an address
int add(int, int); // function type
```

### (c) User-defined types
```c
struct student { int roll; float cgpa; };        // structure
union data { int i; float f; };                  // union (shared memory)
enum color { RED, GREEN, BLUE };                 // enumeration (0,1,2)
typedef unsigned int uint;                       // alias
```

**Program to print sizes:**
```c
#include <stdio.h>
int main() {
    printf("char=%zu int=%zu float=%zu double=%zu\n",
           sizeof(char), sizeof(int), sizeof(float), sizeof(double));
    return 0;
}
```
Output: `char=1 int=4 float=4 double=8`

---

## 5. Constants and Variables

**Constant:** A fixed value that **cannot change** during program execution (e.g., `10`, `3.14`, `'A'`, `"Hello"`).
**Variable:** A named memory location whose value **can change** during execution.

**Uses:** Constants hold fixed data (π, tax rate, array size); variables hold data that is input, computed or updated.

### Types of constants

| Type | Description | Examples |
|---|---|---|
| Integer | Whole numbers: decimal, octal (prefix `0`), hex (prefix `0x`); suffix `U`, `L` | `25`, `025` (=21), `0x1F` (=31), `100L` |
| Floating-point | Real numbers, decimal or exponent form; suffix `f` | `3.14`, `-0.5`, `2.5e3` (=2500), `1.5f` |
| Character | Single character in single quotes (stored as ASCII) | `'A'` (65), `'7'`, `'\n'` |
| String | Sequence of characters in double quotes, ends with `'\0'` | `"Hello"` (6 bytes) |

### Rules for declaring variables
1. Follow identifier rules (start with letter/underscore, no spaces, not a keyword).
2. Must be declared **before use**, with its data type: `type name;`
3. Multiple variables of the same type may be declared together: `int a, b, c;`
4. May be initialised at declaration: `int x = 10;`
5. Declaration ends with a semicolon.
6. Names are case-sensitive; a name cannot be declared twice in the same scope.

### Differences

| Basis | Constant | Variable |
|---|---|---|
| Value | Fixed | Can change |
| Declaration | `const int MAX = 100;` or `#define MAX 100` | `int count;` |
| Modification | Error if attempted | Allowed |
| Memory | Literal may have no separate memory | Always has a memory location |
| Example | `3.14`, `'A'` | `radius`, `area` |

**Program:**
```c
#include <stdio.h>
#define PI 3.14159

int main() {
    const int MAX = 100;     // constant
    int radius = 5;          // variable
    float area;

    area = PI * radius * radius;
    radius = 10;             // OK: variable can change
    // MAX = 200;            // ERROR: assignment of read-only variable

    printf("Area = %.2f\n", area);
    printf("Max = %d, Radius = %d\n", MAX, radius);
    return 0;
}
```

**Output:**
```
Area = 78.54
Max = 100, Radius = 10
```

---

## 6. Ways of Defining Constants

### (a) `const` keyword
**Syntax:** `const datatype name = value;`
```c
const float PI = 3.14159;
const int DAYS = 7;
```
- ✅ Advantages: type-checked; obeys scope rules; visible in debugger; has an address.
- ❌ Disadvantages: occupies memory; needs an initialiser; in C it is not a true compile-time constant (in C89 it cannot be used for array size); can be bypassed through pointer casting (undefined behaviour).

### (b) `#define` directive
**Syntax:** `#define NAME value` (no `=` and no `;`)
```c
#define PI 3.14159
#define MAX 100
#define SQUARE(x) ((x)*(x))     // macro with argument
```
- ✅ Advantages: no memory used (text substitution by preprocessor); usable anywhere, e.g. array size; can define macros with arguments.
- ❌ Disadvantages: no type checking; no scope (global from the point of definition); harder to debug; side-effects/precedence errors.

Classic trap: `#define SQ(x) x*x` → `SQ(2+3)` becomes `2+3*2+3 = 11`, not 25. Fix: `#define SQ(x) ((x)*(x))`.

### (c) `enum` constants
**Syntax:** `enum tag { name1, name2 = value, ... };`  (default values start at 0, each next +1)
```c
enum Day { SUN, MON = 5, TUE, WED };   // SUN=0, MON=5, TUE=6, WED=7
enum Day today = TUE;
printf("%d", today);                    // 6
```
- ✅ Advantages: groups related constants; automatic numbering; compile-time constants; scoped; readable.
- ❌ Disadvantages: integers only (no float/string); no strict type safety in C; values must be unique to avoid ambiguity if used in `switch`.

### Comparison: `const` vs `#define`

| Basis | `const` | `#define` |
|---|---|---|
| Handled by | Compiler | Preprocessor |
| Type checking | Yes | No |
| Memory | Allocated | Not allocated |
| Scope | Follows block/file scope | Global from definition to end of file |
| Debugging | Name visible | Name replaced before compilation |
| Terminator | `;` and `=` needed | None |
| Address (`&`) | Can be taken | Cannot |
| Macro with arguments | No | Yes |

---

## 7. Difference between `i++` and `++i`

- **Post-increment (`i++`):** the **current value is used first**, then `i` is incremented.
- **Pre-increment (`++i`):** `i` is **incremented first**, then the new value is used.

| Basis | `i++` (post) | `++i` (pre) |
|---|---|---|
| Order | Use, then increment | Increment, then use |
| Value of expression | Old value of `i` | New value of `i` |
| Value of `i` afterwards | `i + 1` | `i + 1` |
| Speed (C++ objects) | Slightly slower (temp copy) | Slightly faster |
| Example (`i = 5`) | `a = i++;` → `a = 5, i = 6` | `a = ++i;` → `a = 6, i = 6` |

**Program:**
```c
#include <stdio.h>
int main() {
    int i = 5, a, b;

    a = i++;                       // a gets 5, then i becomes 6
    printf("a = %d, i = %d\n", a, i);

    i = 5;
    b = ++i;                       // i becomes 6, then b gets 6
    printf("b = %d, i = %d\n", b, i);
    return 0;
}
```

**Output:**
```
a = 5, i = 6
b = 6, i = 6
```

> ⚠️ `y = x++ + ++x;` modifies `x` twice without a sequence point → **undefined behaviour**; never write it.

---

## 8. Difference between Pre and Post (Increment / Decrement)

| Operator | Name | Meaning | Value of expression | Effect on `x` |
|---|---|---|---|---|
| `++x` | pre-increment | `x = x + 1`, then use | new value | +1 |
| `x++` | post-increment | use, then `x = x + 1` | old value | +1 |
| `--x` | pre-decrement | `x = x − 1`, then use | new value | −1 |
| `x--` | post-decrement | use, then `x = x − 1` | old value | −1 |

Both need an **lvalue** (variable) as operand: `5++` and `(a+b)++` are errors.

**Where used:**
- **Loops:** `for (i = 0; i < n; i++)` (pre or post gives the same result here).
- **Array indexing:** `arr[i++] = 0;` (use `i`, then move to next).
- **Pointers:** `*p++` (read value, then move pointer); `*++p` (move pointer, then read).

**Program with trace:**
```c
#include <stdio.h>
int main() {
    int x = 10;
    printf("%d\n", x++);   // prints 10, x = 11
    printf("%d\n", x);     // prints 11
    printf("%d\n", ++x);   // x = 12, prints 12
    printf("%d\n", x--);   // prints 12, x = 11
    printf("%d\n", --x);   // x = 10, prints 10
    return 0;
}
```
**Output:** `10 11 12 12 10` (one per line)

**Pointer example:**
```c
int arr[] = {10, 20, 30};
int *p = arr;
printf("%d ", *p++);   // 10, p now → 20
printf("%d\n", *++p);  // p → 30, prints 30
```
Output: `10 30`

---

## 9. Conditional (Ternary) Operator

**Definition:** The only C operator with **three operands**. It selects one of two expressions depending on a condition.

**Syntax:** `condition ? expr1 : expr2;`

**Working:** If `condition` is true (non-zero) → `expr1` is evaluated and returned; otherwise → `expr2`.

**Uses:** shorthand for simple if-else; inline assignment; passing a chosen value inside `printf`.

**Examples:**

```c
#include <stdio.h>
int main() {
    int a = 10, b = 25, c = 15, max, n = 7;

    // 1. Max of two numbers
    max = (a > b) ? a : b;
    printf("Max of a,b = %d\n", max);

    // 2. Odd / even
    printf("%d is %s\n", n, (n % 2 == 0) ? "Even" : "Odd");

    // 3. Nested: largest of three
    max = (a > b) ? ((a > c) ? a : c)
                  : ((b > c) ? b : c);
    printf("Largest of three = %d\n", max);
    return 0;
}
```

**Output:**
```
Max of a,b = 25
7 is Odd
Largest of three = 25
```

**Comparison with if-else:**

| Basis | Ternary `?:` | `if-else` |
|---|---|---|
| Type | Expression (returns a value) | Statement |
| Operands | 3 | — |
| Can be used inside another expression | Yes | No |
| Multiple statements per branch | No | Yes |
| Readability for complex logic | Poor | Good |
| Use | Short, simple choices | Larger decisions |

---

## 10. Typecasting: Types

**Definition:** *Typecasting* is converting a value of one data type into another data type.
**Why used?** To get correct results in mixed-type expressions (e.g., avoiding integer division), to prevent overflow, and for library calls that expect a particular type (`malloc`, `sqrt`).

### Types
1. **Implicit (automatic):** done by the compiler (e.g., `int` → `float` in `5 + 2.5`).
2. **Explicit (manual):** done by the programmer using the cast operator.

**Syntax:** `(type) expression`

**Example — integer vs float division:**
```c
#include <stdio.h>
int main() {
    int a = 7, b = 2;

    printf("%d\n", a / b);              // integer division
    printf("%f\n", (float)a / b);       // a cast first, then float division
    printf("%f\n", (float)(a / b));      // division first (3), then cast
    return 0;
}
```

**Output:**
```
3
3.500000
3.000000
```

Note: the cast operator has **higher precedence** than `/`, so `(float)a / b` casts only `a`.

---

## 11. `break` and `continue`

**`break`:** immediately **terminates** the nearest enclosing loop (`for`, `while`, `do-while`) or `switch`; control jumps to the statement after it.
**`continue`:** **skips the rest of the current iteration** of a loop and goes to the next iteration (in `for` it jumps to the update expression; in `while`/`do-while` to the condition test). Not valid in `switch` alone.

**Syntax:** `break;`  `continue;`

| Basis | `break` | `continue` |
|---|---|---|
| Effect | Exits the loop/switch entirely | Skips only the current iteration |
| Used in | Loops and `switch` | Loops only |
| Control goes to | Statement after the loop | Next iteration (condition/update) |
| Loop continues? | No | Yes |

**Example 1 — exit on a condition (`break`):**
```c
#include <stdio.h>
int main() {
    for (int i = 1; i <= 10; i++) {
        if (i == 5) break;
        printf("%d ", i);
    }
    printf("\nLoop ended\n");
    return 0;
}
```
Output:
```
1 2 3 4
Loop ended
```

**Example 2 — skip an iteration (`continue`):**
```c
#include <stdio.h>
int main() {
    for (int i = 1; i <= 5; i++) {
        if (i == 3) continue;
        printf("%d ", i);
    }
    return 0;
}
```
Output: `1 2 4 5`

**In `switch`:** `break` prevents fall-through into the next `case` (see Q17).

---

## 12. Array

**Definition:** An *array* is a collection of **fixed-size, same-type** elements stored in **contiguous memory** and accessed by a common name and an index (starting at 0).

**Why used?** To store many related values (e.g., marks of 60 students) without declaring 60 separate variables; enables loops over data; efficient random access.

### Types
| Type | Declaration | Example |
|---|---|---|
| 1-D | `type name[size];` | `int a[5];` |
| 2-D | `type name[rows][cols];` | `int m[3][3];` |
| Multi-dimensional | `type name[d1][d2][d3];` | `int c[2][3][4];` |

### Declaration, initialisation, access
```c
int a[5];                       // declaration (garbage values if local)
int b[5] = {10, 20, 30, 40, 50};// full initialisation
int c[5] = {1, 2};              // rest are 0  → {1,2,0,0,0}
int d[]  = {5, 6, 7};           // size deduced = 3
b[2] = 99;                      // access / modify using index
printf("%d", b[0]);             // 10
```
Valid indices: `0` to `size − 1`. **C does not check bounds** — `b[5]` is undefined behaviour.

**Advantages:** easy traversal; random access in O(1); compact code; contiguous memory (cache-friendly).
**Limitations:** fixed size (cannot grow); same type only; insertion/deletion is costly; no bounds checking; wastes memory if oversized.

**Program — sum and average:**
```c
#include <stdio.h>
int main() {
    int a[5], sum = 0;
    float avg;

    printf("Enter 5 numbers: ");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &a[i]);
        sum += a[i];
    }
    avg = (float)sum / 5;
    printf("Sum = %d\nAverage = %.2f\n", sum, avg);
    return 0;
}
```
Sample run:
```
Enter 5 numbers: 10 20 30 40 50
Sum = 150
Average = 30.00
```

---

## 13. Type Conversion

**Definition:** Converting a value from one data type to another. **Needed** because operands of different types in an expression cannot be operated on directly; the compiler converts them to a common type so the operation is meaningful.

### Types
- **Implicit (automatic / promotion):** done by the compiler.
- **Explicit (casting):** done by the programmer using `(type)`.

### Conversion hierarchy (lower → higher)
```
char → short → int → unsigned int → long → unsigned long → long long → float → double → long double
```
In a mixed expression, the lower type is **promoted** to the higher type.

**Promotion examples:**
```c
int    x = 10;
float  y = 3.5;
printf("%f", x + y);      // x promoted to float → 13.500000

char c = 'A';
printf("%d", c + 1);      // c promoted to int → 66
```

**Data-loss examples:**
```c
int n = 3.99;             // fractional part truncated → n = 3
float f = 10 / 4;         // integer division first → 2 → f = 2.000000
int i = 300;
char ch = i;              // 300 doesn't fit in 1 byte → 300 − 256 = 44
```
Rule: converting **higher → lower** type (narrowing) may lose data; **lower → higher** (widening) is safe.

---

## 14. Implicit and Explicit Type Conversion

- **Implicit:** automatic conversion by the compiler when operands differ in type.
- **Explicit:** conversion forced by the programmer with the cast operator `(type) expression`.

| Basis | Implicit | Explicit |
|---|---|---|
| Performed by | Compiler | Programmer |
| Also called | Automatic / promotion / coercion | Casting / type casting |
| Syntax | None | `(type) expression` |
| When | Mixed types in expression, assignment, function arguments | When the programmer wants a specific type |
| Direction | Usually lower → higher (safe); on assignment can narrow | Any direction |
| Data loss | Possible only on assignment to a smaller type | Possible (programmer's responsibility) |
| Example | `float f = 5;` | `int x = (int)5.7;` |

**Program:**
```c
#include <stdio.h>
int main() {
    int i = 10;
    float f = 2.5f;
    double d;
    char c = 'A';
    int total = 17, count = 5;

    d = i + f;                       // implicit: i → float → double
    printf("d = %f\n", d);

    printf("c + 1 = %d\n", c + 1);   // implicit: char → int

    printf("(int)f = %d\n", (int)f); // explicit: 2.5 → 2 (data loss)

    printf("avg (wrong) = %f\n", (float)(total / count)); // 3.000000
    printf("avg (right) = %f\n", (float)total / count);   // 3.400000
    return 0;
}
```

**Output:**
```
d = 12.500000
c + 1 = 66
(int)f = 2
avg (wrong) = 3.000000
avg (right) = 3.400000
```

---

## 15. Statement: Types and Examples

**Definition:** A *statement* is a complete instruction that the compiler translates into executable action. Most end with a semicolon `;`.

| Type | Description | Example |
|---|---|---|
| **Expression** | An expression followed by `;` | `x = a + b;`  `i++;`  `printf("Hi");` |
| **Null** | Only a `;` (does nothing) | `for (i = 0; i < 5; i++);` |
| **Compound (block)** | Group of statements in `{ }` treated as one | `{ int t = a; a = b; b = t; }` |
| **Selection** | Choose a path: `if`, `if-else`, `switch` | `if (a > b) max = a; else max = b;` |
| **Iteration** | Repeat: `for`, `while`, `do-while` | `while (n > 0) { n--; }` |
| **Jump** | Transfer control: `break`, `continue`, `goto`, `return` | `return 0;` |
| **Labeled** | Statement preceded by a label (`goto` target, `case`, `default`) | `end: printf("Done");` |

**Examples of each:**
```c
#include <stdio.h>
int main() {
    int a = 5, b = 3, max, i;

    a = a + b;                          // expression statement

    {                                   // compound statement
        int temp = a;
        a = b;
        b = temp;
    }

    if (a > b) max = a; else max = b;   // selection (if-else)

    switch (max) {                      // selection (switch)
        case 8:  printf("eight\n"); break;
        default: printf("other\n");
    }

    for (i = 0; i < 3; i++)             // iteration
        printf("%d ", i);

    for (i = 0; i < 5; i++) ;           // null statement

    if (i == 5) goto end;               // jump (goto)
    printf("skipped\n");

end:                                    // labeled statement
    printf("\nDone\n");
    return 0;                           // jump (return)
}
```

**Output:**
```
eight
0 1 2 
Done
```

> Trace: `a = 5+3 = 8`; swap → `a = 3, b = 8`; `a > b` is false → `max = b = 8`; `switch(8)` matches `case 8` and prints `eight`. After the null-statement loop `i == 5`, so `goto end` skips `"skipped"`.

---

## 16. `if` Statement: Types

**Definition:** The `if` statement is a **decision-making (selection)** statement. It executes a block only when a condition is true (non-zero).

### (a) Simple `if`
**Syntax:** `if (condition) { statements; }`

Flowchart: `Start → Condition? → (True) → Statements → Next statement` ; `(False) → Next statement`
```c
int age = 20;
if (age >= 18)
    printf("Eligible to vote\n");
```
Output: `Eligible to vote`

### (b) `if-else`
**Syntax:** `if (condition) { A } else { B }`

Flowchart: `Condition? → True: A ; False: B → Next statement`
```c
int n = 7;
if (n % 2 == 0) printf("Even\n");
else             printf("Odd\n");
```
Output: `Odd`

### (c) `else-if` ladder
**Syntax:**
```c
if (cond1)      { ... }
else if (cond2) { ... }
else if (cond3) { ... }
else            { ... }
```
Flowchart: conditions tested top to bottom; the first true one runs; `else` runs if none is true.
```c
#include <stdio.h>
int main() {
    int marks = 76;
    if (marks >= 80)      printf("Grade A+\n");
    else if (marks >= 70) printf("Grade A\n");
    else if (marks >= 60) printf("Grade B\n");
    else if (marks >= 40) printf("Grade C\n");
    else                  printf("Fail\n");
    return 0;
}
```
Output: `Grade A`

### (d) Nested `if`
**Syntax:** an `if` inside another `if` (or `else`).
```c
#include <stdio.h>
int main() {
    int n = -4;
    if (n != 0) {
        if (n > 0) printf("Positive\n");
        else       printf("Negative\n");
    } else {
        printf("Zero\n");
    }
    return 0;
}
```
Output: `Negative`

**Exam notes:** `=` (assignment) vs `==` (comparison) is a common bug: `if (x = 5)` is always true. An `else` pairs with the nearest unmatched `if`.

---

## 17. `switch` Statement

**Definition:** A multi-way selection statement that compares one integral expression (`int`/`char`/`enum`) with a list of constant `case` values.

**Syntax:**
```c
switch (expression) {
    case constant1: statements; break;
    case constant2: statements; break;
    ...
    default:        statements;
}
```

- **`case`**: a label with a constant value; must be unique and integral (no floats, strings or variables).
- **`break`**: exits the switch after a case runs.
- **`default`**: runs when no case matches (optional; can appear anywhere, usually last).
- **Fall-through:** without `break`, execution continues into the following cases until a `break` or the end.

**Fall-through demo:**
```c
int x = 2;
switch (x) {
    case 1: printf("One\n");
    case 2: printf("Two\n");      // matches here
    case 3: printf("Three\n"); break;
    case 4: printf("Four\n");
}
```
Output:
```
Two
Three
```

**Menu-driven calculator:**
```c
#include <stdio.h>
int main() {
    float a, b;
    char op;

    printf("Enter expression (e.g. 12 * 4): ");
    scanf("%f %c %f", &a, &op, &b);

    switch (op) {
        case '+': printf("Result = %.2f\n", a + b); break;
        case '-': printf("Result = %.2f\n", a - b); break;
        case '*': printf("Result = %.2f\n", a * b); break;
        case '/':
            if (b != 0) printf("Result = %.2f\n", a / b);
            else        printf("Division by zero!\n");
            break;
        default:  printf("Invalid operator\n");
    }
    return 0;
}
```
Sample run:
```
Enter expression (e.g. 12 * 4): 12 * 4
Result = 48.00
```

**`switch` vs `if-else`:**

| Basis | `switch` | `if-else` |
|---|---|---|
| Tests | Equality with constants only | Any condition (ranges, `&&`, `||`, floats) |
| Expression type | Integer / char / enum | Any |
| Speed | Often faster (jump table) for many cases | Sequential checking |
| Readability | Better for many fixed choices | Better for few/complex conditions |
| `default` / `else` | `default` | `else` |
| Fall-through | Yes (needs `break`) | No |

---

## 18. Odd and Even Numbers Using a Loop

**Logic:** A number `n` is **even** if `n % 2 == 0` (remainder 0 when divided by 2); otherwise it is **odd**.

**Program 1 — one loop, test each number:**
```c
#include <stdio.h>
int main() {
    int n, i;
    printf("Enter N: ");
    scanf("%d", &n);

    printf("Even numbers: ");
    for (i = 1; i <= n; i++)
        if (i % 2 == 0)
            printf("%d ", i);

    printf("\nOdd numbers: ");
    for (i = 1; i <= n; i++)
        if (i % 2 != 0)
            printf("%d ", i);

    printf("\n");
    return 0;
}
```
Sample output:
```
Enter N: 10
Even numbers: 2 4 6 8 10 
Odd numbers: 1 3 5 7 9 
```

**Variant — step of 2 (no `%` needed):**
```c
#include <stdio.h>
int main() {
    int n, i;
    scanf("%d", &n);

    printf("Odd : ");
    for (i = 1; i <= n; i += 2) printf("%d ", i);   // 1, 3, 5, ...

    printf("\nEven: ");
    for (i = 2; i <= n; i += 2) printf("%d ", i);   // 2, 4, 6, ...
    printf("\n");
    return 0;
}
```
For `N = 7`: `Odd : 1 3 5 7` / `Even: 2 4 6`.

**Single loop printing both together:**
```c
for (i = 1; i <= n; i++)
    printf("%d is %s\n", i, (i % 2 == 0) ? "Even" : "Odd");
```

---

## 19. 2D Array and 3D Array

**2D array:** an array of 1-D arrays (rows × columns). Uses: matrices, tables (marks of students × subjects), game boards, image (pixel grid).
**3D array:** an array of 2-D arrays (blocks/layers × rows × columns). Uses: 3-D grids, RGB image data (height × width × 3), time-series of tables.

**Declaration / initialisation / access:**
```c
int m[2][3] = { {1, 2, 3},
                {4, 5, 6} };          // 2D: 2 rows, 3 columns
m[1][2] = 60;                         // access row 1, column 2

int c[2][2][3] = { { {1,2,3},  {4,5,6}   },
                   { {7,8,9},  {10,11,12} } };   // 3D: 2 layers, 2 rows, 3 cols
c[1][0][2] = 9;                       // layer 1, row 0, column 2
```
Syntax: `type name[rows][cols];`  and  `type name[layers][rows][cols];`

**Program 1 — matrix input and print (2D):**
```c
#include <stdio.h>
int main() {
    int a[2][2];
    printf("Enter 4 elements: ");
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++)
            scanf("%d", &a[i][j]);

    printf("Matrix:\n");
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++)
            printf("%d ", a[i][j]);
        printf("\n");
    }
    return 0;
}
```
Sample: input `1 2 3 4` → output
```
Matrix:
1 2 
3 4 
```

**Program 2 — matrix addition (2D):**
```c
#include <stdio.h>
int main() {
    int a[2][2] = {{1, 2}, {3, 4}};
    int b[2][2] = {{5, 6}, {7, 8}};
    int c[2][2];

    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++)
            c[i][j] = a[i][j] + b[i][j];

    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++)
            printf("%d ", c[i][j]);
        printf("\n");
    }
    return 0;
}
```
Output:
```
6 8 
10 12 
```

**Program 3 — traversing a 3D array:**
```c
#include <stdio.h>
int main() {
    int c[2][2][3] = { {{1,2,3},{4,5,6}}, {{7,8,9},{10,11,12}} };

    for (int i = 0; i < 2; i++) {
        printf("Layer %d:\n", i);
        for (int j = 0; j < 2; j++) {
            for (int k = 0; k < 3; k++)
                printf("%d ", c[i][j][k]);
            printf("\n");
        }
    }
    return 0;
}
```
Output:
```
Layer 0:
1 2 3 
4 5 6 
Layer 1:
7 8 9 
10 11 12 
```

**Memory storage — row-major order:** C stores a multi-dimensional array as one continuous block, **row by row** (the last index changes fastest).

`int m[2][3]` is stored as: `m[0][0], m[0][1], m[0][2], m[1][0], m[1][1], m[1][2]`

Address formulas (element size `s`):
- 2D `a[R][C]`: `address of a[i][j] = base + (i × C + j) × s`
- 3D `a[L][R][C]`: `address of a[i][j][k] = base + ((i × R + j) × C + k) × s`

*Numerical:* `int a[3][4]`, base = 1000, `s = 4`. Address of `a[2][1]` = 1000 + (2 × 4 + 1) × 4 = **1036**.

---

## 20. I/O Functions

**Input function:** reads data from the keyboard (standard input `stdin`) into variables. **Output function:** displays data on the screen (`stdout`). Declared in `<stdio.h>` (`getch`/`putch` in `<conio.h>`, non-standard).

```
I/O functions
├── Formatted:   printf(), scanf()
└── Unformatted: getchar(), putchar(), gets(), puts(), getch(), putch()
```

### (a) Formatted I/O
**Syntax:**
```c
printf("format string", arg1, arg2, ...);
scanf("format string", &var1, &var2, ...);
```

| Specifier | Type |
|---|---|
| `%d` / `%i` | int |
| `%u` | unsigned int |
| `%ld`, `%lld` | long, long long |
| `%f` | float (printf) |
| `%lf` | double (scanf); `%f` also works for double in printf |
| `%c` | char |
| `%s` | string |
| `%x`, `%o` | hexadecimal, octal |
| `%e` | exponent form |
| `%p` | pointer |
| `%%` | prints `%` |

Width/precision: `%5d` (min width 5), `%-10s` (left-aligned), `%.2f` (2 decimals), `%08.3f`.

```c
#include <stdio.h>
int main() {
    int age; float cgpa; char grade;
    printf("Enter age, CGPA, grade: ");
    scanf("%d %f %c", &age, &cgpa, &grade);
    printf("Age=%d, CGPA=%.2f, Grade=%c\n", age, cgpa, grade);
    return 0;
}
```
Sample: input `20 3.756 A` → `Age=20, CGPA=3.76, Grade=A`

### (b) Unformatted I/O

| Function | Header | Purpose | Syntax / example |
|---|---|---|---|
| `getchar()` | stdio.h | Reads one char (waits for Enter) | `ch = getchar();` |
| `putchar()` | stdio.h | Writes one char | `putchar(ch);` |
| `gets()` | stdio.h | Reads a line of text (spaces allowed) — **unsafe, removed in C11** | `gets(str);` |
| `puts()` | stdio.h | Writes a string and adds newline | `puts(str);` |
| `getch()` | conio.h | Reads one char without echo, no Enter needed | `ch = getch();` |
| `putch()` | conio.h | Writes one char | `putch(ch);` |

```c
#include <stdio.h>
#include <string.h>
int main() {
    char ch, name[30];

    printf("Enter a character: ");
    ch = getchar();                 // reads one char
    putchar(ch);                    // prints it
    putchar('\n');

    getchar();                      // consume leftover '\n'
    printf("Enter your name: ");
    fgets(name, sizeof(name), stdin);          // safe replacement for gets()
    name[strcspn(name, "\n")] = '\0';          // remove trailing newline
    puts(name);                                // prints name + '\n'
    return 0;
}
```
Sample: input `K`, then `Rahim Uddin` → output `K` and `Rahim Uddin`.

### Formatted vs Unformatted

| Basis | Formatted | Unformatted |
|---|---|---|
| Functions | `printf`, `scanf` | `getchar`, `putchar`, `gets`, `puts`, `getch`, `putch` |
| Format specifiers | Required | Not used |
| Data types | Any (int, float, char, string) | Only char or string |
| Control over output | Width, precision, alignment | None |
| Multiple values in one call | Yes | No |
| Speed | Slower (parses format) | Faster |

### Common pitfalls
1. **Missing `&` in `scanf`:** `scanf("%d", n);` ✗ → must be `scanf("%d", &n);` ✓ (exception: arrays/strings — `scanf("%s", name);` needs no `&`).
2. **`gets` vs `fgets`:** `gets` cannot limit input → buffer overflow, so it was removed in C11. Use `fgets(buf, size, stdin)`; it keeps the `'\n'`, which you may strip.
3. **Leftover newline:** after `scanf("%d", &n)`, the Enter stays in the buffer, so a following `getchar()` or `scanf("%c")` reads `'\n'`. Fix: `scanf(" %c", &ch);` (space skips whitespace).
4. **`%s` in `scanf` stops at whitespace:** it reads only one word; use `fgets` or `scanf("%[^\n]s", str)` for a full line.
5. **Wrong specifier:** `%d` for a `float` prints garbage; `scanf` needs `%lf` for `double`.
6. `getch`/`putch` are non-standard (Turbo C / Windows) — avoid in portable code.

---

## ⚡ Quick Revision Summary

| Topic | One-line key point |
|---|---|
| Identifier | Programmer-defined name; letters/digits/`_`, cannot start with digit, case-sensitive, not a keyword |
| Keyword | 32 reserved words (C89), lowercase, fixed meaning |
| Data types | Basic (`int char float double void`), derived (array, pointer, function), user-defined (`struct union enum typedef`) |
| Constant vs variable | Constant fixed; variable changeable |
| Defining constants | `const` (typed, memory), `#define` (text substitution), `enum` (integer names from 0) |
| `i++` vs `++i` | Post: use then increment; Pre: increment then use |
| Ternary | `cond ? a : b` — the only 3-operand operator |
| Typecast | `(type) expr`; cast binds tighter than `/` |
| Implicit vs explicit | Compiler vs programmer; narrowing loses data |
| `break` / `continue` | Exit loop/switch vs skip to next iteration |
| Array | Same-type, contiguous, 0-indexed, no bounds check, row-major for 2D/3D |
| Statements | Expression, null, compound, selection, iteration, jump, labeled |
| `if` types | simple, if-else, else-if ladder, nested |
| `switch` | integral constants; `break` stops fall-through; `default` optional |
| Odd/even | `n % 2 == 0` even; loop with step 2 avoids `%` |
| I/O | Formatted (`printf/scanf`), unformatted (`getchar/putchar/gets/puts`); prefer `fgets`, don't forget `&` |
