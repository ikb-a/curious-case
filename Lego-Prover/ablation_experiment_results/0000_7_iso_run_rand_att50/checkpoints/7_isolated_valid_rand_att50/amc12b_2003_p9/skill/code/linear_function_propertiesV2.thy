lemma linear_function_properties:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
  shows "f (x + y) = f x + f y - b + (a * (x + y - x - y))"
proof -
  have "f (x + y) = a * (x + y) + b" using assms by simp
  also have "... = (a * x + b) + (a * y + b) - b" by (simp add: algebra_simps)
  finally show ?thesis by (metis \<open>a * (x + y) + b = a * x + b + (a * y + b) - b\<close> \<open>f (x + y) = a * (x + y) + b\<close> add.comm_neutral add_diff_cancel_left' assms diff_self mult_delta_right mult_zero_right)
qed