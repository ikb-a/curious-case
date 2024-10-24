lemma non_negative_squares:
  fixes x y :: real
  shows "0 \<le> x^2" and "0 \<le> y^2"
proof -
  have "x^2 = x * x" by (simp add: power2_eq_square)
  moreover
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
  have "y^2 = y * y" by (simp add: power2_eq_square)
  moreover
  {
    assume "y >= 0"
    hence "0 <= y^2" by (simp add: mult_nonneg_nonneg)
  }
  moreover
  {
    assume "y < 0"
    hence "y^2 > 0" by auto
  }
  ultimately show "0 <= y^2" by (auto simp: le_less_trans)
qed