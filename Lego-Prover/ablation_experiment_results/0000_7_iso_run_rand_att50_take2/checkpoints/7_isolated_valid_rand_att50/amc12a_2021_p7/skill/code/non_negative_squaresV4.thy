lemma non_negative_squares:
  fixes a b :: real
  shows "0 \<le> a^2" and "0 \<le> b^2"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  then show "0 \<le> a^2" 
    by (cases "a >= 0") (auto simp: mult_nonneg_nonneg)
  have "b^2 = b * b" by (simp add: power2_eq_square)
  then show "0 \<le> b^2" 
    by (cases "b >= 0") (auto simp: mult_nonneg_nonneg)
qed