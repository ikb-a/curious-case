lemma distinct_nonzero:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "x \<noteq> y"
  shows "x * y \<noteq> 0"
proof -
  have "x \<noteq> 0" using assms(1) by auto
  have "y \<noteq> 0" using assms(2) by auto
  thus ?thesis using assms(1) assms(2) by (simp add: mult.commute)
qed