lemma floor_sum_inequality:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "floor (r + k / 100) = floor r + floor (k / 100) \<or> floor (r + k / 100) = floor r + floor (k / 100) + 1"