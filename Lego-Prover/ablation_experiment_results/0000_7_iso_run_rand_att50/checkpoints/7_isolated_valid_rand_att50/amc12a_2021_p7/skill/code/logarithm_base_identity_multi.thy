lemma logarithm_base_identity_multi:
  fixes a :: real and b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "b \<noteq> 1" "c > 0" "c \<noteq> 1"
  shows "log a (b * c) = log a b + log a c"
proof -
  have "log a (b * c) = log a b + log a c"
    using assms by (metis log_mult)
  then show ?thesis by auto
qed