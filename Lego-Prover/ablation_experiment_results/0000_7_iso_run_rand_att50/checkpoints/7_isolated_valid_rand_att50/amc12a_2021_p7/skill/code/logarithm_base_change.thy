lemma logarithm_base_change:
  fixes a b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "b \<noteq> 1"
  shows "log b a = log a a / log a b"
proof -
  have "log b a = log a a / log a b" using assms by (metis log_base_change)
  then show ?thesis by simp
qed