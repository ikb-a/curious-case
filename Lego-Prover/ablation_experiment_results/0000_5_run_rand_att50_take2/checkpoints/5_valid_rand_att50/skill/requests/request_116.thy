lemma floor_sum:
  fixes r :: real
  assumes "a + b = n" "a * x + b * (x + 1) = S"
  shows "x = floor r"