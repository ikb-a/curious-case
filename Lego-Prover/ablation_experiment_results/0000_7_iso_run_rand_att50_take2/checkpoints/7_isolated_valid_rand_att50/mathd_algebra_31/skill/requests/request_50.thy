lemma sqrt_recursive_limit:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds L) \<Longrightarrow> L = sqrt (x + L)"