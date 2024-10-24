lemma sqrt_equation:
  fixes x :: real
  assumes "sqrt (x + 9) = 9"
  shows "x = 72"
proof -
  have "sqrt (x + 9) = 9" using assms by simp
  then have "x + 9 = 9^2" using real_sqrt_eq_iff real_sqrt_unique by fastforce
  then have "x + 9 = 81" by simp
  then show "x = 72" by (simp add: algebra_simps)
qed