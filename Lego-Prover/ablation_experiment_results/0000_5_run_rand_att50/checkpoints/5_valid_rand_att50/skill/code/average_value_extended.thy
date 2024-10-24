lemma average_value_extended:
  fixes total :: real and count :: nat
  assumes "count > 0"
  shows "total / real count = (total / (real_of_nat count))"
  and "total / real count > 0 \<longleftrightarrow> total > 0"
proof -
  have "total / real count = (total / (real_of_nat count))" using assms by simp
  moreover have "total / real count > 0 \<longleftrightarrow> total > 0"
    using assms by (auto simp: field_simps)
  ultimately show "total / real count = (total / (real_of_nat count))" 
    and "total / real count > 0 \<longleftrightarrow> total > 0" by auto
qed