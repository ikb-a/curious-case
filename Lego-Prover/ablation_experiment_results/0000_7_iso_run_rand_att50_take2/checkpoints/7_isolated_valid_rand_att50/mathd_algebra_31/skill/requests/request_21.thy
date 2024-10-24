lemma sqrt_eq:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = sqrt b"
  shows "a = b"