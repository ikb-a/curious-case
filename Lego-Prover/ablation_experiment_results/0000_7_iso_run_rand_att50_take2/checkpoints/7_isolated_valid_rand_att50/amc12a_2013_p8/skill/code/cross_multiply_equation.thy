lemma cross_multiply_equation:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a/b) = (c/d) \<longleftrightarrow> (a * d = c * b)"
proof -
  have "(a/b) = (c/d) \<longleftrightarrow> (a * d = c * b)" using assms by (simp add: field_simps)
  then show ?thesis by simp
qed