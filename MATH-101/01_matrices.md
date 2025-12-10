---
subject: MATH-101
topic: Linear Algebra
date: 2025-12-10
tags: [notes, MATH-101, linear-algebra, matrices, vectors, eigenvalues]
---

# Linear Algebra - Complete Conceptual Guide

## Table of Contents
1. [Matrices and Matrix Operations](#matrices)
2. [Determinants](#determinants)
3. [Vector Spaces](#vector-spaces)
4. [Linear Independence and Basis](#linear-independence)
5. [Eigenvalues and Eigenvectors](#eigenvalues)
6. [Applications in Textile Engineering](#applications)

---

## 1. Matrices and Matrix Operations {#matrices}

### 1.1 What is a Matrix?

A **matrix** is a rectangular array of numbers arranged in rows and columns. It's denoted by capital letters (A, B, C).

**General form:**

$$
A = \begin{bmatrix}
a_{11} & a_{12} & \cdots & a_{1n} \\
a_{21} & a_{22} & \cdots & a_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
a_{m1} & a_{m2} & \cdots & a_{mn}
\end{bmatrix}_{m \times n}
$$

- **Order/Dimension**: $m \times n$ (m rows, n columns)
- **Square Matrix**: When $m = n$
- **Element**: Individual entry $a_{ij}$ (row i, column j)

### 1.2 Special Types of Matrices

**Identity Matrix** ($I_n$): Square matrix with 1's on diagonal, 0's elsewhere

$$
I_3 = \begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{bmatrix}
$$

**Zero Matrix** ($O$): All entries are zero

**Diagonal Matrix**: Non-zero elements only on diagonal

$$
D = \begin{bmatrix}
5 & 0 & 0 \\
0 & -3 & 0 \\
0 & 0 & 7
\end{bmatrix}
$$

**Triangular Matrices**:
- **Upper Triangular**: All entries below diagonal are zero
- **Lower Triangular**: All entries above diagonal are zero

**Symmetric Matrix**: $A = A^T$ (equal to its transpose)

**Skew-Symmetric Matrix**: $A^T = -A$

### 1.3 Matrix Addition and Subtraction

**Rule**: Matrices must have the **same dimensions** (same order).

**Operation**: Add/subtract corresponding elements.

$$
A + B = \begin{bmatrix}
a_{11}+b_{11} & a_{12}+b_{12} \\
a_{21}+b_{21} & a_{22}+b_{22}
\end{bmatrix}
$$

**Example 1:**

$$
A = \begin{bmatrix} 2 & 3 \\ -1 & 4 \end{bmatrix}, \quad B = \begin{bmatrix} 1 & 0 \\ 5 & -2 \end{bmatrix}
$$

$$
A + B = \begin{bmatrix} 2+1 & 3+0 \\ -1+5 & 4+(-2) \end{bmatrix} = \begin{bmatrix} 3 & 3 \\ 4 & 2 \end{bmatrix}
$$

$$
A - B = \begin{bmatrix} 2-1 & 3-0 \\ -1-5 & 4-(-2) \end{bmatrix} = \begin{bmatrix} 1 & 3 \\ -6 & 6 \end{bmatrix}
$$

**Properties:**
- **Commutative**: $A + B = B + A$
- **Associative**: $(A + B) + C = A + (B + C)$
- **Additive Identity**: $A + O = A$
- **Additive Inverse**: $A + (-A) = O$

### 1.4 Scalar Multiplication

Multiply every element by a scalar (constant) $k$.

$$
kA = \begin{bmatrix}
ka_{11} & ka_{12} \\
ka_{21} & ka_{22}
\end{bmatrix}
$$

**Example 2:**

$$
A = \begin{bmatrix} 1 & 4 & -2 \\ 3 & 0 & 5 \end{bmatrix}, \quad k = 3
$$

$$
3A = \begin{bmatrix} 3 & 12 & -6 \\ 9 & 0 & 15 \end{bmatrix}
$$

**Properties:**
- $k(A + B) = kA + kB$
- $(k + m)A = kA + mA$
- $k(mA) = (km)A$

### 1.5 Matrix Multiplication

**Rule**: Number of columns in first matrix = number of rows in second matrix.

If $A$ is $m \times n$ and $B$ is $n \times p$, then $AB$ is $m \times p$.

**Element calculation:**

$$
(AB)_{ij} = \sum_{k=1}^{n} a_{ik} \cdot b_{kj}
$$

This means: multiply elements of row i in A with elements of column j in B, then sum.

**Example 3:**

$$
A = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}, \quad B = \begin{bmatrix} 4 & 0 \\ 1 & 5 \end{bmatrix}
$$

$$
AB = \begin{bmatrix} (1)(4)+(2)(1) & (1)(0)+(2)(5) \\ (0)(4)+(3)(1) & (0)(0)+(3)(5) \end{bmatrix} = \begin{bmatrix} 6 & 10 \\ 3 & 15 \end{bmatrix}
$$

**Example 4: Detailed 3×3 multiplication**

$$
A = \begin{bmatrix} 2 & 1 & 3 \\ 0 & 4 & 1 \\ 1 & 2 & 5 \end{bmatrix}, \quad B = \begin{bmatrix} 1 & 0 & 2 \\ 3 & 1 & 0 \\ 0 & 2 & 1 \end{bmatrix}
$$

To find $C_{11}$ (first row of A, first column of B):

$$
C_{11} = (2)(1) + (1)(3) + (3)(0) = 2 + 3 + 0 = 5
$$

To find $C_{23}$ (second row of A, third column of B):

$$
C_{23} = (0)(2) + (4)(0) + (1)(1) = 0 + 0 + 1 = 1
$$

Complete result:

$$
AB = \begin{bmatrix} 5 & 7 & 7 \\ 12 & 6 & 1 \\ 7 & 12 & 7 \end{bmatrix}
$$

**CRITICAL PROPERTIES:**
- **NOT Commutative**: $AB \neq BA$ (in general)
- **Associative**: $(AB)C = A(BC)$
- **Distributive**: $A(B + C) = AB + AC$
- **Identity Property**: $AI = IA = A$

### 1.6 Transpose of a Matrix

**Transpose** ($A^T$): Interchange rows and columns.

$$
\text{If } A = \begin{bmatrix} a_{ij} \end{bmatrix}_{m \times n}, \text{ then } A^T = \begin{bmatrix} a_{ji} \end{bmatrix}_{n \times m}
$$

**Example 5:**

$$
A = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}_{2 \times 3}
$$

$$
A^T = \begin{bmatrix} 1 & 4 \\ 2 & 5 \\ 3 & 6 \end{bmatrix}_{3 \times 2}
$$

**Properties:**
- $(A^T)^T = A$
- $(A + B)^T = A^T + B^T$
- $(kA)^T = kA^T$
- $(AB)^T = B^T A^T$ ⚠️ **Order reverses!**

**Example 6:**

$$
A = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}, \quad B = \begin{bmatrix} 5 & 6 \\ 7 & 8 \end{bmatrix}
$$

$$
(AB)^T = B^T A^T
$$

### 1.7 Inverse of a Matrix

**Inverse** ($A^{-1}$): A matrix that when multiplied by A gives identity matrix.

$$
A \cdot A^{-1} = A^{-1} \cdot A = I
$$

**Conditions for invertibility:**
1. Matrix must be **square** ($n \times n$)
2. Determinant must be **non-zero** ($|A| \neq 0$)

**For 2×2 matrices:**

$$
A = \begin{bmatrix} a & b \\ c & d \end{bmatrix}
$$

$$
A^{-1} = \frac{1}{ad - bc} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix} = \frac{1}{|A|} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix}
$$

**Example 7:**

$$
A = \begin{bmatrix} 4 & 7 \\ 2 & 6 \end{bmatrix}
$$

Step 1: Find determinant

$$
|A| = (4)(6) - (7)(2) = 24 - 14 = 10
$$

Step 2: Apply formula

$$
A^{-1} = \frac{1}{10} \begin{bmatrix} 6 & -7 \\ -2 & 4 \end{bmatrix} = \begin{bmatrix} 0.6 & -0.7 \\ -0.2 & 0.4 \end{bmatrix}
$$

**Verification:**

$$
AA^{-1} = \begin{bmatrix} 4 & 7 \\ 2 & 6 \end{bmatrix} \begin{bmatrix} 0.6 & -0.7 \\ -0.2 & 0.4 \end{bmatrix} = \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} \quad \checkmark
$$

