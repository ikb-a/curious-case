lemma average_contribution:
  fixes total_sum :: real and total_count :: nat
  assumes "total_count > 0"
  shows "total_sum / real total_count = (total_sum / (real_of_nat total_count))"
  using assms by auto