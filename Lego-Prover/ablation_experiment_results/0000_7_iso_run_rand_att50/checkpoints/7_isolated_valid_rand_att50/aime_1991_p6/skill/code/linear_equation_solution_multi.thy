lemma linear_equation_solution_multi:
  fixes a b c n :: real
  assumes "a > 0"
  assumes "(\<forall>i. a * n + b = c)"
  shows "n = (c - b) / a"
proof -
  obtain n where "(\<forall>i. a * n + b = c)" by (metis assms(2))
  then show ?thesis using assms by (auto simp: field_simps)
qed