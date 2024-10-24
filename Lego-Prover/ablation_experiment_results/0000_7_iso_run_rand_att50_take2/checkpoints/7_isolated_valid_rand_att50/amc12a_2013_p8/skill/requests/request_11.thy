lemma distinct_real_numbers:
  fixes x y :: real
  assumes "x ≠ y"
  shows "x + 2/x = y + 2/y ⟹ xy = 2"