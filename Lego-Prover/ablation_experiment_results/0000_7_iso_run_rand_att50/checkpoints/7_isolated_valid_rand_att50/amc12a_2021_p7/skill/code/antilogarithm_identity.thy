lemma antilogarithm_identity:
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "log a b = c"
  shows "b = a ^ c"
proof -
  have "log a b = c" by (simp add: assms)
  then have "b = a ^ c" using log_def assms(1) assms(2) assms(3) 
    by (smt (verit) powr_log_cancel powr_realpow)
  thus ?thesis by simp
qed