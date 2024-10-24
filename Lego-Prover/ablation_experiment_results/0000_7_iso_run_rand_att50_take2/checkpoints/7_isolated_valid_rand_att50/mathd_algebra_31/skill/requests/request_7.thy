lemma converging_sequence:
  fixes x :: real
  assumes "filterlim u at_top (nhds 9)"
  shows "u 0 = 9"