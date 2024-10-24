lemma log_power_identity:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "log a (a^n) = n"
proof -
  have "log a a = 1" using assms by simp
  then have "log a (a^n) = n * log a a" using log_nat_power[of a a n] by (simp add: assms)
  then show ?thesis using `log a a = 1` by simp
qed