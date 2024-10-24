lemma logarithm_of_power:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "log a (a^n) = n"
proof -
  have "log a (a^n) = n * log a a"
    using log_nat_power[of a a n] assms(1) by simp
  then show ?thesis 
    by (metis assms(1) assms(2) log_pow_cancel)
qed