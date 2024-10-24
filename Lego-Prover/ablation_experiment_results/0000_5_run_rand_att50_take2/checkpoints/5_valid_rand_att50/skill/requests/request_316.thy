lemma floor_sum:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "floor (r) + floor (r + 1) + ... + floor (r + n) = n * floor (r) + m"
  where "m" is the number of terms where \( r + k \) crosses an integer.