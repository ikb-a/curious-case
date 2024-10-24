lemma cal_log_value_extended:
  fixes a b :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "log a b = c"
  shows "b = a ^ c"
proof -
  have "log a b = c \<Longrightarrow> b = a ^ c" by (metis assms(1) assms(2) assms(3) assms(4) powr_log_cancel powr_realpow)
  then show ?thesis by (metis assms(4))
qed