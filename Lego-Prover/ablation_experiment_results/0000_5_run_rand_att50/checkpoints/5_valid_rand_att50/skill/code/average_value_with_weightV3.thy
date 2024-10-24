lemma average_value_with_weight:
  fixes total :: real and count :: nat and weight :: real
  assumes "count > 0" "weight > 0"
  shows "total / (weight * real count) = (total / weight) / real count"
proof -
  have "total / (weight * real count) = (total / weight) * (1 / real count)"
    by (simp add: field_simps)
  thus ?thesis by (simp add: field_simps)
qed