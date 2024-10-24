lemma rational_expression_simplification:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a / b) + (c / d) = (a * d + c * b) / (b * d)"
proof -
  have lhs: "(a / b) + (c / d) = (a * d) / (b * d) + (c * b) / (b * d)"
    using assms by (simp add: field_simps)
  have rhs: "(a * d) / (b * d) + (c * b) / (b * d) = (a * d + c * b) / (b * d)"
    by (simp add: field_simps)
  show ?thesis
    using lhs rhs by simp
qed