**Properties:**
- $(A^{-1})^{-1} = A$
- $(AB)^{-1} = B^{-1}A^{-1}$ ⚠️ **Order reverses!**
- $(A^T)^{-1} = (A^{-1})^T$
- $|A^{-1}| = \frac{1}{|A|}$

**For larger matrices (3×3, 4×4, etc.):**

$$
A^{-1} = \frac{1}{|A|} \cdot \text{adj}(A)
$$

where adj(A) is the adjoint (transpose of cofactor matrix).

---

## 2. Determinants {#determinants}

### 2.1 Definition

The **determinant** is a scalar value calculated from a square matrix. Denoted: $|A|$ or det(A).

**Key significance:**
- Determines if matrix is invertible ($|A| \neq 0$ → invertible)
- Represents scaling factor of linear transformation
- Used in solving systems of linear equations

### 2.2 Calculating Determinants

**For 1×1 matrix:**
$$|a| = a$$

**For 2×2 matrix:**

$$
A = \begin{bmatrix} a & b \\ c & d \end{bmatrix}
$$

$$
|A| = ad - bc
$$

**Example 8:**

$$
A = \begin{bmatrix} 3 & 8 \\ 4 & 6 \end{bmatrix}
$$

$$
|A| = (3)(6) - (8)(4) = 18 - 32 = -14
$$

