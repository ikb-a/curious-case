lemma linear_function_difference:
  fixes m b x1 x2 :: real
  assumes "\<forall>x. f x = m * x + b"
  shows "f x1 - f x2 = m * (x1 - x2)"
proof -
  have "f x1 - f x2 = (m * x1 + b) - (m * x2 + b)"
    using assms by simp
  also have "... = m * x1 - m * x2" by simp
  also have "... = m * (x1 - x2)" by (simp add: field_simps)
  finally show ?thesis .
qed