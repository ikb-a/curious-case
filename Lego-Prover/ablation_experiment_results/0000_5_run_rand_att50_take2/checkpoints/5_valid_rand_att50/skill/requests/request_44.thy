lemma factor_difference:
  fixes a b c :: real
  assumes "a ≠ b"
  shows "a * c - b * c = (a - b) * c"