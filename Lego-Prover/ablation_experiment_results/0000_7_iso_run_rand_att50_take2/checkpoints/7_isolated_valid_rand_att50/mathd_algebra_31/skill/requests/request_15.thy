lemma nested_radical_limit:
  fixes x :: real
  assumes "\<forall> n. u (n + 1) = sqrt (x + u n)"
    and "filterlim u at_top (nhds 9)"
  shows "x = 72"