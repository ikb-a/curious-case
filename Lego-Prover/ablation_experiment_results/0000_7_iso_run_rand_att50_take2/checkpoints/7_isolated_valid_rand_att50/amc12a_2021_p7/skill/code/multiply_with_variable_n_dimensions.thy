lemma multiply_with_variable_n_dimensions:
  fixes x a b :: "real list" and c :: real
  assumes "x \<noteq> []" "all_positive x" "a = b"
  shows "dot_product a x = dot_product b x"
proof -
  have "dot_product a x = dot_product b x" using assms by (simp add: assms(3))
  thus ?thesis by simp
qed