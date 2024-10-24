lemma square_root_equation:
  fixes x :: real
  assumes "sqrt (x + 9) = 9"
  shows "x = 72"
proof -
  have "sqrt (x + 9) = 9" using assms by simp
  then have "9^2 = x + 9" 
    by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "81 = x + 9" 
    by simp
  then show "x = 72" 
    by simp
qed