lemma log_base_to_power_equals_exponent:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "log a (a^n) = n"
proof -
  have log_a_a: "log a a = 1"
    using assms by auto
  have "log a (a^n) = n * log a a"
    using log_nat_power[of a a n] by (simp add: assms(1))
  then have "log a (a^n) = n * 1"
    using log_a_a by simp
  thus ?thesis 
    by simp
qed