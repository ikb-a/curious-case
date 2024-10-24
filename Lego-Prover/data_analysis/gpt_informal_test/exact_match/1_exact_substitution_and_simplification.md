# substitution_and_simplification

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
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
```


## Usage 1 of 1:
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
lemma quadratic_formula:
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
lemma substitution_and_simplification: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
  ultimately have "x^2 < y^2 \<Longrightarrow> y^2 - x^2 = 1" using substitution_and_simplification by blast %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  then show ?thesis using assms(5) by simp
qed

end
```
