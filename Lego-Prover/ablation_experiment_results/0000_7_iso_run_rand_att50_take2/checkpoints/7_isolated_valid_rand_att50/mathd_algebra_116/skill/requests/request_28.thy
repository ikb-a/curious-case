lemma quadratic_root_properties:
  fixes a b c :: real
  assumes "a > 0"
  shows "x = (-b ± sqrt (b^2 - 4ac)) / (2a) ⟹ a*x^2 + b*x + c = 0"