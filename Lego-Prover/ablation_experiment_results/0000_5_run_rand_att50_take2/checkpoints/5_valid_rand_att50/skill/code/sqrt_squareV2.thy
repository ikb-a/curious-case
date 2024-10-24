lemma sqrt_square:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt (x^2) = x"
proof -
  have "sqrt (x^2) = sqrt (x^2) * 1" by simp
  also have "... = x" using assms by auto
  finally show ?thesis by simp
qed