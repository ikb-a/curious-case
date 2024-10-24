lemma linear_function_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
  shows "f m - f n = (m - n) * a"
proof -
  have "f m - f n = (a * m + b) - (a * n + b)" by (simp add: assms)
  then show ?thesis by (auto simp: field_simps)
qed