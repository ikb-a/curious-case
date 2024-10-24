# quadratic_formula

Tasks where a provided skill's *name* is reproduced verbatim

Frequency: 2

Lemma:
```isabelle
lemma quadratic_formula:
  fixes a b c x :: real
  assumes "a \<noteq> 0" "b^2 - 4*a*c \<ge> 0"
  shows "a*x^2 + b*x + c = 0 \<Longrightarrow> x = (-b + sqrt (b^2 - 4*a*c))/(2*a) \<or> x = (-b - sqrt (b^2 - 4*a*c))/(2*a)"
proof -
  assume "a*x^2 + b*x + c = 0"
  then have "a * (x - (-b + sqrt (b^2 - 4*a*c))/(2*a)) * (x - (-b - sqrt (b^2 - 4*a*c))/(2*a)) = 0"
    using assms by sos
  then have "x - (-b + sqrt (b^2 - 4*a*c))/(2*a) = 0 \<or> x - (-b - sqrt (b^2 - 4*a*c))/(2*a) = 0"
    using assms by simp
  then have "x = (-b + sqrt (b^2 - 4*a*c))/(2*a) \<or> x = (-b - sqrt (b^2 - 4*a*c))/(2*a)"
    by simp
  then show ?thesis .
qed
```


## Usage 1 of 2:
### Problem:
Task name: `mathd_algebra_156.json`

