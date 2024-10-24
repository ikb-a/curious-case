lemma floor_sum_properties:
  fixes r :: real
  assumes "a ≤ r < b"
  shows "floor (r) ≤ r < floor (r) + 1"