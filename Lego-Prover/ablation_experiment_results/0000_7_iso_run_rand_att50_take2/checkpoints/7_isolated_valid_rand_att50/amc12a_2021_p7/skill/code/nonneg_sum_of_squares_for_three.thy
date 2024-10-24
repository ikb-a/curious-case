lemma nonneg_sum_of_squares_for_three:
  fixes a b c :: real
  shows "a^2 + b^2 + c^2 >= 0"
proof -
  have "0 <= a^2" by (simp add: power2_eq_square)
  have "0 <= b^2" by (simp add: power2_eq_square)
  have "0 <= c^2" by (simp add: power2_eq_square)
  thus ?thesis by simp
qed