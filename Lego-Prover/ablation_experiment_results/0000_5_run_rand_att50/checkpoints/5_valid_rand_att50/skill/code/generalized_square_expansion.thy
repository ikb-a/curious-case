lemma generalized_square_expansion:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2*x*y + y^2"
  by (simp add: power2_diff)