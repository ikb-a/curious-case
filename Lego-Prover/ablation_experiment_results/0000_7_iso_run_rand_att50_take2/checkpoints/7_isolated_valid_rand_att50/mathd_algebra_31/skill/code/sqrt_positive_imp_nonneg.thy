lemma sqrt_positive_imp_nonneg:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
  using assms by (simp add: sqrt_nonneg)