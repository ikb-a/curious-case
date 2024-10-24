lemma logarithm_identity:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1"
  shows "log a a = 1"
proof -
  have "log a a = 1" using assms by (simp add: log_def)
  then show ?thesis by simp
qed