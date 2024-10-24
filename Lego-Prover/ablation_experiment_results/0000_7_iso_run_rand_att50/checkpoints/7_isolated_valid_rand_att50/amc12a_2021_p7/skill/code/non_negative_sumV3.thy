lemma non_negative_sum:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  have "a + b = a + b" by auto
  then show ?thesis using assms by (simp add: add_nonneg_nonneg)
qed