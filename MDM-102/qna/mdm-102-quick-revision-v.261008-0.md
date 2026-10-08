---
title: MDM-102 C Programming — Quick Revision Sheet (Enhanced, with Code)
course_code: MDM-102
covers: Topics 1–11
author: sigkill0x00
---

# MDM-102 C Programming — Quick Revision (Enhanced)

> Every program below is a complete, runnable example (except the BGI/SDL2 ones, which need their libraries).
> Compile everything with: `gcc -Wall -Wextra -std=c11 -o prog prog.c` (add `-lm` if you use `math.h`).
> Lines marked `// input:` show what to type when the program runs.
> A few examples (3.3, 3.5, 4.3, 4.4, 8.4, 8.7) trigger compiler warnings **on purpose**: they demonstrate the bug. Read the warning, that's the lesson.

---

## 1. Simple C Programs

```c
#include <stdio.h>
int main(void) { printf("Hello!\n"); return 0; }
```
- `#include` = preprocessor directive; `main()` = entry point; `return 0` = success to OS.
- `printf` → stdout, `scanf` → stdin (needs `&` except for arrays/strings).
- Escapes: `\n` newline, `\t` tab, `\\` backslash, `\"` quote.
- **4 compilation stages:** Preprocess (`gcc -E`, .i) → Compile (`-S`, .s) → Assemble (`-c`, .o) → Link (executable).
- Build: `gcc -Wall -Wextra -std=c11 -o prog prog.c`
- Safe string read: `scanf("%49s", name)` for `char name[50]`; use `fgets(buf, sizeof buf, stdin)` for lines with spaces.
- **Trap:** `printf("%d", 85.5)` → undefined behaviour. Use `%f`.

### Example 1.1 — Escapes and formatted output
```c
#include <stdio.h>
int main(void) {
    printf("Name:\tAda\n");
    printf("Path:\tC:\\Users\\Ada\n");
    printf("She said \"hi\"\n");
    printf("%d | %5d | %-5d | %05d\n", 42, 42, 42, 42);   // 42 |    42 | 42    | 00042
    printf("%.2f | %8.3f | %e\n", 3.14159, 3.14159, 31415.9);
    printf("%c %s %x %o %%\n", 'A', "text", 255, 8);       // A text ff 10 %
    return 0;
}
```

### Example 1.2 — `scanf` with `&`, and the safe string read
```c
#include <stdio.h>
int main(void) {
    char name[50];
    int age;
    float gpa;
    // input: Alice 20 3.75
    printf("Enter name age gpa: ");
    if (scanf("%49s %d %f", name, &age, &gpa) != 3) {   // check the return count!
        printf("Bad input\n");
        return 1;
    }
    printf("Hi %s, next year you'll be %d. GPA = %.2f\n", name, age + 1, gpa);
    return 0;
}
```
Note: `name` has **no `&`** (array decays to pointer); `age` and `gpa` need `&`. `%49s` stops overflow of a 50-byte buffer.

### Example 1.3 — Reading a full line with spaces (`fgets`)
```c
#include <stdio.h>
#include <string.h>
int main(void) {
    char line[100];
    // input: Ada Lovelace
    printf("Full name: ");
    if (fgets(line, sizeof line, stdin)) {
        line[strcspn(line, "\n")] = '\0';     // strip trailing newline
        printf("Hello, %s! (%zu chars)\n", line, strlen(line));
    }
    return 0;
}
```

### Example 1.4 — The 4 compilation stages in the terminal
```bash
gcc -E prog.c -o prog.i      # 1. preprocess  (expand #include, #define)
gcc -S prog.i -o prog.s      # 2. compile     (C -> assembly)
gcc -c prog.s -o prog.o      # 3. assemble    (assembly -> object file)
gcc prog.o -o prog           # 4. link        (object + libc -> executable)
./prog
```

### Example 1.5 — The `printf` type-mismatch trap
```c
#include <stdio.h>
int main(void) {
    double score = 85.5;
    // printf("%d\n", score);     // WRONG: undefined behaviour (garbage output)
    printf("%f\n", score);        // correct: 85.500000
    printf("%.1f\n", score);      // 85.5
    printf("%d\n", (int)score);   // 85  (explicit cast if you really want an int)
    return 0;
}
```

---

## 2. Variables, Data Types, Constants

| Type | Size (typ.) | Format |
|---|---|---|
| char | 1 | %c / %d |
| int | 4 | %d |
| long | 4 or 8 | %ld |
| float | 4 (~7 digits) | %f |
| double | 8 (~15 digits) | %lf (%f in printf) |
| size_t / sizeof | — | %zu |

- Sizes are implementation-defined → use `sizeof`; limits in `<limits.h>`, `<float.h>`.
- Modifiers: `signed`, `unsigned`, `short`, `long`.
- Declaration `int a;` vs initialisation `int a = 5;`
- **3 ways to make constants:** `#define N 100` (no type, no scope, **no `=` or `;`**), `const int N = 100;` (typed, preferred), `enum { N = 100 };`
- Changing a `const` → compile error.
- `float` literal needs `f` suffix: `3.75f`.

### Example 2.1 — Sizes and limits on *your* machine
```c
#include <stdio.h>
#include <limits.h>
#include <float.h>
int main(void) {
    printf("char   = %zu byte(s)\n", sizeof(char));
    printf("short  = %zu\n", sizeof(short));
    printf("int    = %zu\n", sizeof(int));
    printf("long   = %zu\n", sizeof(long));       // 8 on 64-bit Linux, 4 on 64-bit Windows
    printf("float  = %zu\n", sizeof(float));
    printf("double = %zu\n", sizeof(double));
    printf("INT_MAX  = %d\n", INT_MAX);           // 2147483647
    printf("INT_MIN  = %d\n", INT_MIN);
    printf("UINT_MAX = %u\n", UINT_MAX);
    printf("FLT_DIG = %d, DBL_DIG = %d\n", FLT_DIG, DBL_DIG);   // 6, 15
    return 0;
}
```

### Example 2.2 — Declaration vs initialisation, and modifiers
```c
#include <stdio.h>
int main(void) {
    int a;                     // declaration only: value is GARBAGE until assigned
    int b = 5;                 // declaration + initialisation
    a = 10;                    // assignment
    unsigned int u = 4000000000u;      // fits only because it is unsigned
    short s = 32767;
    long long big = 9000000000LL;
    char c = 'A';
    printf("a=%d b=%d u=%u s=%d big=%lld\n", a, b, u, s, big);
    printf("c as char = %c, as int = %d\n", c, c);       // A, 65
    printf("%c\n", c + 1);                               // B
    return 0;
}
```

### Example 2.3 — The three kinds of constants
```c
#include <stdio.h>
#define PI 3.14159                  // macro: no type, no '=', no ';'
#define SQUARE(x) ((x) * (x))       // macro with argument (note the parentheses)
enum { MAX_STUDENTS = 60 };         // enum constant: integer only

int main(void) {
    const int DAYS = 7;             // typed constant (preferred)
    // DAYS = 8;                    // COMPILE ERROR: assignment of read-only variable
    float f = 3.75f;                // 'f' suffix, otherwise 3.75 is a double
    double area = PI * SQUARE(2.0);
    printf("area=%.3f days=%d max=%d f=%.2f\n", area, DAYS, MAX_STUDENTS, f);
    return 0;
}
```
Why the extra parentheses in `SQUARE`? `SQUARE(1+2)` without them expands to `1+2*1+2 = 5`, not `9`.