**For 3×3 matrix** (expansion along first row):

$$
A = \begin{bmatrix} a_{11} & a_{12} & a_{13} \\ a_{21} & a_{22} & a_{23} \\ a_{31} & a_{32} & a_{33} \end{bmatrix}
$$

$$
|A| = a_{11}\begin{vmatrix} a_{22} & a_{23} \\ a_{32} & a_{33} \end{vmatrix} - a_{12}\begin{vmatrix} a_{21} & a_{23} \\ a_{31} & a_{33} \end{vmatrix} + a_{13}\begin{vmatrix} a_{21} & a_{22} \\ a_{31} & a_{32} \end{vmatrix}
$$

**Example 9:**

$$
A = \begin{bmatrix} 2 & 3 & 1 \\ 4 & 1 & 0 \\ 3 & 2 & 5 \end{bmatrix}
$$

$$
|A| = 2\begin{vmatrix} 1 & 0 \\ 2 & 5 \end{vmatrix} - 3\begin{vmatrix} 4 & 0 \\ 3 & 5 \end{vmatrix} + 1\begin{vmatrix} 4 & 1 \\ 3 & 2 \end{vmatrix}
$$

$$
= 2[(1)(5)-(0)(2)] - 3[(4)(5)-(0)(3)] + 1[(4)(2)-(1)(3)]
$$

$$
= 2(5) - 3(20) + 1(5) = 10 - 60 + 5 = -45
$$

### 2.3 Properties of Determinants

1. **Triangular matrices**: Determinant = product of diagonal elements

   $$
   \begin{vmatrix} 3 & 5 & 2 \\ 0 & 4 & 7 \\ 0 & 0 & 6 \end{vmatrix} = 3 \times 4 \times 6 = 72
   $$

2. **Transpose**: $|A^T| = |A|$

3. **Scalar multiplication**: $|kA| = k^n|A|$ (for $n \times n$ matrix)

4. **Product**: $|AB| = |A| \cdot |B|$

5. **Inverse**: $|A^{-1}| = \frac{1}{|A|}$

6. **Row operations**:
   - Swap two rows → sign changes
   - Multiply row by k → determinant multiplied by k
   - Add multiple of one row to another → determinant unchanged

**Example 10:**

$$
A = \begin{bmatrix} 2 & 0 & 0 \\ 0 & 5 & 0 \\ 0 & 0 & 3 \end{bmatrix}
$$

Since A is diagonal/triangular:

$$
|A| = 2 \times 5 \times 3 = 30
$$

### 2.4 Applications of Determinants

**Cramer's Rule** - Solving system of linear equations:

For system $Ax = b$:

$$
x_i = \frac{|A_i|}{|A|}
$$

where $A_i$ is A with column i replaced by b.

**Example 11: Solve using Cramer's Rule**

$$
\begin{cases} 2x + 3y = 8 \\ 4x + y = 10 \end{cases}
$$

$$
A = \begin{bmatrix} 2 & 3 \\ 4 & 1 \end{bmatrix}, \quad b = \begin{bmatrix} 8 \\ 10 \end{bmatrix}
$$

$$
|A| = (2)(1) - (3)(4) = 2 - 12 = -10
$$

For x:

$$
A_x = \begin{bmatrix} 8 & 3 \\ 10 & 1 \end{bmatrix}, \quad |A_x| = 8 - 30 = -22
$$

$$
x = \frac{-22}{-10} = 2.2
$$

For y:

$$
A_y = \begin{bmatrix} 2 & 8 \\ 4 & 10 \end{bmatrix}, \quad |A_y| = 20 - 32 = -12
$$

$$
y = \frac{-12}{-10} = 1.2
$$

**Solution**: $(x, y) = (2.2, 1.2)$

---

## 3. Vector Spaces {#vector-spaces}

### 3.1 Definition of Vector Space

A **vector space** V over a field F (usually real numbers ℝ) is a set with two operations:
- **Vector addition**: $\vec{u} + \vec{v}$
- **Scalar multiplication**: $k\vec{v}$

Must satisfy 10 axioms (closure, associativity, commutativity, identity, inverse, distributivity).

### 3.2 Examples of Vector Spaces

**1. ℝⁿ - n-dimensional space**

