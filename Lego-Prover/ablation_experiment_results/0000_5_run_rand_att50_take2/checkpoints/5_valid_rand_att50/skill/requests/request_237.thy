lemma recursive_sqrt_limit:
  fixes x :: real
  assumes "u 0 = 0" and "\<forall> n. u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds (sqrt (x + 9)))"