lemma cal_log_exp_value_general:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0" "b > 0" "b \<noteq> 1"
  shows "log a (a^n) = n"
    and "log b (b^n) = n"
proof -
  have c0: "log a a = 1" using assms(1) assms(2) by simp
  have "log a (a^n) = n * (log a a)" using log_nat_power[of a a n] assms(1) by simp
  then have c1: "log a (a^n) = n" using c0 by simp
  have c2: "log b b = 1" using assms(4) assms(5) by simp
  have "log b (b^n) = n * (log b b)" using log_nat_power[of b b n] assms(4) by simp
  then have c3: "log b (b^n) = n" using c2 by simp
  show "log a (a^n) = n" and "log b (b^n) = n" 
    using c1 c3 by auto
qed