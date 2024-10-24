lemma logarithm_identity_general:
  fixes a b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "c > 0"
  shows "log a (b ^ c) = c * log a b"
proof -
  have "log a (b ^ c) = c * log a b" using assms by (simp add: log_nat_power)
  thus ?thesis by simp
qed