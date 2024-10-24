lemma count_terms:
  fixes n :: nat
  assumes "x = 73n - 473"
  shows "x \<ge> 0 \<Longrightarrow> n \<ge> 7"