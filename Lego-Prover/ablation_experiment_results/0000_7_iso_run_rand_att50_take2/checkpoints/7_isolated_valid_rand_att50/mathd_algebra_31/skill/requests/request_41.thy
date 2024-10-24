lemma sqrt_equals:
  fixes a b :: real
  assumes "b >= 0"
  shows "sqrt a = b ⟷ a = b^2"
  using assms by (metis sqrt_eq_0_iff)