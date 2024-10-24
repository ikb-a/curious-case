lemma recursive_definition:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)" and "filterlim u at_top (nhds 9)"
  shows "u n = 9" for sufficiently large n