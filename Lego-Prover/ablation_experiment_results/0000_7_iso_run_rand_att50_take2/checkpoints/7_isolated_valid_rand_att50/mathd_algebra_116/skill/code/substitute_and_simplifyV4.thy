lemma substitute_and_simplify:
  fixes k x :: real
  assumes "2 * x^2 - 13 * x + k = 0"
  shows "k = 13 * x - 2 * x^2"
proof -
  obtain k where "k = 13 * x - 2 * x^2" 
    using assms by (simp add: algebra_simps)
  thus ?thesis by (smt (verit) assms)
qed