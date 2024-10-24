lemma fixed_point_sqrt:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt (x + 9) = 9 \<longleftrightarrow> x = 72"
proof
  show "sqrt (x + 9) = 9 \<Longrightarrow> x = 72"
  proof -
    assume "sqrt (x + 9) = 9"
    have "x + 9 = 9^2" using `sqrt (x + 9) = 9` by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
    thus ?thesis by simp
  qed
  show "x = 72 \<Longrightarrow> sqrt (x + 9) = 9"
  proof -
    assume "x = 72"
    have "x + 9 = 72 + 9" using `x = 72` by simp
    also have "... = 81" by simp
    finally have "sqrt (x + 9) = sqrt 81" by simp
    thus ?thesis by (simp add: real_sqrt_unique)
  qed
qed