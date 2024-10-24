lemma non_zero_division:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "1 / a * a = 1"
proof -
  have "1 / a * a = (a / a)" using assms by (simp add: field_simps)
  also have "... = 1" using assms by (simp add: field_simps)
  finally show ?thesis .
qed