lemma linear_function_properties:
  fixes a b c x1 x2 y1 y2 :: real
  assumes "\<forall> x. f x = a * x + b"
  shows "f x1 - f x2 = a * (x1 - x2)"
    and "f y1 - f y2 = a * (y1 - y2)"
    and "f x1 - f y1 = a * (x1 - y1)"
    and "f x2 - f y2 = a * (x2 - y2)"
proof -
  have "f x1 - f x2 = (a * x1 + b) - (a * x2 + b)" using assms by simp
  thus "f x1 - f x2 = a * (x1 - x2)" by (auto simp: field_simps)
  have "f y1 - f y2 = (a * y1 + b) - (a * y2 + b)" using assms by simp
  thus "f y1 - f y2 = a * (y1 - y2)" by (auto simp: field_simps)
  have "f x1 - f y1 = (a * x1 + b) - (a * y1 + b)" using assms by simp
  thus "f x1 - f y1 = a * (x1 - y1)" by (auto simp: field_simps)
  have "f x2 - f y2 = (a * x2 + b) - (a * y2 + b)" using assms by simp
  thus "f x2 - f y2 = a * (x2 - y2)" by (auto simp: field_simps)
qed