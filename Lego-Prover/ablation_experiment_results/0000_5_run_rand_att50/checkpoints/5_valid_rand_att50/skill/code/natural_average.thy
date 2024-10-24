lemma natural_average:
  fixes total :: real and count :: nat
  assumes "count > 0"
  shows "total / real count = total / (real_of_nat count)"
proof -
  from assms have "real count = real_of_nat count" by simp
  then show ?thesis by simp
qed