$$
\mathbb{R}^2 = \{(x, y) : x, y \in \mathbb{R}\}
$$

$$
\mathbb{R}^3 = \{(x, y, z) : x, y, z \in \mathbb{R}\}
$$

**2. Matrix spaces**

$$
M_{2×2} = \text{all } 2 \times 2 \text{ matrices}
$$

**3. Polynomial spaces**

$$
P_n = \{a_0 + a_1x + \cdots + a_nx^n : a_i \in \mathbb{R}\}
$$

**4. Function spaces**

$$
C[a,b] = \text{continuous functions on } [a, b]
$$

### 3.3 Subspaces

A **subspace** W of vector space V satisfies:
1. **Zero vector** in W
2. **Closed under addition**: $\vec{u}, \vec{v} \in W \Rightarrow \vec{u}+\vec{v} \in W$
3. **Closed under scalar multiplication**: $\vec{v} \in W, k \in \mathbb{R} \Rightarrow k\vec{v} \in W$

**Example 12:**
Is $W = \{(x, 2x) : x \in \mathbb{R}\}$ a subspace of ℝ²?

Test 1: Zero vector $(0,0) = (0, 2(0))$ ✓

Test 2: Addition

$$
(x_1, 2x_1) + (x_2, 2x_2) = (x_1+x_2, 2(x_1+x_2)) \quad \checkmark
$$

Test 3: Scalar multiplication

$$
k(x, 2x) = (kx, 2kx) \quad \checkmark
$$

**Yes, W is a subspace!**

### 3.4 Span

The **span** of vectors $\{\vec{v}_1, \vec{v}_2, \ldots, \vec{v}_k\}$ is the set of all linear combinations:

$$
\text{span}\{\vec{v}_1, \vec{v}_2, \ldots, \vec{v}_k\} = \{c_1\vec{v}_1 + c_2\vec{v}_2 + \cdots + c_k\vec{v}_k : c_i \in \mathbb{R}\}
$$

**Example 13:**

$$
\vec{v}_1 = \begin{bmatrix} 1 \\ 0 \end{bmatrix}, \quad \vec{v}_2 = \begin{bmatrix} 0 \\ 1 \end{bmatrix}
$$

$$
\text{span}\{\vec{v}_1, \vec{v}_2\} = \mathbb{R}^2 \quad (\text{entire 2D plane})
$$

**Example 14:**

$$
\vec{v} = \begin{bmatrix} 1 \\ 2 \end{bmatrix}
$$

$$
\text{span}\{\vec{v}\} = \{t\begin{bmatrix} 1 \\ 2 \end{bmatrix} : t \in \mathbb{R}\} \quad (\text{a line through origin})
$$

---

## 4. Linear Independence and Basis {#linear-independence}

### 4.1 Linear Independence

Vectors $\{\vec{v}_1, \vec{v}_2, \ldots, \vec{v}_k\}$ are **linearly independent** if:

$$
c_1\vec{v}_1 + c_2\vec{v}_2 + \cdots + c_k\vec{v}_k = \vec{0}
$$

implies $c_1 = c_2 = \cdots = c_k = 0$ (only trivial solution).

Otherwise, they are **linearly dependent**.

**Geometric interpretation:**
- **Independent**: No vector is a combination of others
- **Dependent**: At least one vector is a combination of others

**Example 15: Testing independence in ℝ³**

$$
\vec{v}_1 = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}, \quad \vec{v}_2 = \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}, \quad \vec{v}_3 = \begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}
$$

Test: $c_1\vec{v}_1 + c_2\vec{v}_2 + c_3\vec{v}_3 = \vec{0}$

$$
c_1\begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix} + c_2\begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix} + c_3\begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix} = \begin{bmatrix} c_1 \\ c_2 \\ c_3 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \\ 0 \end{bmatrix}
$$

Only solution: $c_1 = c_2 = c_3 = 0$

**Result**: Linearly independent ✓

**Example 16: Dependent vectors**

$$
\vec{v}_1 = \begin{bmatrix} 1 \\ 2 \end{bmatrix}, \quad \vec{v}_2 = \begin{bmatrix} 2 \\ 4 \end{bmatrix}
$$

Notice: $\vec{v}_2 = 2\vec{v}_1$

So: $2\vec{v}_1 - 1\vec{v}_2 = \vec{0}$ (non-trivial solution exists)

**Result**: Linearly dependent ✗

**Example 17: Determinant test for independence**

For n vectors in ℝⁿ, form matrix with vectors as columns. If determinant ≠ 0, vectors are independent.

$$
\vec{v}_1 = \begin{bmatrix} 1 \\ 2 \end{bmatrix}, \quad \vec{v}_2 = \begin{bmatrix} 3 \\ 4 \end{bmatrix}
$$

