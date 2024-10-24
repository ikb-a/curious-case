lemma simple_sqrt_eq:
  fixes x :: real
  assumes "sqrt x = 3"
  shows "x = 9"
proof -
  have "x = 3^2" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  thus ?thesis by simp
qed