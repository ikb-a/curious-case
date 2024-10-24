lemma floor_sum_bound:
  fixes r :: real and k :: nat
  assumes "a \<le> r < a + 1" 
  shows "floor (r + k / 100) = a \<or> floor (r + k / 100) = a + 1"