lemma average_value_with_variance:
  fixes total :: real and count :: nat and squared_total :: real
  assumes "count > 0" "squared_total = (\<Sum>i=0..count-1. (total / real count)^2)"
  shows "squared_total / real count = (total^2 / (real_of_nat count)^2)"
proof -
  have "squared_total = (total / real count) ^ 2 * real_of_nat count" using assms by (simp add: power2_eq_square)
  then show ?thesis by (simp add: field_simps)
qed