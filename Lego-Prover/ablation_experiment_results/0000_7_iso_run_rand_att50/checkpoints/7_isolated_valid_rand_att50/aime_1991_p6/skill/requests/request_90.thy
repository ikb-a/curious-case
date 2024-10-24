lemma floor_sum_property:
  fixes r :: real
  assumes "n = floor r"
  shows "floor (r + k / 100) = (if k < 100 * (1 - (r - n)) then n else n + 1)"