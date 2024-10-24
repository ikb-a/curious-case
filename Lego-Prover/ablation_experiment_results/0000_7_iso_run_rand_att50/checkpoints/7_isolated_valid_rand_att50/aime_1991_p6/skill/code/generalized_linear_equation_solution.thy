lemma generalized_linear_equation_solution:
  fixes a b c n :: real
  assumes "a > 0"
  assumes "a * n + b = c"
  shows "n = (c - b) / a"
proof -
  have "a * n + b = c" using assms by simp
  then have "a * n = c - b" by simp
  then show ?thesis using assms by (simp add: field_simps)
qed