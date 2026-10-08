# CP Viva: Important Short Questions

**How to use this file**

- Questions marked with ⭐ are the most commonly asked. More stars means higher priority.
- Questions marked with ➕ were **added** beyond your original PDF notes.
- Answers are written short on purpose. Say the one-line answer first, then add an example if the teacher wants more.

---

## 1. Basics of C Programming

1. **What is C?**
   C is a general-purpose, procedural programming language used to develop applications and system software such as operating systems.

2. ➕ **Who created C, and when?**
   Dennis Ritchie created C at Bell Labs around 1972.

3. **What is a program?**
   A program is a set of instructions given to a computer to perform a specific task.

4. ➕ **What is a compiler?**
   A compiler translates the whole source code (written in C) into machine code that the computer can run. Example: `gcc`.

5. ➕ **What are the steps from writing code to running it?**
   Write the source code (`.c`), compile it (`gcc file.c -o file`), then run it (`./file`).

6. ➕ **What is source code?**
   The human-readable program text that the programmer writes.

7. ➕ **What is the structure of a basic C program?**
   ```c
   #include <stdio.h>      /* header file */

   int main(void) {        /* execution starts here */
       printf("Hello\n");
       return 0;           /* 0 means success */
   }
   ```

8. ➕ **Why is `main()` important?**
   Every C program starts executing from the `main()` function.

9. ➕ **What does `return 0;` mean?**
   It tells the operating system that the program finished successfully.

10. ➕ **What is a comment? How do you write one?**
    A comment is text ignored by the compiler, used to explain code. Single line: `// comment`. Multiple lines: `/* comment */`.

11. ➕ **What is a keyword? Give examples.**
    A keyword is a reserved word with a fixed meaning in C, so it cannot be used as a variable name. Examples: `int`, `if`, `else`, `for`, `while`, `return`.

12. ➕ **What is an identifier? What are the naming rules?**
    An identifier is the name of a variable, function, or array. Rules: it can contain letters, digits, and underscore; it cannot start with a digit; it cannot contain spaces; it cannot be a keyword.

13. ➕ **Is C case-sensitive?**
    Yes. `roll` and `Roll` are different identifiers.

14. ➕ **Why is a semicolon `;` used?**
    It marks the end of a statement.

---

## 2. Variables, Constants, and Data Types

15. **What is a variable?**
    A variable is a named memory location used to store data, whose value can change during program execution.

16. **Why do we use variables?**
    To store and manipulate data in a program.

17. ➕ **What is the difference between declaration and initialization?**
    Declaration creates the variable: `int a;`. Initialization gives it a first value: `int a = 5;`.

18. **What is a constant?**
    A constant is a fixed value that does not change during program execution.

19. ➕ **How do you create a constant in C?**
    Using `const int MAX = 100;` or the preprocessor: `#define MAX 100`.

20. **What is a data type?**
    A data type specifies what kind of data a variable can store.

21. **What is `int`?**
    `int` stores integer (whole-number) values, such as 10, 25, -5.

22. **Why do we use `float`?**
    `float` stores fractional or decimal numbers, such as 3.14 or 5.5.

23. **What is `char`?**
    `char` stores a single character, such as `'A'`, `'b'`, or `'5'`.

24. **What is `double`?**
    `double` stores floating-point numbers with higher precision than `float`.

25. ➕ **What is the difference between `float` and `double`?**
    `double` has more precision and uses more memory (typically 8 bytes versus 4 bytes for `float`).

26. ➕ **What is the difference between `'A'` and `"A"`?**
    `'A'` is a single character. `"A"` is a string, which is `'A'` followed by the null character `'\0'`.

27. ➕ **What is the size of `int`, `char`, `float`, `double`?**
    Typically: `char` 1 byte, `int` 4 bytes, `float` 4 bytes, `double` 8 bytes. These can vary by system.

28. ➕ **What is `sizeof`?**
    An operator that gives the size, in bytes, of a data type or variable: `sizeof(int)`.

29. ➕ **What happens if you use a variable without initializing it?**
    It holds an unpredictable leftover (garbage) value.

30. ➕ **What is the difference between local and global variables?**
    A local variable is declared inside a function and can only be used there. A global variable is declared outside all functions and can be used anywhere in the file.

---

## 3. `printf()` and `scanf()`

31. **What is `printf()`?**
    `printf()` displays output on the screen.

32. **What is `scanf()`?**
    `scanf()` takes input from the keyboard.

