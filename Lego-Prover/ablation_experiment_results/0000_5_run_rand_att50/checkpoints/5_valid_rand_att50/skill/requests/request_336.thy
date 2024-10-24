lemma quadratic_formula:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "(-b ± sqrt(b^2 - 4 * a * c)) / (2 * a) = (b' ± sqrt(d)) / (2 * a)"
    where "b' = -b" "d = b^2 - 4 * a * c"