lemma min_square:
  fixes x y :: real
  shows "0 <= (x - y)^2"
proof -
  have "(x - y)^2 = (x - y) * (x - y)" by (simp add: power2_eq_square)
  hence "0 <= (x - y)^2" 
  proof (cases "x - y >= 0")
    case True
    then have "x - y >= 0" by simp
    thus ?thesis by (simp add: mult_nonneg_nonneg)
  next
    case False
    then have "x - y < 0" by simp
    hence "x - y = -(y - x)" by (simp add: algebra_simps)
    have "0 <= (y - x)" by (metis \<open>x - y < 0\<close> diff_ge_0_iff_ge dual_order.order_iff_strict less_iff_diff_less_0)
    thus ?thesis by (simp add: mult_nonneg_nonneg)
  qed
  thus ?thesis by simp
qed