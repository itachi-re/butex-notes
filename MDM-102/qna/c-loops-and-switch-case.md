# C Loops and Switch-Case

A beginner-friendly guide to loops and the `switch-case` statement in C, written in simple English with step-by-step explanations.

---

## 1. What is a Loop?

Imagine you have to print "Hello" 100 times. You could write `printf("Hello");` 100 times — but that's slow and boring. A **loop** lets the computer repeat a block of code automatically, as many times as you need.

- **What is a loop?** A loop is a piece of code that repeats itself until a certain condition becomes false.
- **Why do we use loops?** To avoid writing the same code again and again, and to handle repetitive tasks (like printing numbers, adding a list of values, or checking many students one by one).
- **How does a loop work?** The computer checks a condition. If it's true, it runs the code inside the loop. Then it checks the condition again. This continues until the condition becomes false.
- **What happens during each iteration?** One full "round" of the loop — running the code inside it once — is called one **iteration**. A loop that runs 10 times has 10 iterations.
- **What is a loop condition?** It's the test the computer checks before (or after) each iteration. As long as the condition is `true`, the loop keeps going.
- **What is an infinite loop?** A loop whose condition never becomes false, so it runs forever (until you force-stop the program). This usually happens by mistake, but it can also be done on purpose (e.g., a menu that runs "forever" until the user picks "Exit").
- **What is a nested loop?** A loop placed inside another loop. The inner loop completes all its iterations for every single iteration of the outer loop. Useful for grids, tables, and patterns.

There are three loops in C: `for`, `while`, and `do-while`.

---

## 2. The `for` Loop

### Syntax

```c
for (initialization; condition; increment/decrement)
{
    // code to repeat
}
```

### How it works

1. **Initialization** runs once, at the very start. It usually sets up a counter variable, like `int i = 1;`.
2. **Condition** is checked before every iteration. If it's true, the loop body runs. If false, the loop stops.
3. The loop body executes.
4. **Increment/decrement** runs after each iteration (e.g., `i++` adds 1 to `i`).
5. Go back to step 2, and repeat.

### When to use it

Use `for` when you **already know how many times** you want to repeat something (e.g., "print numbers 1 to 10", "loop through 300 students").

### Example 1 — Print numbers 1–10

Problem: Print the numbers from 1 to 10.

Logic: Start a counter at 1, print it, increase it by 1, and stop once it passes 10.

Code:
```c
#include <stdio.h>

int main()
{
    for (int i = 1; i <= 10; i++)
    {
        printf("%d\n", i);
    }
    return 0;
}
```

Output:
```text
1
2
3
4
5
6
7
8
9
10
```

Explanation: `i` starts at 1. The condition `i <= 10` is checked each time. After printing, `i++` increases `i` by 1. When `i` becomes 11, the condition is false, and the loop stops.

### Example 2 — Print even numbers (1–20)

Problem: Print all even numbers between 1 and 20.

Logic: Start at 2, and increase by 2 each time instead of 1.

Code:
```c
#include <stdio.h>

int main()
{
    for (int i = 2; i <= 20; i = i + 2)
    {
        printf("%d\n", i);
    }
    return 0;
}
```

Output:
```text
2
4
6
8
10
12
14
16
18
20
```

Explanation: Instead of `i++` (add 1), we use `i = i + 2` so we skip odd numbers entirely.

### Example 3 — Print odd numbers (1–20)

Problem: Print all odd numbers between 1 and 20.

Logic: Same idea as even numbers, but start at 1 instead of 2.

Code:
```c
#include <stdio.h>

int main()
{
    for (int i = 1; i <= 20; i = i + 2)
    {
        printf("%d\n", i);
    }
    return 0;
}
```

Output:
```text
1
3
5
7
9
11
13
15
17
19
```

Explanation: Starting from an odd number and adding 2 each time keeps every result odd.

### Example 4 — Sum of numbers 1 to N

Problem: Calculate the sum of numbers from 1 to N (N given by the user).

Logic: Use a variable `sum` starting at 0. In each iteration, add the current number to `sum`.

Code:
```c
#include <stdio.h>

int main()
{
    int n, sum = 0;

    printf("Enter N: ");
    scanf("%d", &n);

    for (int i = 1; i <= n; i++)
    {
        sum = sum + i;
    }

    printf("Sum = %d\n", sum);
    return 0;
}
```

Output:
```text
Enter N: 5
Sum = 15
```

Explanation: `sum` starts at 0. Each time through the loop, we add `i` to it: 0+1=1, 1+2=3, 3+3=6, 6+4=10, 10+5=15.

### Example 5 — Practical problem: Total price of items

Problem: A shopkeeper sells `n` items. For each item, ask the price and calculate the total bill.

Logic: Loop `n` times. Each time, take a price as input and add it to a running total.

