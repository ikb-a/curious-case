lemma sqrt_equation:
  fixes x :: real
  shows "sqrt (x + 9) = 9 \<longleftrightarrow> x = 72"
proof
  show "sqrt (x + 9) = 9 \<Longrightarrow> x = 72"
  proof -
    assume "sqrt (x + 9) = 9"
    have "x + 9 = 9^2" using `sqrt (x + 9) = 9` by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
    then have "x + 9 = 81" by simp
    then show "x = 72" by simp
  qed
  show "x = 72 \<Longrightarrow> sqrt (x + 9) = 9"
  proof -
    assume "x = 72"
    have "sqrt (x + 9) = sqrt (72 + 9)" by (simp add: `x = 72`)
    also have "... = sqrt 81" by simp
    also have "... = 9" by simp
    finally show "sqrt (x + 9) = 9" .
  qed
qed