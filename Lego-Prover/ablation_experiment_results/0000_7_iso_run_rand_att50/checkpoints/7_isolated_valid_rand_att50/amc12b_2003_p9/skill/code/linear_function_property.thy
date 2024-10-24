lemma linear_function_property:
  fixes a b c :: real and f :: "real \<Rightarrow> real"
  assumes "a \<noteq> 0" "\<forall> x. f x = a * x + b"
  shows "f (x + c) - f x = a * c"
proof -
  have "f (x + c) = a * (x + c) + b" using assms(2) by simp
  also have "... = a * x + a * c + b" by (simp add: algebra_simps)
  also have "... = f x + a * c" using assms(2) by simp
  finally show ?thesis by (simp add: field_simps)
qed