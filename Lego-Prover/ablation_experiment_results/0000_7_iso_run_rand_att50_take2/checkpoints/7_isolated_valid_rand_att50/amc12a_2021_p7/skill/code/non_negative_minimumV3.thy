lemma non_negative_minimum:
  fixes a b c :: real
  assumes "a >= 0" "b >= 0" "c >= 0"
  shows "a + b + c + 1 >= 1"
proof -
  have "a + b >= 0" using assms(1) assms(2) by (simp add: add_nonneg_nonneg)
  moreover have "c >= 0" using assms(3) by assumption
  ultimately have "a + b + c >= 0" by (simp add: add_nonneg_nonneg)
  then show ?thesis using `a + b + c >= 0` by (simp add: add_nonneg_nonneg)
qed