lemma sqrt_square_generalized:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a * sqrt a = a"
using assms by auto