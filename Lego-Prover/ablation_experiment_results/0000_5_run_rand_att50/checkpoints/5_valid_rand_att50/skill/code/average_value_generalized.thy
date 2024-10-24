lemma average_value_generalized:
  fixes total :: real and count :: nat and d :: nat
  assumes "count > 0" "d > 0"
  shows "total / real count = (total / (real_of_nat count))"
  and "total / real count = (total / (real_of_nat (count * d))) * d"
  using assms by auto