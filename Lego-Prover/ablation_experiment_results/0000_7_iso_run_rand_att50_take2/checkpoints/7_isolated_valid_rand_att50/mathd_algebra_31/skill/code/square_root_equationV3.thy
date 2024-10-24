lemma square_root_equation:
  fixes x :: real
  shows "sqrt (x + 9) = 9 \<longleftrightarrow> x = 72"
proof
  assume "sqrt (x + 9) = 9"
  then have "9^2 = x + 9" 
    by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "81 = x + 9" 
    by simp
  thus "x = 72"
    by simp
next
  assume "x = 72"
  then have "x + 9 = 72 + 9" 
    by simp
  then have "x + 9 = 81" 
    by simp
  thus "sqrt (x + 9) = 9"
    by auto
qed