### Example 2.4 — Float precision
```c
#include <stdio.h>
int main(void) {
    float  f = 0.1f;
    double d = 0.1;
    printf("%.20f\n", f);          // 0.10000000149011611938
    printf("%.20f\n", d);          // 0.10000000000000000555
    printf("%d\n", 0.1 + 0.2 == 0.3);   // 0  (never compare floats with ==)
    return 0;
}
```

---

## 3. Operators

- Categories: arithmetic `+ - * / %`, relational, logical `&& || !`, bitwise `& | ^ ~ << >>`, assignment (`+=` etc.), misc (`++ -- ?: sizeof & * ,`).
- **Integer division truncates:** `7/2 = 3`, `7%2 = 1`. Cast for real result: `(double)a / b`.
- Relational/logical results are `1` or `0`.
- Bitwise (a=12, b=10): `&`=8, `|`=14, `^`=6, `<<1`=24 (×2), `>>1`=6 (÷2).
- **Even test:** `(n & 1) == 0` (parentheses needed, since `==` binds tighter than `&`). Power of 2: `n > 0 && (n & (n-1)) == 0`.
- `i++` uses value then increments; `++i` increments then uses.
- **Precedence (high → low):** `() [] . ->` → unary (`! ~ ++ -- sizeof & *`) → `* / %` → `+ -` → `<< >>` → `< <= > >=` → `== !=` → `&` → `^` → `|` → `&&` → `||` → `?:` → `=` family.
- Associativity: most left→right; unary, `?:`, assignment are right→left.
- `=` assign, `==` compare, `===` does **not** exist in C. Bug: `if (x = 5)` is always true.
- Ternary: `max = (a > b) ? a : b;`

### Example 3.1 — Integer division vs real division
```c
#include <stdio.h>
int main(void) {
    int a = 7, b = 2;
    printf("%d %d\n", a / b, a % b);              // 3 1
    printf("%.2f\n", (double)a / b);              // 3.50  (cast BEFORE dividing)
    printf("%.2f\n", (double)(a / b));            // 3.00  (cast too late: already truncated)
    printf("%.2f\n", a / 2.0);                    // 3.50  (a double operand promotes the other)
    printf("%d\n", -7 / 2);                       // -3 (truncates toward zero)
    printf("%d\n", -7 % 2);                       // -1 (sign follows the dividend)
    return 0;
}
```

### Example 3.2 — Bitwise operators with a = 12, b = 10
```c
#include <stdio.h>
int is_pow2(unsigned n) { return n > 0 && (n & (n - 1)) == 0; }

int main(void) {
    int a = 12, b = 10;            // 1100 and 1010
    printf("a & b  = %d\n", a & b);    // 1000 = 8
    printf("a | b  = %d\n", a | b);    // 1110 = 14
    printf("a ^ b  = %d\n", a ^ b);    // 0110 = 6
    printf("~a     = %d\n", ~a);       // -13 (two's complement)
    printf("a << 1 = %d\n", a << 1);   // 24  (x2)
    printf("a >> 1 = %d\n", a >> 1);   // 6   (/2)

    for (int n = 1; n <= 8; n++)
        printf("%d is %s\n", n, (n & 1) == 0 ? "even" : "odd");

    unsigned tests[] = {1, 6, 16, 18, 64};
    for (int i = 0; i < 5; i++)
        printf("%u power of 2? %d\n", tests[i], is_pow2(tests[i]));
    return 0;
}
```

### Example 3.3 — Precedence trap (`&` vs `==`)
```c
#include <stdio.h>
int main(void) {
    int n = 6;                              // 6 is even
    printf("%d\n", (n & 1) == 0);           // 1  (correct: parentheses)
    printf("%d\n", n & 1 == 0);             // 0  (parsed as n & (1 == 0) -> n & 0)
    printf("%d\n", 2 + 3 * 4);              // 14
    printf("%d\n", (2 + 3) * 4);            // 20
    printf("%d\n", 1 << 2 + 1);             // 8  (+ binds tighter than <<)  -> 1 << 3
    return 0;
}
```

### Example 3.4 — `i++` vs `++i`
```c
#include <stdio.h>
int main(void) {
    int i = 5;
    int j = i++;          // j gets 5, THEN i becomes 6
    printf("j=%d i=%d\n", j, i);    // j=5 i=6
    int k = ++i;          // i becomes 7, THEN k gets 7
    printf("k=%d i=%d\n", k, i);    // k=7 i=7
    int x = 10;
    x += 5;  x -= 3;  x *= 2;  x /= 4;  x %= 5;
    printf("x=%d\n", x);            // 10->15->12->24->6->1
    return 0;
}
```

### Example 3.5 — `=` vs `==`, logical short-circuit, ternary
```c
#include <stdio.h>
int main(void) {
    int x = 0;
    if (x = 5) printf("BUG: assigned 5, so this is ALWAYS true (x is now %d)\n", x);
    x = 0;
    if (x == 5) printf("never printed\n");

    int a = 3, b = 9;
    int max = (a > b) ? a : b;
    printf("max = %d\n", max);                      // 9

    int calls = 0;
    if (a > 100 && ++calls) { }                     // && short-circuits: ++calls never runs
    printf("calls = %d\n", calls);                  // 0
    printf("%d %d %d\n", 5 > 3, 5 < 3, !0);        // 1 0 1
    return 0;
}
```

---

## 4. Decision Control

- `if / else if / else`: first true branch runs, rest skipped. Non-zero = true.
- `switch` works on **integer types only** (int, char, enum). Not float, not strings.
- No `break` → **fall-through**. Example: x=2 with no breaks prints `two three done`.
- Always include `default`.
- **Dangling else:** `else` binds to the nearest `if` → use braces.
- Ternary: `abs = (x >= 0) ? x : -x;` Nested for max of 3.
- Grade ladder: check highest threshold first (>=80, >=70, ...).

### Example 4.1 — Grade ladder
```c
#include <stdio.h>
char grade(int marks) {
    if (marks >= 80) return 'A';        // highest threshold FIRST
    else if (marks >= 70) return 'B';
    else if (marks >= 60) return 'C';
    else if (marks >= 50) return 'D';
    else return 'F';
}
int main(void) {
    int tests[] = {95, 80, 79, 65, 50, 49};
    for (int i = 0; i < 6; i++)
        printf("%d -> %c\n", tests[i], grade(tests[i]));
    return 0;
}
```
If you wrote `>= 50` first, **everyone ≥ 50 would get D** — that is the classic bug.

### Example 4.2 — `switch` calculator (with `break` and `default`)
```c
#include <stdio.h>
int main(void) {
    double a, b;
    char op;
    // input: 10 / 4
    if (scanf("%lf %c %lf", &a, &op, &b) != 3) return 1;
    switch (op) {
        case '+': printf("%.2f\n", a + b); break;
        case '-': printf("%.2f\n", a - b); break;
        case '*': printf("%.2f\n", a * b); break;
        case '/':
            if (b == 0) printf("Error: divide by zero\n");
            else printf("%.2f\n", a / b);
            break;
        default: printf("Unknown operator '%c'\n", op);
    }
    return 0;
}
```

### Example 4.3 — Fall-through (missing `break`)
```c
#include <stdio.h>
int main(void) {
    int x = 2;
    switch (x) {                   // no breaks: once a case matches, ALL below run
        case 1: printf("one ");
        case 2: printf("two ");
        case 3: printf("three ");
    }
    printf("done\n");              // two three done

    // Intentional fall-through: grouped cases (days -> type)
    int day = 6;
    switch (day) {
        case 6:
        case 7:  printf("Weekend\n"); break;
        default: printf("Weekday\n");
    }
    return 0;
}
```

