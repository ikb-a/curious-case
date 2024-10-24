lemma average_value_difference:
  fixes total1 total2 :: real and count :: nat
  assumes "count > 0"
  shows "(total1 - total2) / real count = (total1 / (real_of_nat count)) - (total2 / (real_of_nat count))"
proof -
  have "total1 - total2 = total1 - total2" by simp
  then show ?thesis 
    using assms by (simp add: field_simps)
qed