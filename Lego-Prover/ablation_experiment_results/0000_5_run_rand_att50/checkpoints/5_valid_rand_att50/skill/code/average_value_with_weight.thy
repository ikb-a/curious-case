lemma average_value_with_weight:
  fixes total :: real and count :: nat and weight :: real
  assumes "count > 0" and "weight > 0"
  shows "total / (weight * real count) = (total / (weight * real_of_nat count))"
  using assms by simp