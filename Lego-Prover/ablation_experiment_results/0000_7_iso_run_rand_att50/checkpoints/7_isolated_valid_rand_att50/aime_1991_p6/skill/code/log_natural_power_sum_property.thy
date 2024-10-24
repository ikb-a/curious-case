lemma log_natural_power_sum_property:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0" "m > 0" "k > 0"
  shows "ln (a^n) + ln (a^m) + ln (a^k) = ln (a^(n + m + k))"
proof -
  have "ln (a^n) = n * ln a" by (metis assms(1) ln_realpow)
  have "ln (a^m) = m * ln a" by (metis assms(1) ln_realpow)
  have "ln (a^k) = k * ln a" by (metis assms(1) ln_realpow)
  then have "ln (a^n) + ln (a^m) + ln (a^k) = n * ln a + m * ln a + k * ln a" by (metis \<open>ln (a ^ m) = real m * ln a\<close> \<open>ln (a ^ n) = real n * ln a\<close>)
  also have "... = (n + m + k) * ln a" by (simp add: algebra_simps)
  finally show "ln (a^n) + ln (a^m) + ln (a^k) = ln (a^(n + m + k))" 
    using assms(1) by (metis ln_realpow)
qed