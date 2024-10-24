lemma average_value_with_nonneg_and_positive:
  fixes total :: real and count :: nat
  assumes "count > 0" "total > 0"
  shows "total / real count > 0"
proof -
  have "total / real count = (total / (real_of_nat count))" using assms by simp
  thus ?thesis using assms by auto
qed