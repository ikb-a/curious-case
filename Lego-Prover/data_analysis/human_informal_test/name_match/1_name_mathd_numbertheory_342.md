# mathd_numbertheory_342

Tasks where a provided skill's *name* is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
theorem mathd_numbertheory_342:
  "54 mod 6 = (0::nat)"
proof -
  have "54 = 9 * 6 + 0" by simp
  then have "54 mod 6 = 0" by simp
  then show ?thesis by simp
qed
```


## Usage 1 of 1:
### Problem:
Task name: `mathd_numbertheory_247.json`

Solve the congruence $3n \equiv 2 \pmod{11}$, as a residue modulo 11.  (Give an answer between 0 and 10.) Show that it is 8.
### Informal Proof:
Note that $2 \equiv -9 \pmod{11}$, so we can write the given congruence as $3n \equiv -9 \pmod{11}$.  Since 3 is relatively prime to 11, we can divide both sides by 3, to get $n \equiv -3 \equiv 8 \pmod{11}$.
### Solution:
```isabelle
theorem mathd_numbertheory_247:
  fixes n ::nat
  assumes "(3 * n) mod 2 = 11" 
  shows "n mod 11 = 8"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_numbertheory_247
  imports Complex_Main
begin

(* formal statement copy from the input *)
theorem mathd_numbertheory_247:
  fixes n ::nat
  assumes "(3 * n) mod 2 = 11" 
  shows "n mod 11 = 8"
proof -
  (* Step 1: Note that $2 \equiv -9 \pmod{11}$, so we can write the given congruence as $3n \equiv -9 \pmod{11}$. *)
  have "(3 * n) mod 2 = (-9) mod 11"
    using assms by simp

  (* Step 2: Since 3 is relatively prime to 11, we can divide both sides of the congruence by 3, resulting in $n \equiv -3 \equiv 8 \pmod{11}$. *)
  then have "n mod 2 = (-3) mod 11"
    using assms by simp
  then have "n mod 2 = 8 mod 11"
    by simp
  then have "n mod 2 = 8"
    by simp
  then show ?thesis
    using assms by simp
qed

end
```

####################

## Problems
Suppose that $n$ is a positive integer for which the sum of all positive integers less than $n$ that are relatively prime to $n$ is equal to $n/2$. Show that $n$ is divisible by 3.

## Informal proof
Step 1: The sum of all positive integers less than $n$ that are relatively prime to $n$ is the sum of all positive integers from 1 to $n-1$ excluding those that are not relatively prime to $n$.
Step 2: The sum of all positive integers from 1 to $n-1$ can be expressed as $\frac{(n-1)(n)}{2}$.
Step 3: We can rewrite the sum of all positive integers less than $n$ that are relatively prime to $n$ as $\frac{(n-1)(n)}{2} - P$, where $P$ is the sum of all positive integers less than $n$ that are not relatively prime to $n$.
Step 4: $P$ is equal to the sum of all positive integers less than $n$ that are divisible by 2 or 3. We need to show that $P$ is divisible by 3.
Step 5: We can express $P$ as the sum of two sums: $P = P_2 + P_3$, where $P_2$ is the sum of all positive integers less than $n$ that are divisible by 2, and $P_3$ is the sum of all positive integers less than $n$ that are divisible by 3.
Step 6: We can express $P_3$ as the sum of all positive integers less than $n$ that are divisible by 3. Since $P_3$ is divisible by 3, $P$ is also divisible by 3.
Step 7: Since the sum of all positive integers less than $n$ that are relatively prime to $n$ is equal to $n/2$, we have $\frac{(n-1)(n)}{2} - P = \frac{n}{2}$.
Step 8: Substituting the value of $P$ in the equation above, we get $\frac{(n-1)(n)}{2} - P_2 - P_3 = \frac{n}{2}$.
Step 9: Since $P$ is divisible by 3, $P_2 - P_3$ must also be divisible by 3.
Step 10: Since $P_2$ and $P_3$ are both non-negative integers, $P_2 - P_3$ must be a non-negative integer divisible by 3.
Step 11: The only non-negative integer divisible by 3 is 0. Therefore, $P_2 - P_3 = 0$.
Step 12: This implies that $P_2 = P_3$.
Step 13: Since $P_2$ is the sum of all positive integers less than $n$ that are divisible by 2, and $P_3$ is the sum of all positive integers less than $n$ that are divisible by 3, this implies that the number of positive integers less than $n$ that are divisible by 2 is equal to the number of positive integers less than $n$ that are divisible by 3.
Step 14: This can only happen if $n$ is divisible by both 2 and 3.
Step 15: Since $n$ is a positive integer, it must be divisible by 6, and therefore divisible by 3.

## Formal statement
```isabelle
theorem mathd_numbertheory_100:
  fixes n :: nat
  assumes "(\<Sum>i = 1..<n. gcd i n) = n div 2"
  shows "3 dvd n"
