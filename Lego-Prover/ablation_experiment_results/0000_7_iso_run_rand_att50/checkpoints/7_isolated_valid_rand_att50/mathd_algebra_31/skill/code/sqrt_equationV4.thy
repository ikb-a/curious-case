lemma sqrt_equation:
  fixes x :: real
  assumes "x + 9 = 81"
  shows "sqrt (x + 9) = 9"
proof -
  have "x + 9 = 81" using assms by simp
  then have "sqrt (x + 9) = sqrt 81" by simp
  also have "... = 9" by simp
  finally show "sqrt (x + 9) = 9" .
qed