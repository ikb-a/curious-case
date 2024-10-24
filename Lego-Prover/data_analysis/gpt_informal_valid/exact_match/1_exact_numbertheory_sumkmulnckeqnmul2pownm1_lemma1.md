# numbertheory_sumkmulnckeqnmul2pownm1_lemma1

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
lemma numbertheory_sumkmulnckeqnmul2pownm1_lemma1:
  fixes n k :: nat
  assumes "0<n \<and> 0<k"
  shows "n choose k = ((n-1) choose k) + ((n-1) choose (k-1))"
proof (cases "k \<le> n")
  case True
  then show ?thesis
    by (smt (verit) Suc_pred' assms binomial_addition_formula)
next
  case False
  then show ?thesis
    using assms by (smt (verit) Suc_pred' binomial_addition_formula)
qed
```


## Usage 1 of 1:
### Problem:
Task name: `numbertheory_sumkmulnckeqnmul2pownm1.json`

Show that for positive integers $n$ and $k$, if $k \leq n$, then $\sum_{k=1}^n (k*C_n^k) = n * 2^{n-1}$.
### Informal Proof:
We start with the binomial theorem, which states that $(x+y)^n = \sum_{k=0}^n C_n^k x^{n-k} y^k$. Differentiating both sides with respect to $x$ gives $n(x+y)^{n-1} = \sum_{k=0}^n k*C_n^k x^{n-k-1} y^k$. This is because the derivative of $x^{n-k}$ with respect to $x$ is $(n-k)x^{n-k-1}$, and the derivative of $y^k$ with respect to $x$ is 0. Therefore, the derivative of $C_n^k x^{n-k} y^k$ with respect to $x$ is $k*C_n^k x^{n-k-1} y^k$.  Next, we substitute $x=y=1$ into the differentiated equation. This gives us $n*2^{n-1} = \sum_{k=0}^n k*C_n^k$. The sum on the right-hand side starts from $k=0$, but since $0*C_n^0 = 0$, we can ignore the $k=0$ term. Therefore, the sum from $k=1$ to $n$ of $k*C_n^k$ is equal to $n*2^{n-1}$.  Therefore, we have shown that for positive integers $n$ and $k$, if $k \leq n$, then $\sum_{k=1}^n (k*C_n^k) = n * 2^{n-1}$.
### Solution:
```isabelle
theorem numbertheory_sumkmulnckeqnmul2pownm1:
  fixes n k :: nat
  assumes h0 : "0<n \<and> 0<k"
    and h1 : "k\<le>n"
  shows "n choose k = ((n-1) choose k) + ((n-1) choose (k-1))"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory numbertheory_sumkmulnckeqnmul2pownm1
  imports Complex_Main "HOL-Number_Theory.Number_Theory"
begin

(* helper lemma *)
lemma numbertheory_sumkmulnckeqnmul2pownm1_lemma1: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes n k :: nat
  assumes "0<n \<and> 0<k"
  shows "n choose k = ((n-1) choose k) + ((n-1) choose (k-1))"
proof (cases "k \<le> n")
  case True
  then show ?thesis
    by (smt (verit) Suc_pred' assms binomial_addition_formula)
next
  case False
  then show ?thesis
    using assms by (smt (verit) Suc_pred' binomial_addition_formula)
qed

(* formal statement copied from the input *)
theorem numbertheory_sumkmulnckeqnmul2pownm1:
  fixes n k :: nat
  assumes h0 : "0<n \<and> 0<k"
    and h1 : "k\<le>n"
  shows "n choose k = ((n-1) choose k) + ((n-1) choose (k-1))"
proof -
  have c0: "n choose k = ((n-1) choose k) + ((n-1) choose (k-1))"
    using numbertheory_sumkmulnckeqnmul2pownm1_lemma1 assms  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    by blast
  then show ?thesis
    by simp
qed

end
```
