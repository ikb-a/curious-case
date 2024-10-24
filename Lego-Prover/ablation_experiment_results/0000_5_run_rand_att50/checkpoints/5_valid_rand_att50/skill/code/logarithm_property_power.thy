lemma logarithm_property_power:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "log a (a^n) = n"
proof -
  have "log a (a^n) = n * log a a"
    by (simp add: assms(1) assms(2) log_nat_power)
  then show ?thesis 
    using assms(1) assms(2) by simp
qed