lemma floor_function_sum:
  fixes r :: real
  assumes "a < r < b"
  shows "floor (r) = floor (a) \<or> floor (r) = floor (b)"