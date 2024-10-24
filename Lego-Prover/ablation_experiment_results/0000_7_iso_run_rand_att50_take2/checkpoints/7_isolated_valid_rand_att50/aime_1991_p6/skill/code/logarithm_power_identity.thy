lemma logarithm_power_identity:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "log a (a^n) = n"
proof -
  have "log a (a^n) = n * log a a" using log_nat_power[of a a n] by (simp add: assms(1))
  also have "log a a = 1" using assms(1) assms(2) by (simp)
  then have "log a (a^n) = n * 1" by (metis assms(1) assms(2) log_pow_cancel mult.right_neutral)
  finally show ?thesis by (metis \<open>log a (a ^ n) = real (n * 1)\<close> mult.commute mult_1)
qed