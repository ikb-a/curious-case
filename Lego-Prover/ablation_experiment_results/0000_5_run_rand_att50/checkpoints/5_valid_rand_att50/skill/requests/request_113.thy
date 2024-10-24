lemma sqrt_limit:
  fixes x :: real
  assumes "filterlim u at_top (nhds 9)"
    and "u (0) = 9"
  shows "sqrt (x + 9) = 9"