### Example 4.4 — Dangling else
```c
#include <stdio.h>
int main(void) {
    int a = 1, b = 0;

    if (a)
        if (b) printf("both\n");
        else   printf("else belongs to the INNER if\n");   // this prints!

    if (a) {
        if (b) printf("both\n");
    } else {
        printf("else belongs to the OUTER if\n");           // braces fix the intent
    }
    return 0;
}
```

### Example 4.5 — Ternary: absolute value and max of 3
```c
#include <stdio.h>
int main(void) {
    int x = -8;
    int abs = (x >= 0) ? x : -x;
    printf("abs = %d\n", abs);                                  // 8

    int a = 4, b = 11, c = 7;
    int max = (a > b) ? ((a > c) ? a : c) : ((b > c) ? b : c);  // nested ternary
    printf("max = %d\n", max);                                  // 11
    return 0;
}
```

### Example 4.6 — Leap year (combined logical conditions)
```c
#include <stdio.h>
int is_leap(int y) { return (y % 4 == 0 && y % 100 != 0) || (y % 400 == 0); }
int main(void) {
    int years[] = {1900, 2000, 2024, 2026};
    for (int i = 0; i < 4; i++)
        printf("%d: %s\n", years[i], is_leap(years[i]) ? "leap" : "not leap");
    return 0;
}
```

---

## 5. Loops

| | for | while | do-while |
|---|---|---|---|
| Check | before | before | **after** |
| Min runs | 0 | 0 | **1** |
| Use | known count | unknown count | run at least once (input validation) |

- `break` exits innermost loop/switch; `continue` skips to next iteration.
- Infinite loop: `while (1) { ... }` (embedded main loop).
- Sum 1..N = N(N+1)/2. Factorial overflows `int` at 13! → use `long long`.
- Nested loops (tables): outer = rows, inner = columns, O(n²).
- Example: first number divisible by 7 and 11 in 1–100 → **77**.

### Example 5.1 — Three loops, same job (print 1..5)
```c
#include <stdio.h>
int main(void) {
    for (int i = 1; i <= 5; i++) printf("%d ", i);
    printf("\n");

    int j = 1;
    while (j <= 5) { printf("%d ", j); j++; }
    printf("\n");

    int k = 1;
    do { printf("%d ", k); k++; } while (k <= 5);
    printf("\n");

    int z = 10;
    do { printf("do-while runs once even though z>5 is false\n"); } while (z < 5);
    while (z < 5) { printf("while never runs\n"); }
    return 0;
}
```

### Example 5.2 — Sum 1..N (loop vs formula) and digit reversal
```c
#include <stdio.h>
int main(void) {
    int N = 100, sum = 0;
    for (int i = 1; i <= N; i++) sum += i;
    printf("loop = %d, formula = %d\n", sum, N * (N + 1) / 2);   // 5050 5050

    int n = 12345, rev = 0;
    while (n > 0) {
        rev = rev * 10 + n % 10;     // take last digit, append to rev
        n /= 10;                     // drop last digit
    }
    printf("reversed = %d\n", rev);  // 54321
    return 0;
}
```

### Example 5.3 — `do-while` input validation
```c
#include <stdio.h>
int main(void) {
    int n;
    // input: 0 15 5
    do {
        printf("Enter a number 1-10: ");
        if (scanf("%d", &n) != 1) return 1;          // stop on EOF / bad input
        if (n < 1 || n > 10) printf("  invalid!\n");
    } while (n < 1 || n > 10);
    printf("\nAccepted: %d\n", n);
    return 0;
}
```

### Example 5.4 — `break` and `continue`; first multiple of 7 and 11
```c
#include <stdio.h>
int main(void) {
    for (int i = 1; i <= 100; i++) {
        if (i % 7 == 0 && i % 11 == 0) {
            printf("First multiple of 7 and 11: %d\n", i);    // 77
            break;                                            // leave the loop
        }
    }
    for (int i = 1; i <= 10; i++) {
        if (i % 2 == 0) continue;           // skip even numbers
        printf("%d ", i);                   // 1 3 5 7 9
    }
    printf("\n");

    int count = 0;
    while (1) {                             // infinite loop with a manual exit
        if (++count == 3) break;
    }
    printf("count = %d\n", count);          // 3
    return 0;
}
```

### Example 5.5 — Factorial overflow at 13!
```c
#include <stdio.h>
#include <limits.h>
int main(void) {
    long long g = 1;                       // (an int would hit signed overflow = UB at 13!)
    for (int i = 1; i <= 15; i++) {
        g *= i;
        if (i >= 11)
            printf("%2d! = %-14lld %s\n", i, g, g > INT_MAX ? "OVERFLOWS int" : "fits in int");
    }
    // 12! = 479,001,600 <= INT_MAX (2,147,483,647)
    // 13! = 6,227,020,800  > INT_MAX  -> use long long (safe up to 20!)
    return 0;
}
```

### Example 5.6 — Nested loops: multiplication table and star pyramid
```c
#include <stdio.h>
int main(void) {
    for (int r = 1; r <= 5; r++) {            // outer = rows
        for (int c = 1; c <= 5; c++)          // inner = columns
            printf("%4d", r * c);
        printf("\n");
    }
    printf("\n");
    for (int row = 1; row <= 4; row++) {
        for (int sp = 0; sp < 4 - row; sp++) printf(" ");
        for (int st = 0; st < 2 * row - 1; st++) printf("*");
        printf("\n");
    }
    return 0;
}
```

---

## 6. Functions

- Parts: **prototype** (declaration), **definition**, **call**; **parameter** (in definition) vs **argument** (at call).
- `return_type name(params) { body }`; `void` = no return.
- **Pass-by-value:** function gets a copy → `try_swap(a, b)` does NOT change originals. Use pointers to swap.
- **Scope:** file (global), block (local), inner block.
- Headers: `stdio.h` (printf, scanf, fgets), `math.h` (sqrt, pow, fabs, sin, log; link `-lm`), `string.h` (strlen, strcpy, strcmp, strcat, strstr), `stdlib.h` (malloc, free, atoi, rand, exit, qsort), `ctype.h` (isalpha, isdigit, toupper, tolower), `time.h`.
- Remove newline after fgets: `s[strcspn(s, "\n")] = '\0';`
- Prime test: loop `i` up to `sqrt(n)`. °F = °C × 9/5 + 32.

### Example 6.1 — Prototype, definition, call
```c
#include <stdio.h>

int add(int a, int b);                 // PROTOTYPE (declaration): a, b are parameters
void greet(const char *name);

int main(void) {
    int s = add(3, 4);                 // CALL: 3 and 4 are arguments
    greet("Ada");
    printf("s = %d\n", s);
    return 0;
}

int add(int a, int b) { return a + b; }                     // DEFINITION
void greet(const char *name) { printf("Hello, %s!\n", name); }   // void: no return value
```

### Example 6.2 — Pass-by-value: why `try_swap` fails and `swap` works
```c
#include <stdio.h>
void try_swap(int a, int b) { int t = a; a = b; b = t; }      // swaps COPIES only
void swap(int *a, int *b)   { int t = *a; *a = *b; *b = t; }  // swaps the originals

int main(void) {
    int x = 1, y = 2;
    try_swap(x, y);
    printf("after try_swap: x=%d y=%d\n", x, y);    // x=1 y=2  (unchanged!)
    swap(&x, &y);
    printf("after swap:     x=%d y=%d\n", x, y);    // x=2 y=1
    return 0;
}
```

