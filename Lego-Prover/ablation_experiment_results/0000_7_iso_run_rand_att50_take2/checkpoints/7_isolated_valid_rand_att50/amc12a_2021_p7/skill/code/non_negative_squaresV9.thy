lemma non_negative_squares:
  fixes x y :: real
  shows "0 \<le> x^2" and "0 \<le> y^2"
proof -
  have "x^2 = x * x" by (simp add: power2_eq_square)
  hence "0 \<le> x^2" 
    by (cases "x >= 0") (auto simp: mult_nonneg_nonneg)
  have "y^2 = y * y" by (simp add: power2_eq_square)
  hence "0 \<le> y^2" 
    by (cases "y >= 0") (auto simp: mult_nonneg_nonneg)
  thus "0 \<le> x^2" and "0 \<le> y^2" by auto
qed