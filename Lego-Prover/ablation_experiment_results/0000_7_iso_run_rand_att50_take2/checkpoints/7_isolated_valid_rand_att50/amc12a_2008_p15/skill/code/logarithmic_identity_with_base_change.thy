lemma logarithmic_identity_with_base_change:
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0" and "log a b = d"
  shows "b = a ^ d"
proof -
  have "d = log a b" using assms(4) by (metis assms(5))
  thus "b = a ^ d" using assms(1,2,3) by (metis powr_log_cancel powr_realpow)
qed