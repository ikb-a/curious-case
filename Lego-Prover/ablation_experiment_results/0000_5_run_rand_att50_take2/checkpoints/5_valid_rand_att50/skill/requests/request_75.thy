lemma sqrt_equation:
  fixes x :: real
  assumes "sqrt (x + 9) = 9"
  shows "x = 72"
  using assms by (simp add: power2_eq_square)