lemma scale_bounds:
  assumes "7.43 \<le> r \<and> r < 8.43"
  shows "743 \<le> floor (100 * r) < 843"