33. ⭐ **Why do we use `&` in `scanf()`?**
    `&` gives the address of the variable where the input value will be stored.
    Example: `scanf("%d", &a);`

34. **What is `%d`?**
    A format specifier for an integer (`int`).

35. **What is `%f`?**
    A format specifier for floating-point values.

36. **What is `%c`?**
    A format specifier for a single character.

37. **What is `%s`?**
    A format specifier for a string.

38. ➕ **What format specifier is used for `double`?**
    `%f` in `printf`, but `%lf` in `scanf`.

39. ➕ **How do you print a number with 2 digits after the decimal point?**
    `printf("%.2f", x);`

40. ➕ **How do you print a literal `%` sign?**
    Write `%%`: `printf("100%%");`

41. ➕ **What is `\n`? What is `\t`?**
    `\n` is a newline, and `\t` is a tab. These are called escape sequences.

42. **Why is `stdio.h` used?**
    `stdio.h` is the standard input/output header file. It provides functions such as `printf()` and `scanf()`.

43. **What does `#include <stdio.h>` mean?**
    It includes the standard input/output header file in the program.

44. ➕ **What is a header file?**
    A file that contains declarations of functions and macros. Examples: `stdio.h`, `math.h`, `string.h`.

45. ➕ **What is the difference between `printf` and `scanf`?**
    `printf` sends output to the screen, and `scanf` reads input from the keyboard.

---

## 4. Operators ⭐

46. **What is an operator?**
    An operator is a symbol that performs an operation on operands.

47. **What is an arithmetic operator?**
    Operators used for mathematical operations. Examples: `+`, `-`, `*`, `/`, `%`.

48. ⭐ **What is the `%` operator?**
    `%` is the modulus operator. It gives the remainder after division.
    Example: `7 % 2 = 1`.

49. ➕ **What is `7 / 2` in C when both are integers?**
    `3`, because integer division drops the decimal part. Use `7 / 2.0` to get `3.5`.

50. **What is `=`?**
    `=` is the assignment operator. It assigns a value to a variable. Example: `a = 10;`.

51. **What is `==`?**
    `==` is the equality comparison operator. It checks whether two values are equal.

52. ⭐ **What is the difference between `=` and `==`?**
    `=` assigns a value, while `==` compares two values.

53. **What is `>`?**
    It checks whether the left value is greater than the right value.

54. **What is `<`?**
    It checks whether the left value is smaller than the right value.

55. ➕ **What are `>=`, `<=`, and `!=`?**
    Greater than or equal to, less than or equal to, and not equal to.

56. ➕ **What are relational operators?**
    Operators that compare two values and give 1 (true) or 0 (false): `== != > < >= <=`.

57. ➕ **What are logical operators?**
    `&&` (AND), `||` (OR), `!` (NOT). They combine or reverse conditions.
    Example: `if (age >= 18 && age <= 60)`.

58. ➕ **What is the result of `5 > 3 && 2 > 4`?**
    `0` (false), because `&&` needs both sides to be true.

59. ➕ **What are assignment shortcuts?**
    `a += 5` means `a = a + 5`. Similarly `-=`, `*=`, `/=`, `%=`.

60. ➕ **What is the ternary (conditional) operator?**
    A short form of if-else: `condition ? value_if_true : value_if_false;`
    Example: `max = (a > b) ? a : b;`

---

## 5. `++i` and `i++` ⭐⭐⭐

61. **What is the `++` operator?**
    `++` is the increment operator. It increases the value of a variable by 1.

62. **Why do we use `i++`?**
    To increase the value of `i` by 1, especially in loops.

63. **What is `++i`?**
    The pre-increment operator. The value is increased by 1 first, then used.

64. **What is `i++`?**
    The post-increment operator. The current value is used first, then increased by 1.

65. ⭐ **What is the difference between `++i` and `i++`?**
    `++i` increments first and then uses the value. `i++` uses the value first and then increments it.

66. **What is `--i`?**
    Pre-decrement. It decreases the value first and then uses it.

67. **What is `i--`?**
    Post-decrement. It uses the value first and then decreases it.

68. ➕ **Example to show the difference?**
    ```c
    int i = 5;
    int a = i++;   /* a = 5, then i becomes 6 */

    int j = 5;
    int b = ++j;   /* j becomes 6, then b = 6 */
    ```

---

## 6. Type Conversion ⭐

69. **What is type conversion?**
    Converting one data type into another data type.

70. **What is implicit type conversion?**
    Conversion done automatically by the compiler (for example, `int` to `float` in a mixed expression).

