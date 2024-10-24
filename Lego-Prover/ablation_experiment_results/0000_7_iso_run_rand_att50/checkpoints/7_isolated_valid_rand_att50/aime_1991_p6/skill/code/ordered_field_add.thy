lemma ordered_field_add:
  fixes x y z :: real
  assumes "x < y"
  shows "x + z < y + z"
proof -
  from assms have "x + z < y + z" by (simp add: field_simps)
  thus ?thesis by simp
qed