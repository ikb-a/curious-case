lemma distinct_elements:
  fixes x y :: real
  assumes "x \<noteq> y"
  shows "x - y \<noteq> 0"
proof -
  have "x - y = 0 \<longleftrightarrow> x = y" by (simp add: algebra_simps)
  thus ?thesis using assms by auto
qed