lemma sqrt_equation:
  fixes x :: real
  assumes "x + 9 = 81"
  shows "sqrt (x + 9) = 9"
  using assms by (simp add: sqrt_eq_iff_square)