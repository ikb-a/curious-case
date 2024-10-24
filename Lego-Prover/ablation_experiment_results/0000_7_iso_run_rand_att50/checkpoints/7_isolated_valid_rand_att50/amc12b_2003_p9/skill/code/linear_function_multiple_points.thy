lemma linear_function_multiple_points:
  fixes a b x1 x2 y1 y2 :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x1 - f y1 = a * (x1 - y1)"
    and "f x2 - f y2 = a * (x2 - y2)"
  shows "f x1 - f y2 = a * (x1 - y2)"
proof -
  have "f x1 - f y2 = (a * x1 + b) - (a * y2 + b)"
    using assms(1) by simp
  then show ?thesis by (auto simp: field_simps)
qed