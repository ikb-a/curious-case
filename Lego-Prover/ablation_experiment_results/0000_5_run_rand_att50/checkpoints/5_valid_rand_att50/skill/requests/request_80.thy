lemma min_value_of_non_negatives:
  fixes a b c :: real
  assumes "a ≥ 0" and "b ≥ 0" and "c ≥ 0"
  shows "a + b + c ≥ 0"