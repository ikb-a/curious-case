lemma sqrt_nonneg_diff:
  fixes a b :: real
  assumes "a \<ge> b" "b \<ge> 0"
  shows "sqrt (a - b) \<ge> 0"
  using assms by auto