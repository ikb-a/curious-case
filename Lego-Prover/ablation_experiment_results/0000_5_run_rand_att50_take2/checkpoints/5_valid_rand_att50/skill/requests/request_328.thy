lemma bounds_on_r:
  fixes r :: real
  assumes "floor (100 * r) = 743"
  shows "7.43 \<le> r < 7.44"