$$
A = \begin{bmatrix} 1 & 3 \\ 2 & 4 \end{bmatrix}, \quad |A| = 4 - 6 = -2 \neq 0
$$

**Result**: Independent ✓

### 4.2 Basis

A **basis** for vector space V is a set of vectors that:
1. **Spans V** (every vector in V can be written as linear combination)
2. **Linearly independent**

**Properties:**
- Basis vectors are the "building blocks" of the space
- Every vector has a **unique representation** as linear combination of basis
- All bases of V have the **same number of vectors**

**Example 18: Standard basis for ℝ³**

$$
\vec{e}_1 = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}, \quad \vec{e}_2 = \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}, \quad \vec{e}_3 = \begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}
$$

Any vector in ℝ³:

$$
\vec{v} = \begin{bmatrix} x \\ y \\ z \end{bmatrix} = x\vec{e}_1 + y\vec{e}_2 + z\vec{e}_3
$$

**Example 19: Alternative basis for ℝ²**

$$
\vec{b}_1 = \begin{bmatrix} 1 \\ 1 \end{bmatrix}, \quad \vec{b}_2 = \begin{bmatrix} 1 \\ -1 \end{bmatrix}
$$

Check independence:

$$
c_1\begin{bmatrix} 1 \\ 1 \end{bmatrix} + c_2\begin{bmatrix} 1 \\ -1 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}
$$

$$
c_1 + c_2 = 0, \quad c_1 - c_2 = 0
$$

Solution: $c_1 = c_2 = 0$ → Independent ✓

Check span: Can we write any $(x, y)$?

$$
x\vec{e}_1 + y\vec{e}_2 = a\vec{b}_1 + b\vec{b}_2
$$

$$
\begin{cases} a + b = x \\ a - b = y \end{cases}
$$

has solution for all x, y → Spans ℝ² ✓

**Result**: $\{\vec{b}_1, \vec{b}_2\}$ is a basis for ℝ²

### 4.3 Dimension

The **dimension** of vector space V is the number of vectors in any basis of V.

$$
\dim(V) = \text{number of basis vectors}
$$

**Examples:**
- $\dim(\mathbb{R}^2) = 2$
- $\dim(\mathbb{R}^3) = 3$
- $\dim(\mathbb{R}^n) = n$
- $\dim(M_{2×2}) = 4$ (4 independent 2×2 matrices)
- $\dim(P_n) = n+1$ (polynomials up to degree n)

**Example 20: Dimension of matrix space**

Basis for $M_{2×2}$:

$$
E_{11} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}, E_{12} = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}, E_{21} = \begin{bmatrix} 0 & 0 \\ 1 & 0 \end{bmatrix}, E_{22} = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix}
$$

Any 2×2 matrix:

$$
\begin{bmatrix} a & b \\ c & d \end{bmatrix} = aE_{11} + bE_{12} + cE_{21} + dE_{22}
$$

Therefore: $\dim(M_{2×2}) = 4$

---

## 5. Eigenvalues and Eigenvectors {#eigenvalues}

### 5.1 Definitions

For square matrix A and vector $\vec{x} \neq \vec{0}$:

**Eigenvector** $\vec{x}$: Direction that doesn't change under transformation A

**Eigenvalue** $\lambda$: Scaling factor for that direction

$$
A\vec{x} = \lambda\vec{x}
$$

**Geometric meaning**: 
- Vector $\vec{x}$ only gets stretched/compressed by factor $\lambda$
- Direction remains the same

### 5.2 Finding Eigenvalues

**Step 1**: Write characteristic equation

$$
A\vec{x} = \lambda\vec{x}
$$

$$
A\vec{x} - \lambda\vec{x} = \vec{0}
$$

$$
(A - \lambda I)\vec{x} = \vec{0}
$$

**Step 2**: For non-trivial solution, determinant must be zero

$$
\det(A - \lambda I) = 0
$$

This is the **characteristic equation** (polynomial in $\lambda$).

**Example 21: Find eigenvalues**

$$
A = \begin{bmatrix} 4 & 2 \\ 1 & 3 \end{bmatrix}
$$

$$
A - \lambda I = \begin{bmatrix} 4-\lambda & 2 \\ 1 & 3-\lambda \end{bmatrix}
$$

$$
\det(A - \lambda I) = (4-\lambda)(3-\lambda) - (2)(1) = 0
$$

$$
12 - 4\lambda - 3\lambda + \lambda^2 - 2 = 0
$$

$$
\lambda^2 - 7\lambda + 10 = 0
$$

$$
(\lambda - 5)(\lambda - 2) = 0
$$

