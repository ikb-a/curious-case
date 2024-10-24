lemma sqrt_equation:
  fixes x :: real
  shows "sqrt (x + 9) = 9 \<longleftrightarrow> x = 72"
proof -
  have "sqrt (x + 9) = 9 \<Longrightarrow> x = 72"
  proof -
    assume "sqrt (x + 9) = 9"
    then have "x + 9 = 9^2" by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
    then have "x + 9 = 81" by simp
    then show "x = 72" by simp
  qed
  have "x = 72 \<Longrightarrow> sqrt (x + 9) = 9"
  proof -
    assume "x = 72"
    then have "x + 9 = 72 + 9" by simp
    then have "x + 9 = 81" by simp
    then show "sqrt (x + 9) = 9" by auto
  qed
  show "sqrt (x + 9) = 9 \<longleftrightarrow> x = 72" 
    by (metis (full_types) `sqrt (x + 9) = 9 \<Longrightarrow> x = 72` `x = 72 \<Longrightarrow> sqrt (x + 9) = 9`)
qed