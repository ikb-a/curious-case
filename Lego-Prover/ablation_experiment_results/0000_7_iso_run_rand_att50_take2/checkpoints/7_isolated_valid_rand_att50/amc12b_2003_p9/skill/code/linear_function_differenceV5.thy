theorem linear_function_difference:
  fixes a b x1 x2 :: real
  assumes "\<forall> x. f x = a * x + b"
    and "x2 - x1 = d"
  shows "f x2 - f x1 = a * d"
proof -
  have "f x2 - f x1 = (a * x2 + b) - (a * x1 + b)" 
    using assms(1) by auto
  then have "f x2 - f x1 = a * (x2 - x1)" by (auto simp: field_simps)
  then show ?thesis using assms(2) by simp
qed