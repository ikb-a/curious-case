lemma floor_sum_bounds:
  fixes r :: real
  assumes "a \<le> r \<and> r < b"
  shows "floor (r) = floor (a) \<or> floor (r) = floor (b - 1)"