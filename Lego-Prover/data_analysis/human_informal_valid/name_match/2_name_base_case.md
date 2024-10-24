# base_case

Tasks where a provided skill's *name* is reproduced verbatim

Frequency: 2

Lemma:
```isabelle
lemma base_case:
  fixes n::nat
  shows "(9::nat) dvd 10^0 - 1"
proof -
  have "(10::nat)^0 - 1 = 1 - 1"
    by simp
  also have "... = 0"
    by simp
  finally have "(10::nat)^0 - 1 = 0" .
  then show ?thesis
    by simp
qed
```


## Usage 1 of 2:
### Problem:
Task name: `induction_divisibility_9div10tonm1.json`

Show that 9 divides $10^n - 1$ for any natural number n.
### Informal Proof:
We use induction. The base case for $n=0$  is true since $9 \mid 0$. Assume the result is true for some $n \geq 0$. Then $9\mid 10^n - 1$, and there exists $k$ such that $10^n - 1$ = 9k. Finally, rewriting $10^{n+1}-1 = 10*(10^n - 1) + 9=9 * (10*k+1)$, which implies the result for $n+1$.
### Solution:
```isabelle
theorem induction_divisibility_9div10tonm1:
  fixes n::nat
  shows "(9::nat) dvd 10^n - 1"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory induction_divisibility_9div10tonm1
  imports Complex_Main
begin

(* skill 1: base case *)
lemma base_case: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes n::nat
  shows "(9::nat) dvd 10^0 - 1"
proof -
  have "(10::nat)^0 - 1 = 1 - 1"
    by simp
  also have "... = 0"
    by simp
  finally have "(10::nat)^0 - 1 = 0" .
  then show ?thesis
    by simp
qed

(* skill 2: step case *)
lemma step_case:
  fixes n :: nat
  assumes "(9::nat) dvd (10^n - 1)"
  shows "(9::nat) dvd (10^(n + 1) - 1)"
proof -
  have "(10::nat)^(n + 1) - 1 = 10 * (10::nat)^n - 1"
    by simp
  also have "... = 9 * (10::nat)^n + ((10::nat)^n - 1)"
    by simp
  finally have "(10::nat)^(n + 1) - 1 = 9 * (10::nat)^n + ((10::nat)^n - 1)" .
  moreover have "(9::nat) dvd 9 * (10::nat)^n"
    using assms by simp
  moreover have "(9::nat) dvd (10::nat)^n - 1"
    using assms by simp
  ultimately have "(9::nat) dvd (10::nat)^(n + 1) - 1"
    by presburger
  then show ?thesis
    by simp
qed

(* formal statement copy from the input *)
theorem induction_divisibility_9div10tonm1:
  fixes n::nat
  shows "(9::nat) dvd 10^n - 1"
proof (induction n)
  case 0
  then show ?case
    using base_case by simp %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
next
  case (Suc n)
  then show ?case
    using step_case by simp
qed

end
```


## Usage 2 of 2:
### Problem:
Task name: `induction_divisibility_3div2tooddnp1.json`

For a natural number $n$, show that $3 \mid (2^{2n+1}+1)$.
### Informal Proof:
By induction, the base case for $n=0$ is true since $3 \mid 2+ 1 = 3$. Assuming the property holds at $n$, let $k$ be the positive integer such that $3k=2^{2n+1}+1$ Then,  $2^{2(n+1)+1}+1=4.2^{2n+1} + 1 = 4(3k-1)+1=3(4k-1)$. Since 4k-1 > 0, we have showed the property at $n+1$.
### Solution:
```isabelle
theorem induction_divisibility_3div2tooddnp1:
  fixes n ::nat
  shows "(3::nat) dvd (2^(2 * n + 1) + 1)"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory induction_divisibility_3div2tooddnp1
  imports Complex_Main
begin

(* lemma 1. A base lemma proving that 3 divides 2^1 + 1. *)
lemma base_case: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  shows "(3::nat) dvd (2^1 + 1)"
proof -
  have "(2::nat)^1 + 1 = 2 + 1"
    by simp
  also have "... = 3"
    by simp
  finally have "(2::nat)^1 + 1 = 3" .
  then show ?thesis
    by simp
qed

(* lemma 2. Proving that if 3 divides 2^(2n+1) + 1, then 3 divides 2^(2(n+1)+1) + 1. *)
lemma step_case:
  fixes n :: nat
  assumes "(3::nat) dvd (2^(2 * n + 1) + 1)"
  shows "(3::nat) dvd (2^(2 * (n + 1) + 1) + 1)"
proof -
  have "(2::nat)^(2 * (n + 1) + 1) + 1 = (2::nat)^(2 * n + 1) * (2::nat)^2 + 1"
    by (simp add: algebra_simps power_add)
  also have "... = (2::nat)^(2 * n + 1) * 4 + 1"
    by simp
  also have "... = (2::nat)^(2 * n + 1) * 3 + ((2::nat)^(2 * n + 1) + 1)"
    by simp
  finally have "(2::nat)^(2 * (n + 1) + 1) + 1 = (2::nat)^(2 * n + 1) * 3 + ((2::nat)^(2 * n + 1) + 1)" .
  moreover have "(3::nat) dvd (2::nat)^(2 * n + 1) * 3"
    using assms by simp
  moreover have "(3::nat) dvd (2::nat)^(2 * n + 1) + 1"
    using assms by simp
  ultimately have "(3::nat) dvd (2::nat)^(2 * (n + 1) + 1) + 1"
    by (simp add: divides_add)
  then show ?thesis
    by simp
qed

(* theorem. Conclude by induction that the property holds for all natural numbers n. *)
theorem induction_divisibility_3div2tooddnp1:
  fixes n ::nat
  shows "(3::nat) dvd (2^(2 * n + 1) + 1)"
proof (induction n)
  case 0
  then show ?case
    using base_case by simp %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
next
  case (Suc n)
  then show ?case
    using step_case by simp
qed

end
```
