lemma sqrt_limit_generalized:
  fixes x y :: real
  assumes "y = sqrt(x + y)" and "y > 0"
  shows "x = y^2 - y"
proof -
  have "y^2 = x + y" using assms by (metis real_sqrt_eq_iff real_sqrt_unique verit_comp_simplify1(3) zero_le_mult_iff zero_le_square)
  then have "x = y^2 - y" by (metis add_diff_cancel semiring_norm(3) semiring_norm(5))
  then show ?thesis by simp
qed