lemma logarithm_exponentiation:
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "log a b = c"
  shows "b = a ^ c"
  using assms
  by (metis powr_log_cancel powr_realpow)