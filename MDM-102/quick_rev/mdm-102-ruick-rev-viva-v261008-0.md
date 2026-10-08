# MDM-102 C Programming: Viva-Ready File

> Built from your three sheets: **-0** (topics 1-11), **-1** (lab programs), **-2** (unified Q1-Q20 exam answers).
> Standard C (gcc), 64-bit sizes. Old Turbo C: `int` = 2 bytes.
> **Answer formula (30 seconds):** Define -> Explain in one line -> Tiny example -> Name the trap.
> Items marked **[+]** are *not in your notes* but are common viva questions. Check them against your syllabus.

## Contents

1. [Rules of the viva](#1-rules-of-the-viva)
2. [Q&A by topic](#2-qa-by-topic) (A to R)
3. [Your lab programs: walk-through questions](#3-your-lab-programs-walk-through-questions)
4. [Output-prediction drill](#4-output-prediction-drill)
5. [Code you must be able to write](#5-code-you-must-be-able-to-write)
6. [True / False rapid fire](#6-true--false-rapid-fire)
7. [Numbers and one-liners to memorise](#7-numbers-and-one-liners-to-memorise)
8. [Audit: corrections and gaps in your notes](#8-audit-corrections-and-gaps-in-your-notes)

---

## 1. Rules of the viva

1. **Never say "I don't know" first.** Start with the definition, then say what you are sure of.
2. **Use the keyword the examiner wants** (e.g. "pass-by-value", "base case", "row-major", "short-circuit").
3. **If asked for a difference, name 3 points** (what, when, example). Do not give only one.
4. **If asked "what is the output?", trace line by line out loud.**
5. **If you spot a bug, say "undefined behaviour" or "off-by-one" by name**, then fix it.
6. **Unsure about a number?** Say "typically 4 bytes on a 64-bit gcc system; it is implementation-defined." That is a correct answer.
7. The 15 traps examiners love: `7/2`, `#define N = 5;`, missing `break`, dangling `else`, missing `&`, wrong `%` specifier, pass-by-value, no base case, uninitialised pointer, `=` vs `==`, naive `fib`, struct padding, `-lm`, no try/catch in C, BGI y-axis down.

---

## 2. Q&A by topic

Format: **Q** -> **Say** (spoken answer) -> *Follow-ups* the examiner may ask.

### A. Computer fundamentals and compilation

**Q. What is a computer system?**
**Say:** Hardware + software + data (+ people), working on the IPO(S) cycle: Input -> Process -> Output -> Storage.

**Q. System software vs application software?**
**Say:** System software manages the hardware and runs other programs (OS, drivers, firmware, compilers). Application software does a user task (Word, browser, payroll) and runs on top of system software.
*Follow-up: firmware?* Low-level software embedded in hardware (BIOS/UEFI).

**Q. Compiler vs interpreter?**

| Compiler | Interpreter |
|---|---|
| Translates the whole program first | Executes line by line |
| Produces an executable | No separate executable |
| Reports all errors after compiling | Stops at the first error |

C is a compiled language.

**Q. What are the stages of compiling a C program?**
**Say:** Four stages: Preprocessing (`gcc -E`, `.i`) -> Compilation to assembly (`-S`, `.s`) -> Assembly to object code (`-c`, `.o`) -> Linking (executable).
*Follow-up: what does the preprocessor do?* Handles `#include` and `#define` (text substitution, file inclusion) before compilation.
*Follow-up: `<stdio.h>` vs `"file.h"`?* **[+]** Angle brackets search system directories; quotes search the current directory first.
*Follow-up: why `-lm`?* `math.h` functions like `sqrt`, `pow` live in the maths library, which must be linked.

**Q. What is `main()`? Why `return 0`?**
**Say:** Entry point where execution starts. `return 0` tells the OS the program succeeded; non-zero means error.
*Follow-up: `int main(void)` vs `void main()`?* **[+]** `int main` is the standard form. `void main()` is non-standard (Turbo C habit).

---

### B. Algorithm, pseudocode, flowchart

**Q. Define algorithm. Properties?**
**Say:** A finite, step-by-step, unambiguous, language-independent procedure to solve a problem. Properties: **FIDOE** = Finiteness, Input, Definiteness, Output, Effectiveness.

**Q. Pseudocode vs flowchart?**
**Say:** Pseudocode is informal structured English (`START, READ, IF, WHILE, PRINT, END`) and **is not compilable**. A flowchart draws the same algorithm with symbols.

| Symbol | Shape |
|---|---|
| Start / Stop | Oval |
| Input / Output | Parallelogram |
| Process | Rectangle |
| Decision | Diamond |
| Flow | Arrow |

**Q. Largest of three numbers: algorithm and complexity?**
**Say:** Compare `a>b`; then the winner against `c`. At most 2 comparisons, so **O(1)**.
```c
largest = (a > b) ? ((a > c) ? a : c) : ((b > c) ? b : c);
```
*Follow-up: trace `12, 45, 7`.* `a>b` false -> `b>c` true -> **45**. For `5,5,5` -> `largest = c = 5`.

---

### C. Tokens, identifiers, keywords

**Q. What is a token? How many types?**
**Say:** Smallest lexical unit the compiler recognises. Six types: keywords, identifiers, constants, strings, operators, special symbols.
*Follow-up: tokens in `int age = 20;`?* **5**: `int`, `age`, `=`, `20`, `;`.

**Q. Identifier rules?**
**Say:** Letters, digits, underscore only; must start with a letter or `_`; case-sensitive; no spaces or special characters; cannot be a keyword; unique in its scope.
*Follow-up: valid or not?* `roll_no` yes, `_temp` yes, `2total` no (digit start), `my-var` no (hyphen), `float` no (keyword), `price$` no.

**Q. How many keywords in C? Examples?**
**Say:** 32 in C89, all lowercase. Groups: data types (`int char float double void short long signed unsigned`), user-defined (`struct union enum typedef`), storage class (`auto extern register static`), qualifiers (`const volatile`), decision (`if else switch case default`), loops (`for while do`), jump (`break continue goto return`), `sizeof`.
*Follow-up: are `main` and `printf` keywords?* No, identifiers. `sizeof` **is** a keyword.

| Keyword | Identifier |
|---|---|
| Predefined, fixed meaning | Programmer-defined |
| Fixed count (32) | Unlimited |
| Always lowercase | Any case |
| Cannot be redefined | Names program entities |

---

### D. Data types, I/O and format specifiers

**Q. Why do we need data types?**
**Say:** So the compiler knows how much memory to allocate, how to interpret the bits, which operations are legal, and can catch errors.

**Q. Classify C data types.**
**Say:** Basic (`int char float double void`), derived (array, pointer, function), user-defined (`struct union enum typedef`).

**Q. Sizes?**
**Say:** `char` 1 B (always), `short` 2, `int` 4, `long` 8 (4 on Windows), `long long` 8, `float` 4 (6-7 digits), `double` 8 (15-16 digits). Only minimum ranges are fixed by the standard, so use `sizeof`.
*Follow-up: `sizeof` is a function?* No, an **operator** evaluated at compile time. Print with `%zu`. (Exception: variable-length arrays are evaluated at run time.)

**Q. Format specifiers?**

| Type | printf | scanf |
|---|---|---|
| int | `%d` | `%d` |
| float | `%f` | `%f` |
| double | `%f` | **`%lf`** |
| char | `%c` | `%c` |
| string | `%s` | `%s` (no `&`) |
| size_t | `%zu` | |
| long / long long | `%ld` / `%lld` | |

*Follow-up: `printf("%d", 85.5)`?* Undefined behaviour; format must match the argument type.
*Follow-up: why `3.75f`?* Without the suffix it is a `double`; `f` makes it a `float`.

**Q. ASCII facts?**
**Say:** `'0'`-`'9'` = 48-57, `'A'`-`'Z'` = 65-90, `'a'`-`'z'` = 97-122. Upper <-> lower differ by **32**. Digit char to value: `ch - '0'`.

**Q. Escape sequences?**
`\n` newline, `\t` tab, `\\` backslash, `\"` quote, `\0` null, `\r` carriage return, `\b` backspace, `\a` beep.

**Q. `scanf` vs `fgets`; why not `gets`?**

| `scanf("%s")` | `fgets` |
|---|---|
| Reads one word, unbounded unless `%49s` | Reads a whole line, bounded by size |
| Leaves `\n` in buffer | Keeps `\n` in the string |

**Say:** `gets` has no size limit, so it causes buffer overflow, and it was **removed in C11**.
*Follow-up: strip the newline?* `s[strcspn(s, "\n")] = '\0';`
*Follow-up: `scanf("%d")` then `scanf("%c")` skips input?* The leftover `\n` is read as the char. Fix: `scanf(" %c", &ch);` (space skips whitespace).
*Follow-up: `puts` vs `printf`?* `puts` prints a string plus a newline; `printf` is formatted.
*Follow-up: formatted vs unformatted I/O?* Formatted (`printf`, `scanf`) use specifiers and handle any type; unformatted (`getchar`, `putchar`, `gets`, `puts`) are for char/string only. `getch`/`putch` are `<conio.h>`, non-standard.

---

### E. Constants and variables

**Q. Declaration vs initialisation?**
**Say:** Declaration = name + type (`int a;`). Initialisation = giving the first value (`int a = 5;`).

**Q. Constant vs variable?**
**Say:** A constant cannot change during execution (changing a `const` is a compile error). A variable has a memory location and can change.

**Q. Ways to define a constant?**

| Method | Syntax | Key point |
|---|---|---|
| Literal | `100`, `'A'`, `3.14` | no name |
| `const` | `const int N = 100;` | typed, scoped, has an address |
| `#define` | `#define N 100` | **no `=`, no `;`**, text substitution, no type |
| `enum` | `enum {N = 100};` | integer constants, auto-numbered from 0 |

*Follow-up: `const` vs `#define`?*

| `const` | `#define` |
|---|---|
| Handled by compiler | Handled by preprocessor |
| Type-checked | No type check |
| Takes memory, `&` allowed | No memory, `&` not allowed |
| Block/file scope | Valid from the line of definition to end of file |
| No macro arguments | Macro arguments allowed |

*Follow-up: macro trap?* `#define SQ(x) x*x`, `SQ(2+3)` = `2+3*2+3` = **11**. Fix: `((x)*(x))`.
*Follow-up: enum values?* `enum {SUN, MON=5, TUE}` -> 0, 5, 6.
*Follow-up: integer constant forms?* `025` octal = 21, `0x1F` hex = 31, `2.5e3` = 2500.

---

### F. Operators

**Q. Types of operators?**
**Say:** Arithmetic, relational, logical, bitwise, assignment, increment/decrement, conditional (`?:`, the only ternary), and special (`sizeof`, `&`, `*`, `,`).

**Q. `7/2`? `7%2`? How to get 3.5?**
**Say:** `3` and `1`: integer division truncates. Cast: `(double)a / b`. `%` works on integers only.

**Q. Precedence order?**
**Say:** `() [] . ->` -> unary (`! ~ ++ -- sizeof & *`) -> `* / %` -> `+ -` -> `<< >>` -> relational -> `== !=` -> `&` -> `^` -> `|` -> `&&` -> `||` -> `?:` -> assignment -> `,`. Unary, `?:` and assignment associate right to left; most others left to right.
*Follow-up: `a=5,b=10,c=2`; `a + b*c`?* 25. `(a+b)*c` = 30.

**Q. `i++` vs `++i`?**
**Say:** Post-increment uses the old value then increments; pre-increment increments then uses the new value. `i=5`: `a=i++` gives a=5, i=6; `a=++i` gives a=6, i=6. As standalone statements they are the same.
*Follow-up: `y = x++ + ++x;`?* Undefined behaviour (same variable modified twice without a sequence point). Never write it.
*Follow-up: `*p++` vs `*++p`?* Read then move the pointer; move then read.
*Follow-up: `5++`?* Error; operand must be an lvalue.

**Q. `=` vs `==`?**
**Say:** Assign vs compare. `if (x = 5)` assigns 5 and is always true. (`===` does not exist in C.)

**Q. Logical operators and short-circuit?**
**Say:** `&&`, `||`, `!` return 1 or 0; any non-zero is true. `A && B` skips `B` if `A` is false; `A || B` skips `B` if `A` is true.
*Follow-up: `a=0,b=5; if (a && ++b)`?* `b` stays 5. With `||`, `b` becomes 6.

**Q. Bitwise operators?**
**Say:** `& | ^ ~ << >>`. For a=12, b=10: `&`=8, `|`=14, `^`=6, `<<1`=24 (x2), `>>1`=6 (/2).
*Follow-up: check even with bits?* `(n & 1) == 0`. Parentheses are required because `==` binds tighter than `&`.
*Follow-up: power of 2?* `n > 0 && (n & (n-1)) == 0`.

**Q. Ternary vs if-else?**
**Say:** Ternary is an **expression** that returns a value (`max = (a > b) ? a : b;`); if-else is a statement. It is right-associative: `a ? b : c ? d : e` = `a ? b : (c ? d : e)`.

**Q. What is the comma operator?** **[+]**
Evaluates left to right and gives the last value. `a[2,3]` is `a[3]`, not a 2-D index.

---

### G. Type conversion

**Q. Implicit vs explicit?**

| | Implicit | Explicit (casting) |
|---|---|---|
| Done by | Compiler | Programmer |
| Syntax | none | `(type) expr` |
| Direction | Usually low -> high (safe) | Any |
| Example | `float f = 5;` | `(int)5.7` |

**Say:** Hierarchy: `char -> short -> int -> unsigned -> long -> long long -> float -> double -> long double`. `char` and `short` are promoted to `int` in expressions.
*Follow-up: `(float)a/b` vs `(float)(a/b)` for 7, 2?* 3.5 vs 3.0. Cast has higher precedence than `/`, so the first casts only `a`; the second divides as integers first.
*Follow-up: `(int)3.99`, `(int)-2.7`?* 3 and -2 (truncates toward zero).
*Follow-up: `float f = 10/4;`?* 2.000000 (integer division happens first).
*Follow-up: `-1 < 1u`?* False, because `-1` converts to a huge unsigned number.

---

### H. Decision control

**Q. Forms of `if`?**
**Say:** Simple `if`, `if-else`, `else-if` ladder (first true branch wins), nested `if`. Non-zero = true.

**Q. What is the dangling else?**
**Say:** `else` pairs with the **nearest unmatched `if`**. Use braces to be explicit.

**Q. `switch` rules?**
**Say:** Expression must be integral (`int`, `char`, `enum`), never float or string. Case labels are unique constants. Without `break`, execution **falls through**. `default` is optional and can sit anywhere. `break` exits the switch only.
*Follow-up: trace `x=2` with no breaks (cases 1, 2, 3, then "done").* Prints `two three done`.

| `switch` | `if-else` |
|---|---|
| Equality with constants only | Any condition (ranges, `&&`, floats) |
| int/char/enum | Any type |
| Often a jump table | Sequential |

*Follow-up: grade ladder order?* Check the highest threshold first, so each `else if` needs only a lower bound.

---

### I. Loops

**Q. Three loops compared?**

| | for | while | do-while |
|---|---|---|---|
| Condition checked | before | before | **after** |
| Minimum runs | 0 | 0 | **1** |
| Use | known count | unknown count | menu, input validation |

**Q. `break` vs `continue`?**
**Say:** `break` leaves the innermost loop or switch; `continue` skips the rest of this iteration and goes to the next. `continue` is valid only inside a loop.
*Follow-up: output of `for(i=1;i<=10;i++){if(i==5)break;printf("%d ",i);}`?* `1 2 3 4`. With `continue` at `i==3` over 1..5: `1 2 4 5`.
*Follow-up: infinite loop forms?* `while (1)`, `for (;;)`. `continue` before the counter update in a `while` also causes one.
*Follow-up: `for(i=0;i<5;i++); printf("%d",i);`?* The stray `;` is a null body; prints **5**.
*Follow-up: factorial limit?* `int` overflows at 13!; use `long long`. Sum 1..N = N(N+1)/2.
*Follow-up: complexity of nested loops?* O(n^2) for two levels.

**Q. What is a null statement?**
A lone `;`. Uses: placeholder, empty loop body, label target. Trap: `if (x > 0);` does nothing.

---

### J. Functions

**Q. Prototype, definition, call?**
**Say:** Prototype declares name, return type and parameters (so the compiler can check calls); definition is the body; call executes it. **Parameter** = in the definition, **argument** = at the call.

**Q. What is pass-by-value? How do you swap?**
**Say:** The function receives a copy, so `try_swap(a, b)` never changes the caller's variables. Pass **addresses**:
```c
void swap(int *a, int *b){ int t = *a; *a = *b; *b = t; }   // swap(&x, &y);
```

**Q. Scope?**
Global (file), local (block), inner block. A local hides a global of the same name.

**Q. Which headers?**
`stdio.h` (printf, scanf, fgets), `math.h` (sqrt, pow, fabs; link `-lm`), `string.h` (strlen, strcpy, strcmp, strcat, strstr), `stdlib.h` (malloc, free, atoi, rand, exit, qsort), `ctype.h` (isalpha, isdigit, toupper), `time.h`.

**Q. What does `void` mean for a function?** No return value. `return;` exits early.

---

### K. Recursion

**Q. Define recursion. What does it need?**
**Say:** A function calling itself. It needs a **base case** (stops) and a **recursive case** that moves toward the base. No base case -> infinite recursion -> **stack overflow**.
*Follow-up: how is it stored?* Each call gets a **stack frame** (locals, parameters, return address).
*Follow-up: tail recursion?* The recursive call is the last action; GCC may optimise it with `-O2`, but C does not guarantee it.

```c
long long factorial(int n){ if(n<=1) return 1; return n*factorial(n-1); }
int fib(int n){ if(n==0) return 0; if(n==1) return 1; return fib(n-1)+fib(n-2); }
void hanoi(int n,char s,char a,char d){ if(!n) return;
  hanoi(n-1,s,d,a); printf("Move %d: %c->%c\n",n,s,d); hanoi(n-1,a,s,d); }
```

| Function | Time | Stack |
|---|---|---|
| factorial | O(n) | O(n) |
| fib naive | **O(2^n)** | O(n) |
| fib memoised | O(n) | O(n) |
| fast power | O(log n) | O(log n) |

*Follow-up: why is naive fib slow?* It recomputes the same subproblems exponentially many times; memoisation stores results.
*Follow-up: Hanoi moves?* **2^n - 1** (7 for 3 disks).
*Follow-up: digit sum?* `n==0 -> 0; else n%10 + digit_sum(n/10)`. `digit_sum(1234)` = 10.
*Follow-up: fast power?* Even `e` -> `power(b*b, e/2)`; odd -> `b*power(b, e-1)`.
*Follow-up: recursion vs iteration?* **[+]** Recursion is shorter and natural for trees/divide-and-conquer but costs stack memory and call overhead; iteration is faster and uses constant space.
*Follow-up: real uses?* Merge sort, quicksort, tree traversal, backtracking (N-Queens, Sudoku), recursive-descent parsers.

---

### L. Arrays and strings

**Q. Define an array. Advantages and limits?**
**Say:** A fixed-size collection of same-type elements in **contiguous memory**, accessed by a 0-based index in O(1). Limits: fixed size, one type, costly insert/delete, **no bounds checking** (`a[5]` on `int a[5]` is undefined behaviour).
*Follow-up: initialisation?* `int c[5] = {1,2};` gives `{1,2,0,0,0}`. `int d[] = {5,6,7};` has size 3. A local `int a[5];` holds garbage.
*Follow-up: off-by-one example?* `for (i = 0; i <= 3; i++)` on `a[3]`. Use `i < 3`.

**Q. 1D vs 2D vs 3D?**
List / rows x columns / layers x rows x columns. Traversal needs 1, 2, 3 nested loops. 3D example: an RGB image (H x W x 3).

**Q. How are 2D arrays stored?**
**Say:** **Row-major**: rows one after another, last index changes fastest.
- 2D: `addr(a[i][j]) = base + (i*C + j)*s`
- 3D: `addr(a[i][j][k]) = base + ((i*R + j)*C + k)*s`
*Follow-up: numericals.* `int a[3][4]`, base 1000, `s=4`, `a[2][1]` = 1000 + (2*4+1)*4 = **1036**. `int a[2][3][4]`, base 2000, `a[1][2][3]` = 2000 + ((1*3+2)*4+3)*4 = **2092**.
*Follow-up: why specify column size when passing a 2D array?* The compiler needs it to compute the offset `i*C + j`. Every dimension after the first must be given.

**Q. Array name vs pointer?**
**Say:** `arr[i]` is `*(arr + i)` and `matrix[i][j]` is `*(*(matrix+i)+j)`. The name **decays** to a pointer to the first element, except with `sizeof` and `&`. Arrays are passed as pointers, so **pass the size separately**. Length: `sizeof(a)/sizeof(a[0])`; this works only in the scope where the array was declared, not inside a function that received it.

**Q. What is a C string?**
**Say:** A `char` array ending with `'\0'`. `"Hello"` occupies **6 bytes**.
*Follow-up: `strcmp`?* Returns 0 if equal. `strstr` returns a pointer or `NULL`.
*Follow-up: `char s[]="Hi"` vs `char *p="Hi"`?* **[+]** `s` is a modifiable array copy. `p` points to a read-only literal; modifying it is undefined behaviour.
*Follow-up: is `strncpy` safe?* Safer than `strcpy`, but it does **not** add `'\0'` if the source is at least `n` long. Set `dst[n-1] = '\0'` yourself.

---

### M. Pointers and memory

**Q. What is a pointer?**
**Say:** A variable that stores an address. `int *p = &x;` `&` = address-of, `*` = dereference. `*p = 100;` changes `x`.
*Follow-up: pointer arithmetic?* Moves by elements: `p + 1` is the next element (adds `sizeof(*p)` bytes).
*Follow-up: `int *p, q;`?* **[+]** Only `p` is a pointer; `q` is a plain `int`.
*Follow-up: size of a pointer?* **[+]** 8 bytes on 64-bit systems, regardless of the type it points to.

**Q. NULL, uninitialised and dangling pointers?**

| Kind | Meaning | Result |
|---|---|---|
| NULL | points to nothing | dereference = undefined behaviour |
| Uninitialised | `int *p; *p = 42;` | undefined behaviour / segfault |
| Dangling | points to freed or out-of-scope memory | undefined behaviour |

**Q. Dynamic memory?**
**Say:** `int *q = malloc(sizeof(int)); if (q) { *q = 42; free(q); }`. Always check for `NULL`; free once; set the pointer to `NULL` after freeing. Forgetting `free` = **memory leak**. Tool: **Valgrind** (leaks, dangling and uninitialised reads).

---

### N. User-defined types

**Q. struct vs union?**

| struct | union |
|---|---|
| Each member has separate storage | All members share one memory block |
| `sizeof` >= sum of members (padding) | `sizeof` = largest member |
| All members valid together | Read only the last-written member |

**Q. `.` vs `->`?** `.` with a variable, `->` with a pointer. `p->x` is `(*p).x`.

**Q. Structure padding?**
**Say:** The compiler inserts filler bytes for alignment. `{char; int; char}` is likely **12 B**; reordered `{char; char; int}` is **8 B**. Order members largest -> smallest.

**Q. enum and typedef?**
`enum` = named integer constants (starts at 0, +1 each; explicit values allowed). `typedef` = alias. Linked-list node:
```c
typedef struct Node { int data; struct Node *next; } Node;
```
*Follow-up: union trick?* `union { float f; unsigned bits; }` with `f = 1.0f` gives bits `0x3F800000`.
*Follow-up: enum state machine?* `(TrafficLight)((cur + 1) % 3)`.

---

### O. Error handling

**Q. Does C have try/catch?**
**Say:** **No.** C handles errors with:
1. **Return codes** (0 = success, non-zero or -1 = error; result via a pointer parameter).
2. **`errno`** (`<errno.h>`) with `perror("msg")` / `strerror(errno)`. Reset `errno = 0` before the call you check.
3. **`assert(expr)`** (`<assert.h>`) aborts if false; disabled by `-DNDEBUG`. For programmer errors, not user input.
4. **`setjmp`/`longjmp`** (`<setjmp.h>`), closest to try/catch; use sparingly.
5. **Signals**: `SIGSEGV`, `SIGFPE`, `SIGINT`.
```c
if (setjmp(buf) == 0) { /* try */ ... longjmp(buf, 1); /* throw */ }
else { /* catch */ }
```
*Follow-up: what must you always check?* `fopen` (NULL), `malloc` (NULL), `scanf` (return count).
*Follow-up: standard to cite?* SEI CERT C (ERR rules).

---

### P. C graphics (BGI)

**Q. Coordinate system?** Origin (0,0) is **top-left**; y grows **downward**.
**Q. Setup?**
```c
int gd = DETECT, gm; initgraph(&gd, &gm, "C:\\TC\\BGI");  /* "" for WinBGIm */
... closegraph();
```
**Q. Game loop?** Input -> update -> `cleardevice` -> draw -> `delay` -> repeat. 60 fps ~ `delay(16)`.
**Q. Animation?** Erase old (draw in black), update position, draw new. Bounce: `if (x-r<0 || x+r>W) dx = -dx;`
**Q. Keyboard?** `kbhit()` checks for a waiting key, `getch()` reads it. Left = 75, right = 77, Esc = 27. (Arrow keys arrive as an extended code: `getch()` returns 0 or 224 first, then 75/77.)
**Q. Key functions?** `putpixel, line, circle, rectangle, ellipse, bar, floodfill, fillellipse, outtextxy, settextstyle, setcolor, setfillstyle`.
**Q. BGI vs SDL2/raylib?**

| BGI | SDL2 / raylib |
|---|---|
| DOS/Windows only, abandoned | Cross-platform, maintained |
| Software rendering | GPU accelerated |
| Polling input | Full event system |
| Basic 2D | 2D/3D/audio |

**Q. Bangladesh flag?** Green background + red disc slightly **left** of centre (e.g. `fillellipse(290,240,100,100)`).

---

### Q. Storage classes **[+] (keywords are in your notes, the concept is not)**

| Class | Scope | Lifetime | Default value | Note |
|---|---|---|---|---|
| `auto` | block | until block ends | garbage | default for locals |
| `register` | block | block | garbage | CPU register hint; cannot take `&` |
| `static` (local) | block | **whole program** | 0 | keeps its value between calls |
| `static` (global/function) | this file only | program | 0 | hides name from other files |
| `extern` | global | program | 0 | declares a variable defined elsewhere |

---

### R. Other likely questions **[+]**

**Q. `const int *p` vs `int *const p`?** First: cannot change `*p`. Second: cannot change `p`.
**Q. `malloc` vs `calloc`?** `malloc(size)` leaves memory uninitialised; `calloc(n, size)` zero-fills; `realloc(p, new)` resizes; `free(p)` releases.
**Q. File handling basics?** `FILE *fp = fopen("a.txt", "r");` modes `r, w, a, r+, w+, a+`. Check `fp != NULL`, use `fprintf/fscanf/fgets/fputs`, then `fclose(fp)`.
**Q. `NULL` vs `'\0'` vs `0`?** Null pointer constant; string terminator character (value 0); the integer zero.
**Q. Call by value vs call by reference?** C has only call-by-value; "by reference" is simulated by passing a pointer.

---

## 3. Your lab programs: walk-through questions

For each program say: **purpose -> key construct -> one validation or bug point.**

| Program | Purpose | Key construct | Likely examiner question and answer |
|---|---|---|---|
| `circle.c` | Area = `PI*r*r` | `#define PI 3.14f`, `if (radius <= 0) return 1;` | *Why `return 1`?* Non-zero = error exit. *Why `f`?* Makes the literal a `float`. *Why no `;` after `#define`?* It is text substitution; a `;` would be copied into the code. |
| `triangle.c` | Area = `0.5f*base*height` | `base <= 0 \|\| height <= 0` | *Why `\|\|`?* Invalid if **either** is bad. *Why `0.5f`?* `1/2` would be `0` (integer division). Validate **before** computing. |
| `grading-systm.c` | Marks -> grade and GPA | `if / else if / else` | *Why invalid check first?* Reject out-of-range input before classifying. *Why highest to lowest?* Each branch then needs only a lower bound. *Wrong order?* Checking `>= 33` first gives everyone a D. |
| `grading-m2.c` | Same logic as a function | `void print_grade(int mark)` with early `return;` | *Why no `else`?* `return;` exits immediately. *Where is the function placed?* Before `main`, or give a prototype. |
| `student-group.c` | Roll 1-100 = A, 101-200 = B, 201-300 = C | `for (int roll = 1; roll <= 300; roll++)` | *What is redundant?* `roll >= 101 &&`, earlier branches already excluded it; `else if (roll <= 200)` suffices. *Declaring `int roll` in `for`?* Needs C99 or later. |
| `simple-menu.c` | Repeat until user picks Exit (3) | `do { ... } while (choice != 3);` | *Why `do-while`?* Menu must show at least once. *If user enters 3 first?* Body runs **once**. *What is missing?* An `else` for "Invalid choice". Do not forget `;` after `while(...)`. |
| `atm_check_loop.c` | Withdraw until 0 or balance is 0 | `while (balance > 0)`, `break` | *Bug?* A **negative** withdrawal increases the balance. *Fix:* see below. |

```c
if (withdraw == 0) break;
if (withdraw < 0)            printf("Invalid amount!\n");
else if (withdraw > balance) printf("Insufficient balance!\n");
else                         balance -= withdraw;
```

Also be ready: *"What if the user types a letter?"* `scanf` returns 0 and the variable stays unset; check `if (scanf("%d", &x) != 1)`.

---

## 4. Output-prediction drill

Trace out loud. Cover the answer column first.

| # | Code | Output / result | Why |
|---|---|---|---|
| 1 | `printf("%d", 7/2);` | 3 | integer division |
| 2 | `printf("%f", (float)7/2);` | 3.500000 | cast applies to `7` |
| 3 | `printf("%f", (float)(7/2));` | 3.000000 | divide first |
| 4 | `5 / 2 * 2.0` | 4.0 | `(5/2)=2`, then `2*2.0` |
| 5 | `-7 % 3` | -1 | sign follows the dividend (C99) |
| 6 | `int i=5; a=i++;` / `a=++i;` | a=5,i=6 / a=6,i=6 | post / pre |
| 7 | `a=0,b=5; if(a && ++b); b=?` | 5 | short-circuit |
| 8 | `a=0,b=5; if(a \|\| ++b); b=?` | 6 | `a` false, so `++b` runs |
| 9 | `#define SQ(x) x*x` ; `SQ(2+3)` | 11 | text substitution |
| 10 | `5 > 3 > 1` | 0 | `(5>3)=1`, then `1>1` |
| 11 | `char c='A'; c+1` | 66 | promoted to `int` |
| 12 | `int n = 3.99;` | 3 | truncation |
| 13 | `x=2`, `switch` with no breaks (1,2,3 then "done") | two three done | fall-through |
| 14 | `for(i=0;i<5;i++); printf("%d",i);` | 5 | null body |
| 15 | `if (x = 5)` | always true | assignment |
| 16 | `unsigned u = 0; u--;` | 4294967295 | wraps around |
| 17 | `int a[]={10,20,30}; int *p=a; printf("%d %d",*(p+1),p[2]);` | 20 30 | pointer arithmetic |
| 18 | `int a[10]; sizeof(a)/sizeof(a[0])` | 10 | element count |
| 19 | same expression inside a function receiving `a` | 2 (4 B ints on 8 B pointers: 8/4) | array decayed to a pointer |
| 20 | `sizeof` of `struct{char;int;char}` | 12 | padding |
| 21 | `sizeof` of `union{int;double;char}` | 8 | largest member |
| 22 | `fact(4)` | 24 | 4*3*2*1 |
| 23 | `fib(6)` | 8 | 0,1,1,2,3,5,8 |
| 24 | `digit_sum(1234)` | 10 | 4+3+2+1 |
| 25 | Hanoi, 3 disks | 7 moves | 2^3 - 1 |
| 26 | `float f=1.0f` read as `unsigned` via union | 0x3F800000 | IEEE-754 bits |
| 27 | `1/2*4.0` | 0.0 | `1/2` = 0 |
| 28 | `printf("%d", 85.5);` | undefined behaviour | wrong specifier |

---

## 5. Code you must be able to write

Write these from memory (you have most in your notes):

1. **Swap** with pointers (Section 2-J).
2. **Factorial / Fibonacci / Hanoi** recursive (Section 2-K).
3. **Prime check:** loop `i = 2` while `i*i <= n` (or `i <= sqrt(n)` with `-lm`); if `n % i == 0` not prime; `n < 2` not prime.
4. **Even/odd:** `n % 2 == 0` or `(n & 1) == 0`.
5. **Largest of three:** ternary form (Section 2-B).
6. **Sum 1..N:** `for (i=1;i<=n;i++) sum += i;`
7. **Celsius -> Fahrenheit:** `f = c * 9.0 / 5 + 32;` (note `9.0`; `9/5` would be 1).
8. **Full pyramid** (n rows): spaces `n-i`, stars `2*i-1`, then `printf("\n")` after the inner loops.
```c
for (i = 1; i <= n; i++) {
    for (s = 1; s <= n - i; s++)     printf(" ");
    for (j = 1; j <= 2*i - 1; j++)   printf("*");
    printf("\n");
}
```
   Variants: **invert** = outer loop `n` down to 1; **count down** = print `n-j+1`; **Floyd** = counter `k++` declared outside; **character** = reset `ch='A'` each row.
9. **Matrix addition:** `c[i][j] = a[i][j] + b[i][j];` in two nested loops.
10. **Calculator with `switch`:** `scanf("%f %c %f", &a, &op, &b);` cases `+ - * /`; in `/` check `b != 0`; `default` = invalid operator.
11. **Linked-list node** `typedef` (Section 2-N).
12. **try/catch with `setjmp`** (Section 2-O).
13. **Safe string input:** `fgets(buf, sizeof buf, stdin); buf[strcspn(buf,"\n")] = '\0';`

---

## 6. True / False rapid fire

| Statement | T/F |
|---|---|
| C has 32 keywords (ANSI) | T |
| `main` is a keyword | F |
| An identifier can start with a digit | F |
| `sizeof(char)` is always 1 | T |
| `int` is always 4 bytes | F (implementation-defined) |
| `#define N = 5;` is correct | F |
| `switch` can use a float | F |
| `break` inside a switch within a loop exits the loop | F (exits the switch only) |
| `do-while` runs at least once | T |
| `continue` can be used in a `switch` with no loop | F |
| `scanf("%d", n)` is correct | F (needs `&n`) |
| `scanf("%s", name)` needs `&` | F |
| `7/2` is 3.5 | F |
| `?:` is the only ternary operator | T |
| C passes arguments by value | T |
| `arr[i]` equals `*(arr+i)` | T |
| Array bounds are checked at run time | F |
| `sizeof(struct)` is at least the sum of members | T |
| `sizeof(union)` equals the largest member | T |
| C has try/catch | F |
| `gets` is safe | F |
| `const` can be changed later | F |
| A recursive function needs a base case | T |
| Naive Fibonacci is O(n) | F (exponential) |
| Hanoi needs 2^n - 1 moves | T |
| In BGI the y-axis points up | F (down) |
| `math.h` functions always link without `-lm` | F |
| `i++` and `++i` differ as standalone statements | F |
| Pseudocode can be compiled | F |
| `0` is false, any non-zero is true | T |

---

## 7. Numbers and one-liners to memorise

- **FIDOE** = algorithm properties.
- **ASCII:** 48 / 65 / 97; case gap **32**.
- **32** keywords; **6** token types; **4** compilation stages; **4** ways to define constants.
- **Post = use then change. Pre = change then use.**
- **Pyramid:** `n-i` spaces, `2*i-1` symbols.
- **13!** overflows `int`. **2^n - 1** Hanoi. **O(2^n)** naive fib.
- Pointers: `&` address, `*` value; `arr[i] == *(arr+i)`.
- Row-major: `base + (i*C + j)*s`.
- Struct padding: order members **large -> small**.
- Precedence mnemonic: *unary -> multiply -> add -> shift -> relational -> equality -> bitwise -> logical -> ternary -> assign -> comma.*

---

## 8. Audit: corrections and gaps in your notes

**Corrections to fix in your sheets (a sharp examiner can catch these):**

1. **`printf("%d %d", i++, i)`**: sheet -2 calls it "unspecified" in places. Modifying and reading `i` without a sequence point is **undefined behaviour**. Say that in the viva.
2. **`char ch = 300;` -> 44**: this is the usual result, but converting an out-of-range value to a signed `char` is **implementation-defined**. Say "typically 44".
3. **`strncpy` "safer copy"** (sheet -0): it does not guarantee a terminating `'\0'`. Add the manual terminator, or use `snprintf`.
4. **`#define` "no scope"** (sheet -0) vs **"global from definition to end of file"** (sheet -2): the second is more accurate. It has no block scope and is valid until the end of the file (or `#undef`).
5. **`sizeof` "compile time"**: true except for variable-length arrays.
6. **Arrow keys 75/77** (sheet -0): `getch()` first returns 0 (or 224) as a prefix, then the scan code.
7. **Compile flags:** sheet -0 uses `-std=c11`, sheet -2 uses `-std=c99`. Both are fine; just be consistent.
8. **Footer in sheet -2** says it is `...v261008-0.md`, but that name belongs to the topics 1-11 sheet. Rename the footer to avoid mixing the files up.
9. **Naive fib "O(2^n)"** is a valid upper bound; the tight bound is about O(1.618^n). Say "exponential, O(2^n)".

**Gaps filled in this file (marked [+]):** storage classes, `calloc`/`realloc`, `const` pointers, string literal vs array, file-handling basics, `<>` vs `""` includes, comma operator, pointer size, call by reference in C.

**Still not covered anywhere in your three sheets** (check your syllabus; add if they are in scope): bit fields, function pointers, command-line arguments, `enum`/`struct` in files, macros with multiple lines, `volatile`, `goto` details, and detailed string-library implementations (writing `strlen`/`strcpy` by hand).

---

*End of viva file: mdm-102-viva-v261008-0.md*
