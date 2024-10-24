lemma average_value_n_dims:
  fixes totals :: "real list" and count :: nat
  assumes "count > 0" and "length totals = count"
  shows "sum_list totals / real count = (sum_list totals / (real_of_nat count))"
proof -
  have "sum_list totals / real count = sum_list totals / (real_of_nat count)"
    by (simp add: assms)
  then show ?thesis by simp
qed