lemma isolate_x:
  fixes x :: real
  assumes "x + 9 = 81"
  shows "x = 72"
proof -
  have "x + 9 = 81" using assms by simp
  then have "x = 81 - 9" by (simp add: algebra_simps)
  then show "x = 72" by simp
qed