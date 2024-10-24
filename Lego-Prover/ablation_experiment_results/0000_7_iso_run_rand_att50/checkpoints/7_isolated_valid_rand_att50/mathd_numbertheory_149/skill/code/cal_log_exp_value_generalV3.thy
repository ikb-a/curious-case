lemma cal_log_exp_value_general:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0" "k > 0"
  shows "log (a^k) (a^n) = n / k"
proof -
  have c0: "log (a^k) (a^n) = log a (a^n) / log a (a^k)"
    by (metis assms(1) assms(2) log_base_change)
  have c1: "log a (a^n) = n" 
    using log_nat_power[of a a n] assms(1) assms(2) by simp
  have c2: "log a (a^k) = k"
    using log_nat_power[of a a k] assms(1) assms(2) by simp
  thus "log (a^k) (a^n) = n / k"
    using c0 c1 c2 by simp
qed