lemma add_and_cancel_div_for_inequalities:
  fixes x a b c d e :: real
  assumes "x > 0" "a + b / x < c" "d = a" "e = b"
  shows "d * x + e < c * x"
  using cancel_div_for_inequalities[of x a b c d e] assms by auto