Code:
```c
#include <stdio.h>

int main()
{
    int n;
    float price, total = 0;

    printf("How many items? ");
    scanf("%d", &n);

    for (int i = 1; i <= n; i++)
    {
        printf("Enter price of item %d: ", i);
        scanf("%f", &price);
        total = total + price;
    }

    printf("Total bill = %.2f\n", total);
    return 0;
}
```

Output:
```text
How many items? 3
Enter price of item 1: 50
Enter price of item 2: 120
Enter price of item 3: 30
Total bill = 200.00
```

Explanation: The loop runs once per item, asking for a price and adding it to `total` each time — a very common real-world pattern (billing, grading, averaging, etc.).

---

## 3. The `while` Loop

### Syntax

```c
while (condition)
{
    // code to repeat
}
```

### How it works

The condition is checked **before** the loop body runs. If true, the body executes; if false, the loop is skipped entirely (it may never run).

### When the condition is checked

**Before** each iteration — this is called "checking at the top."

### When to use `while` instead of `for`

Use `while` when you **don't know in advance** how many times the loop should run — for example, "keep asking for input until the user enters a valid number" or "keep dividing a number until it becomes 0."

### Difference between `while` and `for`

| Feature | `for` | `while` |
|---|---|---|
| Best for | Known number of repetitions | Unknown number of repetitions, condition-based |
| Initialization | Built into the loop line | Usually written before the loop |
| Readability for counters | Very clean | Slightly more code |

### Example 1 — Print numbers 1–10

Code:
```c
#include <stdio.h>

int main()
{
    int i = 1;
    while (i <= 10)
    {
        printf("%d\n", i);
        i++;
    }
    return 0;
}
```

Output:
```text
1
2
3
4
5
6
7
8
9
10
```

Explanation: We manually set up `i = 1` before the loop, check the condition, print, then increase `i`. This is the same result as the `for` loop, just written differently.

### Example 2 — Print numbers in reverse (10 to 1)

Code:
```c
#include <stdio.h>

int main()
{
    int i = 10;
    while (i >= 1)
    {
        printf("%d\n", i);
        i--;
    }
    return 0;
}
```

Output:
```text
10
9
8
7
6
5
4
3
2
1
```

Explanation: Start at 10 and decrease by 1 (`i--`) until we go below 1.

### Example 3 — Sum of digits until user stops (running sum)

Problem: Keep adding numbers entered by the user until they enter `-1`.

Code:
```c
#include <stdio.h>

int main()
{
    int num, sum = 0;

    printf("Enter numbers (-1 to stop):\n");
    scanf("%d", &num);

    while (num != -1)
    {
        sum = sum + num;
        scanf("%d", &num);
    }

    printf("Total sum = %d\n", sum);
    return 0;
}
```

Output:
```text
Enter numbers (-1 to stop):
10
20
30
-1
Total sum = 60
```

Explanation: We don't know how many numbers the user will enter, so `for` isn't a good fit — `while` checks the condition (`num != -1`) every time before adding.

### Example 4 — Count digits of a number

Problem: Count how many digits are in a number (e.g., 4527 has 4 digits).

Logic: Repeatedly remove the last digit (divide by 10) and count how many times you can do that before the number becomes 0.

Code:
```c
#include <stdio.h>

int main()
{
    int num, count = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    while (num != 0)
    {
        num = num / 10;
        count++;
    }

    printf("Number of digits = %d\n", count);
    return 0;
}
```

Output:
```text
Enter a number: 4527
Number of digits = 4
```

Explanation: 4527 → 452 → 45 → 4 → 0. Each division removes one digit, and we count 4 divisions before reaching 0.

### Example 5 — Practical problem: ATM balance check loop

Problem: Keep letting a user withdraw money until their balance runs out or they choose to stop.

Code:
```c
#include <stdio.h>

int main()
{
    int balance = 1000;
    int withdraw;

    printf("Your balance is %d\n", balance);

    while (balance > 0)
    {
        printf("Enter amount to withdraw (0 to stop): ");
        scanf("%d", &withdraw);

        if (withdraw == 0)
        {
            break;
        }

        if (withdraw > balance)
        {
            printf("Insufficient balance!\n");
        }
        else
        {
            balance = balance - withdraw;
            printf("Withdrawn! Remaining balance = %d\n", balance);
        }
    }

    printf("Session ended. Final balance = %d\n", balance);
    return 0;
}
```

Output:
```text
Your balance is 1000
Enter amount to withdraw (0 to stop): 300
Withdrawn! Remaining balance = 700
Enter amount to withdraw (0 to stop): 0
Session ended. Final balance = 700
```

Explanation: The loop continues as long as `balance > 0`. The user can stop early by entering 0 (which uses `break`, explained in Section 5).

---

## 4. The `do-while` Loop

### Syntax

