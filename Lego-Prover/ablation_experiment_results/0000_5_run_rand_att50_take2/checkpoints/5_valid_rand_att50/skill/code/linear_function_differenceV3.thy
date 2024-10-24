theorem linear_function_difference:
  fixes a b x1 x2 :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall>x. f x = a * x + b"
    and "f x2 - f x1 = c"
  shows "f (x1 + d) - f x1 = (d * a)"
proof -
  have "f x2 - f x1 = (a * x2 + b) - (a * x1 + b)" by (simp add: assms(1))
  have "f x2 - f x1 = (a * x2 - a * x1)" by (simp add: assms(1))
  then have "f x2 - f x1 = a * (x2 - x1)" by (simp add: algebra_simps)
  have "a * (x2 - x1) = c" using assms(2) by (metis \<open>f x2 - f x1 = a * (x2 - x1)\<close> mult_delta_right)
  have "f (x1 + d) - f x1 = (a * (x1 + d) + b) - (a * x1 + b)" by (simp add: assms(1))
  have "f (x1 + d) - f x1 = a * (x1 + d - x1)" by (smt (verit) \<open>f (x1 + d) - f x1 = a * (x1 + d) + b - (a * x1 + b)\<close> add_diff_add right_diff_distrib)
  have "f (x1 + d) - f x1 = a * d" by (metis \<open>f (x1 + d) - f x1 = a * (x1 + d - x1)\<close> add.commute add_diff_cancel mult_delta_right)
  thus ?thesis by (simp)
qed