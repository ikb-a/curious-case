lemma real_number_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "x + y \<ge> 0"
proof -
  from assms have "x \<ge> 0" and "y \<ge> 0" by simp_all
  then show "x + y \<ge> 0" by (simp add: add_nonneg_nonneg)
qed