```c
do
{
    // code to repeat
} while (condition);
```

Note the semicolon `;` at the end — a common mistake is forgetting it.

### How it works

The code inside `do { }` runs **first**, and only **after** that does the program check the condition. If true, it goes back and runs the block again; if false, it stops.

### Why it executes at least once

Because the condition is checked **after** the body, the body is guaranteed to run one time, even if the condition is false from the start.

### Difference between `while` and `do-while`

| Feature | `while` | `do-while` |
|---|---|---|
| Condition checked | Before the loop body | After the loop body |
| Minimum executions | 0 (may never run) | 1 (always runs at least once) |

### When it is useful

Great for **menus** — you want to show the menu at least once before checking whether the user wants to continue or exit.

### Example 1 — Print numbers 1–5

Code:
```c
#include <stdio.h>

int main()
{
    int i = 1;
    do
    {
        printf("%d\n", i);
        i++;
    } while (i <= 5);
    return 0;
}
```

Output:
```text
1
2
3
4
5
```

Explanation: The block runs, then checks `i <= 5`. This repeats until `i` becomes 6.

### Example 2 — Simple menu

Code:
```c
#include <stdio.h>

int main()
{
    int choice;

    do
    {
        printf("\n--- MENU ---\n");
        printf("1. Say Hello\n");
        printf("2. Say Bye\n");
        printf("3. Exit\n");
        printf("Enter choice: ");
        scanf("%d", &choice);

        if (choice == 1)
        {
            printf("Hello!\n");
        }
        else if (choice == 2)
        {
            printf("Bye!\n");
        }

    } while (choice != 3);

    printf("Program ended.\n");
    return 0;
}
```

Output:
```text
--- MENU ---
1. Say Hello
2. Say Bye
3. Exit
Enter choice: 1
Hello!

--- MENU ---
1. Say Hello
2. Say Bye
3. Exit
Enter choice: 3
Program ended.
```

Explanation: The menu always shows at least once. The loop keeps repeating until the user enters `3`.

### Example 3 — Take input until the user chooses to stop

Code:
```c
#include <stdio.h>

int main()
{
    char cont;
    int num, sum = 0;

    do
    {
        printf("Enter a number: ");
        scanf("%d", &num);
        sum = sum + num;

        printf("Continue? (y/n): ");
        scanf(" %c", &cont);

    } while (cont == 'y' || cont == 'Y');

    printf("Total sum = %d\n", sum);
    return 0;
}
```

Output:
```text
Enter a number: 5
Continue? (y/n): y
Enter a number: 10
Continue? (y/n): n
Total sum = 15
```

Explanation: The block runs once no matter what, and the `y`/`n` answer decides whether to repeat.

### Example 4 — Validate input (force a valid age)

Problem: Keep asking for age until the user enters a valid value (between 1 and 120).

Code:
```c
#include <stdio.h>

int main()
{
    int age;

    do
    {
        printf("Enter your age (1-120): ");
        scanf("%d", &age);

        if (age < 1 || age > 120)
        {
            printf("Invalid age, try again.\n");
        }

    } while (age < 1 || age > 120);

    printf("Your age is %d\n", age);
    return 0;
}
```

Output:
```text
Enter your age (1-120): 200
Invalid age, try again.
Enter your age (1-120): 25
Your age is 25
```

Explanation: We must ask at least once, so `do-while` fits perfectly. It repeats only while the input stays invalid.

### Example 5 — Practical problem: Password retry system

Problem: Let the user try entering a password up to 3 times.

Code:
```c
#include <stdio.h>
#include <string.h>

int main()
{
    char password[20];
    int attempts = 0;

    do
    {
        printf("Enter password: ");
        scanf("%s", password);
        attempts++;

        if (strcmp(password, "secret123") == 0)
        {
            printf("Access granted!\n");
            break;
        }
        else
        {
            printf("Wrong password.\n");
        }

    } while (attempts < 3);

    if (strcmp(password, "secret123") != 0)
    {
        printf("Account locked. Too many wrong attempts.\n");
    }

    return 0;
}
```

Output:
```text
Enter password: abc
Wrong password.
Enter password: xyz
Wrong password.
Enter password: secret123
Access granted!
```

Explanation: The user gets at least one attempt, and the loop stops early (with `break`) on success, or after 3 tries.

---

## 5. Comparing the Three Loops

| Loop | Condition checked | Minimum executions | Best use |
|------|--------------------|---------------------|----------|
| `for` | Before each iteration | 0 | Number of repetitions is known in advance |
| `while` | Before each iteration | 0 | Repeats depend on a condition, count unknown |
| `do-while` | After each iteration | 1 | Body must run at least once (menus, input validation) |

**When should I use `for`?**
When you know exactly how many times to repeat — like "loop through 300 students" or "print numbers 1 to 100."

