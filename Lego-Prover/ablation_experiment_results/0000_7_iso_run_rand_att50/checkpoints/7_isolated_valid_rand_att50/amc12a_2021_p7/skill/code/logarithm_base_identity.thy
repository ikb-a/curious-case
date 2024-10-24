lemma logarithm_base_identity:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1"
  shows "log a a = 1"
proof -
  have "log a a = log a (a^1)" by auto
  also have "... = 1" using assms by auto
  finally show ?thesis by simp
qed