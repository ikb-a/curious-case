lemma real_number_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "x + y \<ge> 0"
proof -
  have "x + y = x + y" by auto
  moreover have "x \<ge> 0" using assms(1) by simp
  moreover have "y \<ge> 0" using assms(2) by simp
  ultimately show ?thesis by auto
qed