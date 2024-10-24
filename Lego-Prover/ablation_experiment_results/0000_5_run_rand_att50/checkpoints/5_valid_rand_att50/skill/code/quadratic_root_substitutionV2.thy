lemma quadratic_root_substitution:
  fixes a b c k x :: real
  assumes "a * x^2 + b * x + c = 0"
  shows "c = - (a * x^2 + b * x)"
proof -
  obtain lhs where eq: "lhs = a * x^2 + b * x + c" using assms by simp
  have "lhs = 0" using assms by (metis eq)
  thus ?thesis by (simp add: eq)
qed