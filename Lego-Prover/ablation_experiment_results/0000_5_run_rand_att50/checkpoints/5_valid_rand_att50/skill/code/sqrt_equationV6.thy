lemma sqrt_equation:
  fixes x :: real
  assumes "sqrt (x + 9) = 9"
  shows "x = 72"
proof -
  have "sqrt (x + 9) = 9" using assms by simp
  then have "x + 9 = 9^2" by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  also have "... = 81" by simp
  finally have "x + 9 = 81" by simp
  then show ?thesis by (simp add: add_diff_cancel)
qed