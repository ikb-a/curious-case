lemma floor_bounds:
  fixes r :: real
  assumes "a = floor r" "b = floor (r + 0.57)"
  shows "a <= r < a + 1" "b <= r + 0.57 < b + 1"