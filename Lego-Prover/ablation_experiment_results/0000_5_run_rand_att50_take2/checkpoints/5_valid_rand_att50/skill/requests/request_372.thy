lemma floor_rational_bounds:
  fixes r :: real and k :: nat
  assumes "k / 100 < r + k / 100 < (k + 1) / 100"
  shows "floor (r + k / 100) = floor r"