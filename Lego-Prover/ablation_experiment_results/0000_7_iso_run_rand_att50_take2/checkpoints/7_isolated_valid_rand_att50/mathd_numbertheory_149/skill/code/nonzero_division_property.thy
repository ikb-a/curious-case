lemma nonzero_division_property:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "b / a = b * (1 / a)"
proof -
  have "b / a = b * (1 / a)" using assms by (simp add: divide_simps)
  thus ?thesis .
qed