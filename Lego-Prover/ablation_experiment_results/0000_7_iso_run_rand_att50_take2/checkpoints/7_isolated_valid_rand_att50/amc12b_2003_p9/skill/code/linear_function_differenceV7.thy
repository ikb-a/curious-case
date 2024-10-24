theorem linear_function_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x1 - f x2 = delta"
  shows "f x3 - f x2 = (x3 - x2) * a"
proof -
  have "f x1 - f x2 = (a * x1 + b) - (a * x2 + b)"
    using assms(1) by auto
  then have "f x1 - f x2 = (x1 - x2) * a" by (auto simp: field_simps)
  then have "delta = (x1 - x2) * a" using assms(2) by (metis)
  have "f x3 - f x2 = (a * x3 + b) - (a * x2 + b)"
    using assms(1) by auto
  then have "f x3 - f x2 = (x3 - x2) * a" by (auto simp: field_simps)
  thus ?thesis by simp
qed