lemma solve_linear_equation:
  fixes a b :: real
  assumes "a + b = 0"
  shows "b = -a"
proof -
  have "b = 0 - a" using assms by simp
  then show "b = -a" by (simp add: field_simps)
qed