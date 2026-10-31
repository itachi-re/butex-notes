# Vector Calculus — Exam Questions & Worked Answers

**Prepared from:** *Vector solution (Ctec-19).pdf* (31-page scan)  
**Purpose:** Clean, exam-ready rewrite of the questions, definitions, examples and proofs in the scan.

> Notation: \(\mathbf a\cdot\mathbf b\) is the dot product, \(\mathbf a\times\mathbf b\) is the cross product, and \([\mathbf a,\mathbf b,\mathbf c]=\mathbf a\cdot(\mathbf b\times\mathbf c)\) is the scalar triple product. Unit vectors are \(\hat i,\hat j,\hat k\).

---

# Part A — Scalar product (dot product)

## Q1. Find the projection of \(\mathbf A=\hat i-2\hat j+\hat k\) on \(\mathbf B=4\hat i-4\hat j+7\hat k\).

**Solution.**

The scalar projection of \(\mathbf A\) on \(\mathbf B\) is

\[
\operatorname{comp}_{\mathbf B}\mathbf A
=\frac{\mathbf A\cdot\mathbf B}{|\mathbf B|}.
\]

First,

\[
\mathbf A\cdot\mathbf B=(1)(4)+(-2)(-4)+(1)(7)=4+8+7=19.
\]

Also,

\[
|\mathbf B|=\sqrt{4^2+(-4)^2+7^2}=\sqrt{81}=9.
\]

Therefore,

\[
\boxed{\operatorname{comp}_{\mathbf B}\mathbf A=\frac{19}{9}}.
\]

*Note:* If the question asks for the **vector projection**, use
\[
\operatorname{proj}_{\mathbf B}\mathbf A
=\frac{\mathbf A\cdot\mathbf B}{|\mathbf B|^2}\mathbf B
=\frac{19}{81}(4\hat i-4\hat j+7\hat k).
\]

## Q2. If \(|\mathbf a+\mathbf b|=|\mathbf a-\mathbf b|\), prove that \(\mathbf a\) and \(\mathbf b\) are perpendicular.

**Proof.** Given,

\[
|\mathbf a+\mathbf b|=|\mathbf a-\mathbf b|.
\]

Squaring both sides,

\[
|\mathbf a+\mathbf b|^2=|\mathbf a-\mathbf b|^2.
\]

Using \(|\mathbf u\pm\mathbf v|^2=|\mathbf u|^2\pm2\mathbf u\cdot\mathbf v+|\mathbf v|^2\),

\[
|\mathbf a|^2+2\mathbf a\cdot\mathbf b+|\mathbf b|^2
=|\mathbf a|^2-2\mathbf a\cdot\mathbf b+|\mathbf b|^2.
\]

Thus,

\[
4\mathbf a\cdot\mathbf b=0
\quad\Rightarrow\quad \mathbf a\cdot\mathbf b=0.
\]

Since the dot product is zero, the vectors are perpendicular.

\[
\boxed{\mathbf a\perp\mathbf b}\qquad\text{Hence proved.}
\]

## Q3. Find the angle between \(\mathbf a=\hat i+2\hat j+3\hat k\) and \(\mathbf b=3\hat i-4\hat j+2\hat k\).

**Solution.**

\[
\mathbf a\cdot\mathbf b=(1)(3)+(2)(-4)+(3)(2)=3-8+6=1.
\]

\[
|\mathbf a|=\sqrt{1^2+2^2+3^2}=\sqrt{14},
\qquad
|\mathbf b|=\sqrt{3^2+(-4)^2+2^2}=\sqrt{29}.
\]

Using \(\mathbf a\cdot\mathbf b=|\mathbf a||\mathbf b|\cos\theta\),

\[
\cos\theta=\frac{1}{\sqrt{14}\sqrt{29}}=\frac1{\sqrt{406}}.
\]

Hence,

\[
\boxed{\theta=\cos^{-1}\!\left(\frac1{\sqrt{406}}\right)}.
\]

## Q4. Prove that any vector \(\mathbf a\) can be written as
\[
\mathbf a=(\mathbf a\cdot\hat i)\hat i+(\mathbf a\cdot\hat j)\hat j+(\mathbf a\cdot\hat k)\hat k.
\]

**Proof.** Let

\[
\mathbf a=a_1\hat i+a_2\hat j+a_3\hat k.
\]

Since \(\hat i,\hat j,\hat k\) are mutually perpendicular unit vectors,

\[
\mathbf a\cdot\hat i=a_1,\qquad
\mathbf a\cdot\hat j=a_2,\qquad
\mathbf a\cdot\hat k=a_3.
\]

Therefore,

\[
\begin{aligned}
&(\mathbf a\cdot\hat i)\hat i+(\mathbf a\cdot\hat j)\hat j+(\mathbf a\cdot\hat k)\hat k\\
&=a_1\hat i+a_2\hat j+a_3\hat k\\
&=\mathbf a.
\end{aligned}
\]

\[\boxed{\mathbf a=(\mathbf a\cdot\hat i)\hat i+(\mathbf a\cdot\hat j)\hat j+(\mathbf a\cdot\hat k)\hat k.}\]

## Q5. Define the scalar product (dot product) and give its geometric and algebraic interpretations.

**Answer.** The dot product is a binary operation that takes two vectors and produces a scalar. For vectors \(\mathbf a\) and \(\mathbf b\),

\[
\boxed{\mathbf a\cdot\mathbf b=|\mathbf a||\mathbf b|\cos\theta}
\]

where \(\theta\) is the angle between them, \(0\leq\theta\leq\pi\).

**Algebraic definition.** If

