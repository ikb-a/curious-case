lemma average_value_extended:
  fixes total :: real and count :: nat
  assumes "count > 0"
  shows "total / real count = (total / (real_of_nat count))"
  and "count = 0 \<Longrightarrow> total = 0 \<Longrightarrow> total / real count = 0"
  using assms by auto