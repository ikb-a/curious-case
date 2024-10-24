lemma cal_log_exp_value_general:
  fixes a b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0"
  shows "log a (b^n) = n * log a b"
proof -
  have "log a (b^n) = n * log a b" 
    using log_nat_power[of b a n] by (metis assms(3))
  then show ?thesis by simp
qed