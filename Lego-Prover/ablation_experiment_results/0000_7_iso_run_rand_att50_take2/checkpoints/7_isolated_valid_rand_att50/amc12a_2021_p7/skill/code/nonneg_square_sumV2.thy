lemma nonneg_square_sum:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "x^2 + y^2 >= 0"
proof -
  have "x^2 >= 0" using assms(1) by (simp add: power2_eq_square)
  moreover have "y^2 >= 0" using assms(2) by (simp add: power2_eq_square)
  ultimately show ?thesis by simp
qed