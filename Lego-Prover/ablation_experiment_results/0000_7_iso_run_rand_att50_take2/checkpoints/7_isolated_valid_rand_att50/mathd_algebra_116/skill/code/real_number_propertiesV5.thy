lemma real_number_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "x + y \<ge> 0"
proof -
  have "x + y = (0 + x) + (0 + y)" by simp
  also have "... \<ge> 0 + 0" using assms by (simp add: add_nonneg_nonneg)
  finally show ?thesis by simp
qed