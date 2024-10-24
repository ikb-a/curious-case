lemma sqrt_non_negative:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x \<ge> 0"
proof -
  have "sqrt x = sqrt x" by simp
  also have "... = sqrt (x * 1)" by (simp add: mult_1_left)
  also have "... = sqrt (x * (if x = 0 then 0 else 1))" by (simp add: assms)
  also have "... \<ge> 0" using assms by auto
  finally show ?thesis by (metis assms real_sqrt_ge_zero)
qed