\[
\mathbf a=a_1\hat i+a_2\hat j+a_3\hat k,\qquad
\mathbf b=b_1\hat i+b_2\hat j+b_3\hat k,
\]

then

\[
\boxed{\mathbf a\cdot\mathbf b=a_1b_1+a_2b_2+a_3b_3.}
\]

The order does not matter: \(\mathbf a\cdot\mathbf b=\mathbf b\cdot\mathbf a\).

**Geometric interpretation.** The dot product is the product of the magnitude of one vector and the scalar projection of the other vector on it:

\[
\mathbf a\cdot\mathbf b=|\mathbf a|\bigl(|\mathbf b|\cos\theta\bigr)
=|\mathbf a|\times\text{(projection of \(\mathbf b\) along \(\mathbf a\))}.
\]

Important consequences:

- If \(\mathbf a\cdot\mathbf b=0\) for non-zero vectors, they are perpendicular.
- If \(\theta=0\), the dot product is \(|\mathbf a||\mathbf b|\).
- If \(\theta=\pi/2\), the dot product is zero.
- If \(\theta=\pi\), the dot product is \(-|\mathbf a||\mathbf b|\).

---

# Part B — Scalar triple product

## Q6. Define the scalar triple product and explain its geometrical interpretation.

**Answer.** The scalar triple product of three vectors \(\mathbf a,\mathbf b,\mathbf c\) is

\[
\boxed{[\mathbf a,\mathbf b,\mathbf c]
=\mathbf a\cdot(\mathbf b\times\mathbf c).}
\]

It is a scalar. Its absolute value gives the volume of the parallelepiped whose three adjacent edges are \(\mathbf a,\mathbf b,\mathbf c\):

\[
\boxed{V=|\mathbf a\cdot(\mathbf b\times\mathbf c)|.}
\]

To see this, \(|\mathbf b\times\mathbf c|\) is the area of the base parallelogram. The unit normal to the base is

\[
\hat n=\frac{\mathbf b\times\mathbf c}{|\mathbf b\times\mathbf c|}.
\]

The perpendicular height is \(|\mathbf a\cdot\hat n|\). Thus,

\[
V=|\mathbf b\times\mathbf c|\,|\mathbf a\cdot\hat n|
=|\mathbf a\cdot(\mathbf b\times\mathbf c)|.
\]

If the scalar triple product is zero, the three vectors are coplanar.

## Q7. Prove that
\[
\mathbf a\cdot(\mathbf b\times\mathbf c)
=\begin{vmatrix}
a_1&a_2&a_3\\
b_1&b_2&b_3\\
c_1&c_2&c_3
\end{vmatrix}.
\]

**Proof.** Let

\[
\mathbf a=a_1\hat i+a_2\hat j+a_3\hat k,
\quad
\mathbf b=b_1\hat i+b_2\hat j+b_3\hat k,
\quad
\mathbf c=c_1\hat i+c_2\hat j+c_3\hat k.
\]

The cross product is

\[
\mathbf b\times\mathbf c=
\begin{vmatrix}
\hat i&\hat j&\hat k\\
b_1&b_2&b_3\\
c_1&c_2&c_3
\end{vmatrix}.
\]

Taking the dot product with \(\mathbf a\),

\[
\begin{aligned}
\mathbf a\cdot(\mathbf b\times\mathbf c)
&=a_1(b_2c_3-b_3c_2)-a_2(b_1c_3-b_3c_1)\\
&\quad+a_3(b_1c_2-b_2c_1)\\
&=\begin{vmatrix}
a_1&a_2&a_3\\
b_1&b_2&b_3\\
c_1&c_2&c_3
\end{vmatrix}.
\end{aligned}
\]

\[\boxed{\mathbf a\cdot(\mathbf b\times\mathbf c)=\det(\mathbf a,\mathbf b,\mathbf c).}\]

## Q8. Prove that
\[
[\mathbf a+\mathbf b,\,\mathbf b+\mathbf c,\,\mathbf c+\mathbf a]
=2[\mathbf a,\mathbf b,\mathbf c].
\]

**Proof.** By definition,

\[
\begin{aligned}
LHS&=(\mathbf a+\mathbf b)\cdot\{(\mathbf b+\mathbf c)\times(\mathbf c+\mathbf a)\}\\
&=(\mathbf a+\mathbf b)\cdot(\mathbf b\times\mathbf c+\mathbf b\times\mathbf a+\mathbf c\times\mathbf a).
\end{aligned}
\]

Expanding the dot product,

\[
\begin{aligned}
LHS={}&\mathbf a\cdot(\mathbf b\times\mathbf c)
+\mathbf a\cdot(\mathbf b\times\mathbf a)
+\mathbf a\cdot(\mathbf c\times\mathbf a)\\
&+\mathbf b\cdot(\mathbf b\times\mathbf c)
+\mathbf b\cdot(\mathbf b\times\mathbf a)
+\mathbf b\cdot(\mathbf c\times\mathbf a).
\end{aligned}
\]

A vector is perpendicular to its cross product with another vector, so the four terms containing a repeated vector are zero. Also, by cyclic permutation,

\[
\mathbf b\cdot(\mathbf c\times\mathbf a)
=\mathbf a\cdot(\mathbf b\times\mathbf c).
\]

Therefore,

\[
LHS=[\mathbf a,\mathbf b,\mathbf c]+[\mathbf a,\mathbf b,\mathbf c]
=2[\mathbf a,\mathbf b,\mathbf c].
\]

\[\boxed{[\mathbf a+\mathbf b,\mathbf b+\mathbf c,\mathbf c+\mathbf a]=2[\mathbf a,\mathbf b,\mathbf c].}\]

