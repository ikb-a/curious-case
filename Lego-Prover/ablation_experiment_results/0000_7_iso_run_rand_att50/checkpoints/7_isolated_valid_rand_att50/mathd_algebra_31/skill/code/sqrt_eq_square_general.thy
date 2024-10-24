lemma sqrt_eq_square_general:
  fixes a :: real
  assumes "b >= 0" "sqrt a = b"
  shows "a = b^2"
proof -
  have "a = b^2" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  thus ?thesis by simp
qed