lemma nested_sqrt_equals:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt (x + sqrt (x + sqrt (x + ...))) = sqrt (x + 9) ⟷ x = 72"