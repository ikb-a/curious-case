lemma division_and_nonzero_extended:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "b / a + c / a = (b + c) * (1 / a)"
proof -
  have "b / a + c / a = (b * (1 / a)) + (c * (1 / a))" using assms by auto
  also have "... = (b + c) * (1 / a)" by (metis distrib_right)
  finally show ?thesis .
qed