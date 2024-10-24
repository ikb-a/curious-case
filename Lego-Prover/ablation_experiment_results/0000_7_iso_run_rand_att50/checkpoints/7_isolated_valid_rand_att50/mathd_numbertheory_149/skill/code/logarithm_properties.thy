lemma logarithm_properties:
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "log a b = c"
  shows "b = a ^ c" and "c = log a b"
proof -
  have "b = a ^ c" using assms by (metis powr_log_cancel powr_realpow)
  then show "b = a ^ c" by auto
  show "c = log a b" using assms by auto
qed