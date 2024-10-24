lemma floor_bound:
  fixes r :: real
  assumes "n < r < n + 1"
  shows "floor r = n"