lemma linear_function_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall>x. f x = a * x + b"
  shows "f x - f y = a * (x - y)"
proof -
  have "f x = a * x + b" and "f y = a * y + b" using assms by auto
  then show ?thesis by (simp add: algebra_simps)
qed