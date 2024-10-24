lemma substitute_and_simplify:
  fixes k x :: real
  assumes "2 * x^2 - 13 * x + k = 0"
  shows "k = 13 * x - 2 * x^2"
proof -
  from assms have "2 * x^2 - 13 * x + k = 0" 
    by assumption
  then have "k = - (2 * x^2 - 13 * x)" by (simp add: algebra_simps)
  also have "... = 13 * x - 2 * x^2" 
    by (simp add: algebra_simps)
  finally show ?thesis by simp
qed