# quadratic_formula

Tasks where a provided skill is reproduced verbatim

Frequency: 1

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


## Usage 1 of 1:
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
