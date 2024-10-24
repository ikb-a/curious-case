lemma ratio_equivalence_multi:
  fixes a :: real
  assumes "b1 \<noteq> 0" "b2 \<noteq> 0"
  shows "a / (b1 * b2) = (a * (1 / b1)) * (1 / b2)"
proof -
  have "a / (b1 * b2) = a * (1 / (b1 * b2))" using assms by auto
  also have "... = (a * (1 / b1)) * (1 / b2)" by (simp add: divide_simps)
  finally show ?thesis .
qed