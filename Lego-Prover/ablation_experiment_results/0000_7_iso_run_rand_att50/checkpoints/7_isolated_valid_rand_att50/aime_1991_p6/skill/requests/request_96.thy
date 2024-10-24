lemma floor_sum_property:
  fixes r :: real and k :: nat
  assumes "a \<le> r < b" 
  shows "floor (r + k / 100) = floor r + floor (k / 100) \<or> floor (r + k / 100) = floor r + floor (k / 100) + 1"