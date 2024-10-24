lemma sqrt_positive:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
  by (simp add: assms)