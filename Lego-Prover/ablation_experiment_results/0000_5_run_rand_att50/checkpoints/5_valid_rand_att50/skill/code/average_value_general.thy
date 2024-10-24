lemma average_value_general:
  fixes total :: real and count :: nat
  assumes "count > 0"
  shows "total / real count = total / (real_of_nat count)"
proof -
  have "real_of_nat count > 0" using assms by (simp)
  then show ?thesis by (simp add: field_simps)
qed