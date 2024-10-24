lemma non_zero_division:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "b / a * a = b"
proof -
  have "b / a * a = b" using assms by (simp add: field_simps)
  thus ?thesis by simp
qed