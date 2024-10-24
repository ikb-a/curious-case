lemma sqrt_eq:
  fixes x :: real
  assumes "x >= 0" and "y = sqrt x"
  shows "y^2 = x"
proof -
  from assms(1) have "sqrt x >= 0" by simp
  then show ?thesis using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
qed