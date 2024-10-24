lemma sqrt_eq:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt a = sqrt b ⟷ a = b"