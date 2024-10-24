lemma division_with_nonzero_and_additive_property:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "(b + c) / a = b / a + c / a"
proof -
  have "(b + c) / a = (b + c) * (1 / a)" using assms by (simp add: divide_simps)
  also have "... = (b * (1 / a)) + (c * (1 / a))" by (metis distrib_right)
  also have "... = b / a + c / a" by (simp add: divide_simps)
  finally show ?thesis .
qed