lemma quadratic_root_properties:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "roots of ax^2 + bx + c = 0 are given by (-b ± sqrt(b^2 - 4ac)) / (2a)"