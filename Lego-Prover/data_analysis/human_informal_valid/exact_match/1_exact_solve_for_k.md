# solve_for_k

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
lemma solve_for_k:
  fixes k x :: real
  assumes h0: "x = (13 - sqrt 131) / 4"
    and h1: "2 * x^2 - 13 * x + k = 0"
  shows "k = 19/4"
proof -
  have "2 * x^2 - 13 * x + k = 0"
    using h1 by simp
  then have "2 * ((13 - sqrt 131) / 4)^2 - 13 * ((13 - sqrt 131) / 4) + k = 0"
    using h0 by simp
  then have "2 * ((13 - sqrt 131)^2 / 4^2) - 13 * ((13 - sqrt 131) / 4) + k = 0"
    by (simp add: power2_eq_square)
  then have "2 * (13 - sqrt 131)^2 / 16 - 13 * ((13 - sqrt 131) / 4) + k = 0"
    by simp
  then have "2 * (13 - sqrt 131)^2 - 13 * ((13 - sqrt 131) * 4) + 16 * k = 0"
    by arith
  then have "2 * (13 - sqrt 131)^2 - 52 * (13 - sqrt 131) + 16 * k = 0"
    by simp
  then have "2 * (13^2 - 2 * 13 * sqrt 131 + (sqrt 131)^2) - 52 * (13 - sqrt 131) + 16 * k = 0"
    by (smt (verit) diff_add_eq power2_diff)
  then have "2 * (169 - 26 * sqrt 131 + 131) - 52 * (13 - sqrt 131) + 16 * k = 0"
    by simp
  then have "2 * (169 + 131 - 26 * sqrt 131) - 52 * (13 - sqrt 131) + 16 * k = 0"
    by simp
  then have "2 * (300 - 26 * sqrt 131) - 52 * (13 - sqrt 131) + 16 * k = 0"
    by simp
  then have "2 * 300 - 2 * 26 * sqrt 131 - 52 * 13 + 52 * sqrt 131 + 16 * k = 0"
    by (simp add: algebra_simps)
  then have "600 - 52 * 13 + 16 * k = 0"
    by simp
  then have "600 - 676 + 16 * k = 0"
    by simp
  then have "-76 + 16 * k = 0"
    by simp
  then have "16 * k = 76"
    by simp
  then have "k = 76 / 16"
    by simp
  then have "k = 19/4"
    by simp
  then show ?thesis by simp
qed
```


## Usage 1 of 1:
### Problem:
Task name: `mathd_algebra_116.json`

For what real value of $k$ is $\frac{13-\sqrt{131}}{4}$ a root of $2x^2-13x+k$? Show that it is $\frac{19}{4}$.
### Informal Proof:
We could substitute $(13-\sqrt{131})/4$ for $x$ in the equation, but the quadratic formula suggests a quicker approach. Substituting $2$, $-13$, and $k$ into the quadratic formula gives  \[ \frac{-(-13)\pm\sqrt{(-13)^2-4(2)(k)}}{2(2)}= \frac{13\pm\sqrt{169-8k}}{4}. \]Setting $(13+\sqrt{169-8k})/4$ and $(13-\sqrt{169-8k})/4$ equal to $(13-\sqrt{131})/4$, we find no solution in the first case and $169-8k=131$ in the second case.  Solving yields $k=(169-131)/8=38/8=\frac{19}{4}$.
### Solution:
```isabelle
theorem mathd_algebra_116:
  fixes k x :: real
  assumes h0 : "x = (13 - sqrt 131) / 4"
    and h1 : "2 * x^2 - 13 * x + k = 0"
  shows "k = 19/4"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_algebra_116
  imports Complex_Main
begin

(* lemma 1. A lemma can be useful for step 1 *)
lemma solve_for_k: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes k x :: real
  assumes h0: "x = (13 - sqrt 131) / 4"
    and h1: "2 * x^2 - 13 * x + k = 0"
  shows "k = 19/4"
proof -
  have "2 * x^2 - 13 * x + k = 0"
    using h1 by simp
  then have "2 * ((13 - sqrt 131) / 4)^2 - 13 * ((13 - sqrt 131) / 4) + k = 0"
    using h0 by simp
  then have "2 * ((13 - sqrt 131)^2 / 4^2) - 13 * ((13 - sqrt 131) / 4) + k = 0"
    by (simp add: power2_eq_square)
  then have "2 * (13 - sqrt 131)^2 / 16 - 13 * ((13 - sqrt 131) / 4) + k = 0"
    by simp
  then have "2 * (13 - sqrt 131)^2 - 13 * ((13 - sqrt 131) * 4) + 16 * k = 0"
    by arith
  then have "2 * (13 - sqrt 131)^2 - 52 * (13 - sqrt 131) + 16 * k = 0"
    by simp
  then have "2 * (13^2 - 2 * 13 * sqrt 131 + (sqrt 131)^2) - 52 * (13 - sqrt 131) + 16 * k = 0"
    by (smt (verit) diff_add_eq power2_diff)
  then have "2 * (169 - 26 * sqrt 131 + 131) - 52 * (13 - sqrt 131) + 16 * k = 0"
    by simp
  then have "2 * (169 + 131 - 26 * sqrt 131) - 52 * (13 - sqrt 131) + 16 * k = 0"
    by simp
  then have "2 * (300 - 26 * sqrt 131) - 52 * (13 - sqrt 131) + 16 * k = 0"
    by simp
  then have "2 * 300 - 2 * 26 * sqrt 131 - 52 * 13 + 52 * sqrt 131 + 16 * k = 0"
    by (simp add: algebra_simps)
  then have "600 - 52 * 13 + 16 * k = 0"
    by simp
  then have "600 - 676 + 16 * k = 0"
    by simp
  then have "-76 + 16 * k = 0"
    by simp
  then have "16 * k = 76"
    by simp
  then have "k = 76 / 16"
    by simp
  then have "k = 19/4"
    by simp
  then show ?thesis by simp
qed

(* formal statement copy from the input *)
theorem mathd_algebra_116:
  fixes k x :: real
  assumes h0 : "x = (13 - sqrt 131) / 4"
    and h1 : "2 * x^2 - 13 * x + k = 0"
  shows "k = 19/4"
proof -
  show ?thesis using solve_for_k assms by auto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
qed

end
```

