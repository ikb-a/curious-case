theorem linear_function_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
  shows "f x - f y = a * (x - y)"
proof -
  fix x y :: real
  have "f x - f y = (a * x + b) - (a * y + b)"
    using assms by simp
  then have "f x - f y = a * x - a * y"
    by simp
  then have "f x - f y = a * (x - y)"
    by (simp add: algebra_simps)
  then show ?thesis by (smt (verit) assms right_diff_distrib')
qed