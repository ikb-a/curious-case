lemma limit_of_sqrt_sequence:
  fixes x :: real
  assumes "filterlim u at_top (nhds 9)"
  shows "u n = sqrt (x + u (n - 1))"