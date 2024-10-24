lemma average_value_extended:
  fixes total :: real and count :: nat and dimensions :: nat
  assumes "count > 0" and "dimensions > 0"
  shows "total / real count = (total / (real_of_nat count))"
  using assms by simp