## Q9. Prove that
\[
(\mathbf A\cdot(\mathbf B\times\mathbf C))(\mathbf a\cdot(\mathbf b\times\mathbf c))
=\begin{vmatrix}
\mathbf A\cdot\mathbf a&\mathbf A\cdot\mathbf b&\mathbf A\cdot\mathbf c\\
\mathbf B\cdot\mathbf a&\mathbf B\cdot\mathbf b&\mathbf B\cdot\mathbf c\\
\mathbf C\cdot\mathbf a&\mathbf C\cdot\mathbf b&\mathbf C\cdot\mathbf c
\end{vmatrix}.
\]

**Proof.** Let \(M\) be the matrix whose rows are the components of \(\mathbf A,\mathbf B,\mathbf C\), and let \(N\) be the matrix whose rows are the components of \(\mathbf a,\mathbf b,\mathbf c\). The matrix of the nine dot products on the right is \(MN^T\). Therefore, using \(\det(XY)=\det X\det Y\),

\[
\begin{aligned}
\det(MN^T)&=\det M\,\det(N^T)\\
&=\det M\,\det N\\
&=(\mathbf A\cdot(\mathbf B\times\mathbf C))
(\mathbf a\cdot(\mathbf b\times\mathbf c)).
\end{aligned}
\]

This is the required identity.

## Q10. Find \(\lambda\) so that the vectors \(2\hat i-\hat j+\hat k\), \(\hat i+2\hat j-3\hat k\), and \(4\hat i-\hat j+\lambda\hat k\) are coplanar.

**Solution.** Three vectors are coplanar if their scalar triple product is zero.

\[
\begin{vmatrix}
2&-1&1\\
1&2&-3\\
4&-1&\lambda
\end{vmatrix}=0.
\]

Expanding along the first row,

\[
2(2\lambda-3)+(\lambda+12)-9=0.
\]

\[
4\lambda-6+\lambda+12-9=0
\quad\Rightarrow\quad 5\lambda-3=0.
\]

\[
\boxed{\lambda=\frac35.}
\]

## Q11. Find \(\lambda\) if the vectors \(\hat i-\hat j+\hat k\), \(2\hat i+\hat j-\hat k\), and \(\lambda\hat i-\hat j+\lambda\hat k\) are coplanar.

**Solution.**

\[
\begin{vmatrix}
1&-1&1\\
2&1&-1\\
\lambda&-1&\lambda
\end{vmatrix}=0.
\]

Expanding,

\[
(\lambda-1)+3\lambda+(-2-\lambda)=0.
\]

\[
3\lambda-3=0
\quad\Rightarrow\quad
\boxed{\lambda=1.}
\]

## Q12. If \(\mathbf A=\hat i-2\hat j-3\hat k\), \(\mathbf B=2\hat i+\hat j-\hat k\), and \(\mathbf C=\hat i+3\hat j-2\hat k\), find \(\mathbf A\cdot(\mathbf B\times\mathbf C)\).

**Solution.**

\[
\mathbf B\times\mathbf C=
\begin{vmatrix}
\hat i&\hat j&\hat k\\
2&1&-1\\
1&3&-2
\end{vmatrix}
=\hat i+3\hat j+5\hat k.
\]

Therefore,

\[
\begin{aligned}
\mathbf A\cdot(\mathbf B\times\mathbf C)
&=(1)(1)+(-2)(3)+(-3)(5)\\
&=1-6-15.
\end{aligned}
\]

\[\boxed{-20.}\]

## Q13. The vectors \(\mathbf A=2\hat i-3\hat j+4\hat k\), \(\mathbf B=\hat i+2\hat j-\hat k\), and \(\mathbf C=3\hat i-\hat j+2\hat k\) are three edges of a parallelepiped. Find its volume.

**Solution.**

The volume is the absolute value of the scalar triple product:

\[
V=|\mathbf A\cdot(\mathbf B\times\mathbf C)|
=\left|
\begin{vmatrix}
2&-3&4\\
1&2&-1\\
3&-1&2
\end{vmatrix}\right|.
\]

\[
\begin{aligned}
V&=|2(4-1)+3(2+3)+4(-1-6)|\\
&=|6+15-28|=|-7|.
\end{aligned}
\]

\[\boxed{V=7\text{ cubic units}.}\]

## Q14. If \(\mathbf A,\mathbf B,\mathbf C,\mathbf D\) are four vectors, prove that
\[
(\mathbf B\times\mathbf C)\cdot(\mathbf A\times\mathbf D)
+(\mathbf C\times\mathbf A)\cdot(\mathbf B\times\mathbf D)
+(\mathbf A\times\mathbf B)\cdot(\mathbf C\times\mathbf D)=0.
\]

**Proof.** Use the identity

\[
(\mathbf p\times\mathbf q)\cdot(\mathbf r\times\mathbf s)
=(\mathbf p\cdot\mathbf r)(\mathbf q\cdot\mathbf s)
-(\mathbf p\cdot\mathbf s)(\mathbf q\cdot\mathbf r).
\]

Then the left-hand side becomes

\[
\begin{aligned}
& (\mathbf B\cdot\mathbf A)(\mathbf C\cdot\mathbf D)
 -(\mathbf B\cdot\mathbf D)(\mathbf C\cdot\mathbf A)\\
&+(\mathbf C\cdot\mathbf B)(\mathbf A\cdot\mathbf D)
 -(\mathbf C\cdot\mathbf D)(\mathbf A\cdot\mathbf B)\\
&+(\mathbf A\cdot\mathbf C)(\mathbf B\cdot\mathbf D)
 -(\mathbf A\cdot\mathbf D)(\mathbf B\cdot\mathbf C).
\end{aligned}
\]

