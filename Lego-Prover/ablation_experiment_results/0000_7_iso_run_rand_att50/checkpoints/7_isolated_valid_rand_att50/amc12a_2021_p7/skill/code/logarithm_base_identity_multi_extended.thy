lemma logarithm_base_identity_multi_extended:
  fixes a b c d :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "b \<noteq> 1" "c > 0" "c \<noteq> 1" "d > 0" "d \<noteq> 1"
  shows "log a (b * c * d) = log a b + log a c + log a d"
proof -
  have "log a (b * c * d) = log a ((b * c) * d)"
    by simp
  also have "... = log a (b * c) + log a d"
    using assms by (metis log_mult mult.assoc mult_pos_pos)
  also have "... = log a b + log a c + log a d"
    using assms by (metis log_mult)
  finally show ?thesis by (metis \<open>log a (b * c * d) = log a (b * c) + log a d\<close> ab_semigroup_mult_class.mult_ac(1) assms(1) assms(2) assms(3) assms(5) log_mult)
qed