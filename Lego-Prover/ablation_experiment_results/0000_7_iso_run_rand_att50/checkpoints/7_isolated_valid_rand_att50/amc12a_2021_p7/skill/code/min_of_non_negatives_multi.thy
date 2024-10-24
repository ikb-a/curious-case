lemma min_of_non_negatives_multi:
  fixes A :: "real set"
  assumes "finite A" and "\<forall>x\<in>A. x \<ge> 0"
  shows "(\<Sum>x\<in>A. x) \<ge> 0"
proof -
  have "(\<Sum>x\<in>A. x) = (\<Sum>x\<in>A. x + 0)" by (simp add: add.commute)
  also have "... = (\<Sum>x\<in>A. (x + 0))" by auto
  also have "... \<ge> (\<Sum>x\<in>A. 0)" using assms by (simp add: sum_nonneg)
  finally show ?thesis by (metis assms(2) sum_nonneg)
qed