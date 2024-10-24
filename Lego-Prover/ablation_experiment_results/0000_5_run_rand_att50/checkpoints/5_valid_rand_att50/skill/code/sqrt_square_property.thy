lemma sqrt_square_property:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt (x^2) = abs x"
  using assms by auto