71. **What is explicit type conversion?**
    Conversion done manually by the programmer using type casting.
    Example: `float x = (float)7 / 5;`

72. **Why is type casting used?**
    To convert a value into a required data type and get the desired result.

73. ➕ **Why does `float x = 7 / 5;` give `1.0` and not `1.4`?**
    Both `7` and `5` are integers, so integer division gives `1` before it is stored in `x`. Cast one of them: `(float)7 / 5`.

---

## 7. `if` Statement ⭐⭐⭐

74. **Why do we use the `if` statement?**
    To execute a statement or block only when a given condition is true.

75. **What happens if the condition of `if` is false?**
    The statement inside the `if` block is skipped.

76. **What are the forms of the `if` statement?**
    1. Simple `if`
    2. `if-else`
    3. Nested `if-else`
    4. `else-if` ladder

77. **Why do we use `if-else`?**
    When there are two possible outcomes: one for true and another for false.

78. **What is nested `if-else`?**
    An `if-else` statement placed inside another `if` or `else` block.

79. **When do we use nested `if-else`?**
    When a second condition needs to be checked after the first condition.

80. **What is an `else-if` ladder?**
    A chain of conditions checked from top to bottom. The code of the first true condition runs, and the rest are skipped.

81. **When do we use an `else-if` ladder?**
    When there are multiple conditions or multiple possible choices.
    Example: marks to grade A, B, C, D, F.

82. **Why not use simple `if` for multiple conditions?**
    It can be done, but an `else-if` ladder is more suitable when only one result should be selected from several conditions.

83. ➕ **Example of an `else-if` ladder?**
    ```c
    if (marks >= 80) {
        printf("A+\n");
    } else if (marks >= 60) {
        printf("B\n");
    } else if (marks >= 40) {
        printf("C\n");
    } else {
        printf("F\n");
    }
    ```

84. ➕ **What is a common mistake with `if`?**
    Writing `if (a = 5)` instead of `if (a == 5)`. The first assigns 5 and is always true.

---

## 8. `switch` ⭐⭐

85. **Why do we use the `switch` statement?**
    To select one option from several fixed choices.

86. **When is `switch` useful?**
    When there are multiple fixed choices, such as menu options, day numbers, or month numbers.

87. **What is `case`?**
    `case` specifies a particular value to be matched with the `switch` expression.

88. **What is `break` in `switch`?**
    `break` terminates the current `switch` execution and prevents execution from continuing to the next case.

89. **What is `default` in `switch`?**
    `default` executes when none of the cases matches.

90. **What is the difference between an `else-if` ladder and `switch`?**
    `else-if` suits multiple conditions (including ranges), while `switch` suits multiple fixed values or options.

91. ➕ **What happens if `break` is forgotten?**
    Execution "falls through" and continues running the next cases until a `break` or the end of the `switch`.

92. ➕ **Can `switch` be used with `float` or ranges?**
    No. The `switch` expression must be an integer type (including `char`), and each `case` must be a constant value.

93. ➕ **Example of `switch`?**
    ```c
    switch (day) {
        case 1: printf("Monday\n");  break;
        case 2: printf("Tuesday\n"); break;
        default: printf("Other day\n");
    }
    ```

---

## 9. Loops ⭐⭐⭐

94. **What is a loop?**
    A loop executes a block of statements repeatedly.

95. **Why do we use loops?**
    To repeat the same task multiple times without writing the same code again and again.

96. **What are the three main loops in C?**
    `for`, `while`, and `do-while`.

97. **What is a `while` loop?**
    It repeatedly executes a block of code while its condition is true.

98. **When do we use a `while` loop?**
    When the number of repetitions is not known in advance and the condition should be checked before execution.

99. **What is a `for` loop?**
    It repeats a block of statements, with initialization, condition, and increment/decrement written in one place.

100. **When do we use a `for` loop?**
     When the number of repetitions is known or can be determined in advance.

101. **What is a `do-while` loop?**
     It executes the loop body first and checks the condition afterward.

102. ⭐ **What is the main difference between `while` and `do-while`?**
     `while` checks the condition first, but `do-while` executes the body at least once before checking the condition.

103. **Which loops are entry-controlled?**
     `for` and `while`.

104. **Which loop is exit-controlled?**
     `do-while`.

105. **Why do we use `i++` in a loop?**
     To increase the loop counter by 1 so the loop condition eventually becomes false.

106. **What happens if we do not update the loop variable properly?**
     The loop may become an infinite loop.

