lemma non_negative_squares:
  fixes a b :: real
  shows "a^2 >= 0" and "b^2 >= 0"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  then have "a^2 >= 0" 
    by (cases "a >= 0") (auto simp: mult_nonneg_nonneg)
  have "b^2 = b * b" by (simp add: power2_eq_square)
  then have "b^2 >= 0" 
    by (cases "b >= 0") (auto simp: mult_nonneg_nonneg)
  thus "a^2 >= 0" and "b^2 >= 0" by auto
qed