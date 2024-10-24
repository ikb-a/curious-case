lemma sqrt_equation:
  fixes x :: real
  assumes "sqrt (x + 9) = 9"
  shows "x = 72"
proof -
  have "x + 9 = 9^2" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  also have "... = 81" by simp
  finally have "x + 9 = 81" by simp
  have "x = 81 - 9" by (metis \<open>x + 9 = 81\<close> add_diff_cancel_right')
  thus "x = 72" by simp
qed