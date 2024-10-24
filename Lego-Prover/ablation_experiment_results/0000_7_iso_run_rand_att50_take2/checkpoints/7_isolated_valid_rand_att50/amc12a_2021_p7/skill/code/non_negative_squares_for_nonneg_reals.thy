lemma non_negative_squares_for_nonneg_reals:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a^2 >= 0" and "b^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show "a^2 >= 0" 
    using assms by (auto simp: mult_nonneg_nonneg)
  have "b^2 = b * b" by sos
  then show "b^2 >= 0" 
    using assms by (auto simp: mult_nonneg_nonneg)
qed