107. ➕ **What is an infinite loop?**
     A loop whose condition never becomes false, such as `while (1) { }`.

108. ➕ **What are the three parts of a `for` loop?**
     `for (initialization; condition; update)`. Example: `for (int i = 1; i <= 5; i++)`.

109. ➕ **What is a nested loop?**
     A loop inside another loop. The inner loop runs fully for each iteration of the outer loop. Used for patterns and tables.

110. ➕ **Syntax of `do-while`? Is there anything special?**
     ```c
     do {
         /* body */
     } while (condition);     /* note the semicolon */
     ```

111. ➕ **Example: print 1 to 5 using all three loops?**
     ```c
     for (int i = 1; i <= 5; i++) printf("%d ", i);

     int j = 1;
     while (j <= 5) { printf("%d ", j); j++; }

     int k = 1;
     do { printf("%d ", k); k++; } while (k <= 5);
     ```

---

## 10. `break` and `continue` ⭐⭐

112. **What is the `break` statement?**
     `break` immediately terminates the loop or `switch` statement.

113. **What is the `continue` statement?**
     `continue` skips the remaining statements of the current iteration and moves to the next iteration.

114. **What is the difference between `break` and `continue`?**
     `break` terminates the loop completely, while `continue` only skips the current iteration.

115. ➕ **Example showing both?**
     ```c
     for (int i = 1; i <= 5; i++) {
         if (i == 3) continue;    /* skips 3 */
         if (i == 5) break;       /* stops at 5 */
         printf("%d ", i);
     }
     /* Output: 1 2 4 */
     ```

---

## 11. Arrays ⭐⭐

116. **What is an array?**
     An array is a collection of elements of the same data type stored under one name.

117. **Why do we use an array?**
     To store multiple values of the same data type using a single variable name.

118. **What is the first index of an array in C?**
     The first index is `0`.

119. **If an array has 5 elements, what is the last index?**
     `4`.

120. **How do you access the first element of an array `a`?**
     `a[0]`

121. **How do you access the third element?**
     `a[2]`

122. **Why does array indexing start from 0?**
     C uses zero-based indexing: the index is the offset from the start of the array, so the first element has offset 0.

123. **Can an array store different data types?**
     No. Normally, an array stores elements of the same data type.

124. ➕ **How do you declare and initialize an array?**
     ```c
     int marks[5];                       /* declaration */
     int a[5] = {10, 20, 30, 40, 50};    /* with values */
     ```

125. ➕ **What happens if you access `a[5]` in an array of size 5?**
     It is out of bounds, which is undefined behavior. C does not check bounds, so it may crash or give garbage.

126. ➕ **How do you read and print an array using a loop?**
     ```c
     for (int i = 0; i < 5; i++) {
         scanf("%d", &a[i]);
     }
     for (int i = 0; i < 5; i++) {
         printf("%d ", a[i]);
     }
     ```

127. ➕ **What is a 2D array?**
     An array of arrays, like a table with rows and columns: `int m[3][3];`

128. ➕ **What is a string in C?**
     A `char` array that ends with the null character `'\0'`. Example: `char name[] = "Itachi";`

129. ➕ **Which functions are used for strings?**
     From `<string.h>`: `strlen` (length), `strcpy` (copy), `strcmp` (compare), `strcat` (join).

---

## 12. Functions ➕

130. ➕ **What is a function?**
     A named block of code that performs one specific task and can be reused.

131. ➕ **Why do we use functions?**
     To reuse code, make programs shorter, and make them easier to read and debug.

132. ➕ **What are the parts of a function?**
     Return type, function name, parameters, and body.
     ```c
     int square(int x) {
         return x * x;
     }
     ```

133. ➕ **What is `void`?**
     It means "nothing": a function returns nothing, or takes no parameters.

134. ➕ **What is the difference between a parameter and an argument?**
     A parameter is the variable in the function definition. An argument is the actual value passed when calling the function.

135. ➕ **What is the difference between call by value and call by reference?**
     Call by value passes a copy, so the original does not change. Call by reference passes the address (a pointer), so the original can change.

136. ➕ **What is recursion?**
     When a function calls itself. It needs a base case to stop. Example: factorial.

---

## 13. Pointers ➕

137. ➕ **What is a pointer?**
     A variable that stores the address of another variable.

138. ➕ **What do `&` and `*` mean?**
     `&` gives the address of a variable. `*` gives the value stored at an address.
     ```c
     int x = 10;
     int *p = &x;          /* p holds the address of x */
     printf("%d", *p);     /* prints 10 */
     ```

