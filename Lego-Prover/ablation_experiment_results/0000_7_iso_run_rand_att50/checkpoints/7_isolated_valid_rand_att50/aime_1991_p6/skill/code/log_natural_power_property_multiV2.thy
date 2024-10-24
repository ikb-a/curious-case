lemma log_natural_power_property_multi:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0" "m > 0"
  shows "ln (a^(n + m)) = ln (a^n) + ln (a^m)"
proof -
  have "ln (a^(n + m)) = (n + m) * ln a" 
    by (metis assms(1) ln_realpow)
  also have "... = (n * ln a) + (m * ln a)" by (simp add: algebra_simps)
  also have "... = ln (a^n) + ln (a^m)" 
    by (metis assms(1) ln_realpow)
  finally show ?thesis by simp
qed