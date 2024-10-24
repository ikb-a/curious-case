lemma cal_log_exp_value_multi:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0" "m > 0"
  shows "log a (a^(n+m)) = n + m"
proof -
  have "log a (a^(n+m)) = (n + m) * log a a"
    using log_nat_power[of a a "n+m"] by (metis assms(1) assms(2) add_nonneg_nonneg)
  then show ?thesis 
    using assms(1) assms(2) by auto
qed