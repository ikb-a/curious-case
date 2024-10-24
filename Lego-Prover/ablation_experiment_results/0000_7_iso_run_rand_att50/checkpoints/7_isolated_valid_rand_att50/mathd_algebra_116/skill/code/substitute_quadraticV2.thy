lemma substitute_quadratic:
  fixes a b c x :: real
  assumes "a * x^2 + b * x + c = 0"
  shows "c = - (a * x^2 + b * x)"
proof -
  from assms have "c = - (a * x^2 + b * x)" 
    by (simp add: algebra_simps)
  thus ?thesis by auto
qed