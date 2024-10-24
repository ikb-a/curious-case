lemma square_root_positive:
  fixes a b :: real
  assumes "a ≥ 0" "b ≥ 0"
  shows "sqrt a + sqrt b = sqrt (a + b + 2 * sqrt (a * b))"