### Example 6.3 — Scope: global, local, inner block, `static`
```c
#include <stdio.h>
int g = 100;                            // file (global) scope

void counter(void) {
    static int calls = 0;               // keeps its value between calls
    calls++;
    printf("counter called %d time(s)\n", calls);
}

int main(void) {
    int x = 1;                          // block (local) scope
    {
        int x = 2;                      // inner block SHADOWS the outer x
        printf("inner x = %d, g = %d\n", x, g);   // 2, 100
    }
    printf("outer x = %d\n", x);                  // 1
    counter(); counter(); counter();
    return 0;
}
```

### Example 6.4 — Prime test (needs `-lm`) and temperature conversion
```c
#include <stdio.h>
#include <math.h>                       // gcc ... -lm

int is_prime(int n) {
    if (n < 2) return 0;
    for (int i = 2; i <= (int)sqrt(n); i++)       // only up to sqrt(n)
        if (n % i == 0) return 0;
    return 1;
}
double c_to_f(double c) { return c * 9.0 / 5.0 + 32.0; }   // 9/5 in ints would be 1!

int main(void) {
    for (int n = 1; n <= 30; n++)
        if (is_prime(n)) printf("%d ", n);
    printf("\n");
    printf("37 C = %.1f F\n", c_to_f(37));              // 98.6
    printf("sqrt(144)=%.0f pow(2,10)=%.0f fabs(-3.5)=%.1f\n", sqrt(144), pow(2, 10), fabs(-3.5));
    return 0;
}
```

### Example 6.5 — `ctype.h` and `string.h` helpers
```c
#include <stdio.h>
#include <ctype.h>
#include <string.h>

void to_upper(char *s) { for (; *s; s++) *s = (char)toupper((unsigned char)*s); }

int main(void) {
    char word[] = "Hello World 123";
    int letters = 0, digits = 0;
    for (int i = 0; word[i]; i++) {
        if (isalpha((unsigned char)word[i])) letters++;
        else if (isdigit((unsigned char)word[i])) digits++;
    }
    printf("letters=%d digits=%d len=%zu\n", letters, digits, strlen(word));  // 10 3 15
    to_upper(word);
    printf("%s\n", word);                    // HELLO WORLD 123
    return 0;
}
```

### Example 6.6 — Function returning multiple results (via pointers)
```c
#include <stdio.h>
void min_max(const int *a, int n, int *min, int *max) {
    *min = *max = a[0];
    for (int i = 1; i < n; i++) {
        if (a[i] < *min) *min = a[i];
        if (a[i] > *max) *max = a[i];
    }
}
int main(void) {
    int data[] = {7, 2, 9, -4, 5};
    int lo, hi;
    min_max(data, 5, &lo, &hi);
    printf("min=%d max=%d\n", lo, hi);       // -4 9
    return 0;
}
```

---

## 7. Recursion

- Needs **base case** + **recursive case** that moves toward the base.
- No base case → infinite recursion → **stack overflow**.
- Each call = one **stack frame** (locals, params, return address).
- **Tail recursion:** recursive call is last action; GCC may optimise with `-O2`, C doesn't guarantee it.
```c
long long factorial(int n){ if(n<=1) return 1; return n*factorial(n-1); }
int fib(int n){ if(n==0) return 0; if(n==1) return 1; return fib(n-1)+fib(n-2); }
void hanoi(int n,char s,char a,char d){ if(!n) return;
  hanoi(n-1,s,d,a); printf("Move %d: %c->%c\n",n,s,d); hanoi(n-1,a,s,d); }
```
| Function | Time | Stack |
|---|---|---|
| factorial | O(n) | O(n) |
| fib naive | **O(2ⁿ)** | O(n) |
| fib memoised | O(n) | O(n) |
| fast power | O(log n) | O(log n) |

- Hanoi minimum moves = **2ⁿ − 1** (7 for 3 disks).
- Digit sum: `n==0 → 0; else n%10 + digit_sum(n/10)`.
- Fast power: even e → `power(b*b, e/2)`; odd e → `b*power(b, e-1)`.
- Uses: merge sort/quicksort, tree traversal, backtracking (N-Queens, Sudoku), recursive-descent parsers.

### Example 7.1 — Factorial: trace + tail-recursive version
```c
#include <stdio.h>

long long factorial(int n) {
    if (n <= 1) return 1;                 // BASE CASE
    return n * factorial(n - 1);          // RECURSIVE CASE (moves toward base)
}
// Tail-recursive: the recursive call is the LAST thing; result carried in 'acc'
long long fact_tail(int n, long long acc) {
    if (n <= 1) return acc;
    return fact_tail(n - 1, acc * n);
}
int main(void) {
    printf("5! = %lld\n", factorial(5));         // 120
    printf("5! = %lld\n", fact_tail(5, 1));      // 120
    printf("20! = %lld\n", factorial(20));       // 2432902008176640000 (max for long long)
    /* Trace factorial(3):
       factorial(3) -> 3 * factorial(2)
                         -> 2 * factorial(1)
                                -> 1            (base case)
                         <- 2 * 1 = 2
       <- 3 * 2 = 6                                                      */
    return 0;
}
```

### Example 7.2 — Fibonacci: naive vs memoised
```c
#include <stdio.h>

int fib(int n) {                                  // naive: O(2^n)
    if (n == 0) return 0;
    if (n == 1) return 1;
    return fib(n - 1) + fib(n - 2);
}

static long long memo[91];                        // 0 = "not computed yet"
long long fib_memo(int n) {                       // memoised: O(n)
    if (n <= 1) return n;
    if (memo[n]) return memo[n];
    return memo[n] = fib_memo(n - 1) + fib_memo(n - 2);
}

int main(void) {
    for (int i = 0; i <= 10; i++) printf("%d ", fib(i));   // 0 1 1 2 3 5 8 13 21 34 55
    printf("\n");
    printf("fib_memo(50) = %lld\n", fib_memo(50));          // 12586269025 (instant)
    // fib(50) with the naive version would take minutes!
    return 0;
}
```

### Example 7.3 — Tower of Hanoi (3 disks → 7 moves)
```c
#include <stdio.h>

static int moves = 0;
void hanoi(int n, char src, char aux, char dst) {
    if (n == 0) return;
    hanoi(n - 1, src, dst, aux);                    // 1. move n-1 disks out of the way
    printf("Move disk %d: %c -> %c\n", n, src, dst);// 2. move the biggest disk
    moves++;
    hanoi(n - 1, aux, src, dst);                    // 3. put the n-1 disks on top of it
}
int main(void) {
    hanoi(3, 'A', 'B', 'C');
    printf("Total moves = %d (2^3 - 1 = 7)\n", moves);
    return 0;
}
```

