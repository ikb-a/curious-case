lemma log_power_identity:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "k > 0" "n > 0"
  shows "log a (a^(k*n)) = k*n"
proof -
  have c0: "log a a = 1" by (simp add: assms(1) assms(2))
  have "log a (a^(k*n)) = (k*n) * (log a a)"
    using log_nat_power[of a a "k*n"] by (simp add: assms(1))
  then have c1: "log a (a^(k*n)) = k*n"
    using c0 by simp
  then show ?thesis 
    by (simp add: c1)
qed