lemma inequality_from_division:
  fixes a b c :: real
  assumes "c > 0" "a / c < b"
  shows "a < b * c"
proof -
  have "a < b * c" using assms by (simp add: field_split_simps)
  thus ?thesis by auto
qed