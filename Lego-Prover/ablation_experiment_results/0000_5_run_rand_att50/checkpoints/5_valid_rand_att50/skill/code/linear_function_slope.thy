lemma linear_function_slope:
  fixes m c :: real
  assumes "(\<forall>x. f x = m * x + c)"
  shows "f(a) - f(b) = m * (a - b)"
proof -
  have "f(a) = m * a + c" using assms by (simp)
  moreover have "f(b) = m * b + c" using assms by (simp)
  ultimately have "f(a) - f(b) = (m * a + c) - (m * b + c)"
    by (simp)
  thus ?thesis
    by (simp add: algebra_simps)
qed