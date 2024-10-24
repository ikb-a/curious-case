lemma logarithm_base_identity_general:
  fixes a b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "b \<noteq> 1"
  shows "log a b = log b b / log b a"
proof -
  have "log a b = log a (b^1)" by auto
  also have "... = 1 / log b a" using assms(2) by (smt (verit) assms(3) assms(4) log_base_change log_pow_cancel of_nat_1)
  finally show ?thesis using assms(4) by (metis assms(3) log_base_change)
qed