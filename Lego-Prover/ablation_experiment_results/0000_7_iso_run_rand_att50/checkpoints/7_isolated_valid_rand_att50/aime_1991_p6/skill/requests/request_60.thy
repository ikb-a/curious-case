lemma floor_100r:
  fixes r :: real
  assumes "7.43 \<le> r < 8.09"
  shows "743 \<le> floor (100 * r) < 809"