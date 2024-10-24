lemma fraction_properties:
  fixes a b c :: real
  assumes "b > 0" "c > 0"
  shows "(a / b) * (c / b) = (a * c) / (b * b)"
proof -
  have "((a * c) / (b * b)) = (a / b) * (c / b)"
    by (simp add: field_simps)
  thus ?thesis using assms by auto
qed