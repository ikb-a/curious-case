lemma solve_linear_equation:
  fixes a b :: real
  assumes "a + b = 0"
  shows "b = -a"
proof -
  have "b = -a" using assms by (simp add: field_simps)
  thus ?thesis by simp
qed