### Example 7.4 — Digit sum, fast power, GCD, string reversal
```c
#include <stdio.h>
#include <string.h>

int digit_sum(int n) { return n == 0 ? 0 : n % 10 + digit_sum(n / 10); }

long long power(long long b, int e) {                // O(log n)
    if (e == 0) return 1;
    if (e % 2 == 0) return power(b * b, e / 2);      // even exponent
    return b * power(b, e - 1);                      // odd exponent
}
int gcd(int a, int b) { return b == 0 ? a : gcd(b, a % b); }     // Euclid

void reverse(char *s, int lo, int hi) {
    if (lo >= hi) return;
    char t = s[lo]; s[lo] = s[hi]; s[hi] = t;
    reverse(s, lo + 1, hi - 1);
}
int main(void) {
    printf("digit_sum(9875) = %d\n", digit_sum(9875));    // 29
    printf("power(2,10)     = %lld\n", power(2, 10));     // 1024
    printf("power(3,13)     = %lld\n", power(3, 13));     // 1594323
    printf("gcd(48,18)      = %d\n", gcd(48, 18));        // 6
    char s[] = "recursion";
    reverse(s, 0, (int)strlen(s) - 1);
    printf("reversed        = %s\n", s);                  // noisrucer
    return 0;
}
```

### Example 7.5 — Stack overflow (DO NOT run) and binary search
```c
#include <stdio.h>

// BAD: no base case -> every call adds a stack frame until the stack is exhausted
// int boom(int n) { return boom(n + 1); }      // segfault: stack overflow

// GOOD: recursion with a proper base case
int bsearch_rec(const int *a, int lo, int hi, int key) {
    if (lo > hi) return -1;                        // base case: not found
    int mid = lo + (hi - lo) / 2;
    if (a[mid] == key) return mid;                 // base case: found
    if (key < a[mid]) return bsearch_rec(a, lo, mid - 1, key);
    return bsearch_rec(a, mid + 1, hi, key);
}
int main(void) {
    int a[] = {2, 5, 8, 12, 16, 23, 38, 56};
    printf("index of 23 = %d\n", bsearch_rec(a, 0, 7, 23));   // 5
    printf("index of 7  = %d\n", bsearch_rec(a, 0, 7, 7));    // -1
    return 0;
}
```

---

## 8. Pointers & Arrays

- `int *p = &x;` `&` = address-of, `*` = dereference. `*p = 100;` changes `x`.
- `NULL` pointer: deref = undefined behaviour. **Uninitialised pointer** (`int *p; *p = 42;`) = UB/segfault. **Dangling pointer** = points to freed/out-of-scope memory.
- **Pointer arithmetic** moves by *elements*: `p + 1` = next element.
- `arr[i]` ≡ `*(arr + i)`; `matrix[i][j]` ≡ `*(*(matrix + i) + j)`.
- **Array decay:** array name → pointer to first element (except with `sizeof` and `&`).
- Arrays passed to functions as pointers → **pass size separately**.
- Length of stack array: `sizeof(a) / sizeof(a[0])`.
- C string = `char` array ending with `'\0'`.
- `strncpy` is the safer copy. `strcmp` returns 0 if equal. `strstr` returns pointer or NULL.
- Swap:
```c
void swap(int *a,int *b){ int t=*a; *a=*b; *b=t; }   // call swap(&x,&y)
```
- Heap: `int *q = malloc(sizeof(int)); if(q){ *q=42; free(q); }`
- Tool: **Valgrind** finds leaks, dangling/uninitialised reads.

### Example 8.1 — `&`, `*`, and changing a variable through a pointer
```c
#include <stdio.h>
int main(void) {
    int x = 10;
    int *p = &x;                        // p holds the ADDRESS of x
    printf("x=%d  *p=%d\n", x, *p);     // 10 10
    printf("&x == p ? %d\n", &x == p);  // 1
    *p = 100;                           // write THROUGH the pointer
    printf("x=%d\n", x);                // 100
    int **pp = &p;                      // pointer to pointer
    **pp = 7;
    printf("x=%d\n", x);                // 7

    int *safe = NULL;                   // always initialise pointers
    if (safe == NULL) printf("safe is NULL: do not dereference it\n");
    return 0;
}
```

### Example 8.2 — Pointer arithmetic and `arr[i] ≡ *(arr+i)`
```c
#include <stdio.h>
int main(void) {
    int a[5] = {10, 20, 30, 40, 50};
    int *p = a;                              // array decays to &a[0]
    printf("%d %d %d\n", *p, *(p + 1), *(p + 4));   // 10 20 50
    printf("%d %d\n", a[2], *(a + 2));              // 30 30  (identical)
    printf("%d\n", 2[a]);                           // 30     (legal, but silly)
    p += 2;                                         // moves 2 ELEMENTS (8 bytes)
    printf("*p = %d, index = %td\n", *p, p - a);    // 30, 2
    for (int *q = a; q < a + 5; q++) printf("%d ", *q);
    printf("\n");
    return 0;
}
```

### Example 8.3 — 2D arrays: `matrix[i][j] ≡ *(*(matrix+i)+j)`
```c
#include <stdio.h>
int main(void) {
    int m[2][3] = { {1, 2, 3}, {4, 5, 6} };
    printf("%d %d\n", m[1][2], *(*(m + 1) + 2));    // 6 6
    int sum = 0;
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 3; j++)
            sum += *(*(m + i) + j);
    printf("sum = %d\n", sum);                      // 21
    return 0;
}
```

### Example 8.4 — Array decay: `sizeof` inside a function lies
```c
#include <stdio.h>
void show(int arr[], int n) {                       // 'arr' is really int*
    printf("inside:  sizeof(arr) = %zu (a POINTER), n = %d\n", sizeof(arr), n);
    for (int i = 0; i < n; i++) printf("%d ", arr[i]);
    printf("\n");
}
int main(void) {
    int a[] = {3, 1, 4, 1, 5, 9};
    int n = sizeof(a) / sizeof(a[0]);               // only valid HERE (real array)
    printf("outside: sizeof(a) = %zu, n = %d\n", sizeof(a), n);   // 24, 6
    show(a, n);                                     // pass the size separately
    return 0;
}
```
(gcc will warn about `sizeof(arr)` in `show`; that warning is exactly the point.)

### Example 8.5 — Strings: manual length + library functions
```c
#include <stdio.h>
#include <string.h>

size_t my_strlen(const char *s) {
    const char *p = s;
    while (*p) p++;                 // walk until '\0'
    return (size_t)(p - s);
}
int main(void) {
    char s[] = "hello";             // 6 bytes: h e l l o \0
    printf("sizeof=%zu strlen=%zu mine=%zu\n", sizeof s, strlen(s), my_strlen(s));  // 6 5 5

    char dst[20];
    strncpy(dst, "copy me", sizeof dst - 1);
    dst[sizeof dst - 1] = '\0';                 // strncpy may not terminate: do it yourself
    strcat(dst, "!");
    printf("%s\n", dst);                        // copy me!

    printf("%d\n", strcmp("apple", "apple"));           // 0 means equal
    printf("%d\n", strcmp("apple", "banana") < 0);      // 1 (apple comes first)

    const char *hay = "find the needle here";
    const char *hit = strstr(hay, "needle");            // pointer into hay, or NULL
    if (hit) printf("found at index %td: %s\n", hit - hay, hit);   // 9: needle here
    else     printf("not found (strstr returned NULL)\n");
    return 0;
}
```

### Example 8.6 — Dynamic memory: `malloc`, `free`, `calloc`, `realloc`
```c
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    int n = 5;
    int *arr = malloc(n * sizeof *arr);        // uninitialised heap block
    if (arr == NULL) { perror("malloc"); return 1; }    // ALWAYS check
    for (int i = 0; i < n; i++) arr[i] = (i + 1) * (i + 1);

    int *bigger = realloc(arr, 8 * sizeof *arr);        // grow the block
    if (bigger == NULL) { free(arr); return 1; }
    arr = bigger;
    for (int i = n; i < 8; i++) arr[i] = (i + 1) * (i + 1);
    for (int i = 0; i < 8; i++) printf("%d ", arr[i]);  // 1 4 9 16 25 36 49 64
    printf("\n");
    free(arr);
    arr = NULL;                                         // avoid a dangling pointer

    int *zeros = calloc(4, sizeof *zeros);              // zero-initialised
    if (zeros) { printf("zeros[3] = %d\n", zeros[3]); free(zeros); }   // 0
    return 0;
}
```

