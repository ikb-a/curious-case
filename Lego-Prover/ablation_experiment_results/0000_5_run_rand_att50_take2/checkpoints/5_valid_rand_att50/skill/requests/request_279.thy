lemma floor_function_sum:
  fixes r :: real
  assumes "a < b"
  shows "floor (r + a) + floor (r + b) = floor (r + a) + floor (r + b) + 1 \<or> floor (r + a) + floor (r + b) = floor (r + a + b)"