lemma ratio_equivalence_parametrized:
  fixes a b c :: real
  assumes "a \<noteq> 0" "b \<noteq> 0" "c \<noteq> 0"
  shows "a / (b * c) = (a * (1 / (b * c)))"
proof -
  have "a / (b * c) = a * (1 / (b * c))" using assms by (simp add: divide_simps)
  thus ?thesis .
qed