The graphs of $y=x^4$ and $y=5x^2-6$ intersect at four points with $x$-coordinates $\pm \sqrt{m}$ and $\pm \sqrt{n}$, where $m > n$. What is $m-n$? Show that it is 1.
### Informal Proof:
Let $y = x^4$ and $y = 5x^2 - 6$. To find the x-coordinates of the intersection points, we need to solve the equation $x^4 = 5x^2 - 6$. We can rewrite this equation in terms of $x^2$ by letting $y = x^2$. Then, the equation becomes $y^2 = 5y - 6$. Solving this quadratic equation using the quadratic formula, we have $y = \frac{5 \pm \sqrt{1}}{2}$. Thus, $y = 2$ or $y = 3$. Since $y = x^2$, the x-coordinates of the intersection points are $\pm \sqrt{2}$ and $\pm \sqrt{3}$. Therefore, $m = 3$ and $n = 2$, and $m - n = 1$.
### Solution:
```isabelle
theorem mathd_algebra_156:
  fixes x y :: real
    and f g :: "real \<Rightarrow> real"
  assumes "\<forall>t. f t = t^4"
  and "\<forall>t. g t = 5 * t^2 - 6"
  and "f x = g x"
  and "f y = g y"
  and "x^2 < y^2" 
  shows "y^2 - x^2 = 1"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_algebra_156
  imports Complex_Main 
begin

(* Lemma 1: Prove the quadratic formula *)
lemma quadratic_formula: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes a b c x :: real
  assumes "a \<noteq> 0" "b^2 - 4*a*c \<ge> 0"
  shows "a*x^2 + b*x + c = 0 \<longleftrightarrow> x = (-b + sqrt (b^2 - 4*a*c))/(2*a) \<or> x = (-b - sqrt (b^2 - 4*a*c))/(2*a)"
proof -
  have "a*x^2 + b*x + c = 0 \<longleftrightarrow> 4*a^2*x^2 + 4*a*b*x + 4*a*c = 0"
    using assms by sos
  also have "... \<longleftrightarrow> (2*a*x + b)^2 = b^2 - 4*a*c"
    by (simp add: power2_eq_square algebra_simps)
  finally have "a*x^2 + b*x + c = 0 \<longleftrightarrow> (2*a*x + b)^2 = b^2 - 4*a*c" by simp
  then have "a*x^2 + b*x + c = 0 \<longleftrightarrow> 2*a*x + b = sqrt (b^2 - 4*a*c) \<or> 2*a*x + b = -sqrt (b^2 - 4*a*c)"
    using assms by (smt (verit) \<open>(4 * a\<^sup>2 * x\<^sup>2 + 4 * a * b * x + 4 * a * c = 0) = ((2 * a * x + b)\<^sup>2 = b\<^sup>2 - 4 * a * c)\<close> \<open>(a * x\<^sup>2 + b * x + c = 0) = (4 * a\<^sup>2 * x\<^sup>2 + 4 * a * b * x + 4 * a * c = 0)\<close> power2_eq_iff real_sqrt_pow2)
  then have "a*x^2 + b*x + c = 0 \<longleftrightarrow> x = (-b + sqrt (b^2 - 4*a*c))/(2*a) \<or> x = (-b - sqrt (b^2 - 4*a*c))/(2*a)"
    using assms by (auto simp: field_simps)
  then show ?thesis by simp
qed

(* Lemma 2: Prove the relationship between x and y *)
lemma relationship_between_x_and_y:
  fixes x y :: real
  shows "y = x^2 - 10 * x \<Longrightarrow> x^2 - 10 * x = y"
  by simp

(* Lemma 3: Prove substitution and simplification *)
lemma substitution_and_simplification:
  fixes x y :: real
  assumes "x^4 = 5*x^2 - 6" "y^4 = 5*y^2 - 6" "x^2 < y^2"
  shows "y^2 - x^2 = 1"
proof -
  have eq1: "x^4 - 5*x^2 + 6 = 0" using assms(1) by simp
  have eq2: "y^4 - 5*y^2 + 6 = 0" using assms(2) by simp
  have eq3: "(x^2 - 2) * (x^2 - 3) = 0" using eq1 by sos
  have eq4: "(y^2 - 2) * (y^2 - 3) = 0" using eq2 by sos
  have eq5: "x^2 - 2 = 0 \<or> x^2 - 3 = 0" using eq3 by auto
  have eq6: "y^2 - 2 = 0 \<or> y^2 - 3 = 0" using eq4 by auto
  have eq7: "x^2 - 2 < y^2 - 2" using assms(3) by simp
  have eq8: "y^2 - 2 = 1" using eq5 eq6 eq7 by auto
  have eq9: "y^2 - x^2 = 1" using eq8 by (smt (verit) assms(3) eq5)
  show ?thesis using eq9 by auto
qed

(* formal statement copy from the input *)
theorem mathd_algebra_156:
  fixes x y :: real
    and f g :: "real \<Rightarrow> real"
  assumes "\<forall>t. f t = t^4"
  and "\<forall>t. g t = 5 * t^2 - 6"
  and "f x = g x"
  and "f y = g y"
  and "x^2 < y^2" 
  shows "y^2 - x^2 = 1"
proof -
  have "f x - g x = 0" using assms(3, 4) by simp
  then have "x^4 - (5*x^2 - 6) = 0" using assms(1, 2) by simp
  then have "x^4 = 5*x^2 - 6" by simp
  moreover have "y^4 = 5*y^2 - 6" using assms(2, 4) by simp
  ultimately have "x^2 < y^2 \<Longrightarrow> y^2 - x^2 = 1" using substitution_and_simplification by blast
  then show ?thesis using assms(5) by simp
qed

end
```


## Usage 2 of 2:
### Problem:
Task name: `mathd_numbertheory_521.json`