**Eigenvalues**: $\lambda_1 = 5, \lambda_2 = 2$

**Example 22: 3×3 matrix**

$$
A = \begin{bmatrix} 1 & 2 & 3 \\ 0 & 4 & 5 \\ 0 & 0 & 6 \end{bmatrix}
$$

For triangular matrix, eigenvalues are **diagonal elements**!

**Eigenvalues**: $\lambda_1 = 1, \lambda_2 = 4, \lambda_3 = 6$

### 5.3 Finding Eigenvectors

Once eigenvalue $\lambda$ is known, find corresponding eigenvector by solving:

$$
(A - \lambda I)\vec{x} = \vec{0}
$$

**Example 23: Find eigenvectors for Example 21**

**For $\lambda_1 = 5$:**

$$
(A - 5I)\vec{x} = \begin{bmatrix} -1 & 2 \\ 1 & -2 \end{bmatrix}\begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}
$$

$-x_1 + 2x_2 = 0 \Rightarrow x_1 = 2x_2$

Let $x_2 = t$ (free parameter), then $x_1 = 2t$

$$
\vec{x}_1 = t\begin{bmatrix} 2 \\ 1 \end{bmatrix}, \quad \text{or simply: } \vec{x}_1 = \begin{bmatrix} 2 \\ 1 \end{bmatrix}
$$

**For $\lambda_2 = 2$:**

$$
(A - 2I)\vec{x} = \begin{bmatrix} 2 & 2 \\ 1 & 1 \end{bmatrix}\begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}
$$

$2x_1 + 2x_2 = 0 \Rightarrow x_1 = -x_2$

$$
\vec{x}_2 = \begin{bmatrix} 1 \\ -1 \end{bmatrix} \quad \text{or} \quad \begin{bmatrix} -1 \\ 1 \end{bmatrix}
$$

**Verification:**

$$
A\vec{x}_1 = \begin{bmatrix} 4 & 2 \\ 1 & 3 \end{bmatrix}\begin{bmatrix} 2 \\ 1 \end{bmatrix} = \begin{bmatrix} 10 \\ 5 \end{bmatrix} = 5\begin{bmatrix} 2 \\ 1 \end{bmatrix} = \lambda_1\vec{x}_1 \quad \checkmark
$$

### 5.4 Properties of Eigenvalues and Eigenvectors

1. **Sum of eigenvalues** = Trace of matrix (sum of diagonal elements)
   $\sum \lambda_i = \text{tr}(A)$

2. **Product of eigenvalues** = Determinant of matrix
   $\prod \lambda_i = |A|$

3. **Eigenvalues of $A^n$** are $\lambda^n$

4. **Eigenvalues of $A^{-1}$** are $\frac{1}{\lambda}$

5. Eigenvectors corresponding to **different eigenvalues** are linearly independent

**Example 24: Verify properties**
$A = \begin{bmatrix} 4 & 2 \\ 1 & 3 \end{bmatrix}, \quad \lambda_1 = 5, \lambda_2 = 2$

Trace: $4 + 3 = 7 = 5 + 2$ ✓

Determinant: $(4)(3) - (2)(1) = 10 = (5)(2)$ ✓

### 5.5 Diagonalization

A matrix A is **diagonalizable** if it can be written as:

$$
A = PDP^{-1}
$$

where:
- P = matrix with eigenvectors as columns
- D = diagonal matrix with eigenvalues on diagonal

**Condition**: A must have n linearly independent eigenvectors (for n×n matrix).

**Example 25: Diagonalize**

$$
A = \begin{bmatrix} 4 & 2 \\ 1 & 3 \end{bmatrix}
$$

From Example 21 and 23:
- $\lambda_1 = 5, \vec{x}_1 = \begin{bmatrix} 2 \\ 1 \end{bmatrix}$
- $\lambda_2 = 2, \vec{x}_2 = \begin{bmatrix} 1 \\ -1 \end{bmatrix}$

$$
P = \begin{bmatrix} 2 & 1 \\ 1 & -1 \end{bmatrix}, \quad D = \begin{bmatrix} 5 & 0 \\ 0 & 2 \end{bmatrix}
$$

Find $P^{-1}$:

$$
|P| = (2)(-1) - (1)(1) = -3
$$

$$
P^{-1} = \frac{1}{-3}\begin{bmatrix} -1 & -1 \\ -1 & 2 \end{bmatrix} = \begin{bmatrix} 1/3 & 1/3 \\ 1/3 & -2/3 \end{bmatrix}
$$

Verify: $A = PDP^{-1}$ (algebraically confirmed)

**Why diagonalization matters:**
- Computing $A^n$ becomes easy: $A^n = PD^nP^{-1}$
- $D^n$ is trivial: just raise diagonal elements to power n