139. ➕ **Why does `scanf` need `&`?**
     Because it needs the address of the variable so it can store the input value there.

---

## 14. Errors and Debugging ➕

140. ➕ **What is a syntax error?**
     A mistake that breaks C's grammar rules, so the program will not compile. Example: missing `;`.

141. ➕ **What is a logical error?**
     The program compiles and runs but gives the wrong result. Example: using `<` instead of `<=`.

142. ➕ **What is a runtime error?**
     An error that happens while the program runs. Example: dividing by zero.

143. ➕ **What are compiler warnings?**
     Messages about code that may be wrong but still compiles. Compile with `gcc -Wall -Wextra` to see them.

---

## 🔥 Rapid Fire (Quick Answers)

| Question | Answer |
|---|---|
| What is `int`? | Stores integer values |
| Why `float`? | Stores decimal or fractional values |
| Why `char`? | Stores a single character |
| What is `double`? | Stores decimals with higher precision |
| What is `printf()`? | Displays output |
| What is `scanf()`? | Takes input |
| What is `%d`? | Format specifier for integer |
| What is `%f`? | Format specifier for float |
| What is `%c`? | Format specifier for character |
| What is `%s`? | Format specifier for string |
| Why `&`? | Gives the address of the variable |
| What is `=`? | Assignment operator |
| What is `==`? | Equality comparison |
| What is `%`? | Gives the remainder |
| What is `++`? | Increases value by 1 |
| What is `--`? | Decreases value by 1 |
| What is `++i`? | Pre-increment (increase, then use) |
| What is `i++`? | Post-increment (use, then increase) |
| Why `if`? | To check a condition |
| Why `if-else`? | For two-way decisions |
| What is nested `if`? | An `if` inside another `if` |
| Why `else-if` ladder? | To check multiple conditions |
| Why `switch`? | To select one from multiple fixed choices |
| What is `case`? | One option/value of a `switch` |
| What is `default`? | Runs if no case matches |
| What is `break`? | Terminates the loop/switch |
| What is `continue`? | Skips the current iteration |
| What is `while`? | Repeats while the condition is true |
| Why `for`? | Repeated execution, especially when the count is known |
| What is `do-while`? | Executes first, checks the condition after |
| Entry-controlled loops? | `for`, `while` |
| Exit-controlled loop? | `do-while` |
| First index of an array? | `0` |
| Last index of a 5-element array? | `4` |
| ➕ What is a string? | A `char` array ending with `'\0'` |
| ➕ What is a function? | A reusable named block of code |
| ➕ What is a pointer? | A variable that stores an address |
| ➕ What is `sizeof`? | Gives the size in bytes |
| ➕ What is `&&` / `||` / `!`? | AND / OR / NOT |
| ➕ What is a syntax error? | A rule violation; the code will not compile |
| ➕ What is a logical error? | Code runs but gives the wrong result |

---

## ✍️ Commonly Asked Programs (Short Solutions)

**1. Even or odd**
```c
if (n % 2 == 0) printf("Even\n");
else printf("Odd\n");
```

**2. Largest of three numbers**
```c
int largest = a;
if (b > largest) largest = b;
if (c > largest) largest = c;
```

**3. Sum of 1 to N**
```c
int sum = 0;
for (int i = 1; i <= n; i++) sum += i;
```

**4. Factorial**
```c
long long fact = 1;
for (int i = 1; i <= n; i++) fact *= i;
```

**5. Prime check**
```c
int is_prime = (n >= 2);
for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) { is_prime = 0; break; }
}
```

**6. Reverse a number**
```c
int rev = 0;
while (n > 0) {
    rev = rev * 10 + n % 10;
    n /= 10;
}
```

**7. Swap using a third variable**
```c
int temp = a;
a = b;
b = temp;
```

**8. Average of array elements**
```c
int sum = 0;
for (int i = 0; i < n; i++) sum += a[i];
double avg = (double)sum / n;
```

---

## 💡 Last-Minute Viva Tips

- Answer in one or two simple sentences first, then give a small example if asked.
- If you do not know something, say what you do know about the topic instead of staying silent.
- Be ready to explain any program you wrote, line by line.
- Know how to trace a loop on paper: write the variable values for each iteration.
- The most repeated topics are `++i` vs `i++`, `=` vs `==`, `while` vs `do-while`, `break` vs `continue`, and `else-if` vs `switch`. Be perfect on these.