### Example 8.7 — Dangling and uninitialised pointers (what NOT to do)
```c
#include <stdio.h>
#include <stdlib.h>

int *bad(void) {
    int local = 42;
    return &local;               // BUG: local dies when bad() returns -> dangling pointer
}
int main(void) {
    // int *p; *p = 42;          // BUG: uninitialised pointer -> crash / UB
    // int *q = NULL; *q = 1;    // BUG: NULL dereference -> segfault

    int *h = malloc(sizeof(int));
    if (!h) return 1;
    *h = 42;
    free(h);
    // printf("%d", *h);         // BUG: use-after-free (dangling)
    h = NULL;                    // the fix: NULL it right after free
    printf("safe\n");
    (void)bad;                   // silence 'unused' warning
    return 0;
}
```
Catch these with: `valgrind --leak-check=full ./prog` or `gcc -fsanitize=address -g prog.c`.

---

## 9. User-Defined Types

- **struct:** members have separate storage. `.` for variable, `->` for pointer (`p->x` ≡ `(*p).x`).
- **union:** all members share memory; `sizeof` = largest member; read only the last-written member.
- **enum:** named integer constants; default starts at 0, +1 each; explicit values allowed (`MON=1`).
- **typedef:** alias. Linked-list node:
```c
typedef struct Node { int data; struct Node *next; } Node;
```
- **Structure padding:** compiler adds filler bytes for alignment; `sizeof(struct)` can exceed sum of members. `{char; int; char}` → likely 12 B; reorder `{char; char; int}` → 8 B. Order members largest → smallest.
- Union trick: `union { float f; unsigned bits; }` with `f = 1.0f` → bits `0x3F800000`.
- Enum FSM: `(TrafficLight)((cur + 1) % 3)`.
- Distance: `sqrt(dx*dx + dy*dy)`.

### Example 9.1 — struct: `.` vs `->`, array of structs, passing to functions
```c
#include <stdio.h>
#include <string.h>

typedef struct {
    char name[30];
    int roll;
    float gpa;
} Student;

void print_student(const Student *s) {                 // pass pointer: no big copy
    printf("%-8s roll=%d gpa=%.2f\n", s->name, s->roll, s->gpa);
}
void bump_gpa(Student *s, float d) { s->gpa += d; }    // -> modifies the original

int main(void) {
    Student a = { "Ada", 1, 3.5f };
    Student *p = &a;
    printf("%d %d\n", a.roll, p->roll);                // 1 1    (p->roll ≡ (*p).roll)
    bump_gpa(&a, 0.25f);
    print_student(&a);                                 // gpa = 3.75

    Student cls[3] = { {"Bob", 2, 3.0f}, {"Cy", 3, 2.5f}, {"Di", 4, 3.9f} };
    int best = 0;
    for (int i = 1; i < 3; i++) if (cls[i].gpa > cls[best].gpa) best = i;
    printf("Top: %s\n", cls[best].name);               // Di

    strcpy(a.name, "Ada L.");                          // strings need strcpy, not '='
    print_student(&a);
    return 0;
}
```

### Example 9.2 — Distance between two points (struct + `sqrt`, link `-lm`)
```c
#include <stdio.h>
#include <math.h>
typedef struct { double x, y; } Point;

double dist(Point a, Point b) {
    double dx = a.x - b.x, dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
}
int main(void) {
    Point p = {0, 0}, q = {3, 4};
    printf("distance = %.1f\n", dist(p, q));     // 5.0
    return 0;
}
```

### Example 9.3 — union: shared memory
```c
#include <stdio.h>
union Data { int i; float f; char c; };

int main(void) {
    union Data d;
    printf("sizeof(union) = %zu\n", sizeof d);      // 4 (= largest member, float/int)
    d.i = 65;
    printf("as int  = %d\n", d.i);                  // 65
    printf("as char = %c\n", d.c);                  // 'A' on little-endian (low byte first)
    d.f = 3.5f;                                     // overwrites i and c
    printf("as float = %.1f (i is now garbage: %d)\n", d.f, d.i);
    return 0;
}
```

### Example 9.4 — Union trick: peek at a float's bits
```c
#include <stdio.h>
int main(void) {
    union { float f; unsigned int bits; } u;
    u.f = 1.0f;
    printf("1.0f  -> 0x%08X\n", u.bits);     // 0x3F800000
    u.f = -2.0f;
    printf("-2.0f -> 0x%08X\n", u.bits);     // 0xC0000000
    return 0;
}
```

### Example 9.5 — enum: default values, explicit values, and a state machine
```c
#include <stdio.h>

enum Day { SUN, MON, TUE, WED, THU, FRI, SAT };           // 0..6
enum Month { JAN = 1, FEB, MAR };                          // 1,2,3
typedef enum { RED, GREEN, YELLOW } TrafficLight;

const char *name(TrafficLight t) {
    switch (t) {
        case RED:    return "RED (stop)";
        case GREEN:  return "GREEN (go)";
        case YELLOW: return "YELLOW (slow)";
    }
    return "?";
}
int main(void) {
    printf("MON=%d SAT=%d FEB=%d MAR=%d\n", MON, SAT, FEB, MAR);   // 1 6 2 3
    TrafficLight cur = RED;
    for (int i = 0; i < 6; i++) {
        printf("%s\n", name(cur));
        cur = (TrafficLight)((cur + 1) % 3);               // RED->GREEN->YELLOW->RED...
    }
    return 0;
}
```

### Example 9.6 — typedef + linked list (build, print, free)
```c
#include <stdio.h>
#include <stdlib.h>

typedef struct Node { int data; struct Node *next; } Node;   // 'struct Node' needed inside

Node *push_front(Node *head, int v) {
    Node *n = malloc(sizeof *n);
    if (!n) exit(1);
    n->data = v;
    n->next = head;
    return n;                                   // new head
}
void print_list(const Node *h) {
    for (; h; h = h->next) printf("%d -> ", h->data);
    printf("NULL\n");
}
void free_list(Node *h) {
    while (h) { Node *nx = h->next; free(h); h = nx; }
}
int main(void) {
    Node *head = NULL;
    for (int i = 1; i <= 4; i++) head = push_front(head, i * 10);
    print_list(head);                           // 40 -> 30 -> 20 -> 10 -> NULL
    free_list(head);
    return 0;
}
```

### Example 9.7 — Structure padding (reorder members to save memory)
```c
#include <stdio.h>
#include <stddef.h>

struct Bad  { char a; int b; char c; };    // a + 3 pad | b | c + 3 pad  = 12
struct Good { char a; char c; int b; };    // a c + 2 pad | b            = 8
struct Best { int b; char a; char c; };    // b | a c + 2 pad            = 8

int main(void) {
    printf("sum of members = %zu\n", sizeof(char) + sizeof(int) + sizeof(char));   // 6
    printf("Bad  = %zu\n", sizeof(struct Bad));     // 12
    printf("Good = %zu\n", sizeof(struct Good));    // 8
    printf("Best = %zu\n", sizeof(struct Best));    // 8
    printf("offset of b in Bad = %zu\n", offsetof(struct Bad, b));   // 4 (not 1!)
    return 0;
}
```