```

## Proof
```isabelle
theory mathd_numbertheory_100
  imports Complex_Main
begin

(* lemma 1: A base lemma about the sum of gcd, which is used in step 1 *)
lemma sum_gcd:
  fixes n :: nat
  shows "(\<Sum>i = 1..<n. gcd i n) = n - 1"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then show ?case by simp
qed

(* lemma 2: A base lemma about the sum of all positive integers from 1 to n, which is used in step 2 *)
lemma sum_nat_number:
  fixes n :: nat
  shows "(\<Sum>i = 1..<n. i) = n * (n - 1) div 2"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then show ?case by simp
qed

(* formal statement copy from the input *)
theorem mathd_numbertheory_100:
  fixes n :: nat
  assumes "(\<Sum>i = 1..<n. gcd i n) = n div 2"
  shows "3 dvd n"
proof -
  (* Step 1: The sum of all positive integers less than $n$ that are relatively prime to $n$ is the sum of all positive integers from 1 to $n-1$ excluding those that are not relatively prime to $n$. *)
  have "(\<Sum>i = 1..<n. gcd i n) = (\<Sum>i = 1..<n. if gcd i n = 1 then 1 else 0)"
    by (simp add: if_distrib sum.If_cases)
  
  (* Step 2: The sum of all positive integers from 1 to $n-1$ can be expressed as $\frac{(n-1)(n)}{2}$. *)
  then have "(\<Sum>i = 1..<n. if gcd i n = 1 then 1 else 0) = (\<Sum>i = 1..<(n-1). if gcd i n = 1 then 1 else 0)"
    using sum_gcd by simp
  then have "(\<Sum>i = 1..<n. if gcd i n = 1 then 1 else 0) = (\<Sum>i = 1..<(n-1). 1)"
    by simp
  then have "(\<Sum>i = 1..<n. if gcd i n = 1 then 1 else 0) = (n - 1)"
    using sum_nat_number by simp

  (* Step 3: We can rewrite the sum of all positive integers less than $n$ that are relatively prime to $n$ as $\frac{(n-1)(n)}{2} - P$, where $P$ is the sum of all positive integers less than $n$ that are not relatively prime to $n$. *)
  then have "(\<Sum>i = 1..<n. gcd i n) = (n - 1)"
    using assms by simp

  (* Step 4: $P$ is equal to the sum of all positive integers less than $n$ that are divisible by 2 or 3. We need to show that $P$ is divisible by 3. *)
  (* Step 5: We can express $P$ as the sum of two sums: $P = P_2 + P_3$, where $P_2$ is the sum of all positive integers less than $n$ that are divisible by 2, and $P_3$ is the sum of all positive integers less than $n$ that are divisible by 3. *)
  have "(\<Sum>i = 1..<n. gcd i n) = (\<Sum>i = 1..<n. if gcd i n = 1 then 1 else 0)"
    by (simp add: if_distrib sum.If_cases)
  then have "(\<Sum>i = 1..<n. gcd i n) = (\<Sum>i = 1..<n. if gcd i n = 1 then 1 else 0)"
    using sum_gcd by simp
  then have "(\<Sum>i = 1..<n. gcd i n) = (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 2 = 0 then 1 else 0) + (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 3 = 0 then 1 else 0)"
    by auto
  then have "(\<Sum>i = 1..<n. gcd i n) = (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 2 = 0 then 1 else 0) + (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 3 = 0 then 1 else 0)"
    by auto
  
  (* Step 6: We can express $P_3$ as the sum of all positive integers less than $n$ that are divisible by 3. Since $P_3$ is divisible by 3, $P$ is also divisible by 3. *)
  then have "(\<Sum>i = 1..<n. gcd i n) mod 3 = ((\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 2 = 0 then 1 else 0) + (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 3 = 0 then 1 else 0)) mod 3"
    by simp
  then have "(\<Sum>i = 1..<n. gcd i n) mod 3 = ((\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 3 = 0 then 1 else 0) + (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 2 = 0 then 1 else 0)) mod 3"
    by auto
  then have "(\<Sum>i = 1..<n. gcd i n) mod 3 = (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 3 = 0 then 1 else 0) mod 3 + (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 2 = 0 then 1 else 0) mod 3"
    by simp
  
  (* Step 7: Since the sum of all positive integers less than $n$ that are relatively prime to $n$ is equal to $n/2$, we have $\frac{(n-1)(n)}{2} - P = \frac{n}{2}$. *)
  then have "(n - 1) mod 3 = (n div 2) mod 3"
    using assms by simp

  (* Step 8: Substituting the value of $P$ in the equation above, we get $\frac{(n-1)(n)}{2} - P_2 - P_3 = \frac{n}{2}$. *)
  then have "(\<Sum>i = 1..<n. gcd i n) mod 3 = (n div 2) mod 3"
    by simp

  (* Step 9: Since $P$ is divisible by 3, $P_2 - P_3$ must also be divisible by 3. *)
  then have "(\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 2 = 0 then 1 else 0) mod 3 = ((n div 2) - (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 3 = 0 then 1 else 0)) mod 3"
    by simp

  (* Step 10: Since $P_2$ and $P_3$ are both non-negative integers, $P_2 - P_3$ must be a non-negative integer divisible by 3. *)
  then have "(\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 2 = 0 then 1 else 0) mod 3 ≤ ((n div 2) - (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 3 = 0 then 1 else 0)) mod 3"
    by simp

  (* Step 11: The only non-negative integer divisible by 3 is 0. Therefore, $P_2 - P_3 = 0$. *)
  then have "(\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 2 = 0 then 1 else 0) mod 3 = 0"
    by simp

  (* Step 12: This implies that $P_2 = P_3$. *)
  then have "(\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 2 = 0 then 1 else 0) = (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 3 = 0 then 1 else 0)"
    by auto

  (* Step 13: Since $P_2$ is the sum of all positive integers less than $n$ that are divisible by 2, and $P_3$ is the sum of all positive integers less than $n$ that are divisible by 3, this implies that the number of positive integers less than $n$ that are divisible by 2 is equal to the number of positive integers less than $n$ that are divisible by 3. *)
  then have "(\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 2 = 0 then 1 else 0) = (\<Sum>i = 1..<n. if gcd i n = 1 \<and> i mod 3 = 0 then 1 else 0)"
    by simp

  (* Step 14: This can only happen if $n$ is divisible by both 2 and 3. *)
  then have "2 dvd n" and "3 dvd n"
    by simp_all

  (* Step 15: Since $n$ is a positive integer, it must be divisible by 6, and therefore divisible by 3. *)
  then show ?thesis
    by (simp add: dvd_def)
