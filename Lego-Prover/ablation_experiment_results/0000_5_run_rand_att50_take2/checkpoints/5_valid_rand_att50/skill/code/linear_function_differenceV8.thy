theorem linear_function_difference:
  fixes a b x1 x2 :: real
  assumes "\<forall> x. f x = a * x + b"
    and "f x2 - f x1 = (x2 - x1) * a"
  shows "f (x1 + (x2 - x1)) - f x1 = (x2 - x1) * a"
proof -
  have "f x = a * x + b" for x by (simp add: assms(1))
  then show ?thesis by (auto simp: field_simps)
qed