**When should I use `while`?**
When the number of repetitions depends on something that can change — like "keep going until the user types 'stop'."

**When should I use `do-while`?**
When you need the code to run at least once before checking anything — most commonly for menus and input validation.

---

## 6. `break` and `continue`

### `break`

`break` immediately **stops** the loop (or `switch`) it's inside, and control jumps to the code right after it.

- In `for`, `while`, `do-while`: exits the loop completely, skipping any remaining iterations.
- In `switch`: exits the switch block, preventing fall-through to the next case.

**Example 1 — Stop at first number divisible by 7**
```c
#include <stdio.h>

int main()
{
    for (int i = 1; i <= 100; i++)
    {
        if (i % 7 == 0)
        {
            printf("First number divisible by 7 is %d\n", i);
            break;
        }
    }
    return 0;
}
```
Output:
```text
First number divisible by 7 is 7
```

**Example 2 — Stop a while loop early**
```c
#include <stdio.h>

int main()
{
    int i = 1;
    while (i <= 20)
    {
        if (i == 8)
        {
            break;
        }
        printf("%d\n", i);
        i++;
    }
    return 0;
}
```
Output:
```text
1
2
3
4
5
6
7
```

**Example 3 — Stop a do-while loop early**
```c
#include <stdio.h>

int main()
{
    int i = 1;
    do
    {
        if (i == 4)
        {
            break;
        }
        printf("%d\n", i);
        i++;
    } while (i <= 10);
    return 0;
}
```
Output:
```text
1
2
3
```

### `continue`

`continue` **skips only the current iteration** and jumps straight to the next check of the condition. The loop keeps running — it does not stop.

```text
break    → completely exits the loop
continue → skips the current iteration, loop keeps going
```

**Example 1 — Skip even numbers**
```c
#include <stdio.h>

int main()
{
    for (int i = 1; i <= 10; i++)
    {
        if (i % 2 == 0)
        {
            continue;
        }
        printf("%d\n", i);
    }
    return 0;
}
```
Output:
```text
1
3
5
7
9
```

**Example 2 — Skip a specific value in a while loop**
```c
#include <stdio.h>

int main()
{
    int i = 0;
    while (i < 10)
    {
        i++;
        if (i == 5)
        {
            continue;
        }
        printf("%d\n", i);
    }
    return 0;
}
```
Output:
```text
1
2
3
4
6
7
8
9
10
```

**Example 3 — Skip negative numbers while summing**
```c
#include <stdio.h>

int main()
{
    int nums[] = {5, -2, 8, -1, 3};
    int sum = 0;

    for (int i = 0; i < 5; i++)
    {
        if (nums[i] < 0)
        {
            continue;
        }
        sum = sum + nums[i];
    }

    printf("Sum of positives = %d\n", sum);
    return 0;
}
```
Output:
```text
Sum of positives = 16
```

---

## 7. Nested Loops

A **nested loop** is a loop written inside another loop. The outer loop runs, and for *every single* iteration of the outer loop, the entire inner loop runs from start to finish.

### Simple example first

```c
#include <stdio.h>

int main()
{
    for (int i = 1; i <= 3; i++)
    {
        for (int j = 1; j <= 2; j++)
        {
            printf("i=%d j=%d\n", i, j);
        }
    }
    return 0;
}
```

Output:
```text
i=1 j=1
i=1 j=2
i=2 j=1
i=2 j=2
i=3 j=1
i=3 j=2
```

Notice: for every value of `i` (outer), `j` (inner) counts fully from 1 to 2.

### Example 1 — Multiplication table (1 to 5)

Problem: Print multiplication tables for numbers 1 to 5, each up to 5.

Logic: Outer loop picks the table number, inner loop picks the multiplier.

Code:
```c
#include <stdio.h>

int main()
{
    for (int i = 1; i <= 5; i++)
    {
        for (int j = 1; j <= 5; j++)
        {
            printf("%d x %d = %d\n", i, j, i * j);
        }
        printf("\n");
    }
    return 0;
}
```

Output (shortened):
```text
1 x 1 = 1
1 x 2 = 2
...
1 x 5 = 5

2 x 1 = 2
...
```

Explanation: The outer loop fixes the table (1, 2, 3...); for each one, the inner loop multiplies it by 1 through 5.

### Example 2 — Star pattern (right triangle)

Problem: Print a triangle of stars with 5 rows.

Logic: Row `i` should have `i` stars.

Code:
```c
#include <stdio.h>

int main()
{
    for (int i = 1; i <= 5; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            printf("*");
        }
        printf("\n");
    }
    return 0;
}
```

Output:
```text
*
**
***
****
*****
```

Explanation: The inner loop's limit (`j <= i`) depends on the outer loop's current value — that's what creates the growing pattern.

### Example 3 — Number pattern

