lemma logarithm_base_identity_general_n:
  fixes a b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "b \<noteq> 1" "n > 0"
  shows "log a b = log a (b^n) / n"
proof -
  have "log a b = log a (b^n) / n"
  proof -
    have "log a (b^n) = n * log a b" by (metis assms(3) log_nat_power)
    thus ?thesis using assms by (simp add: divide_simps)
  qed
  thus ?thesis by auto
qed