lemma limit_nested_radical:
  fixes x :: real
  assumes "filterlim u at_top (nhds 9)"
    and "u 0 = 9" (* Initial value can be set for convergence *)
  shows "9 = sqrt (x + 9)"