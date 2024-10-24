lemma floor_sum_property:
  fixes r :: real
  assumes "a < r + b" "r + b < a + 1"
  shows "floor (r + b) = a"