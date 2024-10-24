lemma properties_of_sqrt:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a >= 0" using assms by (metis real_sqrt_ge_zero)
  thus "sqrt a >= 0" by simp
qed