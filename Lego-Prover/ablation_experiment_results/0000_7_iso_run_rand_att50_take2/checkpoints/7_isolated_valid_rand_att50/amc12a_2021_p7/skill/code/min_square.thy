lemma min_square:
  fixes x y :: real
  shows "0 <= (x - y)^2"
proof -
  have "(x - y)^2 = (x - y) * (x - y)" by (simp add: power2_eq_square)
  hence "0 <= (x - y)^2" 
    by (cases "x - y >= 0") (auto simp: mult_nonneg_nonneg)
  thus ?thesis by simp
qed