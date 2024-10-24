theorem linear_function_difference:
  fixes a b x1 x2 :: real
  assumes "\<forall> x. f x = a * x + b"
    and "f x1 - f x2 = (x1 - x2) * a"
  shows "f x + (x1 - x2) * a = f (x + (x1 - x2))"
proof -
  have "f x = a * x + b" by (simp add: assms(1))
  then show ?thesis
    by (simp add: assms(1) algebra_simps)
qed