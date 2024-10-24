lemma linear_combination_solve_for_b:
  fixes x a b c :: real
  assumes "x > 0" "c = a + b / x"
  shows "b = x * (c - a)"
proof -
  have "b / x = c - a" using assms by (simp add: assms(2) algebra_simps)
  then have "b = x * (c - a)" using assms(1) by (auto simp: field_simps)
  then show ?thesis by simp
qed