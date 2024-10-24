lemma bounds_on_r:
  fixes r :: real
  assumes "floor (r + 57 / 100) = 8"
  shows "7.43 \<le> r < 7.44"