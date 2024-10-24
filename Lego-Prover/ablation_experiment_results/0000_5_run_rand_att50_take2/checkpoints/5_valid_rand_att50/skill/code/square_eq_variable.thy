lemma square_eq_variable:
  fixes x y :: real
  assumes "x = y"
  shows "x^2 = y^2"
  using assms square_eq_generalized by simp