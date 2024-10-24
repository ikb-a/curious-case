lemma floor_sum_integers:
  fixes r :: real
  assumes "n1 \<le> r < n2" and "m1 \<le> r < m2"
  shows "floor (r + r) = floor r + floor r"