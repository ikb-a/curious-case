theorem linear_function_difference:
  fixes a b x y :: real
  assumes "f x = a * x + b" "f y = a * y + b"
  shows "f y - f x = a * (y - x)"
proof -
  have "f y - f x = (a * y + b) - (a * x + b)" using assms by simp
  then show ?thesis by (auto simp: field_simps)
qed