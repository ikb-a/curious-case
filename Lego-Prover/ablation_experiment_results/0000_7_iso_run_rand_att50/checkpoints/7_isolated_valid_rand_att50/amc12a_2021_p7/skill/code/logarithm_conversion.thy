lemma logarithm_conversion:
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "log a b = c"
  shows "b = a ^ c"
proof -
  have "log a b = c" by (rule assms(4))
  then show ?thesis by (metis assms(1) assms(2) assms(3) powr_log_cancel powr_realpow)
qed