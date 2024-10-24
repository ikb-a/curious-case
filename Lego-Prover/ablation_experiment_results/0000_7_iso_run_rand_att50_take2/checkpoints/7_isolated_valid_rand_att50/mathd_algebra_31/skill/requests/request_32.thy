lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "a^2 = b^2"