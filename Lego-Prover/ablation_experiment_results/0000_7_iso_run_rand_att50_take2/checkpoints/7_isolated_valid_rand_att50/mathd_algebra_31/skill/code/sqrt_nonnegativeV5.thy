lemma sqrt_nonnegative:
  fixes a :: real
  assumes "0 \<le> a"
  shows "sqrt a * sqrt a = a"
  using assms by auto