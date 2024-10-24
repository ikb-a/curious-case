lemma valid_n_values:
  fixes n :: nat
  assumes "73 * n + x = 546"
  shows "x \<ge> 0 \<Longrightarrow> n \<le> 7"