Problem: Print a pattern where each row repeats its row number.

Code:
```c
#include <stdio.h>

int main()
{
    for (int i = 1; i <= 5; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            printf("%d ", i);
        }
        printf("\n");
    }
    return 0;
}
```

Output:
```text
1 
2 2 
3 3 3 
4 4 4 4 
5 5 5 5 5 
```

Explanation: Instead of printing `*`, we print the row number `i` itself, `i` times.

### Example 4 — Matrix-style output

Problem: Print a 3x3 matrix filled with numbers 1–9.

Code:
```c
#include <stdio.h>

int main()
{
    int num = 1;

    for (int i = 1; i <= 3; i++)
    {
        for (int j = 1; j <= 3; j++)
        {
            printf("%d ", num);
            num++;
        }
        printf("\n");
    }
    return 0;
}
```

Output:
```text
1 2 3 
4 5 6 
7 8 9 
```

Explanation: A counter (`num`) increases on every inner-loop step, filling the "grid" row by row.

### Example 5 — Practical problem: Compare every pair of students' marks

Problem: You have marks of 4 students. Print every possible pair and compare who scored higher.

Code:
```c
#include <stdio.h>

int main()
{
    int marks[4] = {70, 85, 60, 90};

    for (int i = 0; i < 4; i++)
    {
        for (int j = i + 1; j < 4; j++)
        {
            if (marks[i] > marks[j])
            {
                printf("Student %d scored higher than Student %d\n", i + 1, j + 1);
            }
            else
            {
                printf("Student %d scored higher than Student %d\n", j + 1, i + 1);
            }
        }
    }
    return 0;
}
```

Output:
```text
Student 2 scored higher than Student 1
Student 1 scored higher than Student 3
Student 4 scored higher than Student 1
Student 2 scored higher than Student 3
Student 4 scored higher than Student 2
Student 4 scored higher than Student 3
```

Explanation: The outer loop picks a student, the inner loop (`j = i + 1`) compares them against every student that comes after — a common pattern for pairwise comparisons.

---

## 8. `switch-case` in C

### What is `switch-case`?

`switch-case` lets you choose between many possible actions based on the value of a single variable or expression — like a multiple-choice menu for your code.

### Why do we use it?

It makes code that checks "is this value 1? is it 2? is it 3?..." much cleaner than writing many `if-else` statements in a row.

### When is it better than multiple `if-else`?

When you are comparing **one variable** against **several exact values** (like a menu choice, a day number, or a single character). If you need to check ranges (like `marks > 90`) or multiple different variables, `if-else` is usually better.

### Syntax

```c
switch (expression)
{
    case value1:
        // code
        break;

    case value2:
        // code
        break;

    default:
        // code
}
```

### How execution flows

1. `expression` is evaluated once.
2. C compares it to `value1`. If it matches, the code under `case value1` runs.
3. When `break` is reached, execution jumps out of the entire `switch` block.
4. If no `case` matches, the code under `default` runs (if present).

### Fall-through (missing `break`)

If you **forget `break`**, execution doesn't stop at the end of that case — it "falls through" and keeps running the code in the *next* case too, even though it didn't match. This is a common source of bugs for beginners.

```c
switch (2)
{
    case 1:
        printf("One\n");
    case 2:
        printf("Two\n");
    case 3:
        printf("Three\n");
    default:
        printf("Default\n");
}
```
Output:
```text
Two
Three
Default
```
Because `case 2` has no `break`, it "falls through" into `case 3` and `default` as well.

---

## 9. `switch-case` Examples

### Example 1 — Day of the week

Problem: Given a number 1–7, print the corresponding day name.

Input:
```text
1
```

Logic: Match the number to a case, print the day, and `break`.

Code:
```c
#include <stdio.h>

int main()
{
    int day;
    printf("Enter day number (1-7): ");
    scanf("%d", &day);

    switch (day)
    {
        case 1: printf("Monday\n"); break;
        case 2: printf("Tuesday\n"); break;
        case 3: printf("Wednesday\n"); break;
        case 4: printf("Thursday\n"); break;
        case 5: printf("Friday\n"); break;
        case 6: printf("Saturday\n"); break;
        case 7: printf("Sunday\n"); break;
        default: printf("Invalid day number\n");
    }
    return 0;
}
```

Output:
```text
Monday
```

Explanation: `day` is compared against each case in order until a match is found.

### Example 2 — Simple calculator

Problem: Take two numbers and an operator (`+ - * /`), then perform the calculation.

