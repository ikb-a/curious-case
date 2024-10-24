lemma average_value_ndim:
  fixes total :: "real list" and count :: nat
  assumes "count > 0" "length total = count"
  shows "complex_sum total / real count = (complex_sum total / (real_of_nat count))"
  using assms by auto