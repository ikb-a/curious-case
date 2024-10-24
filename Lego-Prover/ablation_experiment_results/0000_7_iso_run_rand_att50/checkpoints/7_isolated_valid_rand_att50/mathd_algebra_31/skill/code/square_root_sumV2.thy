lemma square_root_sum:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt (a + b) \<le> sqrt a + sqrt b"
  using assms by (metis sqrt_add_le_add_sqrt)