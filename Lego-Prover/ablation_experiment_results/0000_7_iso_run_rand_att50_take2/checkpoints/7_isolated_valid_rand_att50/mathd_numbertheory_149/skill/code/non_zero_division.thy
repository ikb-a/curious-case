lemma non_zero_division:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (b / a) = b"
proof -
  have "b = a * (b / a)" using assms by (simp add: field_simps)
  thus ?thesis by simp
qed