lemma roots_coefficients:
  fixes a b c r1 r2 :: real
  assumes "a ≠ 0" "r1 + r2 = -b/a" "r1 * r2 = c/a"
  shows "a*x^2 + b*x + c = (x - r1)*(x - r2)"