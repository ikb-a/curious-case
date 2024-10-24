lemma square_root_equation:
  fixes x :: real
  shows "sqrt (x + 9) = 9 \<longleftrightarrow> x = 72"
proof
  show "sqrt (x + 9) = 9 \<Longrightarrow> x = 72"
  proof -
    assume "sqrt (x + 9) = 9"
    then have "9^2 = x + 9" 
      by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
    hence "81 = x + 9" 
      by simp
    thus "x = 72" 
      by simp
  qed
  show "x = 72 \<Longrightarrow> sqrt (x + 9) = 9"
  proof -
    assume "x = 72"
    hence "x + 9 = 72 + 9" 
      by simp
    thus "sqrt (x + 9) = 9" 
      by (simp add: sqrt_def)
  qed
qed