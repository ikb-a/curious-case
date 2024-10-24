lemma real_number_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "x + y \<ge> 0"
proof -
  have "x + y = x + y" by simp
  also have "... \<ge> 0 + 0" using assms by auto
  finally show ?thesis by (metis add_nonneg_nonneg assms(1) assms(2))
qed