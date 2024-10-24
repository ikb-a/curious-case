lemma inequality_bounds:
  fixes x :: nat
  assumes "x < a" "x < b"
  shows "x < min a b"