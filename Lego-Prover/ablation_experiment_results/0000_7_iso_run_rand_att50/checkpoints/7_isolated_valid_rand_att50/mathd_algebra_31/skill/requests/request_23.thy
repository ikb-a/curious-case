lemma sqrt_recursive:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)"
  and "filterlim u at_top (nhds 9)"
  shows "x = 72"