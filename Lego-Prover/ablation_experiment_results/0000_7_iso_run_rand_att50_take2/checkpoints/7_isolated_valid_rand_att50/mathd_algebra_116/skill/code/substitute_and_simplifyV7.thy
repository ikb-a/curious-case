lemma substitute_and_simplify:
  fixes k x :: real
  assumes "2 * x^2 - 13 * x + k = 0"
  shows "k = 13 * x - 2 * x^2"
proof -
  have "2 * x^2 - 13 * x + k = 0" using assms by assumption
  then have "k = - (2 * x^2 - 13 * x)"
    by (simp add: algebra_simps)
  thus ?thesis
    by (simp add: algebra_simps)
qed