lemma log_power_identity:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "log a (a^n) = n"
proof -
  have "log a (a^n) = n * log a a"
    using assms by auto
  also have "... = n * 1"
    using assms by auto
  finally show ?thesis by simp
qed