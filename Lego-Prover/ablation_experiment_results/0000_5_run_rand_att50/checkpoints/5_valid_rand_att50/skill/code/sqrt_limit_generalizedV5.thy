lemma sqrt_limit_generalized:
  fixes x :: real
  assumes "x >= 0" "y >= 0" "y = sqrt(x + c)"
  shows "x = y^2 - c"
proof -
  have "y^2 = x + c" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  thus ?thesis by (simp add: add_diff_cancel)
qed