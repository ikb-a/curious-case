lemma log_exp_general:
  fixes a b :: real
  fixes n :: nat
  assumes "a > 0" "a \<noteq> 1" "b > 0" "b \<noteq> 1" "n > 0"
  shows "log a (b^n) = n * log a b"
proof -
  have "log a (b^n) = n * log a b" using log_nat_power[of b a n] assms by auto
  then show ?thesis by simp
qed