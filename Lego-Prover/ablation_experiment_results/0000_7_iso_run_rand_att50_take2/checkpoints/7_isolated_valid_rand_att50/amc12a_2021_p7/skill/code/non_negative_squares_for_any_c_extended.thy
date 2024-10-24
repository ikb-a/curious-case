lemma non_negative_squares_for_any_c_extended:
  fixes a b c :: real
  assumes "a^2 + b^2 + c^2 >= 0"
  shows "a^2 >= 0" and "b^2 >= 0" and "c^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  thus "a^2 >= 0" 
    by (cases "a >= 0") (auto simp: mult_nonneg_nonneg)
  have "b^2 = b * b" by sos
  thus "b^2 >= 0" 
    by (cases "b >= 0") (auto simp: mult_nonneg_nonneg)
  have "c^2 = c * c" by sos
  thus "c^2 >= 0" 
    by (cases "c >= 0") (auto simp: mult_nonneg_nonneg)
qed