lemma floor_bounds:
  fixes r :: real
  assumes "8 - 0.57 <= r" "r < 8.01 - 0.57"
  shows "743 <= floor (100 * r) < 744"