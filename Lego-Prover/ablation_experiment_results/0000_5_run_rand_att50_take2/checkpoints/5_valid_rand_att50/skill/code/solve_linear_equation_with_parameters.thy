lemma solve_linear_equation_with_parameters:
  fixes a b c :: real
  assumes "a > 0"
  assumes "a*x + b = c"
  shows "x = (c - b) / a"
proof -
  have "a*x + b = c" using assms by simp
  then have "a*x = c - b" by simp
  then show ?thesis using `a > 0`
    by (auto simp: field_simps)
qed