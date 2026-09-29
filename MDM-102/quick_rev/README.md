# MDM-102 · Quick Revision — C Programming

Exam-oriented revision notes for **C Programming (MDM-102)**, written in GitHub-flavoured Markdown. Every file is self-contained: definitions, syntax, compilable programs with their exact output, comparison tables, and a quick-revision section at the end.

> **In a hurry?** Read [`c_programming_260929.1.md`](c_programming_260929.1.md) (concise answers, ~1 h), then skim the *Quick Revision* tables at the end of [`c_programming_260929.0.md`](c_programming_260929.0.md).

---

## Contents

```text
quick_rev/
├── c_programming_260907.0.md   # Class-test prep: operators, conversions, decisions, 12 pattern programs
├── c_programming_260929.0.md   # Complete exam answers — 19 topics, full depth + practice questions
├── c_programming_260929.1.md   # Same 20 questions, condensed exam-style answers
├── c_programming_sug.md        # Computer fundamentals + C basics study guide (base edition)
└── c_programming_sug_2.md      # Same guide, enhanced with worked/real-life examples
```

| File | Size | Lines | C code blocks | Best for |
|---|---|---|---|---|
| [`c_programming_260907.0.md`](c_programming_260907.0.md) | 27 KB | 1,245 | 38 | Class tests; loop and pattern programs |
| [`c_programming_260929.0.md`](c_programming_260929.0.md) | 57 KB | 2,270 | 84 | Deep revision; writing full-mark answers |
| [`c_programming_260929.1.md`](c_programming_260929.1.md) | 37 KB | 1,147 | 41 | Last-day revision; 20 short answers |
| [`c_programming_sug.md`](c_programming_sug.md) | 70 KB | 1,493 | 10 | Foundations, viva, cheat sheets |
| [`c_programming_sug_2.md`](c_programming_sug_2.md) | 74 KB | 1,592 | 16 | Same as above, with extra examples |

---

## What's in each file

### 1 · `c_programming_260907.0.md` — Class Test Preparation Notes
Operators and control flow, followed by a long run of loop-pattern programs.

- **Concepts (§1–7):** operator precedence and associativity table · type casting · implicit vs explicit conversion · statements in C · null statement · decision-making (`if`, `if-else`, nested, `else-if` ladder) · `switch`
- **Loop programs (§8–20):** half / full / inverted / reversed pyramids with stars and numbers · number patterns · Floyd's triangle · character pyramid
- **Extras:** common mistakes in pyramid programs (with a wrong-vs-correct off-by-one example) · quick revision table of the loop condition for each pattern

### 2 · `c_programming_260929.0.md` — Complete Exam Answers
The most thorough file. A linked table of contents covers 19 core topics, each with definition, rules, examples, programs and output.

- **Topics:** identifiers · keywords · data types · constants and variables · ways of defining constants · `i++` vs `++i` · pre- vs post-increment · conditional operator · type casting · `break` / `continue` · arrays · type conversion · implicit vs explicit conversion · statements · `if` · `switch` · odd/even with loops · 2D and 3D arrays · I/O functions
- **Back matter:** quick revision tables · frequently confused concepts · C syntax at a glance · **20 practice questions**
- **Conventions:** standard C99 or later; machine-dependent values are flagged in the text

### 3 · `c_programming_260929.1.md` — Exam-Style Answers (Q1–Q20)
The same question set as file 2, condensed into the format a written exam rewards: definition → purpose → program → output → comparison table.

- Splits *Rules of Identifier* and *Keyword* into their own questions (Q2, Q3), giving 20 questions
- Ends with a one-line-per-topic **Quick Revision Summary**
- Sizes assume a typical 64-bit GCC system (old Turbo C `int` = 2 bytes)

### 4 · `c_programming_sug.md` — Computer Fundamentals & C Programming Study Guide
A ground-up guide that starts before C itself: what a computer system is, how to plan a solution (algorithms, pseudocode, flowcharts), then the language's building blocks.

