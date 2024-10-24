lemma sqrt_equation_with_nonneg:
  fixes x :: real
  assumes "sqrt (x + 9) = 9"
  shows "x = 72"
proof -
  have "x + 9 = 9^2" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  thus ?thesis by simp
qed