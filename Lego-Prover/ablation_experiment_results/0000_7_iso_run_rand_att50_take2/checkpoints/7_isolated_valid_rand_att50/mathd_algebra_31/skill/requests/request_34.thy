lemma sqrt_recursive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt (x + sqrt (x + sqrt (x + ...))) = sqrt (x + 9)"