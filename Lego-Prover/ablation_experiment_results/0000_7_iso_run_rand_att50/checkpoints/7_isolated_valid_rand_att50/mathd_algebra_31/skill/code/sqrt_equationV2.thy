lemma sqrt_equation:
  fixes x :: real
  assumes "x + 9 = 81"
  shows "sqrt (x + 9) = 9"
proof -
  have "sqrt (x + 9) = sqrt 81" using assms by simp
  then show "sqrt (x + 9) = 9" by auto
qed