Code:
```c
#include <stdio.h>

int main()
{
    float a, b, result;
    char op;

    printf("Enter first number: ");
    scanf("%f", &a);
    printf("Enter operator (+ - * /): ");
    scanf(" %c", &op);
    printf("Enter second number: ");
    scanf("%f", &b);

    switch (op)
    {
        case '+':
            result = a + b;
            printf("Result = %.2f\n", result);
            break;
        case '-':
            result = a - b;
            printf("Result = %.2f\n", result);
            break;
        case '*':
            result = a * b;
            printf("Result = %.2f\n", result);
            break;
        case '/':
            if (b != 0)
            {
                result = a / b;
                printf("Result = %.2f\n", result);
            }
            else
            {
                printf("Error: Division by zero\n");
            }
            break;
        default:
            printf("Invalid operator\n");
    }
    return 0;
}
```

Output:
```text
Enter first number: 10
Enter operator (+ - * /): *
Enter second number: 5
Result = 50.00
```

Explanation: The character entered (`op`) decides which arithmetic to perform. Division checks for zero before dividing.

### Example 3 — Menu-driven program

Problem: Show a menu and act on the choice.

Code:
```c
#include <stdio.h>

int main()
{
    int choice;
    float a, b;

    printf("1. Add\n2. Subtract\n3. Multiply\n4. Divide\n5. Exit\n");
    printf("Enter choice: ");
    scanf("%d", &choice);

    if (choice >= 1 && choice <= 4)
    {
        printf("Enter two numbers: ");
        scanf("%f %f", &a, &b);
    }

    switch (choice)
    {
        case 1: printf("Sum = %.2f\n", a + b); break;
        case 2: printf("Difference = %.2f\n", a - b); break;
        case 3: printf("Product = %.2f\n", a * b); break;
        case 4:
            if (b != 0)
                printf("Quotient = %.2f\n", a / b);
            else
                printf("Cannot divide by zero\n");
            break;
        case 5: printf("Exiting...\n"); break;
        default: printf("Invalid choice\n");
    }
    return 0;
}
```

Output:
```text
1. Add
2. Subtract
3. Multiply
4. Divide
5. Exit
Enter choice: 1
Enter two numbers: 4 6
Sum = 10.00
```

Explanation: The menu number chosen decides which operation block runs.

### Example 4 — Student grade/category

Problem: Given a grade letter (A, B, C, D, F), print a message about performance.

Code:
```c
#include <stdio.h>

int main()
{
    char grade;

    printf("Enter grade (A/B/C/D/F): ");
    scanf(" %c", &grade);

    switch (grade)
    {
        case 'A': printf("Excellent!\n"); break;
        case 'B': printf("Very Good\n"); break;
        case 'C': printf("Good\n"); break;
        case 'D': printf("Needs Improvement\n"); break;
        case 'F': printf("Failed\n"); break;
        default: printf("Invalid grade\n");
    }
    return 0;
}
```

Output:
```text
Enter grade (A/B/C/D/F): A
Excellent!
```

Explanation: Each letter maps directly to one message — a perfect use case for `switch`.

### Example 5 — Practical problem: Traffic light action

Problem: Given a traffic light color, print what a driver should do.

Code:
```c
#include <stdio.h>

int main()
{
    char light;

    printf("Enter light color (R/Y/G): ");
    scanf(" %c", &light);

    switch (light)
    {
        case 'R':
        case 'r':
            printf("Stop\n");
            break;
        case 'Y':
        case 'y':
            printf("Get ready\n");
            break;
        case 'G':
        case 'g':
            printf("Go\n");
            break;
        default:
            printf("Invalid signal\n");
    }
    return 0;
}
```

Output:
```text
Enter light color (R/Y/G): g
Go
```

Explanation: Notice `case 'R':` and `case 'r':` are stacked together with no code between them — this intentionally uses fall-through so both uppercase and lowercase letters trigger the same result.

---

## 10. Practical Problems Using Loops and `switch-case`

### Featured Problem — 300 Students, 3 Groups

Problem: There are 300 students with roll numbers 1–300. Roll numbers 1–100 belong to Group A, 101–200 to Group B, and 201–300 to Group C. Write a program that goes through all 300 roll numbers and prints which group each belongs to.

- **How the loop works:** A `for` loop runs from `roll = 1` to `roll = 300`, one roll number per iteration.
- **How roll numbers are generated:** The loop counter `roll` itself acts as the roll number — no need for a separate variable.
- **How the groups are determined:** Inside the loop, an `if-else` (or `switch` on a calculated group number) checks which range `roll` falls into.
- **Why the conditions work:** The ranges 1–100, 101–200, 201–300 don't overlap, so each roll number matches exactly one condition.

Code:
```c
#include <stdio.h>

int main()
{
    for (int roll = 1; roll <= 300; roll++)
    {
        if (roll >= 1 && roll <= 100)
        {
            printf("Roll %d -> Group A\n", roll);
        }
        else if (roll >= 101 && roll <= 200)
        {
            printf("Roll %d -> Group B\n", roll);
        }
        else
        {
            printf("Roll %d -> Group C\n", roll);
        }
    }
    return 0;
}
```

