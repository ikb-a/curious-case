lemma non_negative_power:
  fixes x :: real
  shows "x^2 >= 0"
proof -
  have "x^2 = x * x" by (simp add: power2_eq_square)
  then have "x^2 >= 0" 
    by (cases "x >= 0") (auto simp: mult_nonneg_nonneg)
  thus ?thesis by simp
qed