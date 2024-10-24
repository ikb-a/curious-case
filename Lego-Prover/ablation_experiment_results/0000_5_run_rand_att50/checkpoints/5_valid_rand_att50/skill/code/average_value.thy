lemma average_value:
  fixes total :: real and count :: nat
  assumes "count > 0"
  shows "total / real count = (total / (real_of_nat count))"
  using assms by simp