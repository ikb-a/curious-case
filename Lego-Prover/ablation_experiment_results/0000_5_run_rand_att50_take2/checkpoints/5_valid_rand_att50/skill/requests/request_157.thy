lemma floor_function_properties:
  fixes r :: real
  shows "floor (r + k / 100) = floor r + floor (k / 100) \<or> floor (r + k / 100) = floor r + floor (k / 100) + 1"