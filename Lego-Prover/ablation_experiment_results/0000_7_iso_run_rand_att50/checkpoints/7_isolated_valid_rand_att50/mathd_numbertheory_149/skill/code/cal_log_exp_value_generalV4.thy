lemma cal_log_exp_value_general:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0" "b > 1"
  shows "log b (a^n) = n * (log b a)"
proof -
  have "log b (a^n) = n * (log b a)"
    using log_nat_power[of a b n] by (simp add: assms(1) assms(2) assms(4))
  then show ?thesis 
    by auto
qed