---

## 10. Exception Handling

- **C has no try/catch/throw.** Strategies:
  1. **Return codes** (0 = success, non-zero/−1 = error), result via pointer parameter.
  2. **`errno`** (`<errno.h>`) + `perror("msg")` + `strerror(errno)`. Reset `errno = 0` before the call you check.
  3. **`assert(expr)`** (`<assert.h>`): aborts if false; disabled with `-DNDEBUG`. For programmer errors, not user input.
  4. **`setjmp`/`longjmp`** (`<setjmp.h>`): bookmark and jump back; closest to try/catch; skips normal returns, use sparingly.
  5. **Signals:** `SIGSEGV` (segfault), `SIGFPE` (arithmetic error), `SIGINT` (Ctrl+C).
- Always check `fopen` (NULL), `malloc` (NULL), `scanf` (return count).
- try/catch pattern:
```c
if (setjmp(buf) == 0) { /* try */ ... longjmp(buf, 1); /* throw */ }
else { /* catch */ }
```
- Standard to cite: SEI CERT C (ERR rules).

### Example 10.1 — Return codes (result via pointer)
```c
#include <stdio.h>

typedef enum { OK = 0, ERR_DIV_ZERO = -1, ERR_NEG = -2 } Status;

Status safe_divide(double a, double b, double *result) {
    if (b == 0) return ERR_DIV_ZERO;
    *result = a / b;                       // result goes out through the pointer
    return OK;
}
Status safe_sqrt_int(int n, int *out) {
    if (n < 0) return ERR_NEG;
    int r = 0;
    while ((r + 1) * (r + 1) <= n) r++;
    *out = r;
    return OK;
}
int main(void) {
    double q;
    if (safe_divide(10, 4, &q) == OK) printf("10/4 = %.2f\n", q);
    if (safe_divide(1, 0, &q) != OK)  printf("Error: division by zero\n");
    int r;
    Status st = safe_sqrt_int(50, &r);          // call FIRST, then print (argument evaluation
    printf("isqrt(50) status=%d value=%d\n", st, r);   // order in printf is unspecified!)  0 7
    printf("isqrt(-1) status=%d\n", safe_sqrt_int(-1, &r));                // -2
    return 0;
}
```

### Example 10.2 — `errno`, `perror`, `strerror`
```c
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

int main(void) {
    FILE *f = fopen("does_not_exist.txt", "r");
    if (f == NULL) {
        int saved = errno;                                // copy errno IMMEDIATELY: perror/printf
                                                          // can change it before you read it
        perror("fopen");                                  // fopen: No such file or directory
        printf("errno=%d (%s)\n", saved, strerror(saved));   // 2 (No such file or directory)
    }

    errno = 0;                                            // RESET before the call you check
    char *end;
    long v = strtol("99999999999999999999", &end, 10);    // too big for long
    if (errno == ERANGE) printf("strtol overflow! v clamped to %ld\n", v);

    errno = 0;
    v = strtol("123abc", &end, 10);
    printf("parsed %ld, stopped at \"%s\"\n", v, end);    // 123, "abc"
    return 0;
}
```

### Example 10.3 — Checking `fopen`, `malloc`, `scanf` (the three must-checks)
```c
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    FILE *f = fopen("data.txt", "w");
    if (!f) { perror("fopen"); return 1; }
    fprintf(f, "42\n");
    fclose(f);

    f = fopen("data.txt", "r");
    if (!f) { perror("fopen"); return 1; }
    int n;
    if (fscanf(f, "%d", &n) != 1) { fprintf(stderr, "bad data\n"); fclose(f); return 1; }
    fclose(f);

    int *p = malloc(n * sizeof *p);
    if (!p) { fprintf(stderr, "out of memory\n"); return 1; }
    printf("read %d, allocated %d ints\n", n, n);
    free(p);
    remove("data.txt");
    return 0;
}
```

### Example 10.4 — `assert` (programmer errors only)
```c
#include <stdio.h>
#include <assert.h>

int average(int total, int count) {
    assert(count > 0);                  // aborts with file/line if false
    return total / count;
}
int main(void) {
    printf("avg = %d\n", average(90, 3));   // 30
    // average(10, 0);                      // Assertion `count > 0' failed. -> abort()
    return 0;                               // gcc -DNDEBUG removes every assert()
}
```

### Example 10.5 — `setjmp` / `longjmp` as try/catch
```c
#include <stdio.h>
#include <setjmp.h>

static jmp_buf buf;

double divide(double a, double b) {
    if (b == 0) longjmp(buf, 1);            // "throw" code 1
    return a / b;
}
int main(void) {
    int code = setjmp(buf);                 // "try": returns 0 first time; code after longjmp
    if (code == 0) {
        printf("10/2 = %.1f\n", divide(10, 2));
        printf("1/0  = %.1f\n", divide(1, 0));      // throws
        printf("never printed\n");
    } else {
        printf("caught error code %d: divide by zero\n", code);   // "catch"
    }
    return 0;
}
```

### Example 10.6 — Signals (`SIGINT` handler)
```c
#include <stdio.h>
#include <signal.h>

static volatile sig_atomic_t got_signal = 0;     // the only type safe to set in a handler

void on_sigint(int sig) { (void)sig; got_signal = 1; }

int main(void) {
    signal(SIGINT, on_sigint);              // install handler (Ctrl+C would trigger it)
    raise(SIGINT);                          // simulate Ctrl+C so the demo is deterministic
    if (got_signal) printf("SIGINT caught: cleaning up and exiting gracefully\n");
    return 0;
}
```
`SIGSEGV` (bad memory access) and `SIGFPE` (e.g. integer divide by zero) can also be caught, but returning from their handler is undefined; use them to log and `exit()`, not to recover.

---

## 11. C Graphics & Game Development (BGI)

- `graphics.h` (Turbo C++ / WinBGIm). Origin (0,0) = **top-left**, y grows downward.
```c
int gd = DETECT, gm; initgraph(&gd, &gm, "C:\\TC\\BGI");  /* "" for WinBGIm */
... closegraph();
```
- Setup: `setbkcolor`, `setcolor`, `cleardevice`, `setfillstyle`, `delay(ms)`.
- Colours: BLACK 0, BLUE 1, GREEN 2, CYAN 3, RED 4, MAGENTA 5, BROWN 6, LIGHTGRAY 7, YELLOW 14, WHITE 15.
- Draw: `putpixel`, `line`, `circle`, `rectangle`, `ellipse`, `bar` (filled rect), `floodfill`, `fillellipse`, `outtextxy`, `settextstyle`.
- Input: `kbhit()` (key waiting?) + `getch()`. Arrow keys: left 75, right 77; Esc 27.
- **Game loop:** input → update → `cleardevice` → draw → `delay` → repeat. 60 fps ≈ `delay(16)`.
- Animation: erase old (draw in black), update position, draw new. Bounce: `if (x-r<0 || x+r>W) dx = -dx;`
- Bangladesh flag: green background + red disc slightly left of centre (e.g. `fillellipse(290,240,100,100)`).
- **BGI vs SDL2/raylib:** BGI = Windows/DOS only, software rendering, polling input, abandoned, basic 2D. SDL2/raylib = cross-platform, GPU accelerated, full event system, maintained, 2D/3D/audio.

> The BGI programs need Turbo C++ or WinBGIm (`graphics.h`), so they can't be built with plain gcc on Linux. They are standard BGI usage.

### Example 11.1 — Skeleton + basic shapes
```c
#include <graphics.h>
#include <conio.h>