**Example 26: Computing high powers**

$$
A^{10} = PD^{10}P^{-1} = P\begin{bmatrix} 5^{10} & 0 \\ 0 & 2^{10} \end{bmatrix}P^{-1}
$$

Much easier than multiplying A by itself 10 times!

---

## 6. Applications in Textile Engineering {#applications}

### 6.1 Yarn Twist and Tension Analysis

**Problem**: Multiple yarn strands with different tensions and twist factors.

Matrix representation of yarn properties:

$$
Y = \begin{bmatrix} T_1 & \tau_1 \\ T_2 & \tau_2 \\ T_3 & \tau_3 \end{bmatrix}
$$

where $T_i$ = tension, $\tau_i$ = twist factor

Operations:
- **Addition**: Combining yarn systems
- **Scalar multiplication**: Adjusting production speed
- **Matrix multiplication**: Transformation through processing stages

### 6.2 Fabric Color Mixing (Linear Combinations)

**Problem**: Creating target color by mixing dyes.

Three primary dyes: Red (R), Blue (B), Yellow (Y)

$$
\vec{R} = \begin{bmatrix} 255 \\ 0 \\ 0 \end{bmatrix}, \quad \vec{B} = \begin{bmatrix} 0 \\ 0 \\ 255 \end{bmatrix}, \quad \vec{Y} = \begin{bmatrix} 255 \\ 255 \\ 0 \end{bmatrix}
$$

Target color (RGB):

$$
\vec{Target} = c_1\vec{R} + c_2\vec{B} + c_3\vec{Y}
$$

This is a **linear combination** problem!

### 6.3 Weave Pattern Representation

Binary matrix representation of weave structures:
- 1 = warp on top
- 0 = weft on top

**Plain weave:**

