lemma nested_sqrt_convergence:
  fixes x :: real
  assumes "filterlim u at_top (nhds 9)"
  shows "u (n + 1) = sqrt (x + u n)"