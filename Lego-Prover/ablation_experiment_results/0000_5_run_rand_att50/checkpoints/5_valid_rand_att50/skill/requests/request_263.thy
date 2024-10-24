lemma sqrt_difference:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt a - sqrt b = (a - b) / (sqrt a + sqrt b)"