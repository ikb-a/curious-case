lemma average_value_sum:
  fixes total :: real and count :: nat
  assumes "count > 0" "total = a + b"
  shows "total / real count = (a / real count) + (b / real count)"
  using assms by (simp add: field_simps)