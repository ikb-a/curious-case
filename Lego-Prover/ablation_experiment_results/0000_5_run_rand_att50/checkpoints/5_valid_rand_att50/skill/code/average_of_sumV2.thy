lemma average_of_sum:
  fixes a b :: real and count :: nat
  assumes "count > 0"
  shows "(a + b) / real count = (a / real count) + (b / real count)"
proof -
  have "real count > 0" using assms by simp
  thus ?thesis by (auto simp: field_simps)
qed