lemma log_base_to_power_equals_exponent:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "log a (a^n) = n"
proof -
  have log_a_a: "log a a = 1"
    using assms by (simp add: log_def)
  have log_power_identity: "log a (a^n) = n * log a a"
    by (simp add: log_nat_power[of a a n] assms)
  have "log a (a^n) = n * log a a"
    by (simp add: log_power_identity)
  then show ?thesis using log_a_a by simp
qed