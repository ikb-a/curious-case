lemma find_N:
  fixes m :: nat
  assumes "N = 24m + 21"
  shows "N < 50 \<longrightarrow> m \<le> 1"