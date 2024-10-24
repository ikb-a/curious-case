lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" and "a \<ge> 0" and "b \<ge> 0"
  shows "a^2 = b^2"