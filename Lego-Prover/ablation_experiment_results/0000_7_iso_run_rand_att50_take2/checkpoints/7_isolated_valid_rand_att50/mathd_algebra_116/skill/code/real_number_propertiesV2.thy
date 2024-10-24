lemma real_number_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "x + y \<ge> 0"
proof -
  from assms have "x + y = x + y" by simp
  moreover have "x \<ge> 0" by (rule assms(1))
  moreover have "y \<ge> 0" by (rule assms(2))
  ultimately show ?thesis by (simp add: add_nonneg_nonneg)
qed