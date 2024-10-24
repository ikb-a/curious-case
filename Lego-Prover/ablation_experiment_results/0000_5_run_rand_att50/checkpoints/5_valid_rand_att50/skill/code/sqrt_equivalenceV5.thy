lemma sqrt_equivalence:
  fixes x :: real
  assumes "x = 72"
  shows "sqrt (x + 9) = 9"
proof -
  have "x + 9 = 72 + 9" using assms by simp
  hence "x + 9 = 81" by simp
  then have "sqrt (x + 9) = sqrt 81" by simp
  also have "sqrt 81 = 9" by simp
  finally show ?thesis .
qed