lemma nonneg_sum_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "c >= 0" "d >= 0"
  shows "a + b + c + d >= 0"
proof -
  have "a + b + c + d = (a + b) + (c + d)" by auto
  also have "... >= 0 + 0" using assms by (simp add: add_nonneg_nonneg)
  finally show ?thesis by simp
qed