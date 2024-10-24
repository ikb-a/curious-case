lemma sqrt_limit:
  fixes x :: real
  assumes "x + 9 = 81"
  shows "sqrt (x + 9) = 9"
proof -
  have "x + 9 = 81" using assms by simp
  then have "sqrt (x + 9) = sqrt 81" by simp
  then show "sqrt (x + 9) = 9" by simp
qed