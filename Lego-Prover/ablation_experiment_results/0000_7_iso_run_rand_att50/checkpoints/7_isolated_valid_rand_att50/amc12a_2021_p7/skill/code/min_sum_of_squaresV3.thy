lemma min_sum_of_squares:
  fixes a b :: real
  assumes "a^2 \<ge> 0" "b^2 \<ge> 0"
  shows "a^2 + b^2 \<ge> 0"
proof -
  have "0 \<le> a^2" using assms(1) by simp
  have "0 \<le> b^2" using assms(2) by simp
  then show ?thesis by (simp add: add_nonneg_nonneg)
qed