Example output (shortened):
```text
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

### 10 More Practical Problems

1. **Marks to grade:** For a mark 0–100, print grade A (≥80), B (≥60), C (≥40), F (below 40) using `if-else` inside a loop over multiple students.
2. **Electricity bill:** Loop through units consumed; charge a different rate per slab (e.g., first 100 units at one rate, next 100 at a higher rate).
3. **Salary calculation:** Loop through employees; use `switch` on a designation code (1=Manager, 2=Engineer, 3=Intern) to assign different base salaries.
4. **Shopping bill:** Loop asking for item prices until the user enters `0`, then print the total.
5. **ATM menu:** Use `do-while` + `switch` to repeatedly show "1. Balance 2. Deposit 3. Withdraw 4. Exit" until the user exits.
6. **Restaurant menu:** Use `switch` for menu item numbers (1=Burger, 2=Pizza...) inside a loop that keeps taking orders until "0. Done."
7. **Number classification:** Loop through a list of numbers and classify each as positive, negative, or zero.
8. **Multiplication tables for a range:** Print tables for every number from 2 to 12 using nested loops.
9. **Counting students by grade:** Loop through a class's marks and count how many students got A, B, C, or F.
10. **Finding maximum and minimum:** Loop through a list of numbers, keeping track of the largest and smallest seen so far.

*(Other good practice areas: sum and average of marks, checking even/odd, calculating factorial, and checking if a number is prime — all listed again in the Practice Questions section below.)*

---

## 11. Loop + `switch-case` Combined Problems

### Example — ATM System

```text
ATM System

1. Check Balance
2. Deposit
3. Withdraw
4. Exit
```

The program should repeatedly show the menu until the user chooses `Exit`.

- **Why `do-while` is useful for the menu:** The menu must be shown at least once, and we don't know in advance how many times the user will use it — perfect for `do-while`.
- **Why `switch-case` is useful for selecting the operation:** The user's choice is a single number (1–4), and `switch` cleanly matches it to one specific action.
- **Why `break` is needed:** Without `break`, the program would "fall through" into the next case's code after finishing the intended one.
- **How the loop controls repetition:** The `do-while` condition (`choice != 4`) keeps the whole menu-and-switch cycle repeating until the user picks Exit.

Code:
```c
#include <stdio.h>

int main()
{
    int choice;
    float balance = 1000, amount;

    do
    {
        printf("\n1. Check Balance\n2. Deposit\n3. Withdraw\n4. Exit\n");
        printf("Enter choice: ");
        scanf("%d", &choice);

        switch (choice)
        {
            case 1:
                printf("Balance = %.2f\n", balance);
                break;
            case 2:
                printf("Enter deposit amount: ");
                scanf("%f", &amount);
                balance += amount;
                printf("New balance = %.2f\n", balance);
                break;
            case 3:
                printf("Enter withdraw amount: ");
                scanf("%f", &amount);
                if (amount > balance)
                    printf("Insufficient balance\n");
                else
                {
                    balance -= amount;
                    printf("New balance = %.2f\n", balance);
                }
                break;
            case 4:
                printf("Thank you!\n");
                break;
            default:
                printf("Invalid choice\n");
        }

    } while (choice != 4);

    return 0;
}
```

### 4 More Combined Problems

1. **Restaurant ordering system:** `do-while` shows the food menu; `switch` adds the chosen item's price to a running bill; loop continues until "0. Checkout."
2. **Grade counter for a class:** A `for` loop runs once per student; a `switch` on the letter grade increases a counter (`countA`, `countB`, etc.) for that grade.
3. **Simple quiz program:** A `for` loop asks 5 questions; a `switch` checks the answer choice (A/B/C/D) against the correct one and increases a score.
4. **Multi-level menu system:** A `do-while` main menu uses `switch` to enter a sub-menu (e.g., "Settings"), which itself is another `do-while` + `switch` pair, showing how loops and switches can be combined in layers.

---

## 12. Common Mistakes

**Mistake 1 — Off-by-one errors**
```c
for (i = 0; i < 10; i++)   // runs 10 times: 0 to 9
for (i = 0; i <= 10; i++)  // runs 11 times: 0 to 10
```
Fix: Decide clearly whether you want the last value included, and use `<` or `<=` accordingly.

**Mistake 2 — Forgetting to update the counter (`i++`)**
```c
// Wrong: infinite loop, i never changes
int i = 1;
while (i <= 5)
{
    printf("%d\n", i);
}
```
```c
// Correct
int i = 1;
while (i <= 5)
{
    printf("%d\n", i);
    i++;
}
```

**Mistake 3 — Incorrect loop condition (never true)**
```c
// Wrong: condition is false immediately, loop body never runs
for (int i = 10; i < 5; i++) { printf("%d\n", i); }
```
Fix: Make sure the starting value and condition can actually be true together.

**Mistake 4 — Using `=` instead of `==`**
```c
// Wrong: this ASSIGNS 5 to x (always true!), doesn't compare
if (x = 5) { ... }
```
```c
// Correct: this COMPARES x to 5
if (x == 5) { ... }
```

**Mistake 5 — Forgetting `break` in `switch`**
```c
// Wrong: falls through every case below the match
switch (2)
{
    case 1: printf("One\n");
    case 2: printf("Two\n");
    case 3: printf("Three\n");
}
```
```c
// Correct
switch (2)
{
    case 1: printf("One\n"); break;
    case 2: printf("Two\n"); break;
    case 3: printf("Three\n"); break;
}
```

**Mistake 6 — Forgetting `default`**
Without `default`, unexpected input is silently ignored, which can hide bugs. Always add a `default` case to catch invalid input.

**Mistake 7 — Incorrect `switch` syntax**
```c
// Wrong: switch needs parentheses and case needs a colon, not a semicolon
switch choice
{
    case 1; printf("One\n"); break;
}
```
```c
// Correct
switch (choice)
{
    case 1: printf("One\n"); break;
}
```

**Mistake 8 — Division by zero**
```c
// Wrong: crashes or gives undefined behavior if b is 0
result = a / b;
```
```c
// Correct: check first
if (b != 0)
    result = a / b;
