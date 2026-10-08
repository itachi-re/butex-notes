---
title: MDM-102 C Programming — Quick Revision Sheet
course_code: MDM-102
covers: Topics 1–11
---

# MDM-102 C Programming — Quick Revision

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

## 4. Decision Control
- `if / else if / else`: first true branch runs, rest skipped. Non-zero = true.
- `switch` works on **integer types only** (int, char, enum). Not float, not strings.
- No `break` → **fall-through**. Example: x=2 with no breaks prints `two three done`.
- Always include `default`.
- **Dangling else:** `else` binds to the nearest `if` → use braces.
- Ternary: `abs = (x >= 0) ? x : -x;` Nested for max of 3.
- Grade ladder: check highest threshold first (>=80, >=70, ...).

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

## 6. Functions
- Parts: **prototype** (declaration), **definition**, **call**; **parameter** (in definition) vs **argument** (at call).
- `return_type name(params) { body }`; `void` = no return.
- **Pass-by-value:** function gets a copy → `try_swap(a, b)` does NOT change originals. Use pointers to swap.
- **Scope:** file (global), block (local), inner block.
- Headers: `stdio.h` (printf, scanf, fgets), `math.h` (sqrt, pow, fabs, sin, log; link `-lm`), `string.h` (strlen, strcpy, strcmp, strcat, strstr), `stdlib.h` (malloc, free, atoi, rand, exit, qsort), `ctype.h` (isalpha, isdigit, toupper, tolower), `time.h`.
- Remove newline after fgets: `s[strcspn(s, "\n")] = '\0';`
- Prime test: loop `i` up to `sqrt(n)`. °F = °C × 9/5 + 32.

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
