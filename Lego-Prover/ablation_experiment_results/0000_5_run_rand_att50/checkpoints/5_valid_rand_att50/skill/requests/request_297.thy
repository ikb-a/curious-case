lemma bounds_on_r:
  fixes r :: real
  assumes "8 \<le> r + 0.57" "r + 0.57 < 8.01"
  shows "7.43 \<le> r \<and> r < 7.44"