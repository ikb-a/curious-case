lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2) + (x^2) + (y^2) + 1"
  by (simp add: power2_eq_square)