lemma floor_sum_inequality:
  fixes r :: real
  assumes "a ≤ r < b"
  shows "floor (100 * a) ≤ floor (100 * r) < floor (100 * b)"