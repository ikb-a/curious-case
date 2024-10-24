lemma sqrt_equivalence:
  fixes x :: real
  assumes "x = 72"
  shows "sqrt (x + 9) = 9"
proof -
  have "x + 9 = 72 + 9" using assms by simp
  also have "... = 81" by simp
  finally have "sqrt (x + 9) = sqrt 81" by simp
  then show ?thesis by (simp add: real_sqrt_unique)
qed