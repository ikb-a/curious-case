lemma non_negative_squares_and_sum:
  fixes a b :: real
  shows "a^2 >= 0" and "b^2 >= 0" and "a^2 + b^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show "a^2 >= 0" 
    by (cases "a >= 0") (auto simp: mult_nonneg_nonneg)
  have "b^2 = b * b" by sos
  then show "b^2 >= 0" 
    by (cases "b >= 0") (auto simp: mult_nonneg_nonneg)
  have "a^2 + b^2 = (a * a) + (b * b)" by sos
  then show "a^2 + b^2 >= 0"
    by (auto simp: mult_nonneg_nonneg)
qed