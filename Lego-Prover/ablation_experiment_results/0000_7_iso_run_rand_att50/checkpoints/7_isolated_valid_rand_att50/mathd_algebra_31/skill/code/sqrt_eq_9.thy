lemma sqrt_eq_9:
  fixes u :: real
  assumes "sqrt u = 9"
  shows "u = 81"
proof -
  have "u = 9^2" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  thus ?thesis by simp
qed