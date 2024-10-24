lemma log_identity:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1"
  shows "log a a = 1"
proof -
  show ?thesis by (simp add: assms)
qed