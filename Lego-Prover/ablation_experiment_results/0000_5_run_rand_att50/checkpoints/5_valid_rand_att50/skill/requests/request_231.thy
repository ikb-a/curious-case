lemma quadratic_root_properties:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "roots of (a*x^2 + b*x + c) are given by (-b ± sqrt(b^2 - 4*a*c)) / (2*a)"