The product of two consecutive positive even integers is 288. What is the greater of the two integers? Show that it is 18.
### Informal Proof:
Let x be the smaller of the two consecutive even integers. Then the larger integer is x + 2. The product of these two integers is 288, so we have the equation x(x + 2) = 288. This simplifies to the quadratic equation x^2 + 2x - 288 = 0. The roots of this equation are found using the quadratic formula, x = [-b ± sqrt(b^2 - 4ac)] / (2a), where a = 1, b = 2, and c = -288. Substituting these values into the quadratic formula gives us x = [-2 ± sqrt((2)^2 - 4*1*(-288))] / (2*1) = [-2 ± sqrt(4 + 1152)] / 2 = [-2 ± sqrt(1156)] / 2 = [-2 ± 34] / 2. The roots of the equation are x = 16 and x = -18. Since x represents a positive even integer, we discard the negative root and take x = 16 as the solution. Therefore, the greater of the two integers is 16 + 2 = 18.
### Solution:
```isabelle
theorem mathd_numbertheory_521:
  fixes m n :: nat
  assumes "even m"
    and "even n"
    and "m - n = 2"
    and "m * n = 288"
  shows "m = 18"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_numbertheory_521
  imports Complex_Main
begin

(* lemma 1. It might be helpful to prove the lemma, we can use the quadratic_formula lemma. *) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lemma quadratic_formula: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes a b c x :: real
  assumes "a \<noteq> 0" "b^2 - 4*a*c \<ge> 0"
  shows "a*x^2 + b*x + c = 0 \<Longrightarrow> x = (-b + sqrt (b^2 - 4*a*c))/(2*a) \<or> x = (-b - sqrt (b^2 - 4*a*c))/(2*a)"
proof -
  assume "a*x^2 + b*x + c = 0"
  then have "a * (x - (-b + sqrt (b^2 - 4*a*c))/(2*a)) * (x - (-b - sqrt (b^2 - 4*a*c))/(2*a)) = 0"
    using assms by sos
  then have "x - (-b + sqrt (b^2 - 4*a*c))/(2*a) = 0 \<or> x - (-b - sqrt (b^2 - 4*a*c))/(2*a) = 0"
    using assms by simp
  then have "x = (-b + sqrt (b^2 - 4*a*c))/(2*a) \<or> x = (-b - sqrt (b^2 - 4*a*c))/(2*a)"
    by simp
  then show ?thesis .
qed

(* formal statement copy from the input*)
theorem mathd_numbertheory_521:
  fixes m n :: nat
  assumes "even m"
    and "even n"
    and "m - n = 2"
    and "m * n = 288"
  shows "m = 18"
proof -
  (* Step 1: Define x as the smaller of the two consecutive even integers. *)
  define x where "x = min m n"
  
  (* Step 2: Express the larger integer as x + 2. *)
  have c1: "m = x + 2"
    using assms(1) assms(3) x_def by (metis add_diff_cancel_right' even_Suc)
  
  (* Step 3: Set up the equation x(x + 2) = 288. *)
  have "x * (x + 2) = 288"
    using assms(4) c1 by auto
  
  (* Step 4: Simplify the equation to the quadratic equation x^2 + 2x - 288 = 0. *)
  have c2: "x^2 + 2 * x - 288 = 0"
    using c1 by (simp add: algebra_simps power2_eq_square)
  
  (* Step 5: Use the quadratic formula to find the roots of the equation. *)
  have "x = (-2 + sqrt (2^2 - 4 * 1 * -288))/(2*1) \<or> x = (-2 - sqrt (2^2 - 4 * 1 * -288))/(2*1)"
    using quadratic_formula[of 1 2 "-288" x] c2 by auto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  (* Step 6: Discard the negative root and take the positive root as the solution. *)
  have "x = (-2 + sqrt (1156))/(2)"
    using \<open>x = (-2 + sqrt (2\<^sup>2 - 4 * 1 * -288)) / (2 * 1) \<or> x = (-2 - sqrt (2\<^sup>2 - 4 * 1 * -288)) / (2 * 1)\<close> by auto
  then have c3: "x = 16"
    by auto
  
  (* Step 7: Determine that x = 16. *)
  have c4: "x = 16"
    using c3 by auto
  
  (* Step 8: Calculate the greater integer as x + 2. *)
  have "m = x + 2"
    using c1 c4 by auto
  
  (* Step 9: Conclude that the greater integer is 18. *)
  then show ?thesis
    by auto
qed

end
```
