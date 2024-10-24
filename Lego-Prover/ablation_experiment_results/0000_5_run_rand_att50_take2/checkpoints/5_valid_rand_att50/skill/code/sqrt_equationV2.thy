lemma sqrt_equation:
  fixes x :: real
  shows "sqrt (x + 9) = 9 \<longleftrightarrow> x = 72"
proof
  assume "sqrt (x + 9) = 9"
  then have "x + 9 = 9^2" by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "x + 9 = 81" by simp
  then show "x = 72" by simp
next
  assume "x = 72"
  then have "x + 9 = 72 + 9" by simp
  then have "x + 9 = 81" by simp
  then show "sqrt (x + 9) = 9" by (simp add: real_sqrt_unique)
qed