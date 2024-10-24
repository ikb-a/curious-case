lemma sqrt_square:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt(x^2) = x"
proof -
  have "sqrt(x^2) = sqrt((x)^2)" by simp
  then show ?thesis using assms by auto
qed