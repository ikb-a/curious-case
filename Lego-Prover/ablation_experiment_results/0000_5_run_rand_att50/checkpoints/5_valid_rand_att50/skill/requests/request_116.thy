lemma floor_sum:
  fixes r :: real
  assumes "a \<le> r + x < b" 
  shows "floor (r + x) = n ? a \<le> r + x < n + 1"