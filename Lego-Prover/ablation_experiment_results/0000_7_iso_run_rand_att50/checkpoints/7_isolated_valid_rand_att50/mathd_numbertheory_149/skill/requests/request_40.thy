lemma find_N_values:
  fixes m :: nat
  assumes "N < 50"
  shows "24 * m + 21 < 50 \<longleftrightarrow> m < 1"