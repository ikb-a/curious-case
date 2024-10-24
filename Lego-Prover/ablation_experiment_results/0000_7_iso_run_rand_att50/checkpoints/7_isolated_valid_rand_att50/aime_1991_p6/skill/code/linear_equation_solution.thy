lemma linear_equation_solution:
  fixes a b c n :: real
  assumes "a > 0"
  assumes "a * n + b = c"
  shows "n = (c - b) / a"
proof -
  have "a * n = c - b" using assms by simp
  then show ?thesis using `a > 0` by (auto simp: field_simps)
qed