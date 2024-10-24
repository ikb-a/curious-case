lemma sqrt_equation:
  fixes x :: real
  assumes "sqrt(x + 9) = 9"
  shows "x = 72"
proof -
  have "9^2 = x + 9" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "81 = x + 9" by (simp add: power2_eq_square)
  then show ?thesis by (simp add: add_diff_cancel)
qed