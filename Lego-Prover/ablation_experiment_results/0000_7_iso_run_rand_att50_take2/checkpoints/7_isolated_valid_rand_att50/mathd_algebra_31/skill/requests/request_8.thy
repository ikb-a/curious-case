lemma limit_expression:
  fixes x :: real
  assumes "filterlim u at_top (nhds 9)"
  shows "9 = sqrt(x + 9)"