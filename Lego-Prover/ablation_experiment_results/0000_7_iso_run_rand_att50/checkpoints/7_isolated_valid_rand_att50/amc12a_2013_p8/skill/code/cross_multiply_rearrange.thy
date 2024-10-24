lemma cross_multiply_rearrange:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0" "a / b = c / d"
  shows "a * d = c * b"
proof -
  have "a / b = c / d \<longleftrightarrow> a * d = c * b" using assms by (simp add: field_simps)
  thus ?thesis by (metis assms(3))
qed