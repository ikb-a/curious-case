lemma sqrt_convergence:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds (sqrt (x + 9)))"