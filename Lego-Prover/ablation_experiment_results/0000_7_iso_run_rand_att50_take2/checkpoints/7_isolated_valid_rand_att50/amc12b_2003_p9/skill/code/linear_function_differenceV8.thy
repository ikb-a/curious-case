theorem linear_function_difference:
  fixes a b x y :: real
  assumes "\<forall> z. f z = a * z + b"
    and "f x - f y = (x - y) * a"
  shows "f z - f y = (z - y) * a"
proof -
  have "f z - f y = (a * z + b) - (a * y + b)"
    using assms(1) by auto
  then have "f z - f y = a * (z - y)" by (auto simp: field_simps)
  thus ?thesis by simp
qed