qed

end
```

####################

## Problems
Suppose that $a$ and $b$ are positive integers for which $ab + 1$ divides $a^2 + b^2$. Show that $\frac{a^2+b^2}{ab+1}$ is the square of an integer.

## Informal proof
Step 1: Express $a^2 + b^2$ as $(ab+1)q$ for some positive integer q.
Step 2: Rearrange the equation to get $a^2 - abq + b^2 - q = 0$.
Step 3: Treat $a$ as a variable and view the equation as a quadratic equation in $a$.
Step 4: Use the quadratic formula to find the roots of the equation, which are given by $a = \frac{bq \pm \sqrt{q^2 - 4(b^2 - q)}}{2}$.
Step 5: To prove that $\frac{a^2+b^2}{ab+1}$ is the square of an integer, we need to show that $q^2 - 4(b^2 - q)$ is a perfect square.
Step 6: Rearrange the equation to get $q^2 - 4b^2 + 4q = m^2$ for some positive integer m.
Step 7: Rewrite the equation as $(2q + m)^2 - 4b^2 = m^2$.
Step 8: Simplify the equation to get $(2q + m)^2 - (2b)^2 = m^2$.
Step 9: Use the difference of squares identity to rewrite the equation as $(2q + m + 2b)(2q + m - 2b) = m^2$.
Step 10: Since $q$ and $m$ are positive integers, we have $(2q + m + 2b) > (2q + m - 2b)$.
Step 11: Therefore, $(2q + m + 2b)$ must be a perfect square, and $\frac{a^2+b^2}{ab+1}$ is the square of an integer.

## Formal statement
```isabelle
theorem mathd_numbertheory_200:
  fixes a b :: nat
  assumes "(a^2 + b^2) mod (a*b + 1) = 0"
  shows "\<exists>q m. (q^2 - 4*b^2 + 4*q = m^2) \<and> (\<forall>a. (\<frac>{a^2 + b^2}{a*b + 1})^2 = (2*q + m)^2)"
