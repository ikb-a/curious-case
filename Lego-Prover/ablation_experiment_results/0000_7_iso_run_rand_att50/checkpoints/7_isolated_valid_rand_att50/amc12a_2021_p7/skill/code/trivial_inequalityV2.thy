lemma trivial_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  have "a + b = a + b"
    by simp
  also have "... >= 0 + 0"
    using assms by auto
  finally show ?thesis 
    by (metis add_nonneg_nonneg assms(1) assms(2))
qed