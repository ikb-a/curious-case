lemma non_negative_sum:
  fixes x y :: real
  assumes "0 \<le> x" and "0 \<le> y"
  shows "0 \<le> x + y"
proof -
  have "x + y = x + 0 + y" by simp
  then show ?thesis using assms by (simp add: add_nonneg_nonneg)
qed