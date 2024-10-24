lemma non_negative_power:
  fixes x :: real
  shows "0 \<le> x^2"
proof -
  have "x^2 = x * x" by (simp add: power2_eq_square)
  then show "0 \<le> x^2" 
    by (cases "x >= 0") (auto simp: mult_nonneg_nonneg)
qed