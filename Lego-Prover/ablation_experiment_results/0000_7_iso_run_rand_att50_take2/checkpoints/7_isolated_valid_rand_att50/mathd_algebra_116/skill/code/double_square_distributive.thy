lemma double_square_distributive:
  fixes x y :: real
  shows "m * (x^2 + y^2) = (m * x^2) + (m * y^2)"
  by (simp add: algebra_simps)