lemma sqrt_eq_n:
  fixes u :: real
  assumes "sqrt u = n" "n >= 0"
  shows "u = n^2"
proof -
  have "u = n^2" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  thus ?thesis by simp
qed