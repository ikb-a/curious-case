lemma logarithm_identity:
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "log a b = c"
  shows "b = a ^ c"
proof -
  have "log a b = c" by (simp add: assms)
  then show ?thesis using assms by (metis powr_log_cancel powr_realpow)
qed