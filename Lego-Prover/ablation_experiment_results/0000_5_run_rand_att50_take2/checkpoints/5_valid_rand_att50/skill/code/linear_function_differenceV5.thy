theorem linear_function_difference:
  fixes a b x y :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> z. f z = a * z + b"
    and "f x - f y = c"
  shows "f (x + d) - f y = (a * d + c)"
proof -
  have "f z = a * z + b" for z by (simp add: assms(1))
  have "f x - f y = (a * x + b) - (a * y + b)" by (simp add: assms(1))
  have "f x - f y = a * (x - y)" by (smt (verit) \<open>f x - f y = a * x + b - (a * y + b)\<close> add_diff_add right_diff_distrib')
  then have "a * (x - y) = c" using assms(2) by simp
  have "f (x + d) - f y = (a * (x + d) + b) - (a * y + b)" by (simp add: assms(1))
  have "f (x + d) - f y = a * (x + d) - a * y" by (smt (verit) \<open>f (x + d) - f y = a * (x + d) + b - (a * y + b)\<close>)
  have "f (x + d) - f y = a * (x - y + d)" by (metis \<open>f (x + d) - f y = a * (x + d) - a * y\<close> add.commute add_diff_eq diff_diff_eq2 mult_delta_right right_diff_distrib')
  then show ?thesis by (smt (verit) \<open>f x - f y = a * (x - y)\<close> add.commute assms(2) ring_class.ring_distribs(1))
qed