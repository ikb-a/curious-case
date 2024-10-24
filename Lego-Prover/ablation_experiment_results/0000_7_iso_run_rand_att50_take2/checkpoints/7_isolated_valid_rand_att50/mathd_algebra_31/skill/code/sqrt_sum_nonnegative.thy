lemma sqrt_sum_nonnegative:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a + b) \<ge> 0"
  by (metis add_nonneg_nonneg assms(1) assms(2) sqrt_nonnegative)