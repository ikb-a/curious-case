lemma divide_nonzero:
  fixes a b :: real
  assumes "a ≠ b"
  shows "a / (a - b) = 1"