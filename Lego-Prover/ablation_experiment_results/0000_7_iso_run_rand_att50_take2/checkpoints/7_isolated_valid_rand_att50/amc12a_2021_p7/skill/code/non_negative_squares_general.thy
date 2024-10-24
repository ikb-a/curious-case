lemma non_negative_squares_general:
  fixes x y :: real
  shows "x^2 >= 0" and "y^2 >= 0"
proof -
  have "x^2 = x * x" by (simp add: power2_eq_square)
  then have "x^2 >= 0" 
    by (cases "x >= 0") (auto simp: mult_nonneg_nonneg)
  have "y^2 = y * y" by (simp add: power2_eq_square)
  then have "y^2 >= 0" 
    by (cases "y >= 0") (auto simp: mult_nonneg_nonneg)
  thus "x^2 >= 0" and "y^2 >= 0" by auto
qed