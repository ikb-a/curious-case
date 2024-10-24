lemma inequality_floor:
  fixes r :: real
  assumes "n = floor r"
  shows "n \leq r < n + 1"