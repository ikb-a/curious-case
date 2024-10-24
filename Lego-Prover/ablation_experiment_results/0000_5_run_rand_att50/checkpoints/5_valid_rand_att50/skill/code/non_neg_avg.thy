lemma non_neg_avg:
  fixes total :: real and count :: nat
  assumes "total >= 0" and "count > 0"
  shows "total / real count >= 0"
proof -
  have "total / real count = total / (real_of_nat count)" using average_value_nat assms by simp
  then show ?thesis using assms(1) by auto
qed