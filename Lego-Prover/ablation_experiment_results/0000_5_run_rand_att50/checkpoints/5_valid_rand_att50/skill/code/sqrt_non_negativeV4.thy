lemma sqrt_non_negative:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
  using assms by auto