int main(void) {
    int gd = DETECT, gm;
    initgraph(&gd, &gm, "C:\\TC\\BGI");        // use "" for WinBGIm

    setbkcolor(BLACK);
    cleardevice();

    setcolor(YELLOW);
    line(50, 50, 250, 50);                     // x1,y1 -> x2,y2
    rectangle(50, 80, 250, 160);               // left, top, right, bottom
    circle(400, 120, 40);                      // cx, cy, radius
    ellipse(400, 250, 0, 360, 80, 30);         // cx, cy, start, end, xr, yr

    setfillstyle(SOLID_FILL, CYAN);
    bar(50, 200, 250, 300);                    // filled rectangle
    putpixel(320, 320, WHITE);

    settextstyle(DEFAULT_FONT, HORIZ_DIR, 2);
    outtextxy(50, 350, "Hello BGI!");

    getch();                                   // wait for a key, then close
    closegraph();
    return 0;
}
```

### Example 11.2 — Bangladesh flag
```c
#include <graphics.h>
#include <conio.h>

int main(void) {
    int gd = DETECT, gm;
    initgraph(&gd, &gm, "");                   // WinBGIm: default 640x480 window

    setfillstyle(SOLID_FILL, GREEN);
    bar(0, 0, getmaxx(), getmaxy());           // green background (origin = top-left)

    setcolor(RED);
    setfillstyle(SOLID_FILL, RED);
    fillellipse(290, 240, 100, 100);           // red disc, slightly LEFT of centre (x=290 < 320)

    getch();
    closegraph();
    return 0;
}
```

### Example 11.3 — Bouncing ball (animation + game-loop order)
```c
#include <graphics.h>
#include <conio.h>

int main(void) {
    int gd = DETECT, gm;
    initgraph(&gd, &gm, "");

    int W = getmaxx(), H = getmaxy();
    int x = 100, y = 100, r = 20, dx = 4, dy = 3;

    while (!kbhit()) {                         // loop until any key is pressed
        cleardevice();                         // erase the previous frame
        setcolor(RED);
        setfillstyle(SOLID_FILL, RED);
        fillellipse(x, y, r, r);               // draw the new frame

        x += dx;  y += dy;                     // update position
        if (x - r < 0 || x + r > W) dx = -dx;  // bounce off left/right walls
        if (y - r < 0 || y + r > H) dy = -dy;  // bounce off top/bottom walls
        delay(16);                             // ~60 fps
    }
    closegraph();
    return 0;
}
```

### Example 11.4 — Keyboard-controlled paddle (input → update → draw)
```c
#include <graphics.h>
#include <conio.h>

int main(void) {
    int gd = DETECT, gm;
    initgraph(&gd, &gm, "");

    int W = getmaxx(), H = getmaxy();
    int px = W / 2, pw = 80, speed = 10;       // paddle x (centre) and width
    int running = 1;

    while (running) {
        /* 1. INPUT */
        if (kbhit()) {
            int ch = getch();
            if (ch == 0) ch = getch();         // arrow keys send 0 then a code (Turbo C)
            if (ch == 75 && px - pw / 2 > 0)  px -= speed;     // left arrow
            if (ch == 77 && px + pw / 2 < W)  px += speed;     // right arrow
            if (ch == 27) running = 0;                         // Esc
        }
        /* 2. UPDATE  (collision, score, ... go here) */
        /* 3. DRAW */
        cleardevice();
        setfillstyle(SOLID_FILL, YELLOW);
        bar(px - pw / 2, H - 30, px + pw / 2, H - 15);
        outtextxy(10, 10, "Left/Right = move, Esc = quit");
        delay(16);
    }
    closegraph();
    return 0;
}
```

### Example 11.5 — Modern replacement: the same bouncing ball in SDL2
```c
// Linux:   sudo zypper install SDL2-devel     (openSUSE)
// Build:   gcc ball.c -o ball $(sdl2-config --cflags --libs)
#include <SDL2/SDL.h>

int main(int argc, char *argv[]) {
    (void)argc; (void)argv;
    SDL_Init(SDL_INIT_VIDEO);
    SDL_Window *win = SDL_CreateWindow("Ball", SDL_WINDOWPOS_CENTERED,
                                       SDL_WINDOWPOS_CENTERED, 640, 480, 0);
    SDL_Renderer *ren = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED);

    int x = 100, y = 100, dx = 4, dy = 3, running = 1;
    while (running) {
        SDL_Event e;
        while (SDL_PollEvent(&e))                       // full EVENT system (not kbhit polling)
            if (e.type == SDL_QUIT) running = 0;

        x += dx;  y += dy;
        if (x < 0 || x > 620) dx = -dx;
        if (y < 0 || y > 460) dy = -dy;

        SDL_SetRenderDrawColor(ren, 0, 0, 0, 255);      // black background
        SDL_RenderClear(ren);
        SDL_SetRenderDrawColor(ren, 255, 0, 0, 255);    // red ball
        SDL_Rect ball = { x, y, 20, 20 };
        SDL_RenderFillRect(ren, &ball);
        SDL_RenderPresent(ren);
        SDL_Delay(16);
    }
    SDL_DestroyRenderer(ren);
    SDL_DestroyWindow(win);
    SDL_Quit();
    return 0;
}
```

---

## Last-Minute Exam Traps
1. `7/2` is 3, not 3.5.
2. `#define N = 5;` is wrong; no `=`, no `;`.
3. Missing `break` in `switch` → fall-through.
4. `else` pairs with nearest `if`.
5. `scanf` needs `&` (not for arrays).
6. `printf` format must match the argument type.
7. Pass-by-value never changes the caller's variable.
8. Recursion without a base case → stack overflow.
9. Uninitialised/NULL/dangling pointers → undefined behaviour.
10. `=` vs `==`.
11. Naive `fib` is O(2ⁿ).
12. `sizeof(struct)` ≥ sum of members (padding); `sizeof(union)` = largest member.
13. `math.h` needs `-lm`.
14. C has no try/catch.
15. BGI y-axis points down.

### Trap cheat-table: wrong → right

| # | Wrong | Right |
|---|---|---|
| 1 | `double r = 7 / 2;` → 3.0 | `double r = 7 / 2.0;` → 3.5 |
| 2 | `#define N = 5;` | `#define N 5` |
| 5 | `scanf("%d", n);` | `scanf("%d", &n);` |
| 6 | `printf("%d", 3.5);` | `printf("%f", 3.5);` |
| 10 | `if (x = 5)` | `if (x == 5)` (or Yoda: `if (5 == x)`) |
| 12 | assuming `sizeof(struct{char;int;char}) == 6` | it is 12; reorder to `{char;char;int}` → 8 |
| 13 | `gcc prog.c` (undefined reference to `sqrt`) | `gcc prog.c -lm` |

---

## Quick compile & debug commands
```bash
gcc -Wall -Wextra -std=c11 -g -o prog prog.c            # warnings + debug symbols
gcc -Wall -Wextra -std=c11 -o prog prog.c -lm           # when using math.h
gcc -fsanitize=address,undefined -g -o prog prog.c      # catch memory bugs & UB at runtime
valgrind --leak-check=full ./prog                       # leaks, invalid reads/writes
gcc -DNDEBUG -O2 -o prog prog.c                         # release build (asserts removed)
```
