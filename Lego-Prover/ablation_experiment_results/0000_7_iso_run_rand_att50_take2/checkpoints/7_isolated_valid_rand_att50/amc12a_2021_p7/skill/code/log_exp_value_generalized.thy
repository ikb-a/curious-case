lemma log_exp_value_generalized:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0" "m > 0"
  shows "log a (a^(n * m)) = n * m"
proof -
  have c0: "log a a = 1" by (simp add: assms(1) assms(2))
  have "log a (a^(n * m)) = (n * m) * log a a"
    using log_nat_power[of a a "n * m"] by (simp add: assms(1))
  then have c1: "log a (a^(n * m)) = n * m"
    using c0 by simp
  then show ?thesis by (simp add: c1)
qed