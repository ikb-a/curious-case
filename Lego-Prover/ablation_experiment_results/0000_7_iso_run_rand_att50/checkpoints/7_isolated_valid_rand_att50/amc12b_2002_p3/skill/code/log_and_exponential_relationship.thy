lemma log_and_exponential_relationship:
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c = log a b"
  shows "b = a ^ c"
  using assms by (metis powr_log_cancel powr_realpow)