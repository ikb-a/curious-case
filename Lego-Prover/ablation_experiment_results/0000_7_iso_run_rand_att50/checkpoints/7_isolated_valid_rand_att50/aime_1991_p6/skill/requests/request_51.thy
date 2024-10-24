lemma sum_floor_inequality:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "floor (r) + floor (r + 1) + ... + floor (r + n) = n * floor (r) + m"
  where "m" is the number of terms that contribute an additional 1 to the sum.