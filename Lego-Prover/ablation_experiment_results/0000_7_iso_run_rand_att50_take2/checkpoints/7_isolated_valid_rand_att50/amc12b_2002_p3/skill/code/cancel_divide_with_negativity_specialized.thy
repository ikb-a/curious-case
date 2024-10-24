lemma cancel_divide_with_negativity_specialized:
  fixes x :: real
  assumes "x > 0" "a + b / x = c" "b < 0"
  shows "a * x + b = c * x"
  using cancel_divide_with_negativity_generalized[of x a b c] assms by simp