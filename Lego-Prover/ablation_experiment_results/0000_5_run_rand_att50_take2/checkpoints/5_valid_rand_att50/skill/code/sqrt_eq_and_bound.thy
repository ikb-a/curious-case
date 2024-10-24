lemma sqrt_eq_and_bound:
  fixes x :: real
  assumes "sqrt (x + 9) = 9"
  shows "x = 72 \<and> x \<ge> 0"
proof -
  have "x + 9 = 9^2" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "x + 9 = 81" by simp
  then have "x = 81 - 9" by simp
  thus "x = 72 \<and> x \<ge> 0" by auto
qed