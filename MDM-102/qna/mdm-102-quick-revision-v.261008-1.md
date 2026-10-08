# C Programming: Quick Revision

**Compiled by:** sigkill0x00
**Covers:** `circle.c`, `triangle.c`, `grading-systm.c`, `grading-m2.c`, `student-group.c`, `simple-menu.c`, `atm_check_loop.c`

Compile and run any example:

```bash
gcc circle.c -o circle
./circle
```

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

- `#define` gives a symbolic constant (no semicolon, no `=`).
- The `f` suffix makes the literal a `float`, not a `double`.
- Validation: `if (radius <= 0)` prints an error and `return 1;`.
- `return 0` = success, non-zero = error.

**Full example**

```c
#include <stdio.h>

#define PI 3.14f

int main(void) {
    float radius, area;

    printf("Enter radius: ");
    scanf("%f", &radius);

    if (radius <= 0) {
        printf("Error: radius must be positive.\n");
        return 1;
    }

    area = PI * radius * radius;
    printf("Area = %.2f\n", area);
    return 0;
}
```

Sample runs:

```
Enter radius: 5
Area = 78.50
```

```
Enter radius: -2
Error: radius must be positive.
```

---

### triangle.c: Area of a Triangle

- `||` is true if **either** side is invalid.
- Validate **before** computing.

**Full example**

```c
#include <stdio.h>

int main(void) {
    float base, height, area;

    printf("Enter base and height: ");
    scanf("%f %f", &base, &height);

    if (base <= 0 || height <= 0) {
        printf("Error: base and height must be positive.\n");
        return 1;
    }

    area = 0.5f * base * height;
    printf("Area = %.2f\n", area);
    return 0;
}
```

Sample runs:

```
Enter base and height: 10 4
Area = 20.00
```

```
Enter base and height: 10 0
Error: base and height must be positive.
```

---

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

**Full example**

```c
#include <stdio.h>

int main(void) {
    int mark;

    printf("Enter marks (0-100): ");
    scanf("%d", &mark);

    if (mark < 0 || mark > 100) {
        printf("Invalid marks!\n");
    } else if (mark >= 80) {
        printf("Grade: A+\nGPA: 5.00\n");
    } else if (mark >= 70) {
        printf("Grade: A\nGPA: 4.00\n");
    } else if (mark >= 60) {
        printf("Grade: A-\nGPA: 3.50\n");
    } else if (mark >= 50) {
        printf("Grade: B\nGPA: 3.00\n");
    } else if (mark >= 40) {
        printf("Grade: C\nGPA: 2.00\n");
    } else if (mark >= 33) {
        printf("Grade: D\nGPA: 1.00\n");
    } else {
        printf("Grade: F\nGPA: 0.00\n");
    }

    return 0;
}
```

Sample runs:

```
Enter marks (0-100): 85
Grade: A+
GPA: 5.00
```

```
Enter marks (0-100): 35
Grade: D
GPA: 1.00
```

```
Enter marks (0-100): 120
Invalid marks!
```

---

### grading-m2.c: Same Logic, Using a Function

- `void` means no return value.
- `return;` exits the function early, so `else` is not needed.
- Called from `main` with `print_grade(mark);`.
- A function is declared/defined **before** `main` (or use a prototype).

**Full example**

```c
#include <stdio.h>

void print_grade(int mark) {
    if (mark < 0 || mark > 100) { printf("Invalid marks!\n");        return; }
    if (mark >= 80)             { printf("Grade: A+\nGPA: 5.00\n");  return; }
    if (mark >= 70)             { printf("Grade: A\nGPA: 4.00\n");   return; }
    if (mark >= 60)             { printf("Grade: A-\nGPA: 3.50\n");  return; }
    if (mark >= 50)             { printf("Grade: B\nGPA: 3.00\n");   return; }
    if (mark >= 40)             { printf("Grade: C\nGPA: 2.00\n");   return; }
    if (mark >= 33)             { printf("Grade: D\nGPA: 1.00\n");   return; }
    printf("Grade: F\nGPA: 0.00\n");
}

int main(void) {
    int mark;

    printf("Enter marks (0-100): ");
    scanf("%d", &mark);

    print_grade(mark);
    return 0;
}
```

