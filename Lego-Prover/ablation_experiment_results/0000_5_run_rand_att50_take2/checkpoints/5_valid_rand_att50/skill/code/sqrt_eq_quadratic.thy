lemma sqrt_eq_quadratic:
  fixes a b c :: real
  assumes "sqrt (a*x^2 + b*x + c) = d" "d > 0"
  shows "a*x^2 + b*x + c = d^2"
proof -
  have "a*x^2 + b*x + c = d^2" using assms by auto
  thus ?thesis by simp
qed