lemma nested_radical_equivalence:
  fixes x :: real
  assumes "y = sqrt (x + y)"
  shows "y^2 = x + y"