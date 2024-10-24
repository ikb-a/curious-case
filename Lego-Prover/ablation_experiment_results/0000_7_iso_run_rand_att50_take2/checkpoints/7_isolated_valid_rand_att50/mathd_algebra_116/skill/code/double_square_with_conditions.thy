lemma double_square_with_conditions:
  fixes x y :: real
  assumes "x = y"
  shows "2 * x^2 = (x + x) * x"
  using assms by sos