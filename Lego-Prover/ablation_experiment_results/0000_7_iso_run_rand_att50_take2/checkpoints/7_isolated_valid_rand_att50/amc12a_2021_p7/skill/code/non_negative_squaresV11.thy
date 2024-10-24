lemma non_negative_squares:
  fixes x :: real
  shows "0 \<le> x^2"
proof -
  have "x^2 = x * x" by (simp add: power2_eq_square)
  {
    assume "x >= 0"
    hence "0 <= x^2" by (simp add: mult_nonneg_nonneg)
  }
  moreover
  {
    assume "x < 0"
    hence "x^2 > 0" by auto
  }
  ultimately show "0 <= x^2" by (auto simp: le_less_trans)
qed