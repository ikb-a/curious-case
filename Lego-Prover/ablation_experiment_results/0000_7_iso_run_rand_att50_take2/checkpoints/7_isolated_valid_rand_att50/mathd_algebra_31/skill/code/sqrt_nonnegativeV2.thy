lemma sqrt_nonnegative:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
  using assms by simp