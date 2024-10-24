lemma average_value_weighted:
  fixes total :: real and count :: nat and weight :: real
  assumes "count > 0" "weight > 0"
  shows "total / real count * weight = total * (weight / real_of_nat count)"
proof -
  have "total / real count * weight = (total * weight) / real count" 
    by (simp add: field_simps)
  also have "... = total * (weight / real count)" 
    by (simp add: field_simps)
  finally show ?thesis by simp
qed