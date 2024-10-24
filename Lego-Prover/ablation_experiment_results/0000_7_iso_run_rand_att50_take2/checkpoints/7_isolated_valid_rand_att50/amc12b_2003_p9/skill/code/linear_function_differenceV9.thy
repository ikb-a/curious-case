lemma linear_function_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
  shows "f x - f y = a * (x - y)"
proof -
  let ?fx = "f x" and ?fy = "f y"
  have "?fx = a * x + b" and "?fy = a * y + b" using assms by auto
  then show ?thesis by (auto simp: field_simps)
qed