Since the dot product is commutative, the first term cancels the fourth, the second cancels the fifth, and the third cancels the sixth. Hence the sum is zero.

\[\boxed{LHS=0.}\]

---

# Part C — Vector product (cross product)

## Q15. Define the vector product and prove that the area of a parallelogram with adjacent sides \(\mathbf A\) and \(\mathbf B\) is \(|\mathbf A\times\mathbf B|\).

**Answer and proof.** The cross product of two vectors is a vector perpendicular to both. Its direction is given by the right-hand rule, and

\[
\boxed{\mathbf A\times\mathbf B=|\mathbf A||\mathbf B|\sin\theta\,\hat n}
\]

where \(\hat n\) is a unit vector perpendicular to the plane of \(\mathbf A\) and \(\mathbf B\).

In component form,

\[
\mathbf A\times\mathbf B=
\begin{vmatrix}
\hat i&\hat j&\hat k\\
A_1&A_2&A_3\\
B_1&B_2&B_3
\end{vmatrix}.
\]

For the parallelogram, take \(|\mathbf A|\) as the base. If \(\theta\) is the angle between the adjacent sides, the perpendicular height is \(|\mathbf B|\sin\theta\). Thus,

\[
\begin{aligned}
\text{Area}&=\text{base}\times\text{height}\\
&=|\mathbf A|\,|\mathbf B|\sin\theta\\
&=|\mathbf A\times\mathbf B|.
\end{aligned}
\]

\[\boxed{\text{Area of parallelogram}=|\mathbf A\times\mathbf B|.}\]

The area of the corresponding triangle is \(\tfrac12|\mathbf A\times\mathbf B|\).

## Q16. If \(\mathbf A=3\hat i-\hat j+2\hat k\), \(\mathbf B=2\hat i+\hat j-\hat k\), and \(\mathbf C=\hat i-2\hat j+2\hat k\), find (i) \((\mathbf A\times\mathbf B)\times\mathbf C\) and (ii) \(\mathbf A\times(\mathbf B\times\mathbf C)\).

**Solution.** First,

\[
\mathbf A\times\mathbf B=
\begin{vmatrix}
\hat i&\hat j&\hat k\\
3&-1&2\\
2&1&-1
\end{vmatrix}
=-\hat i+7\hat j+5\hat k.
\]

(i)

\[
\begin{aligned}
(\mathbf A\times\mathbf B)\times\mathbf C
&=\begin{vmatrix}
\hat i&\hat j&\hat k\\
-1&7&5\\
1&-2&2
\end{vmatrix}\\
&=24\hat i+7\hat j-5\hat k.
\end{aligned}
\]

(ii) First,

\[
\mathbf B\times\mathbf C=
\begin{vmatrix}
\hat i&\hat j&\hat k\\
2&1&-1\\
1&-2&2
\end{vmatrix}
=-5\hat j-5\hat k.
\]

Therefore,

\[
\begin{aligned}
\mathbf A\times(\mathbf B\times\mathbf C)
&=\begin{vmatrix}
\hat i&\hat j&\hat k\\
3&-1&2\\
0&-5&-5
\end{vmatrix}\\
&=15\hat i+15\hat j-15\hat k.
\end{aligned}
\]

\[
\boxed{(i)\ 24\hat i+7\hat j-5\hat k,\qquad
(ii)\ 15\hat i+15\hat j-15\hat k.}
\]

## Q17. Prove that
\[
\mathbf a\times(\mathbf b+\mathbf c)+\mathbf b\times(\mathbf c+\mathbf a)+\mathbf c\times(\mathbf a+\mathbf b)=\mathbf 0.
\]

**Proof.** Expanding by distributivity,

\[
\begin{aligned}
LHS={}&\mathbf a\times\mathbf b+\mathbf a\times\mathbf c
+\mathbf b\times\mathbf c+\mathbf b\times\mathbf a\\
&+\mathbf c\times\mathbf a+\mathbf c\times\mathbf b.
\end{aligned}
\]

Using anti-commutativity, \(\mathbf a\times\mathbf b=-\mathbf b\times\mathbf a\), each pair cancels:

\[
LHS=0+0+0=\mathbf 0.
\]

\[\boxed{\mathbf a\times(\mathbf b+\mathbf c)+\mathbf b\times(\mathbf c+\mathbf a)+\mathbf c\times(\mathbf a+\mathbf b)=\mathbf 0.}\]

## Q18. Find a unit vector parallel to the resultant of \(\mathbf u=2\hat i+4\hat j-5\hat k\) and \(\mathbf v=\hat i+2\hat j+3\hat k\).

**Solution.** The resultant is

\[
\mathbf R=\mathbf u+\mathbf v=3\hat i+6\hat j-2\hat k.
\]

Its magnitude is

\[
|\mathbf R|=\sqrt{3^2+6^2+(-2)^2}=\sqrt{49}=7.
\]

Thus, the required unit vector is

\[
\boxed{\hat R=\frac{\mathbf R}{|\mathbf R|}
=\frac37\hat i+\frac67\hat j-\frac27\hat k.}
\]

## Q19. Find a unit vector perpendicular to the plane containing \(\mathbf A=2\hat i-6\hat j-3\hat k\) and \(\mathbf B=4\hat i+3\hat j-\hat k\).

**Solution.** A vector perpendicular to both vectors is \(\mathbf A\times\mathbf B\).

\[
\begin{aligned}
\mathbf A\times\mathbf B
&=\begin{vmatrix}
\hat i&\hat j&\hat k\\
2&-6&-3\\
4&3&-1
\end{vmatrix}\\
&=15\hat i-10\hat j+30\hat k.
\end{aligned}
\]

