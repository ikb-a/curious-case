lemma cancel_div:
  fixes x a b c:: real
  assumes "x > 0" "a + b / x = c"
  shows "a * x + b = c * x"