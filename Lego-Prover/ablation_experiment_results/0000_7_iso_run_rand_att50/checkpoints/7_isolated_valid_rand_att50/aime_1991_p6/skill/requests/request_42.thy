lemma floor_integer_relation:
  fixes r :: real
  assumes "n = floor r"
  shows "n <= r < n + 1"