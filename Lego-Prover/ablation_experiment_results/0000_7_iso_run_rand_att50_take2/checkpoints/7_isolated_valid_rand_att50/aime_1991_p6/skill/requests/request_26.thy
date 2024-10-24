lemma sum_floor_inequality:
  fixes r :: real
  assumes "a ≤ r < b"
  shows "floor (r + k) = floor r + floor k" for all integers k