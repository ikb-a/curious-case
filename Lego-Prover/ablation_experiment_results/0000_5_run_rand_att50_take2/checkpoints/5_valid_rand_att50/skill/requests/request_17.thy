lemma floor_inequality:
  fixes r :: real
  assumes "n = floor r"
  shows "n <= r < n + 1"