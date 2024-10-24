lemma trivial_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  have "a + b = (0 + a) + (0 + b)" by simp
  also have "... >= 0 + 0" using assms by (simp add: add_nonneg_nonneg)
  finally show ?thesis by simp
qed