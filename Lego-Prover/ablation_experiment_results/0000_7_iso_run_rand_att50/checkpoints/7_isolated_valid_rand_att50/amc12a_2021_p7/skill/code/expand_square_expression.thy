lemma expand_square_expression:
  fixes x y :: real
  shows "(x + y)^2 = x^2 + 2*x*y + y^2"
  using binomial_expansion[of x y] by simp