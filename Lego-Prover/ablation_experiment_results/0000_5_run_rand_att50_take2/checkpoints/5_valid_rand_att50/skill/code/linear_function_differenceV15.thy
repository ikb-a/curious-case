theorem linear_function_difference:
  fixes a b x1 x2 :: real
  assumes "\<forall> x. f x = a * x + b"
    and "f x2 - f x1 = d"
  shows "f (x2 + k) - f x1 = d + (k * a)"
proof -
  have "f x2 - f x1 = (a * x2 + b) - (a * x1 + b)" by (simp add: assms(1))
  have "f x2 - f x1 = a * x2 - a * x1" by (smt (verit) \<open>f x2 - f x1 = a * x2 + b - (a * x1 + b)\<close>)
  have "f (x2 + k) - f x1 = (a * (x2 + k) + b) - (a * x1 + b)" by (simp add: assms(1))
  then have "f (x2 + k) - f x1 = a * (x2 + k) - a * x1" by (simp)
  then have "f (x2 + k) - f x1 = (a * x2 - a * x1) + (a * k)" by (simp add: algebra_simps)
  then show ?thesis using assms(2) by (metis \<open>f x2 - f x1 = a * x2 - a * x1\<close> add.commute mult.commute mult_delta_right)
qed