lemma non_negative_squares_for_any_c:
  fixes a :: real and c :: real
  assumes "a^2 + c^2 >= 0"
  shows "a^2 >= 0" and "c^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  thus "a^2 >= 0" 
    by (cases "a >= 0") (auto simp: mult_nonneg_nonneg)
  have "c^2 = c * c" by sos
  thus "c^2 >= 0" 
    by (cases "c >= 0") (auto simp: mult_nonneg_nonneg)
qed