lemma sqrt_limit_extended:
  fixes x y :: real
  assumes "y = sqrt(x + y)" "y > 0"
  shows "x = y^2 - y"
proof -
  have "y^2 = x + y" using assms by (metis real_sqrt_eq_iff real_sqrt_unique verit_comp_simplify1(3) zero_le_mult_iff zero_le_square)
  thus ?thesis by (simp add: algebra_simps)
qed