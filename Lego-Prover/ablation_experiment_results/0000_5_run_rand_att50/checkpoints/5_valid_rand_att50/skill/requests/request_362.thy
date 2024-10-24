lemma expand_and_minimize:
  fixes x y :: real
  shows "1 \<le> (xy - 1)^2 + (x + y)^2"
  apply (auto simp: algebra_simps power2_eq_square)