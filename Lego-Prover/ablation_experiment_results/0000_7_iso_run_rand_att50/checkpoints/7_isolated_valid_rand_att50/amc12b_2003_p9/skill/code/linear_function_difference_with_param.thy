lemma linear_function_difference_with_param:
  fixes a b c d :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f c - f d = a * (c - d)"
  shows "f e - f d = a * (e - d)"
proof -
  have "f e - f d = (a * e + b) - (a * d + b)"
    using assms(1) by simp
  then show ?thesis by (auto simp: field_simps)
qed