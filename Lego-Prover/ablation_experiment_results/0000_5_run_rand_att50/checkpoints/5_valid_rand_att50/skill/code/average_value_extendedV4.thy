lemma average_value_extended:
  fixes total :: real and count :: nat and dimension :: nat
  assumes "count > 0"
  shows "total / real count = (total / (real_of_nat count))"
proof -
  have "real count = real_of_nat count" by simp
  thus ?thesis using assms by simp
qed