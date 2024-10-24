lemma distinct_nonzero:
  fixes x y :: real
  assumes "x ≠ 0" "y ≠ 0" "x ≠ y"
  shows "x * y ≠ 0"