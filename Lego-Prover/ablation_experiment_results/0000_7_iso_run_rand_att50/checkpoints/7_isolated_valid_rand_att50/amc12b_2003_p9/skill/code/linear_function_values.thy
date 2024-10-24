lemma linear_function_values:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
  shows "f x = a * x + b"
proof -
  show "f x = a * x + b" using assms by simp
qed