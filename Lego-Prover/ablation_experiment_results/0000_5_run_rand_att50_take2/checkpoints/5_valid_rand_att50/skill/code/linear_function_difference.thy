theorem linear_function_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
  shows "f x - f y = a * (x - y)"
proof -
  have "f x - f y = (a * x + b) - (a * y + b)" using assms by simp
  thus ?thesis by (simp add: algebra_simps)
qed