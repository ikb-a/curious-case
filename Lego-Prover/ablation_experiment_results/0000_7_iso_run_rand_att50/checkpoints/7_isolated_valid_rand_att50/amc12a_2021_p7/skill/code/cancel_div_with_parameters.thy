theorem cancel_div_with_parameters:
  fixes x a b c d :: real
  assumes "x > 0" "a + b / x = c" "d = c"
  shows "a * x + b = d * x"
  using assms(3) cancel_div_generalized[of x a b c] by (metis assms(1) assms(2))