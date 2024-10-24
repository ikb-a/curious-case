lemma floor_inequality:
  fixes r :: real
  assumes "n < r < n + 1"
  shows "floor r = n"