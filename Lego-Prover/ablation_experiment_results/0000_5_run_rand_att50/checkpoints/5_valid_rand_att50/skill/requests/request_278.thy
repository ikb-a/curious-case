lemma sqrt_subtraction:
  fixes a b :: real
  assumes "a >= b" "b >= 0"
  shows "sqrt (a - b) = sqrt a - sqrt b"