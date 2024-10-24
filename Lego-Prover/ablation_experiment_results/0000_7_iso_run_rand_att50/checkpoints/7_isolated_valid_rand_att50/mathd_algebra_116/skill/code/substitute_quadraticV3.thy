lemma substitute_quadratic:
  fixes a b c x k :: real
  assumes "a * x^2 + b * x + c = 0"
  shows "c = - (a * x^2 + b * x)"
proof -
  from assms have "a * x^2 + b * x + c = 0" 
    by simp
  then show "c = - (a * x^2 + b * x)" 
    by (simp add: algebra_simps)
qed