else
    printf("Cannot divide by zero\n");
```

**Mistake 9 — Incorrect nested-loop logic (mixing up `i` and `j`)**
```c
// Wrong: inner loop uses i instead of j as its own condition variable, causing confusion
for (int i = 1; i <= 3; i++)
{
    for (int j = 1; j <= 3; i++)   // should be j++, not i++
    {
        printf("%d %d\n", i, j);
    }
}
```
Fix: Make sure each loop updates **its own** counter variable, not the outer one.

**Mistake 10 — Infinite loop from a condition that can't change**
```c
// Wrong: i is reset inside the loop, so it never reaches the exit condition
for (int i = 0; i < 5; i++)
{
    i = 0;
    printf("%d\n", i);
}
```
Fix: Never reset the loop counter back inside the loop body unless that's truly intended.

---

## 13. Quick Revision

### Loop Cheat Sheet

```text
for       → best when the number of iterations is known
while     → best when repetition depends on a condition
do-while  → executes at least once
```

### Switch Cheat Sheet

```text
switch  → selects based on a value
case    → possible matching value
break   → exits switch (prevents fall-through)
default → runs when no case matches
```

### break vs continue

```text
break    → completely exits the loop
continue → skips the current iteration, loop keeps going
```

---

## 14. Practice Questions

Try to solve these on your own — no solutions are given here.

### Easy

1. Write a program to print all multiples of 3 from 1 to 30.
2. Write a program to count how many vowels are in a word (loop through each character).
3. Write a program to print the first `n` natural numbers in reverse order.
4. Write a program that uses `switch` to print the name of a month given its number (1–12).
5. Write a program to check whether a number entered by the user is even or odd, using `if-else` inside a loop that keeps asking until the user enters `-1`.

### Medium

6. Write a program to calculate the factorial of a number using a loop.
7. Write a program to check whether a number is prime.
8. Write a program to print the Fibonacci sequence up to `n` terms.
9. Write a program that uses `switch` to convert a single-digit number (0–9) into its English word (e.g., 3 → "Three").
10. Write a program to reverse the digits of a number (e.g., 1234 → 4321).

### Hard

11. Write a program to print a diamond star pattern using nested loops.
12. Write a program to find the sum of all prime numbers between 1 and 100.
13. Write a program that finds the largest and smallest number in a list of 10 numbers entered by the user.
14. Write a menu-driven program with `switch` and a loop that supports: Add, Subtract, Multiply, Divide, and Exit, and keeps a running history count of how many operations were performed.
15. Write a program to check whether a number is a palindrome (reads the same forward and backward) using a `while` loop.

### Exam-Style / Practical

16. A school has 500 students with roll numbers 1–500. Roll numbers 1–150 are in Section A, 151–350 in Section B, and 351–500 in Section C. Write a program that prints each student's section.
17. Write a program to calculate an electricity bill where the first 100 units cost 5 taka/unit, and every unit after that costs 8 taka/unit.
18. Write a program that acts as a restaurant billing system: show a menu of 5 items with prices, let the user order multiple items (looping until they choose "Done"), and print an itemized bill with the total.
19. Write a program that takes the marks of 5 subjects for a student, calculates the total and average, and then uses `switch` (on a calculated grade number) to print their letter grade.
20. Write an ATM simulation program that uses `do-while` and `switch` to support Check Balance, Deposit, Withdraw, and Exit, and prevents withdrawing more money than the current balance.
