lemma square_root_equation:
  fixes x :: real
  shows "sqrt (x + 9) = 9 \<Longrightarrow> x = 72"
proof -
  assume "sqrt (x + 9) = 9"
  hence "x + 9 = 9^2" 
    by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  hence "x + 9 = 81" 
    by simp
  hence "x = 81 - 9" 
    by (simp add: algebra_simps)
  thus "x = 72" 
    by simp
qed