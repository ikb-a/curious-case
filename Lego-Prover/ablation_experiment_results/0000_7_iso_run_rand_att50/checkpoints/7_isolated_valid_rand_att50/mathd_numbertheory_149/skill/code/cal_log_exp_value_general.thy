lemma cal_log_exp_value_general:
  fixes a b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "b \<noteq> 1" "n > 0"
  shows "log a (b^n) = n * log a b"
proof -
  have "log a (b^n) = n * log a b"
    using log_nat_power[of b a n] by (simp add: assms(1) assms(2) assms(3) assms(4))
  thus ?thesis by simp
qed