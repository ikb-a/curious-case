lemma inequality_bounds:
  fixes x :: nat
  assumes "x < c" "x = a + b"
  shows "a < c ∧ b < c"