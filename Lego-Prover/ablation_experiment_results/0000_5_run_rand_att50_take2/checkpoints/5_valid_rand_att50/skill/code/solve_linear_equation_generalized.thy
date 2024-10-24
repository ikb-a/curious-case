lemma solve_linear_equation_generalized:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "a * x + b = c \<longleftrightarrow> x = (c - b) / a"
proof -
  have "a * x + b = c \<longleftrightarrow> a * x = c - b" using assms by auto
  then show ?thesis using assms by (simp add: field_simps)
qed