lemma distinct_elements:
  fixes x y :: real
  assumes "x \<noteq> y"
  shows "x - y \<noteq> 0"
proof -
  have "x - y = 0 \<Longrightarrow> x = y" by simp
  with assms show ?thesis by (simp)
qed