Sample run:

```
Enter marks (0-100): 72
Grade: A
GPA: 4.00
```

---

### student-group.c: Roll Number Grouping

- Roll 1-100 = **A**, 101-200 = **B**, 201-300 = **C**.
- `for (init; condition; update)` runs 300 times here.
- Earlier branches already exclude the lower rolls, so `else if (roll <= 200)` is enough.
- Declaring `int roll` inside `for` needs C99 or later.

**Full example**

```c
#include <stdio.h>

int main(void) {
    for (int roll = 1; roll <= 300; roll++) {
        char group;

        if (roll <= 100) {
            group = 'A';
        } else if (roll <= 200) {
            group = 'B';
        } else {
            group = 'C';
        }

        printf("Roll %d -> Group %c\n", roll, group);
    }
    return 0;
}
```

Sample output (first and boundary lines):

```
Roll 1 -> Group A
...
Roll 100 -> Group A
Roll 101 -> Group B
...
Roll 200 -> Group B
Roll 201 -> Group C
...
Roll 300 -> Group C
```

---

### simple-menu.c: do-while Menu

- `do-while` runs the body **at least once**, which suits menus.
- The condition is checked **after** the body, and the loop ends with `;`.
- Choices other than 1, 2, 3 would be silently ignored, so the final `else` prints "Invalid choice".

**Full example**

```c
#include <stdio.h>

int main(void) {
    int choice;

    do {
        printf("\n--- Menu ---\n");
        printf("1. Say Hello\n");
        printf("2. Say Goodbye\n");
        printf("3. Exit\n");
        printf("Enter choice: ");
        scanf("%d", &choice);

        if (choice == 1) {
            printf("Hello!\n");
        } else if (choice == 2) {
            printf("Goodbye!\n");
        } else if (choice == 3) {
            printf("Exiting...\n");
        } else {
            printf("Invalid choice!\n");
        }
    } while (choice != 3);

    return 0;
}
```

Sample run:

```
--- Menu ---
1. Say Hello
2. Say Goodbye
3. Exit
Enter choice: 1
Hello!

--- Menu ---
...
Enter choice: 9
Invalid choice!

--- Menu ---
...
Enter choice: 3
Exiting...
```

---

### atm_check_loop.c: ATM Withdraw Loop

- `break` leaves the loop immediately.
- The loop also ends on its own when `balance` reaches 0.
- The negative check stops a withdrawal like `-500` from *increasing* the balance.

**Full example**

```c
#include <stdio.h>

int main(void) {
    int balance = 1000;
    int withdraw;

    printf("Starting balance: %d\n", balance);

    while (balance > 0) {
        printf("Enter amount to withdraw (0 to quit): ");
        scanf("%d", &withdraw);

        if (withdraw == 0) {
            break;
        }

        if (withdraw < 0) {
            printf("Invalid amount!\n");
        } else if (withdraw > balance) {
            printf("Insufficient balance!\n");
        } else {
            balance -= withdraw;
            printf("Withdrawn: %d | Remaining: %d\n", withdraw, balance);
        }
    }

    printf("Final balance: %d\n", balance);
    return 0;
}
```

Sample run:

```
Starting balance: 1000
Enter amount to withdraw (0 to quit): 300
Withdrawn: 300 | Remaining: 700
Enter amount to withdraw (0 to quit): -500
Invalid amount!
Enter amount to withdraw (0 to quit): 900
Insufficient balance!
Enter amount to withdraw (0 to quit): 700
Withdrawn: 700 | Remaining: 0
Final balance: 0
```

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
4. What happens in the original `atm_check_loop.c` (without the negative check) if the user enters `-500`?
5. Why is `printf("%d", area)` wrong when `area` is a `float`?

<details>
<summary>Answers</summary>

1. The program ended with an error.
2. Otherwise 85 would match `>= 70` first and print the wrong grade.
3. Once.
4. `balance` increases by 500 (there is no negative check).
5. `%d` expects an `int`; use `%f` or `%.2f`.

</details>
