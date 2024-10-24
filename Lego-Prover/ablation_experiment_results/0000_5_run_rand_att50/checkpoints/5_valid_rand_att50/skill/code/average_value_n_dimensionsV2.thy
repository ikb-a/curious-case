lemma average_value_n_dimensions:
  fixes total :: real and count :: nat and dimensions :: nat
  assumes "count > 0" and "dimensions > 0"
  shows "total / (real count * real_of_nat dimensions) = (total / (real_of_nat count * real_of_nat dimensions))"
proof -
  have "total / (real count * real_of_nat dimensions) = total / (real_of_nat count * real_of_nat dimensions)" 
    by (simp add: mult.commute)
  thus ?thesis by simp
qed