Its magnitude is

\[
|\mathbf A\times\mathbf B|=\sqrt{15^2+(-10)^2+30^2}=\sqrt{1225}=35.
\]

Therefore, one required unit vector is

\[
\boxed{\hat n=\frac37\hat i-\frac27\hat j+\frac67\hat k.}
\]

(The negative of this vector is also a valid unit normal.)

## Q20. Prove that
\[
|\mathbf a\times\mathbf b|^2+|\mathbf a\cdot\mathbf b|^2=|\mathbf a|^2|\mathbf b|^2.
\]

**Proof.** Let \(\theta\) be the angle between \(\mathbf a\) and \(\mathbf b\). Then

\[
|\mathbf a\times\mathbf b|=|\mathbf a||\mathbf b|\sin\theta,
\]

and

\[
|\mathbf a\cdot\mathbf b|=|\mathbf a||\mathbf b|\cos\theta.
\]

Squaring and adding,

\[
\begin{aligned}
LHS&=|\mathbf a|^2|\mathbf b|^2\sin^2\theta
+|\mathbf a|^2|\mathbf b|^2\cos^2\theta\\
&=|\mathbf a|^2|\mathbf b|^2(\sin^2\theta+\cos^2\theta)\\
&=|\mathbf a|^2|\mathbf b|^2=RHS.
\end{aligned}
\]

\[\boxed{|\mathbf a\times\mathbf b|^2+|\mathbf a\cdot\mathbf b|^2=|\mathbf a|^2|\mathbf b|^2.}\]

---

# Part D — Vector triple product and identities

## Q21. Prove the vector triple-product identity
\[
\boxed{\mathbf a\times(\mathbf b\times\mathbf c)
=(\mathbf a\cdot\mathbf c)\mathbf b-(\mathbf a\cdot\mathbf b)\mathbf c.}
\]

**Proof (component method).** Write \(\mathbf a=(a_1,a_2,a_3)\), \(\mathbf b=(b_1,b_2,b_3)\), and \(\mathbf c=(c_1,c_2,c_3)\). The first component of \(\mathbf a\times(\mathbf b\times\mathbf c)\) is

\[
\begin{aligned}
&a_2(b_1c_2-b_2c_1)-a_3(b_3c_1-b_1c_3)\\
&=b_1(a_2c_2+a_3c_3)-c_1(a_2b_2+a_3b_3)\\
&=b_1(\mathbf a\cdot\mathbf c)-c_1(\mathbf a\cdot\mathbf b),
\end{aligned}
\]

where the terms \(a_1b_1c_1\) cancel. The second and third components follow in the same way. Hence,

\[
\mathbf a\times(\mathbf b\times\mathbf c)
=(\mathbf a\cdot\mathbf c)\mathbf b-(\mathbf a\cdot\mathbf b)\mathbf c.
\]

This is the **vector triple-product** or **BAC–CAB identity**.

## Q22. Prove that
\[
\hat i\times(\mathbf a\times\hat i)
+\hat j\times(\mathbf a\times\hat j)
+\hat k\times(\mathbf a\times\hat k)=2\mathbf a.
\]

**Proof.** Using the vector triple-product identity,

\[
\hat i\times(\mathbf a\times\hat i)
=(\hat i\cdot\hat i)\mathbf a-(\hat i\cdot\mathbf a)\hat i
=\mathbf a-a_1\hat i.
\]

Similarly,

\[
\hat j\times(\mathbf a\times\hat j)=\mathbf a-a_2\hat j,
\]

\[
\hat k\times(\mathbf a\times\hat k)=\mathbf a-a_3\hat k.
\]

Adding,

\[
LHS=3\mathbf a-(a_1\hat i+a_2\hat j+a_3\hat k)
=3\mathbf a-\mathbf a=2\mathbf a.
\]

\[\boxed{LHS=2\mathbf a.}\]

## Q23. If \(\mathbf A,\mathbf B,\mathbf C,\mathbf D\) are four vectors, prove that
\[
(\mathbf B\times\mathbf C)\cdot(\mathbf A\times\mathbf D)
+(\mathbf C\times\mathbf A)\cdot(\mathbf B\times\mathbf D)
+(\mathbf A\times\mathbf B)\cdot(\mathbf C\times\mathbf D)=0.
\]

**Answer.** This is the same four-vector identity as Q14. Apply

\[
(\mathbf p\times\mathbf q)\cdot(\mathbf r\times\mathbf s)
=(\mathbf p\cdot\mathbf r)(\mathbf q\cdot\mathbf s)
-(\mathbf p\cdot\mathbf s)(\mathbf q\cdot\mathbf r),
\]

and expand the three terms. The resulting six scalar products cancel in pairs because \(\mathbf x\cdot\mathbf y=\mathbf y\cdot\mathbf x\). Therefore the sum is zero.

---

# Part E — Del operator, gradient, divergence and curl

## Q24. Define the del operator and gradient. Also write the formulae for divergence and curl.

**Del operator.** In Cartesian coordinates,

\[
\boxed{\nabla=\hat i\frac{\partial}{\partial x}
+\hat j\frac{\partial}{\partial y}
+\hat k\frac{\partial}{\partial z}.}
\]

**Gradient.** If \(\phi(x,y,z)\) is a differentiable scalar function, its gradient is

\[
\boxed{\operatorname{grad}\phi=\nabla\phi
=\frac{\partial\phi}{\partial x}\hat i
+\frac{\partial\phi}{\partial y}\hat j
+\frac{\partial\phi}{\partial z}\hat k.}
\]

The gradient is a vector.

**Divergence.** For \(\mathbf A=A_1\hat i+A_2\hat j+A_3\hat k\),

