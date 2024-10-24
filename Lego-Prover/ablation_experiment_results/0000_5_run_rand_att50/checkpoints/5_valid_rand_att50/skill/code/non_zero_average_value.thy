lemma non_zero_average_value:
  fixes total :: real and count :: nat
  assumes "count > 0"
  shows "total / real count = (total / (real_of_nat count))"
proof -
  have "real count = real_of_nat count" using assms by (simp)
  thus "total / real count = (total / (real_of_nat count))" by simp
qed