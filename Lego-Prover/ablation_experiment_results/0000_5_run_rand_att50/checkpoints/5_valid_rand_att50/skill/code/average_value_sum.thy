lemma average_value_sum:
  fixes total :: real and count :: nat
  assumes "count > 0" and "total = sum f {0..count-1}"
  shows "total / real count = (sum f {0..count-1}) / (real_of_nat count)"
  using assms by simp