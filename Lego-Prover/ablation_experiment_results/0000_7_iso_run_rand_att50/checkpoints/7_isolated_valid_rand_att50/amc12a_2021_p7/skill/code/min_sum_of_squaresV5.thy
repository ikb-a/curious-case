lemma min_sum_of_squares:
  fixes a b :: real
  assumes "a^2 \<ge> 0" "b^2 \<ge> 0"
  shows "a^2 + b^2 \<ge> 0"
proof -
  from assms have "0 \<le> a^2" and "0 \<le> b^2" by simp_all
  thus ?thesis using nonneg_sum by auto
qed