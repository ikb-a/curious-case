lemma real_number_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "x + y \<ge> 0"
proof -
  from assms have "x + y = x + y" by simp
  moreover have "x + y \<ge> 0 + 0" using assms by (simp add: add_nonneg_nonneg)
  ultimately show "x + y \<ge> 0" by simp
qed