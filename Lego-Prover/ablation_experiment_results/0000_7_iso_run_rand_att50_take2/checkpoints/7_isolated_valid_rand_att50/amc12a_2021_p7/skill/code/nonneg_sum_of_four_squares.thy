lemma nonneg_sum_of_four_squares:
  fixes a b c d :: real
  shows "a^2 + b^2 + c^2 + d^2 >= 0"
proof -
  have "0 <= a^2" by (simp add: power2_eq_square)
  have "0 <= b^2" by (simp add: power2_eq_square)
  have "0 <= c^2" by (simp add: power2_eq_square)
  have "0 <= d^2" by (simp add: power2_eq_square)
  thus ?thesis by (simp add: add_nonneg_nonneg add_nonneg_nonneg)
qed