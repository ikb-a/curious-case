lemma nested_sqrt_limit:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds 9) \<Longrightarrow> 9 = sqrt (x + 9)"