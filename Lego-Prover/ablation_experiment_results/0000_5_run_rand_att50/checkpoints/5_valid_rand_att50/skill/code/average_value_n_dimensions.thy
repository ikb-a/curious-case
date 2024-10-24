lemma average_value_n_dimensions:
  fixes total :: "real list" and count :: nat
  assumes "count > 0" and "length total = count"
  shows "complex_sum total / real count = (complex_sum total) / (real_of_nat count)"
  using assms
proof -
  have "complex_sum total / real count = (complex_sum (map (\<lambda>x. x) total)) / (real_of_nat count)"
    by auto
  also have "... = complex_sum total / (real_of_nat count)"
    by (simp)
  finally show ?thesis .
qed