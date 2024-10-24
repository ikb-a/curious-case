lemma average_value_multi:
  fixes total :: real and count :: nat
  assumes "count > 0"
  shows "total / real count = (total / (real_of_nat count)) \<and> 
         (\<forall>n. n > 0 \<longrightarrow> total / real (count * n) = (total / (real_of_nat (count * n))))"
  using assms 
  by auto