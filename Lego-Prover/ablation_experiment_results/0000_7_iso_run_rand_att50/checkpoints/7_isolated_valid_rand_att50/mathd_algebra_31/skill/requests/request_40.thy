lemma limit_sqrt_sequence:
  fixes x :: real
  assumes "\<forall> n. u (n + 1) = sqrt (x + u n)"
  assumes "filterlim u at_top (nhds 9)"
  shows "u 0 = 9"