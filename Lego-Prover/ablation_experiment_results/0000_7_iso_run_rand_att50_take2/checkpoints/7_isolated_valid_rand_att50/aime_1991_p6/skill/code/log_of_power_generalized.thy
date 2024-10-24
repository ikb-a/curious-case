lemma log_of_power_generalized:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "log a (a^n) = n"
proof -
  have "log a (a^n) = n * log a a"
    using log_nat_power[of a a n] by (simp add: assms(1))
  then show ?thesis 
    by (simp add: assms(1) assms(2) log_def)
qed