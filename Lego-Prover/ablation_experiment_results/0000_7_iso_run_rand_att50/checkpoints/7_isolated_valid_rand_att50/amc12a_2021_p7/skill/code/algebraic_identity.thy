theorem algebraic_identity:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "a * x + b = c * x"
  using cancel_div_generalized[of x a b c] assms by simp