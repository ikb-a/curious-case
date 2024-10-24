lemma floor_integer:
  fixes r :: real
  assumes "n = floor r"
  shows "n <= r < n + 1"