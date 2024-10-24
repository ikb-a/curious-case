lemma sqrt_limit_extended:
  fixes y :: real
  assumes "sqrt(y) = 9"
  shows "y = 81"
proof -
  have "9^2 = y" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  thus ?thesis by auto
qed