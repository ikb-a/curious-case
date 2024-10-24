lemma cancel_div_with_params:
  fixes x a b c p q :: real
  assumes "x > 0" "a + b / x = c" "p = a" "q = b"
  shows "p * x + q = c * x"
  using cancel_div_general[of x a b c] assms(1,2) by (metis assms(3) assms(4))