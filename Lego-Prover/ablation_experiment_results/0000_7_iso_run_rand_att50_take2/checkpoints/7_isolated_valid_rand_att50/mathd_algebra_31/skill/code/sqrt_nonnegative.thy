lemma sqrt_nonnegative:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0"
  by (metis assms real_sqrt_ge_zero)