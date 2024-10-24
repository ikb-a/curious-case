lemma sqrt_equality:
  fixes a b :: real
  assumes "sqrt a = sqrt b" "a ≥ 0" "b ≥ 0"
  shows "a = b"