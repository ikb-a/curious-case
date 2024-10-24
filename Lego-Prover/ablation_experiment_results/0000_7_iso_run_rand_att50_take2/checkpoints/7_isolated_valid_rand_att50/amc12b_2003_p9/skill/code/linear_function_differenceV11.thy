theorem linear_function_difference:
  fixes a b x1 x2 :: real
  assumes "\<forall> x. f x = a * x + b"
    and "x1 < x2"
  shows "f x2 - f x1 = (x2 - x1) * a"
proof -
  have "f x2 - f x1 = (a * x2 + b) - (a * x1 + b)" using assms(1) by auto
  then show ?thesis by (auto simp: field_simps)
qed