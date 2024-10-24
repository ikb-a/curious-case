lemma linear_function_evaluation:
  fixes a b z :: real and f :: "real \<Rightarrow> real"
  assumes h0: "\<And>x. f x = a * x + b"
  shows "f z = a * z + b"
proof -
  show ?thesis using assms by simp
qed