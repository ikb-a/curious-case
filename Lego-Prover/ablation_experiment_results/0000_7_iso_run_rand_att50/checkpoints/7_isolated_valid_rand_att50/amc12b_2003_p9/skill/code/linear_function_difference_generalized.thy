lemma linear_function_difference_generalized:
  fixes a b c x1 x2 x3 :: real
  assumes "\<forall> x. f x = a * x + b" 
  shows "f x1 - f x2 = a * (x1 - x2) \<Longrightarrow> f x3 - f x2 = a * (x3 - x2)"
proof -
  assume "f x1 - f x2 = a * (x1 - x2)"
  have "f x3 - f x2 = (a * x3 + b) - (a * x2 + b)"
    using assms by simp
  thus ?thesis by (auto simp: field_simps)
qed