lemma nested_radical:
  fixes x :: real
  assumes "sqrt (x + sqrt (x + sqrt (x + ...)) = y"
  shows "y^2 = x + y"