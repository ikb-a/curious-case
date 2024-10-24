lemma threshold_r:
  fixes r :: real
  assumes "floor (r + 57 / 100) = 8"
  shows "7.43 \<le> r \<and> r < 8.43"