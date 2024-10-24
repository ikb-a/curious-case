lemma cal_log_exp_value_general:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "log a (a^n) = n"
proof -
  have "log a (a^n) = n * log a a"
    using log_nat_power[of a a n] by (simp add: assms(1))
  also have "... = n * 1" 
    by (metis assms(1) assms(2) log_eq_one mult.comm_neutral nat_mult_1_right)
  finally show ?thesis 
    by simp
qed