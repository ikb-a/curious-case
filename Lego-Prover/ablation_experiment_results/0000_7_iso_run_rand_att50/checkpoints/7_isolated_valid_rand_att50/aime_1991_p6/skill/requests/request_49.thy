lemma sum_floor_bounds:
  fixes r :: real and k :: nat
  assumes "k > 0"
  shows "(\<Sum> i = 0..k. floor (r + i)) = k * floor r + (\<Sum> i = 0..k. floor (i))"