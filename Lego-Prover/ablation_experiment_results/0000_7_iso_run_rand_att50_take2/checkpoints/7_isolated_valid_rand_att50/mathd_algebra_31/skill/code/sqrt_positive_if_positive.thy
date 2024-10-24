lemma sqrt_positive_if_positive:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
  using assms sqrt_positive_and_non_neg by simp