# amc12a_2021_p7

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
theorem amc12a_2021_p7:
  fixes x y ::real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
  apply (auto simp:algebra_simps power2_eq_square)
```


## Usage 1 of 1:
### Problem:
Task name: `amc12a_2021_p7.json`

What is the least possible value of $(xy-1)^2+(x+y)^2$ for real numbers $x$ and $y$?  $\textbf{(A)} ~0\qquad\textbf{(B)} ~\frac{1}{4}\qquad\textbf{(C)} ~\frac{1}{2} \qquad\textbf{(D)} ~1 \qquad\textbf{(E)} Show that it is \textbf{(D)} ~1.
### Informal Proof:
Expanding, we get that the expression is $x^2+2xy+y^2+x^2y^2-2xy+1$ or $x^2+y^2+x^2y^2+1$. By the Trivial Inequality (all squares are nonnegative) the minimum value for this is $\textbf{(D)} ~1$, which can be achieved at $x=y=0$.
### Solution:
```isabelle
theorem amc12a_2021_p7:
  fixes x y ::real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
  apply (auto simp:algebra_simps power2_eq_square)
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory amc12a_2021_p7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  imports Complex_Main
begin

(* lemma 1. A lemma that shows the distribution properties of real numbers will be helpful for step 1, which requires this lemma to expand the equation *)
lemma step1:
  fixes x y :: real
  shows "(x * y - 1)^2 + (x + y)^2 = x^2 + 2 * x * y + y^2 + x^2 * y^2 - 2 * x * y + 1"
  by (simp add: power2_eq_square algebra_simps)

(* lemma 2. A lemma that shows the properties of quadratic equation will be useful for step 2, which requires this lemma to simplify the equation *)
lemma step2:
  fixes x y ::real
  shows "x^2 + 2 * x * y + y^2 + x^2 * y^2 - 2 * x * y + 1 = x^2 + y^2 + x^2 * y^2 + 1"
proof -
  have "x^2 + 2 * x * y + y^2 + (x^2 * y^2) - 2 * x * y + 1 = x^2 + y^2 + (x^2 * y^2) + 1"
    by (simp add: algebra_simps)
  then show ?thesis
    by simp
qed

(* lemma 3. A lemma that shows the properties of quadratic equation will be useful for step 3, which requires this lemma to conclude the equation *)
lemma step3:
  fixes x y ::real
  shows "x^2 + y^2 + (x^2 * y^2) + 1 \<ge> 1"
proof -
  have "x^2 + y^2 + (x^2 * y^2) + 1 - 1 = x^2 + y^2 + (x^2 * y^2)"
    by simp
  then have "x^2 + y^2 + (x^2 * y^2) + 1 - 1 \<ge> 0"
    by simp
  then show ?thesis
    by simp
qed

(* formal statement copy from the input *)
theorem amc12a_2021_p7: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes x y ::real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
  apply (auto simp:algebra_simps power2_eq_square)
  using step1 step2 step3 by auto

end
```

This is the proof for the given problem.
