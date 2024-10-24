lemma sqrt_identity_for_nonneg:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt (x^2) = x"
proof -
  have "sqrt (x^2) = x" using assms by auto
  thus "sqrt (x^2) = x" by simp
qed