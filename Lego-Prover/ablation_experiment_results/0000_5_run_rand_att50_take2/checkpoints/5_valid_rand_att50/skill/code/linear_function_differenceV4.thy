theorem linear_function_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x - f y = d"
  shows "f u - f v = (u - v) * a"
proof -
  have "f x = a * x + b" for x by (simp add: assms(1))
  have "f u - f v = (a * u + b) - (a * v + b)" by (simp add: assms(1))
  thus ?thesis by (simp add: algebra_simps)
qed