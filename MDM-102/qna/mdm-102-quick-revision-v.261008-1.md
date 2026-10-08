# C Programming: Quick Revision

**Compiled by:** sigkill0x00
**Covers:** `circle.c`, `triangle.c`, `grading-systm.c`, `grading-m2.c`, `student-group.c`, `simple-menu.c`, `atm_check_loop.c`

---

## 1. Concepts at a Glance

| Program | Main concept | Key construct |
|---|---|---|
| `circle.c` | Constants, input validation | `#define`, `if` + early `return 1` |
| `triangle.c` | Multiple inputs, validation | `\|\|` (logical OR) |
| `grading-systm.c` | Range classification | `if / else if / else` chain |
| `grading-m2.c` | Same logic with a function | `void` function, early `return` |
| `student-group.c` | Range-based grouping | `for` loop + `if / else if` |
| `simple-menu.c` | Repeat until user exits | `do-while` |
| `atm_check_loop.c` | Loop with exit condition | `while` + `break` |

---

## 2. Format Specifiers

| Type | `printf` | `scanf` |
|---|---|---|
| `int` | `%d` | `%d` |
| `float` | `%f` (`%.2f` = 2 decimals) | `%f` |
| `double` | `%f` / `%lf` | `%lf` |

- `scanf` needs the address: `&radius`, not `radius`.
- `printf` takes the value, no `&`.

---

## 3. Program Notes

### circle.c: Area of a Circle
```c
#define PI 3.14f
area = PI * radius * radius;
```
- `#define` gives a symbolic constant (no semicolon, no `=`).
- The `f` suffix makes the literal a `float`, not a `double`.
- Validation: `if (radius <= 0)` prints an error and `return 1;`.
- `return 0` = success, non-zero = error.

### triangle.c: Area of a Triangle
```c
area = 0.5f * base * height;
if (base <= 0 || height <= 0) { ... return 1; }
```
- `||` is true if **either** side is invalid.
- Validate **before** computing.

### grading-systm.c: Grade and GPA (if-else chain)

| Marks | Grade | GPA |
|---|---|---|
| 80-100 | A+ | 5.00 |
| 70-79 | A | 4.00 |
| 60-69 | A- | 3.50 |
| 50-59 | B | 3.00 |
| 40-49 | C | 2.00 |
| 33-39 | D | 1.00 |
| 0-32 | F | 0.00 |
| <0 or >100 | Invalid | none |

- Check the invalid range **first**.
- Go from **highest to lowest**. Each `else if` only needs a lower bound (`>= 70`) because higher cases were already ruled out.
- `else` at the end catches the F range.

### grading-m2.c: Same Logic, Using a Function
```c
void print_grade(int mark) {
    if (mark < 0 || mark > 100) { printf("Invalid marks!"); return; }
    if (mark >= 80)             { printf("Grade: A+\nGPA: 5.00"); return; }
    ...
}
```
- `void` means no return value.
- `return;` exits the function early, so `else` is not needed.
- Called from `main` with `print_grade(mark);`.
- A function is declared/defined **before** `main` (or use a prototype).

### student-group.c: Roll Number Grouping
```c
for (int roll = 1; roll <= 300; roll++)
```
- Roll 1-100 = **A**, 101-200 = **B**, 201-300 = **C**.
- `for (init; condition; update)` runs 300 times here.
- The `roll >= 1 &&` and `roll >= 101 &&` parts are redundant (earlier branches already excluded them). `else if (roll <= 200)` is enough.
- Declaring `int roll` inside `for` needs C99 or later.

### simple-menu.c: do-while Menu
```c
do { ... scanf("%d", &choice); ... } while (choice != 3);
```
- `do-while` runs the body **at least once**, which suits menus.
- The condition is checked **after** the body, and the loop ends with `;`.
- Choices other than 1, 2, 3 are silently ignored, so you could add a final `else` with "Invalid choice".

### atm_check_loop.c: ATM Withdraw Loop
```c
while (balance > 0) {
    scanf("%d", &withdraw);
    if (withdraw == 0) break;
    if (withdraw > balance) printf("Insufficient balance!\n");
    else balance -= withdraw;
}
```
- `break` leaves the loop immediately.
- The loop also ends on its own when `balance` reaches 0.
- Known gap: a **negative** withdrawal would *increase* the balance. Fix with `if (withdraw < 0)` and an error message.

---

## 4. Loop Cheat Sheet

| Loop | Checks condition | Runs at least once | Use when |
|---|---|---|---|
| `for` | Before | No | Known number of repeats |
| `while` | Before | No | Repeat until a condition fails |
| `do-while` | After | **Yes** | Menus, input retry |

- `break` exits the loop; `continue` skips to the next iteration.

---

## 5. Common Mistakes

1. `scanf("%d", mark)` forgets `&`.
2. `=` used instead of `==` in conditions.
3. Wrong specifier (`%d` for a `float`).
4. Not validating input before using it.
5. Wrong `else if` order, e.g. checking `>= 33` before `>= 80`, so everything gets a D.
6. Missing `;` after `while (...)` in `do-while`.
7. Not checking the return value of `scanf` (non-numeric input leaves the variable unset).
8. Integer division surprises: `1/2` is `0`, so use `0.5f` or `1.0/2`.

---

## 6. Quick Self-Test

1. What does `return 1;` signal in `main`?
2. Why does `grading-systm.c` test `mark >= 80` before `mark >= 70`?
3. How many times does the body of `simple-menu.c` run if the user enters `3` first?
4. What happens in `atm_check_loop.c` if the user enters `-500`?
5. Why is `printf("%d", area)` wrong when `area` is a `float`?

<details>
<summary>Answers</summary>

1. The program ended with an error.
2. Otherwise 85 would match `>= 70` first and print the wrong grade.
3. Once.
4. `balance` increases by 500 (there is no negative check).
5. `%d` expects an `int`; use `%f` or `%.2f`.

</details>
