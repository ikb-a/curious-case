lemma sqrt_preserves_equality:
  fixes x y :: real
  assumes "x = y" and "x >= 0" and "y >= 0"
  shows "sqrt x = sqrt y"
  using assms by simp