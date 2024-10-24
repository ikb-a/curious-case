lemma nested_sqrt_convergence:
  fixes x :: real
  assumes "filterlim (\<lambda>n. sqrt (x + u n)) at_top (nhds 9)"
  shows "9 = sqrt (x + 9)"