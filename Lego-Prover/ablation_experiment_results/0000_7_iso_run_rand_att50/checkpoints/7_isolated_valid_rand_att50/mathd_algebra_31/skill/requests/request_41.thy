lemma nested_radical_convergence:
  fixes x :: real
  assumes "filterlim u at_top (nhds 9)"
  shows "u 0 = sqrt (x + u 0) \<Longrightarrow> x = 72"