```

## Proof
```isabelle
theory mathd_numbertheory_200
  imports Complex_Main
begin

(* lemma 1: A base lemma about the difference of squares, which is useful in step 9 *)
lemma diff_squares:
  fixes a b :: nat
  shows "a^2 - b^2 = (a - b) * (a + b)"
  by (simp add: power2_eq_square)

(* formal statement copy from the input *)
theorem mathd_numbertheory_200:
  fixes a b :: nat
  assumes "(a^2 + b^2) mod (a*b + 1) = 0"
  shows "\<exists>q m. (q^2 - 4*b^2 + 4*q = m^2) \<and> (\<forall>a. (\<frac>{a^2 + b^2}{a*b + 1})^2 = (2*q + m)^2)"
proof -
  (* Step 1: Express $a^2 + b^2$ as $(ab+1)q$ for some positive integer q. *)
  have "(a^2 + b^2) mod (a*b + 1) = 0"
    using assms by simp
  then have "a^2 + b^2 = (a*b + 1) * q"
    for q :: nat
    by (metis add.commute assms div_mult_mod_eq mult.commute mult.right_neutral mult_eq_0_iff mod_0)
  
  (* Step 2: Rearrange the equation to get $a^2 - abq + b^2 - q = 0$. *)
  then have "a^2 - ab*q + b^2 - q = 0"
    by simp
  
  (* Step 3: Treat $a$ as a variable and view the equation as a quadratic equation in $a$. *)
  then have "a^2 - a*b*q + b^2 - q = 0"
    by simp
  
  (* Step 4: Use the quadratic formula to find the roots of the equation, which are given by $a = \frac{bq \pm \sqrt{q^2 - 4(b^2 - q)}}{2}$. *)
  then have "a = (b*q + sqrt(q^2 - 4*(b^2 - q))) / 2 ∨ a = (b*q - sqrt(q^2 - 4*(b^2 - q))) / 2"
    by (metis add_0_right add_diff_cancel_right' distrib_right mult_2_right power2_eq_square real_sqrt_abs real_sqrt_mult_self)

  (* Step 5: To prove that $\frac{a^2+b^2}{ab+1}$ is the square of an integer, we need to show that $q^2 - 4(b^2 - q)$ is a perfect square. *)
  then have "q^2 - 4*(b^2 - q) = (b*q + sqrt(q^2 - 4*(b^2 - q)))^2 / 4 ∨ q^2 - 4*(b^2 - q) = (b*q - sqrt(q^2 - 4*(b^2 - q)))^2 / 4"
    by (metis (mono_tags, hide_lams) diff_divide_distrib nonzero_mult_div_cancel_right power2_eq_square real_sqrt_divide real_sqrt_mult right_diff_distrib)

  (* Step 6: Rearrange the equation to get $q^2 - 4b^2 + 4q = m^2$ for some positive integer m. *)
  then have "q^2 - 4*b^2 + 4*q = m^2"
    using assms by simp

  (* Step 7: Rewrite the equation as $(2q + m)^2 - 4b^2 = m^2$. *)
  then have "(2*q + m)^2 - 4*b^2 = m^2"
    by (simp add: power2_eq_square)

  (* Step 8: Simplify the equation to get $(2q + m)^2 - (2b)^2 = m^2$. *)
  then have "(2*q + m)^2 - (2*b)^2 = m^2"
    by (simp add: power2_eq_square)

  (* Step 9: Use the difference of squares identity to rewrite the equation as $(2q + m + 2b)(2q + m - 2b) = m^2$. *)
  then have "(2*q + m + 2*b)*(2*q + m - 2*b) = m^2"
    using diff_squares[of "2*q + m" "2*b"] by simp

  (* Step 10: Since $q$ and $m$ are positive integers, we have $(2q + m + 2b) > (2q + m - 2b)$. *)
  then have "(2*q + m + 2*b) > (2*q + m - 2*b)"
    by simp

  (* Step 11: Therefore, $(2q + m + 2b)$ must be a perfect square, and $\frac{a^2+b^2}{ab+1}$ is the square of an integer. *)
  then have "\<exists>m. (2*q + m + 2*b) = x^2"
    for x :: nat
    using nat_less_le by blast
  then have "\<exists>m. (\<frac>{a^2 + b^2}{a*b + 1})^2 = (2*q + m)^2"
    by (metis (mono_tags, hide_lams) assms power2_eq_square real_sqrt_abs real_sqrt_mult_self)
  show ?thesis
    by simp
qed

end
```

####################

## Problems
Suppose that $x$ and $y$ are real numbers such that $x^2 - 2xy + 6x + y^2 - 7y + 6 = 0$.  What is $x + y$?  $ \mathrm{(A) \ } 0 \qquad \mathrm{(B) \ } 1 \qquad \mathrm{(C) \ } 2 \qquad \mathrm{(D) \ } 3 \qquad \mathrm{(E) \ } 4 $

## Informal proof
Step 1: Rearrange the equation to get $(x - y)^2 + 6(x - y) = 1$.
Step 2: Factor the equation to get $(x - y)(x - y + 6) = 1$.
Step 3: Since 1 is a prime number, the only possible values for $(x - y)$ are 1 and -1.
Step 4: If $(x - y) = 1$, then $(x - y + 6) = 7$.
Step 5: If $(x - y) = -1$, then $(x - y + 6) = 5$.
Step 6: Since we are looking for the value of $(x + y)$, we add the possible values of $(x - y)$ to get $(x + y) = 1 + 7 = 8$ or $(x + y) = -1 + 5 = 4$.
Step 7: Therefore, the possible values of $(x + y)$ are 8 and 4.
Step 8: The answer is either 8 or 4.

## Formal statement
```isabelle
theorem mathd_algebra_200:
  fixes x y :: real
  assumes "x^2 - 2*x*y + 6*x + y^2 - 7*y + 6 = 0"
  shows "(\<exists>x1 y1. x1 - y1 = 1 \<and> x1 - y1 + 6 = 7 \<and> x + y = x1 + y1) \<or> (\<exists>x2 y2. x2 - y2 = -1 \<and> x2 - y2 + 6 = 5 \<and> x + y = x2 + y2)"
```

## Proof
```isabelle
theory mathd_algebra_200
  imports Complex_Main
begin

(* formal statement copy from the input *)
theorem mathd_algebra_200:
  fixes x y :: real
  assumes "x^2 - 2*x*y + 6*x + y^2 - 7*y + 6 = 0"
  shows "(\<exists>x1 y1. x1 - y1 = 1 \<and> x1 - y1 + 6 = 7 \<and> x + y = x1 + y1) \<or> (\<exists>x2 y2. x2 - y2 = -1 \<and> x2 - y2 + 6 = 5 \<and> x + y = x2 + y2)"
proof -
  (* Step 1: Rearrange the equation to get $(x - y)^2 + 6(x - y) = 1$. *)
  have "(x - y)^2 + 6*(x - y) = 1"
    using assms by simp

  (* Step 2: Factor the equation to get $(x - y)(x - y + 6) = 1$. *)
  then have "(x - y)*(x - y + 6) = 1"
    by simp

  (* Step 3: Since 1 is a prime number, the only possible values for $(x - y)$ are 1 and -1. *)
  then have "(x - y) = 1 \<or> (x - y) = -1"
    by (metis mult_eq_1_iff_2)

  (* Step 4: If $(x - y) = 1$, then $(x - y + 6) = 7$. *)
  then have "(\<exists>x1 y1. x1 - y1 = 1 \<and> x1 - y1 + 6 = 7 \<and> x + y = x1 + y1)"
    by fastforce

  (* Step 5: If $(x - y) = -1$, then $(x - y + 6) = 5$. *)
  then have "(\<exists>x2 y2. x2 - y2 = -1 \<and> x2 - y2 + 6 = 5 \<and> x + y = x2 + y2)"
    by fastforce

  (* Step 6: Since we are looking for the value of $(x + y)$, we add the possible values of $(x - y)$ to get $(x + y) = 1 + 7 = 8$ or $(x + y) = -1 + 5 = 4$. *)
  then show ?thesis
    by simp
qed

end
```

####################

## Problems
What is the largest integer that divides all integers of the form $n^5 - n$, where n is a positive integer?

## Informal proof
Step 1: Factor the expression $n^5 - n$ to get $n(n-1)(n+1)(n^2+1)$.
Step 2: Note that for any positive integer $n$, $n(n-1)(n+1)$ is always divisible by 6, since one of $n$, $(n-1)$, or $(n+1)$ must be divisible by 2, and one of them must be divisible by 3.
Step 3: To show that $n(n-1)(n+1)(n^2+1)$ is divisible by 30, we need to show that it is divisible by both 6 and 5.
Step 4: Since $n(n-1)(n+1)$ is divisible by 6, we only need to show that $n(n-1)(n+1)(n^2+1)$ is divisible by 5.
Step 5: If $n$ is divisible by 5, then $n(n-1)(n+1)(n^2+1)$ is clearly divisible by 5.
Step 6: If $n$ is not divisible by 5, then $n^5$ is congruent to $n$ modulo 5, and $n^5 - n$ is divisible by 5.
Step 7: Therefore, the largest integer that divides all integers of the form $n^5 - n$ is 30.

## Formal statement
```isabelle
lemma gcd_times_lcm:
  fixes a b :: nat
  shows "gcd a b * lcm a b = a * b"
  by simp

theorem mathd_numbertheory_342: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes n :: nat
  shows "(\<forall>n. gcd n 30 = 1 \<longrightarrow> n^5 - n mod 30 = 0) \<and> (\<not>(\<exists>m. m > 30 \<and> (\<forall>n. gcd n m = 1 \<longrightarrow> n^5 - n mod m = 0)))"
```

## Proof
```isabelle
theory mathd_numbertheory_342 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  imports Complex_Main
begin

(* lemma 1: A base lemma about gcd and lcm, which is used in step 3 *)
lemma gcd_times_lcm:
  fixes a b :: nat
  shows "gcd a b * lcm a b = a * b"
  by simp

(* formal statement copy from the input *)
theorem mathd_numbertheory_342: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes n :: nat
  shows "(\<forall>n. gcd n 30 = 1 \<longrightarrow> n^5 - n mod 30 = 0) \<and> (\<not>(\<exists>m. m > 30 \<and> (\<forall>n. gcd n m = 1 \<longrightarrow> n^5 - n mod m = 0)))"
proof
  show "\<forall>n. gcd n 30 = 1 \<longrightarrow> n^5 - n mod 30 = 0"
  proof
    fix n :: nat
    show "gcd n 30 = 1 \<longrightarrow> n^5 - n mod 30 = 0"
    proof
      assume "gcd n 30 = 1"
      then have "gcd n 2 = 1" and "gcd n 3 = 1" and "gcd n 5 = 1"
        by simp_all

      have "n^5 - n mod 2 = 0"
        by (metis power_mod power_mod_eq_if power_one zero_neq_one)
      moreover have "n^5 - n mod 3 = 0"
        by (metis power_mod power_mod_eq_if power_one zero_neq_one)
      moreover have "n^5 - n mod 5 = 0"
        by (metis power_mod power_mod_eq_if power_one zero_neq_one)
      ultimately have "(n^5 - n) mod 2 = 0" and "(n^5 - n) mod 3 = 0" and "(n^5 - n) mod 5 = 0"
        by simp_all

      have "gcd (n^5 - n) 2 = 1"
        using \<open>gcd n 2 = 1\<close> by simp
      moreover have "gcd (n^5 - n) 3 = 1"
        using \<open>gcd n 3 = 1\<close> by simp
      moreover have "gcd (n^5 - n) 5 = 1"
        using \<open>gcd n 5 = 1\<close> by simp
      ultimately have "gcd (n^5 - n) 30 = 1"
        by simp

      have "(n^5 - n) mod 30 = 0"
        using \<open>gcd (n^5 - n) 30 = 1\<close> by simp

      then show "n^5 - n mod 30 = 0"
        by simp
    qed
  qed
next
  show "\<not>(\<exists>m. m > 30 \<and> (\<forall>n. gcd n m = 1 \<longrightarrow> n^5 - n mod m = 0))"
  proof
    assume "\<exists>m. m > 30 \<and> (\<forall>n. gcd n m = 1 \<longrightarrow> n^5 - n mod m = 0)"
    then obtain m where "m > 30" and "\<forall>n. gcd n m = 1 \<longrightarrow> n^5 - n mod m = 0"
      by blast

    have "\<exists>p. prime p \<and> p dvd m"
      using assms by (rule prime_divisor_exists)

    then obtain p where "prime p" and "p dvd m"
      by blast

    then have "p > 1"
      using prime_gt_1_nat by blast

    have "\<forall>n. gcd n p = 1 \<longrightarrow> n^5 - n mod p = 0"
      using \<open>\<forall>n. gcd n m = 1 \<longrightarrow> n^5 - n mod m = 0\<close> \<open>p dvd m\<close> by simp

    then have "(\<forall>n. gcd n p = 1 \<longrightarrow> n^5 - n mod p = 0) \<and> (\<exists>n. gcd n p = 1 \<and> n^5 - n mod p \<noteq> 0)"
      using \<open>p > 1\<close> by auto

    then show False
      by simp
  qed
qed

end
```

####################

## Problems
Suppose that $x$ and $y$ are positive integers for which $x^2 - y^2 = 19$. What is $x$?

## Informal proof
Step 1: Factor the expression $x^2 - y^2$ to get $(x - y)(x + y) = 19$.
Step 2: Since the product of two positive integers is equal to 19, the possible values for $(x - y)$ and $(x + y)$ are (1, 19) or (19, 1).
Step 3: Solving the equations $x - y = 1$ and $x + y = 19$, we get $x = \frac{20}{2} = 10$.
Step 4: Solving the equations $x - y = 19$ and $x + y = 1$, we get $x = \frac{20}{2} = 10$.
Step 5: Therefore, the value of $x$ is 10.

## Formal statement
```isabelle
theorem mathd_numbertheory_900:
  fixes x y :: nat
  assumes "x^2 - y^2 = 19"
  shows "(\<exists>x y. x - y = 1 \<and> x + y = 19 \<and> x = 10) \<or> (\<exists>x y. x - y = 19 \<and> x + y = 1 \<and> x = 10)"
```

## Proof
```isabelle
theory mathd_numbertheory_900
  imports Complex_Main
begin

(* formal statement copy from the input *)
theorem mathd_numbertheory_900:
  fixes x y :: nat
  assumes "x^2 - y^2 = 19"
  shows "(\<exists>x y. x - y = 1 \<and> x + y = 19 \<and> x = 10) \<or> (\<exists>x y. x - y = 19 \<and> x + y = 1 \<and> x = 10)"
proof -
  (* Step 1: Factor the expression $x^2 - y^2$ to get $(x - y)(x + y) = 19$. *)
  have "x^2 - y^2 = 19"
    using assms by simp

  (* Step 2: Since the product of two positive integers is equal to 19, the possible values for $(x - y)$ and $(x + y)$ are (1, 19) or (19, 1). *)
  then have "(x - y)*(x + y) = 19"
    by simp

  (* Step 3: Solving the equations $x - y = 1$ and $x + y = 19$, we get $x = \frac{20}{2} = 10$. *)
  then have "(\<exists>x y. x - y = 1 \<and> x + y = 19 \<and> x = 10)"
    by simp

  (* Step 4: Solving the equations $x - y = 19$ and $x + y = 1$, we get $x = \frac{20}{2} = 10$. *)
  then have "(\<exists>x y. x - y = 19 \<and> x + y = 1 \<and> x = 10)"
    by simp

  (* Step 5: Therefore, the value of $x$ is 10. *)
  then show ?thesis
    by simp
qed

end
```

####################

## Problems
For positive integers $a$ and $b$ such that $a^2 - b^2 = 19$ and $a > b$, what is the value of $a$?

## Informal proof
Step 1: Factor the expression $a^2 - b^2$ to get $(a - b)(a + b) = 19$.
Step 2: Since 19 is a prime number, the possible values for $(a - b)$ and $(a + b)$ are (1, 19) or (19, 1).
Step 3: Solving the equations $a - b = 1$ and $a + b = 19$, we get $a = \frac{20}{2} = 10$.
Step 4: Therefore, the value of $a$ is 10.

## Formal statement
```isabelle
theorem mathd_numbertheory_901:
  fixes a b :: nat
  assumes "a^2 - b^2 = 19"
      and "a > b"
  shows "(\<exists>a b. a - b = 1 \<and> a + b = 19 \<and> a = 10)"
```

## Proof
```isabelle
theory mathd_numbertheory_901
  imports Complex_Main
begin

(* formal statement copy from the input *)
theorem mathd_numbertheory_901:
  fixes a b :: nat
  assumes "a^2 - b^2 = 19"
      and "a > b"
  shows "(\<exists>a b. a - b = 1 \<and> a + b = 19 \<and> a = 10)"
proof -
  (* Step 1: Factor the expression $a^2 - b^2$ to get $(a - b)(a + b) = 19$. *)
  have "a^2 - b^2 = 19"
    using assms by simp

  (* Step 2: Since 19 is a prime number, the possible values for $(a - b)$ and $(a + b)$ are (1, 19) or (19, 1). *)
  then have "(a - b)*(a + b) = 19"
    by simp

  (* Step 3: Solving the equations $a - b = 1$ and $a + b = 19$, we get $a = \frac{20}{2} = 10$. *)
  then have "(\<exists>a b. a - b = 1 \<and> a + b = 19 \<and> a = 10)"
    by simp

  (* Step 4: Therefore, the value of $a$ is 10. *)
  then show ?thesis
    by simp
qed

end
```

####################

## Problems
Suppose that $x$ and $y$ are real numbers such that $\frac{x}{y} + \frac{y}{x} = 2$. What is $\frac{x^7}{y^7} + \frac{y^7}{x^7}$?

## Informal proof
Step 1: Square the equation $\frac{x}{y} + \frac{y}{x} = 2$ to get $\frac{x^2}{y^2} + 2 + \frac{y^2}{x^2} = 4$.
Step 2: Rearrange the equation to get $\frac{x^2}{y^2} + \frac{y^2}{x^2} = 2$.
Step 3: Cube the equation $\frac{x^2}{y^2} + \frac{y^2}{x^2} = 2$ to get $\frac{x^6}{y^6} + 3\left(\frac{x^2}{y^2} + \frac{y^2}{x^2}\right) + \frac{y^6}{x^6} = 8$.
Step 4: Substitute the value of $\frac{x^2}{y^2} + \frac{y^2}{x^2}$ from Step 2 into the equation in Step 3 to get $\frac{x^6}{y^6} + 6 + \frac{y^6}{x^6} = 8$.
Step 5: Rearrange the equation to get $\frac{x^6}{y^6} + \frac{y^6}{x^6} = 2$.
Step 6: Multiply the equation $\frac{x^6}{y^6} + \frac{y^6}{x^6} = 2$ by $\frac{x}{y} + \frac{y}{x}$ to get $\frac{x^7}{y^7} + \frac{y^7}{x^7} + 2 = 4$.
Step 7: Rearrange the equation to get $\frac{x^7}{y^7} + \frac{y^7}{x^7} = 2$.
Step 8: Therefore, $\frac{x^7}{y^7} + \frac{y^7}{x^7} = 2$.

## Formal statement
```isabelle
theorem mathd_algebra_100:
  fixes x y :: real
  assumes "x/y + y/x = 2"
  shows "x^7/y^7 + y^7/x^7 = 2"
```

## Proof
```isabelle
theory mathd_algebra_100
  imports Complex_Main
begin

(* formal statement copy from the input *)
theorem mathd_algebra_100:
  fixes x y :: real
  assumes "x/y + y/x = 2"
  shows "x^7/y^7 + y^7/x^7 = 2"
proof -
  (* Step 1: Square the equation $\frac{x}{y} + \frac{y}{x} = 2$ to get $\frac{x^2}{y^2} + 2 + \frac{y^2}{x^2} = 4$. *)
  have "((x/y) + (y/x))^2 = 2^2"
    using assms by simp

  (* Step 2: Rearrange the equation to get $\frac{x^2}{y^2} + \frac{y^2}{x^2} = 2$. *)
  then have "(x^2/y^2) + 2 + (y^2/x^2) = 4"
    by (simp add: power2_eq_square)

  (* Step 3: Cube the equation $\frac{x^2}{y^2} + \frac{y^2}{x^2} = 2$ to get $\frac{x^6}{y^6} + 3\left(\frac{x^2}{y^2} + \frac{y^2}{x^2}\right) + \frac{y^6}{x^6} = 8$. *)
  then have "((x^2/y^2) + (y^2/x^2))^3 = 2^3"
    by simp

  (* Step 4: Substitute the value of $\frac{x^2}{y^2} + \frac{y^2}{x^2}$ from Step 2 into the equation in Step 3 to get $\frac{x^6}{y^6} + 6 + \frac{y^6}{x^6} = 8$. *)
  then have "(x^6/y^6) + 3*(2) + (y^6/x^6) = 8"
    by (simp add: power2_eq_square)

  (* Step 5: Rearrange the equation to get $\frac{x^6}{y^6} + \frac{y^6}{x^6} = 2$. *)
  then have "(x^6/y^6) + (y^6/x^6) = 2"
    by simp

  (* Step 6: Multiply the equation $\frac{x^6}{y^6} + \frac{y^6}{x^6} = 2$ by $\frac{x}{y} + \frac{y}{x}$ to get $\frac{x^7}{y^7} + \frac{y^7}{x^7} + 2 = 4$. *)
  then have "((x^6/y^6) + (y^6/x^6))*(x/y + y/x) = 2*2"
    by simp

  (* Step 7: Rearrange the equation to get $\frac{x^7}{y^7} + \frac{y^7}{x^7} = 2$. *)
  then have "(x^7/y^7) + (y^7/x^7) + 2 = 4"
    by simp

  (* Step 8: Therefore, $\frac{x^7}{y^7} + \frac{y^7}{x^7} = 2$. *)
  then show ?thesis
    by simp
qed

end
```

