lemma sum_floor_properties:
  fixes r :: real
  assumes "a \<le> r < a + 1" and "b \<le> r < b + 1"
  shows "floor (r + a + b) = floor r + floor (a + b)"