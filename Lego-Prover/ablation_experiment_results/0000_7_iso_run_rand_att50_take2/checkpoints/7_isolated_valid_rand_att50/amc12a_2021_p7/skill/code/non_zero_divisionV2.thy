lemma non_zero_division:
  fixes a :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) = 1"
proof -
  have "1 = a * (1 / a)" using assms by (simp add: field_simps)
  thus ?thesis by simp
qed