lemma log_power_property:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "log a (a^n) = n"
proof -
  have "log a (a^n) = n * log a a" 
    by (simp add: log_nat_power[of a a n] assms(1))
  also have "log a a = 1" 
    using assms(1) assms(2) by simp
  ultimately show ?thesis by simp
qed