lemma sqrt_diff:
  fixes a b :: real
  assumes "a ≥ b"
  shows "sqrt a - sqrt b = (a - b) / (sqrt a + sqrt b)"