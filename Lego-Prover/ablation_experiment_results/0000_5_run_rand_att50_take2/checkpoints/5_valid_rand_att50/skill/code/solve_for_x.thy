lemma solve_for_x:
  fixes x :: real
  shows "9 = sqrt (x + 9) \<Longrightarrow> x = 72"
proof -
  assume "9 = sqrt (x + 9)"
  then have "x + 9 = 9^2" by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "x + 9 = 81" by simp
  then show "x = 72" by simp
qed