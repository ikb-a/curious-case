lemma sqrt_positive_parametrized:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt (a) > 0"
  using sqrt_positive_general[of a] assms by simp