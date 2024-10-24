lemma sqrt_equivalence:
  fixes x :: real
  assumes "x = 72"
  shows "sqrt (x + 9) = 9"
proof -
  have "sqrt (x + 9) = sqrt (72 + 9)" using assms by simp
  also have "... = sqrt 81" by simp
  also have "... = 9" by simp
  finally show ?thesis by simp
qed