lemma bounds_on_r:
  fixes r :: real
  assumes "floor (100 * r) = 743"
  shows "743 / 100 <= r < 744 / 100"