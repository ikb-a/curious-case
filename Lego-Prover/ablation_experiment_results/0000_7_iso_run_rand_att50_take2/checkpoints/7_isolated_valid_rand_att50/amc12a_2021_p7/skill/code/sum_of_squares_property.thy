lemma sum_of_squares_property:
  fixes a b c d :: real
  assumes "a^2 + b^2 = c^2 + d^2"
  shows "a^2 + b^2 >= 0"
proof -
  have "0 <= a^2" by (simp add: power2_eq_square)
  have "0 <= b^2" by (simp add: power2_eq_square)
  thus ?thesis using assms by (simp add: add_nonneg_nonneg)
qed