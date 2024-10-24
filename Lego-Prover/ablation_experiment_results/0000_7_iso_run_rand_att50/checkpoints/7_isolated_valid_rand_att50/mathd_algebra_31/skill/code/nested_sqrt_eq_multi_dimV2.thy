lemma nested_sqrt_eq_multi_dim:
  fixes x :: real and y :: real
  assumes "sqrt (x + 9) = 9" and "sqrt (y + 9) = 9"
  shows "x = 72" and "y = 72"
proof -
  have "x + 9 = 9^2" using assms(1) by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "x + 9 = 81" by simp
  then show "x = 72" by simp
next
  have "y + 9 = 9^2" using assms(2) by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "y + 9 = 81" by simp
  then show "y = 72" by simp
qed