lemma non_negative_squares:
  fixes x y :: real
  shows "0 \<le> x^2" and "0 \<le> y^2"
proof -
  have "x^2 = x * x" by sos
  hence "0 \<le> x^2" 
    by (cases "x \<ge> 0") (auto simp: mult_nonneg_nonneg)
  moreover
  have "y^2 = y * y" by sos
  hence "0 \<le> y^2" 
    by (cases "y \<ge> 0") (auto simp: mult_nonneg_nonneg)
  ultimately show "0 \<le> x^2" and "0 \<le> y^2" by blast+
qed