\[
\boxed{\operatorname{div}\mathbf A=\nabla\cdot\mathbf A
=\frac{\partial A_1}{\partial x}
+\frac{\partial A_2}{\partial y}
+\frac{\partial A_3}{\partial z}.}
\]

The divergence is a scalar.

**Curl.**

\[
\boxed{\operatorname{curl}\mathbf A=\nabla\times\mathbf A
=\begin{vmatrix}
\hat i&\hat j&\hat k\\
\partial/\partial x&\partial/\partial y&\partial/\partial z\\
A_1&A_2&A_3
\end{vmatrix}.}
\]

The curl is a vector.

## Q25. Show that
\[
\nabla\cdot(\phi\mathbf A)=(\nabla\phi)\cdot\mathbf A+\phi(\nabla\cdot\mathbf A).
\]

**Proof.** By the product rule,

\[
\begin{aligned}
\nabla\cdot(\phi\mathbf A)
&=\sum_i\frac{\partial}{\partial x_i}(\phi A_i)\\
&=\sum_i\left(A_i\frac{\partial\phi}{\partial x_i}
+\phi\frac{\partial A_i}{\partial x_i}\right)\\
&=\left(\sum_i\hat e_i\frac{\partial\phi}{\partial x_i}\right)\cdot\mathbf A
+\phi\left(\sum_i\frac{\partial A_i}{\partial x_i}\right)\\
&=(\nabla\phi)\cdot\mathbf A+\phi(\nabla\cdot\mathbf A).
\end{aligned}
\]

\[\boxed{\nabla\cdot(\phi\mathbf A)=(\nabla\phi)\cdot\mathbf A+\phi(\nabla\cdot\mathbf A).}\]

## Q26. Show that
\[
\nabla\times(\phi\mathbf A)=(\nabla\phi)\times\mathbf A+\phi(\nabla\times\mathbf A).
\]

**Proof.** Using the product rule for each partial derivative,

\[
\begin{aligned}
\nabla\times(\phi\mathbf A)
&=\sum_i\hat e_i\times\frac{\partial}{\partial x_i}(\phi\mathbf A)\\
&=\sum_i\hat e_i\times\left(\frac{\partial\phi}{\partial x_i}\mathbf A
+\phi\frac{\partial\mathbf A}{\partial x_i}\right)\\
&=\left(\sum_i\hat e_i\frac{\partial\phi}{\partial x_i}\right)\times\mathbf A
+\phi\left(\sum_i\hat e_i\times\frac{\partial\mathbf A}{\partial x_i}\right)\\
&=(\nabla\phi)\times\mathbf A+\phi(\nabla\times\mathbf A).
\end{aligned}
\]

\[\boxed{\nabla\times(\phi\mathbf A)=(\nabla\phi)\times\mathbf A+\phi(\nabla\times\mathbf A).}\]

## Q27. Prove that the curl of the gradient of a scalar function is zero:
\[
\nabla\times(\nabla\phi)=\mathbf 0.
\]

**Proof.**

\[
\nabla\phi=\phi_x\hat i+\phi_y\hat j+\phi_z\hat k.
\]

Therefore,

\[
\nabla\times(\nabla\phi)=
\begin{vmatrix}
\hat i&\hat j&\hat k\\
\partial_x&\partial_y&\partial_z\\
\phi_x&\phi_y&\phi_z
\end{vmatrix}.
\]

Expanding,

\[
\begin{aligned}
&\left(\phi_{zy}-\phi_{yz}\right)\hat i
+\left(\phi_{xz}-\phi_{zx}\right)\hat j
+\left(\phi_{yx}-\phi_{xy}\right)\hat k.
\end{aligned}
\]

If the second partial derivatives are continuous, mixed partial derivatives are equal:

\[
\phi_{xy}=\phi_{yx},\quad
\phi_{yz}=\phi_{zy},\quad
\phi_{zx}=\phi_{xz}.
\]

Hence every component is zero:

\[\boxed{\nabla\times(\nabla\phi)=\mathbf 0.}\]

## Q28. Prove that
\[
\operatorname{div}(\mathbf A\times\mathbf B)
=\mathbf B\cdot(\nabla\times\mathbf A)
-\mathbf A\cdot(\nabla\times\mathbf B).
\]

**Proof.** Using the product rule in Cartesian coordinates,

\[
\begin{aligned}
\nabla\cdot(\mathbf A\times\mathbf B)
&=\sum_i\frac{\partial}{\partial x_i}
\left[\mathbf A\times\mathbf B\right]_i\\
&=\mathbf B\cdot(\nabla\times\mathbf A)
-\mathbf A\cdot(\nabla\times\mathbf B).
\end{aligned}
\]

Thus,

\[
\boxed{\nabla\cdot(\mathbf A\times\mathbf B)
=\mathbf B\cdot(\nabla\times\mathbf A)
-\mathbf A\cdot(\nabla\times\mathbf B).}
\]

---

# Part F — Green's theorem

## Q29. State Green's theorem in the plane and verify it for
\[
\oint_C (xy+y^2)\,dx+x^2\,dy,
\]
where \(C\) is the positively oriented boundary of the region enclosed by \(y=x\) and \(y=x^2\).

**Statement of Green's theorem.** If \(C\) is a positively oriented, simple closed curve enclosing a region \(R\), and \(P,Q\) have continuous first partial derivatives, then

\[
\boxed{\oint_C(P\,dx+Q\,dy)
=\iint_R\left(\frac{\partial Q}{\partial x}
-\frac{\partial P}{\partial y}\right)dA.}
\]

**Verification.** Here,

