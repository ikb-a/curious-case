lemma logarithm_identity:
  assumes "a > 0" and "a \<noteq> 1" and "b > 0"
  shows "log a (a ^ c) = c"
proof -
  have "log a (a ^ c) = c * log a a" by (metis assms(1) log_nat_power)
  also have "... = c * 1" by (metis assms(1) assms(2) log_eq_one mult.comm_neutral mult.right_neutral)
  finally show ?thesis by simp
qed