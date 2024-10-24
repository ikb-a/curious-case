lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" and "b >= 0"
  shows "a + b >= 0"