# mathd_induction_base, induction_divisibility

Tasks where a provided skill's *name* is reproduced verbatim

Frequency: 2

Lemma:
```isabelle
lemma mathd_induction_base:
  shows "(11::int) dvd (10^1 - (-1)^1)"
  by simp

lemma induction_divisibility:
  fixes n :: nat
  shows "(11::int) dvd (10^n - (-1)^n)"
proof (induction n)
  case 0
  then show ?case by (simp add: mathd_induction_base)
next
  case (Suc n)
  then have "(11::int) dvd (10^n - (-1)^n)" by simp
  then show ?case by (auto simp: field_simps)
qed
```


## Usage 1 of 2:
### Problem:
Task name: `induction_11div10tonmn1ton.json`

Show that for any natural number $n$, we have $11\mid 10^n-(-1)^n$.
### Informal Proof:
We want to prove that for any natural number $n$, $11 \mid 10^n - (-1)^n$.  1. Base case: When $n=1$, we have $10^1 - (-1)^1 = 10 - (-1) = 11$, which is divisible by 11.  2. Induction step: Assume that the statement is true for $n=k$, i.e., $11 \mid 10^k - (-1)^k$. We can write $10^k - (-1)^k = 11m$ for some integer $m$. Then, $10^{k+1} - (-1)^{k+1} = 10 \cdot 10^k - (-1) \cdot (-1)^k = 10 \cdot 11m - (-1) \cdot 11m = 11(10m - (-1)m)$, which is divisible by 11. Therefore, if $11 \mid 10^k - (-1)^k$, then $11 \mid 10^{k+1} - (-1)^{k+1}$.  3. By mathematical induction, we conclude that for any natural number $n$, $11 \mid 10^n - (-1)^n$.  This completes the proof.
### Solution:
```isabelle
theorem induction_11div10tonmn1ton:
  fixes n :: nat
  shows "(11::int) dvd (10^n - (-1)^n)"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory induction_11div10tonmn1ton
  imports Complex_Main
begin

(* Step 1: Prove the base case by showing that $11 \mid 10^1 - (-1)^1 = 11$. *)
lemma mathd_induction_base: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  shows "(11::int) dvd (10^1 - (-1)^1)"
  by simp

(* Step 2: Assume that the statement is true for $n=k$, i.e., $11 \mid 10^k - (-1)^k$. *)
lemma induction_divisibility: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes n :: nat
  shows "(11::int) dvd (10^n - (-1)^n)"
  by (induct n) (auto simp add: algebra_simps)

(* Step 4: Conclude by mathematical induction that for any natural number $n$, $11 \mid 10^n - (-1)^n$. *)
theorem induction_11div10tonmn1ton:
  fixes n :: nat
  shows "(11::int) dvd (10^n - (-1)^n)"
  using mathd_induction_base induction_divisibility by blast %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end
```


## Usage 2 of 2:
### Problem:
Task name: `induction_12dvd4expnp1p20.json`

Show that for any natural number $n$, 12 divides $4^{n+1} + 20$.
### Informal Proof:
Let $P(n)$ be the statement that $12 \mid 4^{n+1} + 20$ for a natural number $n$.  1. Base Case: We check the case when $n=0$. We have $4^{0+1} + 20 = 24$, which is divisible by 12. Therefore, $P(0)$ is true.  2. Induction Hypothesis: Assume that $P(k)$ is true for some natural number $k$, i.e., $12 \mid 4^{k+1} + 20$. This means that $4^{k+1} + 20 = 12m$ for some integer $m$.  3. Induction Step: We need to prove that $P(k+1)$ is true, i.e., $12 \mid 4^{k+2} + 20$. We can express $4^{k+2} + 20$ as $4 \cdot 4^{k+1} + 20$. Substituting $4^{k+1} + 20 = 12m$ into this expression, we get $4^{k+2} + 20 = 4 \cdot (12m) + 20 = 48m + 20$. Since both 48 and 20 are divisible by 12, $48m + 20$ is divisible by 12. Therefore, $P(k+1)$ is true.  4. By mathematical induction, $P(n)$ is true for all natural numbers $n$. Therefore, for any natural number $n$, 12 divides $4^{n+1} + 20$.
### Solution:
```isabelle
theorem induction_12dvd4expnp1p20:
  fixes n :: nat
  shows "(12::int) dvd 4^(n+1) + 20"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory induction_12dvd4expnp1p20
  imports Complex_Main
begin

(* lemma 1. The base case *)
lemma mathd_induction_base: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  shows "(12::int) dvd (4^(0+1) + 20)"
  by simp

(* lemma 2. The induction step *)
lemma inductive_step:
  assumes "(12::int) dvd 4^(k+1) + 20"
  shows "(12::int) dvd 4^(k+2) + 20"
proof -
  have "(12::int) dvd (4^(k+1) + 20) * 4" using assms by fastforce
  also have "... = 4^(k+2) + 80" by (simp add: power_add)
  finally show ?thesis by presburger
qed

(* formal statement copy from the input *)
theorem induction_12dvd4expnp1p20:
  fixes n :: nat
  shows "(12::int) dvd 4^(n+1) + 20"
proof (induct n)
  case 0
  then show ?case by (simp add: mathd_induction_base) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
next
  case (Suc n)
  then have "(12::int) dvd 4^(n+1) + 20" by simp
  then show ?case by (rule inductive_step)
qed

end
```
