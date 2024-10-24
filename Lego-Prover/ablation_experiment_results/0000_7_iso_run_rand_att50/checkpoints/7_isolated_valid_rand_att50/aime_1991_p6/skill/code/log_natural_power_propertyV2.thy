lemma log_natural_power_property:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0" "m > 0"
  shows "ln (a^n) + ln (a^m) = ln (a^(n + m))"
proof -
  have "ln (a^n) = n * ln a" by (metis assms(1) ln_realpow)
  have "ln (a^m) = m * ln a" by (metis assms(1) ln_realpow)
  then have "ln (a^n) + ln (a^m) = n * ln a + m * ln a" by (metis \<open>ln (a ^ n) = real n * ln a\<close>)
  also have "... = (n + m) * ln a" by (simp add: algebra_simps)
  finally show "ln (a^n) + ln (a^m) = ln (a^(n + m))" 
    using assms(1) by (metis ln_realpow)
qed