- **Questions:** computer system and software · algorithm and pseudocode · largest of three numbers (with Mermaid and ASCII flowcharts) · C tokens and identifiers · keywords, data types, constants, variables · operators
- **Cheat sheets:** keyword table · data types · format specifiers · ASCII table · escape sequences · operator precedence · identifier rules · naming guide · constants
- **Exam kit:** algorithm and pseudocode templates · flowchart symbols · common exam mistakes · **viva questions** · memory tricks · glossary · exam tips

### 5 · `c_programming_sug_2.md` — Enhanced Edition of the Above
The same 30-section structure and headings as `c_programming_sug.md`, with about 100 added lines: an **Additional Example** and several **Real-life Example** blocks so each of Q1–Q6 has a worked example directly after its explanation. If you only want one of the two, use this one.

---

## Topic map — where to find what

| Topic | `260907.0` | `260929.0` | `260929.1` | `sug` / `sug_2` |
|---|:---:|:---:|:---:|:---:|
| Computer system, software, algorithms, flowcharts | | | | ✔ |
| Identifiers, keywords | | ✔ | ✔ | ✔ |
| Data types, constants, variables | | ✔ | ✔ | ✔ |
| Operators (general) | | | | ✔ |
| Operator precedence and associativity | ✔ | | | ✔ |
| `i++` vs `++i`, conditional operator | | ✔ | ✔ | ✔ |
| Type casting and conversion | ✔ | ✔ | ✔ | |
| `if` / `switch` | ✔ | ✔ | ✔ | |
| `break` / `continue`, odd-even loops | | ✔ | ✔ | |
| Statements (incl. null statement) | ✔ | ✔ | ✔ | |
| Arrays (1D, 2D, 3D) | | ✔ | ✔ | |
| I/O functions (`printf`, `scanf`, `fgets`, …) | | ✔ | ✔ | |
| Pattern programs (pyramids, Floyd's triangle) | ✔ | | | |
| Viva questions, glossary, ASCII table | | | | ✔ |
| Practice questions | | ✔ | | |

---

## Suggested study path

1. **Foundations** — `c_programming_sug_2.md`: sections on tokens, data types and operators, then the cheat sheets.
2. **Core exam topics** — `c_programming_260929.0.md`: read a topic, then attempt the matching practice question without looking.
3. **Fast revision** — `c_programming_260929.1.md`: use as the last-night pass; check yourself against its Quick Revision Summary.
4. **Programs** — `c_programming_260907.0.md`: type out the pattern programs from memory; the loop-condition table at the end is the shortcut.
5. **Viva** — the Viva Questions and Memory Tricks sections in `c_programming_sug_2.md`.

---

## Running the code

Every program is standard C. Compile with warnings on:

```bash
gcc -std=c99 -Wall -Wextra file.c -o file && ./file
```

Some programs deliberately demonstrate undefined or unspecified behaviour (for example `printf("%d %d", i++, i)`). Expect compiler warnings on those; the surrounding text explains why.

---

## Conventions

- **File names:** `c_programming_<YYMMDD>.<n>.md`, where the date is when the set was generated and `<n>` distinguishes versions from the same day. Files named `_sug` are the broader study guides.
- **Layout of an answer:** definition → rules or syntax → program → output → comparison table.
- **Platform notes:** sizes and outputs assume 64-bit GCC unless a section says otherwise.
- **Flowcharts:** drawn in both Mermaid (renders on GitHub) and ASCII (renders anywhere).

---

## Housekeeping notes

- `c_programming_sug.md` begins with a stray line containing a GitHub attachment link. It looks like a paste artifact and can be deleted.
- `c_programming_sug_2.md` is a strict superset of `c_programming_sug.md`. Keep both only if you want the un-enhanced version for reference.
- `c_programming_260929.0.md` and `c_programming_260929.1.md` cover the same questions at different depths. Keep both; they serve different purposes.

---

*Part of [`butex-notes`](../..) · BUTEX · MDM-102. Notes are for revision; always confirm against your course textbook and lecturer's slides.*
