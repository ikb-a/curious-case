lemma average_value_n_dimensional:
  fixes total :: real and count :: nat and dimensions :: nat
  assumes "count > 0" and "dimensions > 0"
  shows "total / real (count * dimensions) = (total / (real_of_nat (count * dimensions)))"
  using assms by (simp add: algebra_simps)