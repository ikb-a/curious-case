lemma nonnegative_squares:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
proof -
  have "x^2 >= 0" by (simp add: power2_eq_square)
  moreover have "y^2 >= 0" by (simp add: power2_eq_square)
  ultimately show "x^2 + y^2 >= 0" by (simp add: add_nonneg_nonneg)
qed