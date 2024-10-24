lemma generalized_inequality_from_division_with_param:
  fixes a b c d :: real
  assumes "d > 0" "a / d < b"
  shows "a < b * d"
proof -
  have "a < b * d" using assms by (simp add: field_split_simps)
  thus ?thesis by auto
qed