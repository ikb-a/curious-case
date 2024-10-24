theorem linear_function_difference:
  fixes a b c d :: real and f g :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b" 
      and "\<forall> x. g x = c * x + d"
      and "f x1 - f x2 = g x1 - g x2"
  shows "a * (x1 - x2) = c * (x1 - x2)"
proof -
  have "f x1 - f x2 = (a * x1 + b) - (a * x2 + b)" using assms(1) by auto
  then have "f x1 - f x2 = a * (x1 - x2)" by (auto simp: field_simps)
  have "g x1 - g x2 = (c * x1 + d) - (c * x2 + d)" using assms(2) by auto
  then have "g x1 - g x2 = c * (x1 - x2)" by (auto simp: field_simps)
  have "a * (x1 - x2) = c * (x1 - x2)" using assms(3) by (metis \<open>f x1 - f x2 = a * (x1 - x2)\<close> \<open>g x1 - g x2 = c * (x1 - x2)\<close> mult_delta_right)
  thus ?thesis by simp
qed