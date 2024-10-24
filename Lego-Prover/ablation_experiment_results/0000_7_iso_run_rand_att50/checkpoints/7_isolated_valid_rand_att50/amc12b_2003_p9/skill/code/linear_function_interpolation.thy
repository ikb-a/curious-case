lemma linear_function_interpolation:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x1 = y1"
    and "f x2 = y2"
  shows "f ((x1 + x2) / 2) = (y1 + y2) / 2"
proof -
  have "f ((x1 + x2) / 2) = a * ((x1 + x2) / 2) + b"
    using assms(1) by simp
  also have "... = (a * x1 + b + a * x2 + b) / 2"
    by (simp add: algebra_simps)
  also have "... = (f x1 + f x2) / 2" using assms(2,3) by (smt (verit) assms(1) divide_cancel_right group_cancel.add1)
  finally show ?thesis by (metis \<open>(a * x1 + b + a * x2 + b) / 2 = (f x1 + f x2) / 2\<close> \<open>a * ((x1 + x2) / 2) + b = (a * x1 + b + a * x2 + b) / 2\<close> \<open>f ((x1 + x2) / 2) = a * ((x1 + x2) / 2) + b\<close> assms(2) assms(3) dbl_simps(3))
qed