$$
W_{plain} = \begin{bmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & 0 & 1 \\ 1 & 0 & 1 & 0 \\ 0 & 1 & 0 & 1 \end{bmatrix}
$$

**Twill weave:**

$$
W_{twill} = \begin{bmatrix} 1 & 1 & 0 & 0 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 1 & 1 \\ 1 & 0 & 0 & 1 \end{bmatrix}
$$

Matrix operations:
- **Inverse**: Reverse engineering fabric structure
- **Determinant**: Checking pattern uniqueness

### 6.4 Quality Control - Multivariate Analysis

**Problem**: Analyzing multiple quality parameters simultaneously.

Data matrix for fabric samples:

$$
X = \begin{bmatrix} \text{strength}_1 & \text{weight}_1 & \text{thickness}_1 \\ \text{strength}_2 & \text{weight}_2 & \text{thickness}_2 \\ \vdots & \vdots & \vdots \end{bmatrix}
$$

**Eigenvalue decomposition**: 
- Identifies **principal components** (most important quality factors)
- Reduces dimensionality while preserving information
- Used in statistical process control

### 6.5 Production Optimization

**Problem**: Optimizing machine settings for multiple fabric types.

System of equations:

$$
\begin{bmatrix} m_{11} & m_{12} & m_{13} \\ m_{21} & m_{22} & m_{23} \\ m_{31} & m_{32} & m_{33} \end{bmatrix}\begin{bmatrix} s_1 \\ s_2 \\ s_3 \end{bmatrix} = \begin{bmatrix} p_1 \\ p_2 \\ p_3 \end{bmatrix}
$$

where:
- $m_{ij}$ = machine parameters
- $s_i$ = setting values
- $p_i$ = production targets

**Solution**: $\vec{s} = M^{-1}\vec{p}$ (using matrix inverse)

Or Cramer's rule for small systems.

### 6.6 Fiber Blending Calculations

**Problem**: Determine blend ratios for desired properties.

$$
\begin{bmatrix} c_1 & c_2 & c_3 \\ s_1 & s_2 & s_3 \\ p_1 & p_2 & p_3 \end{bmatrix}\begin{bmatrix} r_1 \\ r_2 \\ r_3 \end{bmatrix} = \begin{bmatrix} \text{target comfort} \\ \text{target strength} \\ \text{target price} \end{bmatrix}
$$

where:
- Column i = properties of fiber i
- $r_i$ = ratio of fiber i in blend
- Row j = property type j

This system can be solved using methods learned: matrix inverse, Cramer's rule, or Gaussian elimination.

---

## 7. Key Formulas Summary

### Matrix Operations

$$
\text{Addition:} \quad (A + B)_{ij} = a_{ij} + b_{ij}
$$

$$
\text{Scalar mult:} \quad (kA)_{ij} = ka_{ij}
$$

$$
\text{Multiplication:} \quad (AB)_{ij} = \sum_{k=1}^{n} a_{ik}b_{kj}
$$

$$
\text{Transpose:} \quad (A^T)_{ij} = a_{ji}
$$

$$
\text{Inverse (2×2):} \quad A^{-1} = \frac{1}{|A|}\begin{bmatrix} d & -b \\ -c & a \end{bmatrix}
$$

### Determinants

$$
\text{2×2:} \quad |A| = ad - bc
$$

$$
\text{3×3:} \quad \text{Use cofactor expansion}
$$

$$
\text{Properties:} \quad |AB| = |A||B|, \quad |A^T| = |A|
$$

### Eigenvalues

$$
\text{Characteristic eq:} \quad \det(A - \lambda I) = 0
$$

$$
\text{Eigenvector:} \quad (A - \lambda I)\vec{x} = \vec{0}
$$

$$
\text{Properties:} \quad \sum\lambda_i = \text{tr}(A), \quad \prod\lambda_i = |A|
$$

---

## 8. Important Theorems

**Theorem 1**: A square matrix is invertible ↔ its determinant is non-zero.

**Theorem 2**: The rank-nullity theorem

$$
\dim(\text{Col } A) + \dim(\text{Null } A) = n
$$

**Theorem 3**: For n×n matrix, these are equivalent:
- A is invertible
- $|A| \neq 0$
- $A\vec{x} = \vec{b}$ has unique solution
- Columns of A are linearly independent
- A has rank n

**Theorem 4**: Spectral theorem - Every symmetric matrix is diagonalizable with real eigenvalues.

---

## 9. Common Mistakes to Avoid

1. ❌ $AB \neq BA$ (matrix multiplication is NOT commutative)
2. ❌ $(A+B)^2 \neq A^2 + 2AB + B^2$ (expansion rules differ)
3. ❌ $(AB)^T = A^TB^T$ → Should be $B^TA^T$ (order reverses!)
4. ❌ Determinant of sum ≠ sum of determinants
5. ❌ Forgetting that eigenvectors must be non-zero
6. ❌ Thinking all matrices are diagonalizable (some aren't!)
7. ❌ Confusing linear independence with orthogonality

---

## 10. Practice Problems

**Problem 1**: Given matrix $A$, find $A^2$ and $A^{-1}$.

$$
A = \begin{bmatrix}
3 & 1 \\
2 & 4
\end{bmatrix}
$$

**Problem 2**: Determine if the following vectors are linearly independent.

$$
\vec{v}_1 = \begin{bmatrix}
1 \\
2 \\
3
\end{bmatrix}, \quad
\vec{v}_2 = \begin{bmatrix}
4 \\
5 \\
6
\end{bmatrix}, \quad
\vec{v}_3 = \begin{bmatrix}
7 \\
8 \\
9
\end{bmatrix}
$$

**Problem 3**: Find eigenvalues and eigenvectors of the following matrix.

$$
B = \begin{bmatrix}
5 & 4 \\
1 & 2
\end{bmatrix}
$$

**Problem 4**: Solve the system using Cramer's rule.

$$
\begin{cases}
3x + 2y = 7 \\
x - y = 1
\end{cases}
$$

**Problem 5**: Find a basis for the span of these vectors.

$$
S = \left\{ \begin{bmatrix}
1 \\
0 \\
1
\end{bmatrix}, \begin{bmatrix}
2 \\
1 \\
3
\end{bmatrix}, \begin{bmatrix}
3 \\
1 \\
4
\end{bmatrix} \right\}
$$

---

## 11. Exam Tips

✅ **Always check dimensions** before matrix operations  
✅ **Show all steps** in determinant calculations  
✅ **Verify your answer** by substitution when possible  
✅ **Write eigenvalues** in descending order conventionally  
✅ **Use properties** (like triangular matrix determinants) to save time  
✅ **Draw diagrams** for vector space problems when helpful  
✅ **Remember special cases**: Identity, zero, diagonal matrices  
✅ **Check linear independence** using determinant test when applicable

---

## 12. Further Study Resources

- **Matrix theory**: Advanced factorizations (LU, QR, SVD)
- **Vector calculus**: Gradients, divergence, curl in higher dimensions
- **Numerical methods**: Iterative solutions for large systems
- **Applications**: Computer graphics, machine learning, signal processing
- **Abstract algebra**: Group theory, field extensions

---

> **Remember**: Linear algebra is the language of modern mathematics and engineering. Master these fundamentals well, as they appear everywhere in advanced textile engineering, especially in computer-aided design, quality control systems, and automated manufacturing processes.

**Last Updated**: December 10, 2025  
**Course**: MATH-101 Mathematics - I  
**Department**: Fabric Engineering, BUTEX
