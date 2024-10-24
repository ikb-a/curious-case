lemma average_value_nonneg:
  fixes total :: real and count :: nat
  assumes "count > 0" "total \<ge> 0"
  shows "total / real count \<ge> 0"
proof -
  have "total / real count = (total / (real_of_nat count))" using assms(1) by simp
  also have "... \<ge> 0" using assms(2) by auto
  finally show ?thesis by (metis \<open>0 \<le> total / real count\<close>)
qed