\[
P=xy+y^2,\qquad Q=x^2.
\]

The curves meet at \((0,0)\) and \((1,1)\). The region is

\[
0\le x\le1,\qquad x^2\le y\le x.
\]

### 1. Evaluate the line integral directly

**Along the parabola** \(y=x^2\), from \((0,0)\) to \((1,1)\):

\[
dy=2x\,dx,
\]

so

\[
\begin{aligned}
\int_{C_1}(xy+y^2)\,dx+x^2\,dy
&=\int_0^1\left[(x\cdot x^2+x^4)+x^2(2x)\right]dx\\
&=\int_0^1(3x^3+x^4)\,dx\\
&=\left[\frac{3x^4}{4}+\frac{x^5}{5}\right]_0^1\\
&=\frac34+\frac15=\frac{19}{20}.
\end{aligned}
\]

**Along the straight line** \(y=x\), from \((1,1)\) to \((0,0)\):

\[
dy=dx,
\]

and therefore

\[
\begin{aligned}
\int_{C_2}(xy+y^2)\,dx+x^2\,dy
&=\int_1^0(2x^2+x^2)\,dx\\
&=\int_1^0 3x^2\,dx\\
&=\left[x^3\right]_1^0=-1.
\end{aligned}
\]

Thus,

\[
\boxed{\oint_C(P\,dx+Q\,dy)=\frac{19}{20}-1=-\frac1{20}.}
\]

### 2. Evaluate the double integral

\[
\frac{\partial Q}{\partial x}=2x,
\qquad
\frac{\partial P}{\partial y}=x+2y.
\]

By Green's theorem, the right-hand side is

\[
\begin{aligned}
\iint_R(2x-x-2y)\,dA
&=\int_0^1\int_{x^2}^{x}(x-2y)\,dy\,dx\\
&=\int_0^1\left[xy-y^2\right]_{x^2}^{x}dx\\
&=\int_0^1(x^4-x^3)\,dx\\
&=\left[\frac{x^5}{5}-\frac{x^4}{4}\right]_0^1\\
&=\frac15-\frac14=-\frac1{20}.
\end{aligned}
\]

Both sides are equal. Therefore, Green's theorem is verified:

\[\boxed{LHS=RHS=-\frac1{20}.}\]

---

# Part G — Gauss's divergence theorem

## Q30. State and prove Gauss's divergence theorem.

**Statement.** Let \(V\) be a volume bounded by a closed surface \(S\), and let \(\mathbf F\) be a continuously differentiable vector field. If \(\hat n\) is the unit normal directed outward from the volume, then

\[
\boxed{\oiint_S\mathbf F\cdot\hat n\,dS
=\iiint_V(\nabla\cdot\mathbf F)\,dV.}
\]

**Proof (projection argument).** Let

\[
\mathbf F=F_1\hat i+F_2\hat j+F_3\hat k.
\]

First consider the contribution from the \(F_3\) component. Project the upper and lower portions of the closed surface onto the \(xy\)-plane, and let their heights be \(z=z_2(x,y)\) and \(z=z_1(x,y)\), respectively. Then

\[
\begin{aligned}
\iiint_V\frac{\partial F_3}{\partial z}\,dV
&=\iint_R\int_{z_1(x,y)}^{z_2(x,y)}
\frac{\partial F_3}{\partial z}\,dz\,dx\,dy\\
&=\iint_R\left[F_3(x,y,z_2)-F_3(x,y,z_1)\right]dx\,dy.
\end{aligned}
\]

For a surface element, its projected area on the \(xy\)-plane is \(dS\cos\theta=dx\,dy\), where \(\theta\) is the angle between the outward normal and the positive \(z\)-axis. The upper and lower surface contributions therefore combine to give

\[
\iint_{S}F_3 n_3\,dS
=\iiint_V\frac{\partial F_3}{\partial z}\,dV.
\]

By the same argument, projecting onto the \(yz\)-plane and the \(xz\)-plane gives

\[
\iint_S F_1n_1\,dS
=\iiint_V\frac{\partial F_1}{\partial x}\,dV,
\]

and

\[
\iint_S F_2n_2\,dS
=\iiint_V\frac{\partial F_2}{\partial y}\,dV.
\]

Adding these three equations,

\[
\begin{aligned}
\iint_S(F_1n_1+F_2n_2+F_3n_3)\,dS
&=\iiint_V\left(
\frac{\partial F_1}{\partial x}
+\frac{\partial F_2}{\partial y}
+\frac{\partial F_3}{\partial z}\right)dV.
\end{aligned}
\]

But

\[
F_1n_1+F_2n_2+F_3n_3=\mathbf F\cdot\hat n,
\]

and

\[
\frac{\partial F_1}{\partial x}
+\frac{\partial F_2}{\partial y}
+\frac{\partial F_3}{\partial z}
=\nabla\cdot\mathbf F.
\]

Hence,

\[
\boxed{\oiint_S\mathbf F\cdot\hat n\,dS
=\iiint_V\nabla\cdot\mathbf F\,dV.}
\]

This proves Gauss's divergence theorem.

## Q31. Evaluate \(\displaystyle\oiint_S\mathbf F\cdot\hat n\,dS\), where
\[
\mathbf F=ax\hat i+by\hat j+cz\hat k,
\]
and \(S\) is the unit sphere \(x^2+y^2+z^2=1\).

**Solution.** By Gauss's divergence theorem,

\[
\oiint_S\mathbf F\cdot\hat n\,dS
=\iiint_V\nabla\cdot\mathbf F\,dV.
\]

First calculate the divergence:

