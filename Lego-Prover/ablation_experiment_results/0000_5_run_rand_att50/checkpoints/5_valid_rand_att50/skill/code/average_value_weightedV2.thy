lemma average_value_weighted:
  fixes total :: real and count :: nat and weight :: real
  assumes "count > 0" "weight > 0"
  shows "total / real count * weight = total * weight / (real_of_nat count)"
  using assms by (simp add: field_simps)