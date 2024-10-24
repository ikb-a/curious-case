lemma division_properties:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "b / a = (1 / a) * b"
proof -
  have "b / a = b * (1 / a)" using assms by (simp add: field_simps)
  thus ?thesis by simp
qed