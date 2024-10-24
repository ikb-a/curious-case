lemma square_expansion_with_parametrization:
  fixes x y :: real
  assumes "x = a" and "y = b"
  shows "(x - y)^2 = x^2 - 2*x*y + y^2"
  using assms by sos