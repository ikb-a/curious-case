theorem linear_function_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x - f y = (x - y) * a"
  shows "f z - f y = (z - y) * a"
proof -
  have "f z - f y = (a * z + b) - (a * y + b)" by (simp add: assms(1))
  thus ?thesis by (auto simp: field_simps)
qed