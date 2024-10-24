lemma floor_sum_properties:
  fixes r :: real
  assumes "a < b"
  shows "floor a + floor b = floor (a + b) \<or> floor a + floor b = floor (a + b) - 1"