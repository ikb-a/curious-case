lemma limit_to_equation:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)"
  shows "9 = sqrt (x + 9)"