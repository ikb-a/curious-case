lemma linear_function_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall>x. f x = a * x + b"
  shows "f x - f y = a * (x - y)"
proof -
  have "f x - f y = (a * x + b) - (a * y + b)" by (simp add: assms)
  also have "... = a * x - a * y" by (simp)
  also have "... = a * (x - y)" by sos
  finally show ?thesis by simp
qed