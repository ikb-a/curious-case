# sum_of_even_numbers

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
lemma sum_of_even_numbers:
  fixes n :: nat
  shows "(\<Sum> k < n+1. 2*k) = n*(n+1)"
proof (induct n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  assume IH: "(\<Sum> k < n + 1. 2 * k) = n * (n + 1)"
  have "(\<Sum> k < Suc n + 1. 2 * k) = (\<Sum> k < n + 1. 2 * k) + (2 * (n + 1))" by simp
  also have "... = (n * (n + 1)) + (2 * (n + 1))" using IH by simp
  also have "... = (n * (n + 1)) + (2 * n + 2)" by simp
  also have "... = (n * (n + 1) + 2 * n) + 2" by simp
  also have "... = ((n + 1) * (n + 2))" by (simp add: distrib_left)
  finally show ?case by simp
qed
```


## Usage 1 of 1:
### Problem:
Task name: `amc12a_2003_p1.json`

What is the difference between the sum of the first $2003$ even counting numbers and the sum of the first $2003$ odd counting numbers?   $ \mathrm{(A) \ } 0\qquad \mathrm{(B) \ } 1\qquad \mathrm{(C) \ } 2\qquad \mathrm{(D) \ } 2003\qquad \mathrm{(E) \ } 4006 $ Show that it is \mathrm{(D)}\ 2003.
### Informal Proof:
Let S_even(n) denote the sum of the first n even counting numbers and S_odd(n) denote the sum of the first n odd counting numbers. We have:  1. S_even(n) = 2(1 + 2 + ... + n) = 2(n(n + 1)/2) = n(n + 1).    - Reasoning: The sum of the first n even counting numbers can be represented as 2(1 + 2 + ... + n), and the formula for the sum of the first n natural numbers is n(n + 1)/2.  2. S_odd(n) = (2(1 + 2 + ... + n) - n) = (2(n(n + 1)/2) - n) = n(n + 1) - n.    - Reasoning: The sum of the first n odd counting numbers can be represented as (2(1 + 2 + ... + n) - n), and the formula for the sum of the first n natural numbers is n(n + 1)/2.  3. The difference between the sum of the first 2003 even counting numbers and the sum of the first 2003 odd counting numbers is S_even(2003) - S_odd(2003) = 2003(2003 + 1) - 2003 = 2003(2004) - 2003 = 2003.  Thus, the difference between the sum of the first 2003 even counting numbers and the sum of the first 2003 odd counting numbers is 2003, which corresponds to answer choice (D).
### Solution:
```isabelle
theorem amc12a_2003_p1:
  fixes u v :: "nat \<Rightarrow> nat"
  assumes u:"\<forall>n. u n = 2 *n"
      and v:"\<forall>n. v n= 2* n -1"
    shows "(\<Sum> k \<in>{1..2003}. u k) - (\<Sum> k \<in>{1..2003}. v k) = 2003"
      (is "?L = ?R")
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory amc12a_2003_p1
  imports Complex_Main
begin

lemma sum_of_even_numbers: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes n :: nat
  shows "(\<Sum> k < n+1. 2*k) = n*(n+1)"
proof (induct n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  assume IH: "(\<Sum> k < n + 1. 2 * k) = n * (n + 1)"
  have "(\<Sum> k < Suc n + 1. 2 * k) = (\<Sum> k < n + 1. 2 * k) + (2 * (n + 1))" by simp
  also have "... = (n * (n + 1)) + (2 * (n + 1))" using IH by simp
  also have "... = (n * (n + 1)) + (2 * n + 2)" by simp
  also have "... = (n * (n + 1) + 2 * n) + 2" by simp
  also have "... = ((n + 1) * (n + 2))" by (simp add: distrib_left)
  finally show ?case by simp
qed

lemma sum_of_odd_numbers:
  fixes n :: nat
  shows "(\<Sum> k \<in>{1..n}. 2 * k - 1) = n^2"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "(\<Sum> k \<in>{1..Suc n}. 2 * k - 1) = (2 * (Suc n) - 1) + (\<Sum> k \<in>{1..n}. 2 * k - 1)"
    by simp
  also have "... = (2 * (Suc n) - 1) + n^2" 
    using Suc.IH by simp
  also have "... = (2 * n + 1) + n^2"
    by simp
  also have "... = n^2 + 2 * n + 1"
    by simp
  also have "... = (n + 1)^2"
    by (smt (verit) Suc_eq_plus1 add_Suc mult_2 nat_1_add_1 one_power2 plus_1_eq_Suc power2_sum)
  finally show ?case by simp
qed

(* formal statement copy from the input*)
theorem amc12a_2003_p1:
  fixes u v :: "nat \<Rightarrow> nat"
  assumes u:"\<forall>n. u n = 2 *n"
      and v:"\<forall>n. v n= 2* n -1"
    shows "(\<Sum> k \<in>{1..2003}. u k) - (\<Sum> k \<in>{1..2003}. v k) = 2003"
      (is "?L = ?R")
proof -
  have "?L = (\<Sum> k \<in>{1..2003}. 2 * k) - (\<Sum> k \<in>{1..2003}. 2 * k - 1)"
    using u v by simp
  also have "... = 2003 * 2004 - (\<Sum> k \<in>{1..2003}. 2 * k - 1)"
    using sum_of_even_numbers[of 2003] by simp %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  also have "... = 2003 * 2004 - 2003^2"
    using sum_of_odd_numbers[of 2003] by simp
  also have "... = 2003"
    by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed

end
```
