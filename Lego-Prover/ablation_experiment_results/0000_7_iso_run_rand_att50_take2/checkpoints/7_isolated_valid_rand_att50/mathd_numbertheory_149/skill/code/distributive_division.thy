lemma distributive_division:
  fixes a b c d :: real
  assumes "a \<noteq> 0"
  shows "(b + c) / a = (b / a) + (c / a)"
proof -
  have "(b + c) * (1 / a) = (b * (1 / a)) + (c * (1 / a))" using assms by (simp add: field_simps)
  thus ?thesis by (simp add: divide_simps)
qed