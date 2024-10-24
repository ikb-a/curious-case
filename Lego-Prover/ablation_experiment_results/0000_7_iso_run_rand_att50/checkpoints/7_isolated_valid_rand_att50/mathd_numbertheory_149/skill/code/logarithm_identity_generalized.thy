lemma logarithm_identity_generalized:
  fixes a b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "c > 0"
  shows "log a (b ^ c) = c * log a b"
proof -
  have "log a (b ^ c) = c * log a b" by (metis log_nat_power assms(1) assms(2) assms(3))
  thus ?thesis by simp
qed