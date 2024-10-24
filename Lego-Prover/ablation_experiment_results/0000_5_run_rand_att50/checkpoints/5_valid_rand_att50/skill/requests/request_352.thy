lemma min_value_of_expression:
  fixes x y :: real
  shows "1 ≤ (xy - 1)^2 + (x + y)^2"
  apply (auto simp: algebra_simps)