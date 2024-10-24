lemma average_of_sum:
  fixes total :: real and count :: nat
  assumes "count > 0"
  shows "total / (real_of_nat count) = (1 / real_of_nat count) * total"
proof -
  have "total / (real_of_nat count) = (1 / real_of_nat count) * total" by (simp add: field_simps)
  thus ?thesis .
qed