lemma average_value_of_non_negative:
  fixes total :: real and count :: nat
  assumes "count > 0" "total \<ge> 0"
  shows "total / real count \<ge> 0"
proof -
  have "total / real count = (total / (real_of_nat count))" using assms by (simp)
  thus "total / real count \<ge> 0" using assms(2) by (simp)
qed