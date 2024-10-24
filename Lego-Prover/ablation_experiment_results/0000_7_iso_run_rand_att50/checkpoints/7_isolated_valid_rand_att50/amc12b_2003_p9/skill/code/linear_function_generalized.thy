lemma linear_function_generalized:
  fixes m n b x1 x2 y1 y2 :: real
  assumes "\<forall>x y. f x y = m * x + n * y + b"
  shows "f x1 y1 - f x2 y2 = m * (x1 - x2) + n * (y1 - y2)"
proof -
  have "f x1 y1 - f x2 y2 = (m * x1 + n * y1 + b) - (m * x2 + n * y2 + b)"
    using assms by simp
  thus ?thesis by (simp add: algebra_simps)
qed