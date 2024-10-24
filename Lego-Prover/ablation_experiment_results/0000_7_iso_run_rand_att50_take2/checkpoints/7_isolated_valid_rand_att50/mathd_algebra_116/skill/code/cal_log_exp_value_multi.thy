lemma cal_log_exp_value_multi:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0" "m > 0"
  shows "log a ((a^n) * (a^m)) = n + m"
proof -
  have "log a ((a^n) * (a^m)) = log a (a^(n + m))"
    by (simp add: power_add)
  then have "log a ((a^n) * (a^m)) = n + m"
    using cal_log_exp_value[of a "n + m"] assms by auto
  thus ?thesis by simp
qed