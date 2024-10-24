lemma minimum_value_expression:
  fixes x y :: real
  shows "1 ≤ (xy - 1)^2 + (x + y)^2"
  apply (auto simp: algebra_simps)
  using non_negativity_of_squares by auto