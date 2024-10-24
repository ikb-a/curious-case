lemma linear_function_slope:
  fixes m c :: real
  assumes "(\<forall>x. f x = m * x + c)"
  shows "f(a) - f(b) = m * (a - b)"
proof -
  have f_a: "f(a) = m * a + c" using assms by (simp)
  have f_b: "f(b) = m * b + c" using assms by (simp)
  have "f(a) - f(b) = (m * a + c) - (m * b + c)" 
    by (simp add: f_a f_b)
  then have "f(a) - f(b) = m * a - m * b" by (simp add: algebra_simps)
  thus ?thesis by (simp add: algebra_simps)
qed