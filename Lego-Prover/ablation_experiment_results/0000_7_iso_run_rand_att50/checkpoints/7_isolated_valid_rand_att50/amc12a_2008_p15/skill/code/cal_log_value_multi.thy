lemma cal_log_value_multi:
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "log a b = c"
  shows "b = a ^ c"
  and "\<forall>k::nat. b^k = a^(c*k)" 
proof -
  from assms(1) have "b > 0" by (metis assms(3))
  then have "b^k > 0" for k::nat by simp
  moreover have "log a (b^k) = k * log a b" by (metis assms(3) log_nat_power)
  ultimately show "b = a ^ c" by (metis assms(1) assms(2) assms(3) assms(4) powr_log_cancel powr_realpow)
  show "\<forall>k::nat. b^k = a^(c*k)" 
    by (smt (verit) \<open>b = a ^ c\<close> power_mult)
qed