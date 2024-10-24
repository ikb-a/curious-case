lemma sqrt_positive_general:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
proof -
  have "sqrt a = sqrt a - 0" by simp
  also have "... > 0 - 0" using assms by auto
  finally show ?thesis by simp
qed