\[
\begin{aligned}
\nabla\cdot\mathbf F
&=\frac{\partial(ax)}{\partial x}
+\frac{\partial(by)}{\partial y}
+\frac{\partial(cz)}{\partial z}\\
&=a+b+c.
\end{aligned}
\]

Since the sphere has radius 1, its volume is \(\frac43\pi\). Hence,

\[
\begin{aligned}
\oiint_S\mathbf F\cdot\hat n\,dS
&=\iiint_V(a+b+c)\,dV\\
&=(a+b+c)\iiint_VdV\\
&=(a+b+c)\left(\frac43\pi\right).
\end{aligned}
\]

\[\boxed{\displaystyle\oiint_S\mathbf F\cdot\hat n\,dS
=\frac{4\pi}{3}(a+b+c).}\]

---

# Part H — Volume and line integrals

## Q32. Define volume integral and line integral.

**Volume integral.** If \(f(x,y,z)\) is a scalar function over a volume \(V\), its volume integral is

\[
\boxed{\iiint_V f(x,y,z)\,dV.}
\]

In Cartesian coordinates,

\[
\iiint_V f\,dV
=\iiint_V f(x,y,z)\,dx\,dy\,dz.
\]

For a vector field \(\mathbf F=F_1\hat i+F_2\hat j+F_3\hat k\),

\[
\iiint_V\mathbf F\,dV
=\iiint_V(F_1\hat i+F_2\hat j+F_3\hat k)\,dx\,dy\,dz.
\]

**Line integral.** Let a curve \(C\) join points \(A\) and \(B\), and let \(\mathbf F\) be a continuous vector field along the curve. Divide the curve into small pieces with displacement vectors \(\Delta\mathbf r_i\). The line integral is the limit of the sums

\[
\boxed{\int_C\mathbf F\cdot d\mathbf r
=\lim_{n\to\infty}\sum_{i=1}^{n}
\mathbf F(P_i)\cdot\Delta\mathbf r_i,}
\]

provided the limit exists and the largest sub-arc length tends to zero.

If the curve is parametrized by \(\mathbf r(t)\), \(a\le t\le b\), then

\[
\boxed{\int_C\mathbf F\cdot d\mathbf r
=\int_a^b\mathbf F(\mathbf r(t))\cdot\mathbf r'(t)\,dt.}
\]

For a scalar function \(f\), the scalar line integral with respect to arc length is \(\int_C f\,ds\).

---

# Last-minute revision sheet

## Essential identities

\[
\begin{aligned}
\mathbf a\cdot\mathbf b&=|\mathbf a||\mathbf b|\cos\theta,\\
|\mathbf a\times\mathbf b|&=|\mathbf a||\mathbf b|\sin\theta,\\
\mathbf a\cdot(\mathbf b\times\mathbf c)&=
\det\begin{pmatrix}a_1&a_2&a_3\\b_1&b_2&b_3\\c_1&c_2&c_3\end{pmatrix},\\
\mathbf a\times(\mathbf b\times\mathbf c)&=
(\mathbf a\cdot\mathbf c)\mathbf b-(\mathbf a\cdot\mathbf b)\mathbf c,\\
\nabla\cdot(\phi\mathbf A)&=(\nabla\phi)\cdot\mathbf A+\phi\nabla\cdot\mathbf A,\\
\nabla\times(\phi\mathbf A)&=(\nabla\phi)\times\mathbf A+\phi\nabla\times\mathbf A,\\
\nabla\times(\nabla\phi)&=\mathbf0,\\
\nabla\cdot(\mathbf A\times\mathbf B)&=
\mathbf B\cdot(\nabla\times\mathbf A)-\mathbf A\cdot(\nabla\times\mathbf B).
\end{aligned}
\]

## Theorems

**Green's theorem**

\[
\oint_C(P\,dx+Q\,dy)
=\iint_R\left(Q_x-P_y\right)dA.
\]

**Gauss's divergence theorem**

\[
\oiint_S\mathbf F\cdot\hat n\,dS
=\iiint_V(\nabla\cdot\mathbf F)\,dV.
\]

## Numerical answers at a glance

| Question | Final answer |
|---|---|
| Q1: Scalar projection | \(19/9\) |
| Q3: Angle | \(\cos^{-1}(1/\sqrt{406})\) |
| Q10: Coplanarity parameter | \(\lambda=3/5\) |
| Q11: Coplanarity parameter | \(\lambda=1\) |
| Q12: Scalar triple product | \(-20\) |
| Q13: Parallelepiped volume | \(7\) cubic units |
| Q16(i) | \(24\hat i+7\hat j-5\hat k\) |
| Q16(ii) | \(15\hat i+15\hat j-15\hat k\) |
| Q18: Unit vector | \((3\hat i+6\hat j-2\hat k)/7\) |
| Q19: Unit normal | \((3\hat i-2\hat j+6\hat k)/7\) |
| Q29: Green's theorem integral | \(-1/20\) on each side |
| Q31: Flux through unit sphere | \(4\pi(a+b+c)/3\) |

## Suggested 3-hour study order

1. **First 45 minutes:** Q1–Q4, Q7–Q13 and Q18–Q20. Practise the dot product, determinant, projection, angle, coplanarity and volume calculations.
2. **Next 60 minutes:** Q15–Q17 and Q21–Q28. Memorize the cross-product identities and the four vector-calculus identities.
3. **Next 40 minutes:** Q29–Q31. Learn the statements and the worked Green's and Gauss's theorem examples.
4. **Final 35 minutes:** Write the key formulas from memory, then practise the numerical answers without looking.

**Exam tip:** For a proof, write the relevant identity first, show the expansion clearly, and end with the required boxed result. For a numerical vector question, show the determinant or dot product before simplifying.
