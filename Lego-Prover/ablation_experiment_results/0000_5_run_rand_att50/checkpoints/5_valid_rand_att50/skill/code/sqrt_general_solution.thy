lemma sqrt_general_solution:
  fixes x y :: real
  assumes "y >= 0" "y = sqrt (x + y)"
  shows "x = y^2 - y"
proof -
  have "y^2 = x + y" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  thus ?thesis by simp
qed