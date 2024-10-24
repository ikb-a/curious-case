lemma floor_sum:
  fixes r :: real
  assumes "a < b"
  shows "floor (r + a) + floor (r + b) = floor (2 * r) + floor (a + b)"