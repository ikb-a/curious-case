lemma reciprocal_properties:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "b / a = b * (1 / a) \<and> (1 / a) * a = 1 \<and> (1 / a) \<noteq> 0"
proof -
  have "b / a = b * (1 / a)" using assms by (simp add: divide_simps)
  then have "b / a = b * (1 / a)" by simp
  moreover have "(1 / a) * a = 1" using assms by (simp add: divide_simps)
  moreover have "(1 / a) \<noteq> 0" using assms by (simp add: divide_simps)
  ultimately show ?thesis by auto
qed