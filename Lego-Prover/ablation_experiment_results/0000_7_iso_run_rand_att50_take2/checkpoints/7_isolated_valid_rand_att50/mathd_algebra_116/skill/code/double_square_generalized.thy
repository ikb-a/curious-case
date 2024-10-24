lemma double_square_generalized:
  fixes x :: real
  assumes "n > 0"
  shows "n * x^2 = (n * (x^2))"
  using assms by simp