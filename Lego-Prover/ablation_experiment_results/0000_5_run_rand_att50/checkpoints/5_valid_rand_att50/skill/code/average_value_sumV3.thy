lemma average_value_sum:
  fixes total :: real and count :: nat
  assumes "count > 0" "total = sum f {1..count}"
  shows "total / real count = (1 / real count) * sum f {1..count}"
proof -
  have "total / real count = (sum f {1..count}) / real count" using assms(2) by simp
  also have "... = (1 / real count) * sum f {1..count}" by (simp add: field_simps)
  finally show ?thesis .
qed