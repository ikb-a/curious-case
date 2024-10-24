lemma sqrt_squared:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt(x^2) = x"
proof -
  have "sqrt(x^2) = x" using assms by auto
  then show ?thesis by simp
qed