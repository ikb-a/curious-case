lemma solve_for_x:
  fixes x :: real
  shows "9 = sqrt(x + 9) \<Longrightarrow> x = 72"
proof -
  assume "9 = sqrt(x + 9)"
  then have "9^2 = x + 9" 
    by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "81 = x + 9" 
    by simp
  then show "x = 72" 
    by simp
qed